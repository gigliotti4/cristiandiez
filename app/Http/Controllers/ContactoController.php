<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contacto;
use App\Logos;
use App\Mail\Consulta;
use App\Mail\Presupuesto;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class ContactoController extends Controller
{
    public function Editarcontenido(){
        $contactos=Contacto::all();
        $iconoSup=Logos::find(1);
        $iconoInf=Logos::find(2);
        return view('admin.contacto.editarcontacto',compact('contactos','iconoSup','iconoInf'));
    }
    public function ActualizarContacto(Request $request,$id){
        $contacto=Contacto::findorFail($id);
        $contacto->dato=$request->dato;
        $contacto->texto=$request->texto;
        $contacto->update($request->all());
    }
    public function EditarContacto($id){
        $contacto=Contacto::findorFail($id);
        return $contacto;
    }
    public function actualizarIconoSup(Request $request,$id){
        $icono=Logos::find($id);
        if($archivo=$request->file('iconosup')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images',$nombre);
            $icono->icono=$nombre;
        }
        $icono->update($request->all());
    }
    public function actualizarIconoInf(Request $request,$id){
        $icono=Logos::find($id);
        if($archivo=$request->file('iconoinf')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images',$nombre);
            $icono->icono=$nombre;
        }
        $icono->update($request->all());
    }

    public function presupuesto(Request $request) {
        $rules = [
            "nombre"  => "required|max:100",
            "email"   => "required|email|max:150",
            "mensaje" => "required",
            "file"    => "required|mimes:jpeg,png,jpg,gif,txt,doc,docx,xls,xlsx,pdf,zip,rar,7zip|max:2048",
            "g-recaptcha-response" => "required"
        ];
    
        $validator = Validator::make($request->all(), $rules);
    
        if ($validator->fails()) {
            return response()->json(["estado" => 0, "mssg" => "Validación incorrecta"]);
        }
    
        // Validar reCAPTCHA
        $recaptchaResponse = $request->input('g-recaptcha-response');
        $recaptchaSecret = env('RECAPTCHA_SECRET');
        $response = Http::asForm()->post('https://www.google.com/recaptcha/api/siteverify', [
            'secret'   => $recaptchaSecret,
            'response' => $recaptchaResponse,
            'remoteip' => $request->ip()
        ]);
    
        $responseData = $response->json();
        if (!$responseData['success']) {
            return response()->json(["estado" => 0, "mssg" => "Captcha no verificado"]);
        }
    
        // Procesar el archivo adjunto
        $file = $request->file('file');
        $dataRequest = $request->all();
    
        // Enviar correo
        Mail::to('info@cristiandiez.com.ar')->send(new Presupuesto($dataRequest, $file));
    
        $obj = new \stdClass();
        $obj->respuesta = count(Mail::failures()) > 0 ? false : true;
    
        return response()->json($obj);
    }
    

    public function enviarConsulta(Request $request) {
        $rules = [
            "nombre"  => "required",
            "correo"  => "required|email",
            "mensaje" => "required",
            "apellido" => "required",
            "telefono" => "required",
            "g-recaptcha-response" => "required"
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json(["estado" => 0, "mssg" => "Validación incorrecta"]);
        }

        // Validar reCAPTCHA
        $recaptchaResponse = $request->input('g-recaptcha-response');
        $recaptchaSecret = env('RECAPTCHA_SECRET');
        $response = Http::asForm()->post('https://www.google.com/recaptcha/api/siteverify', [
            'secret'   => $recaptchaSecret,
            'response' => $recaptchaResponse,
            'remoteip' => $request->ip()
        ]);

        $responseData = $response->json();
        if (!$responseData['success']) {
            return response()->json(["estado" => 0, "mssg" => "Captcha no verificado"]);
        }

        // Procesar la consulta
        $usuario = new \stdClass();
        $usuario->Nombre = $request->nombre;
        $usuario->Email = $request->correo;
        $usuario->Msg = $request->mensaje;
        $usuario->Apellido = $request->apellido;
        $usuario->Telefono = $request->telefono;

        $mail = new Consulta($usuario);
        Mail::to('info@cristiandiez.com.ar')->send($mail);

        $obj = new \stdClass();
        $obj->respuesta = count(Mail::failures()) > 0 ? false : true;

        return response()->json($obj);
    }

}
