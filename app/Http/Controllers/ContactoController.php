<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contacto;
use App\Logos;
use App\Mail\Consulta;
use App\Mail\Presupuesto;
use Illuminate\Support\Facades\Mail;

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
    public function presupuesto( Request $request ) {
        $rules = [
            "nombre" => "required|max:100",
            "email" => "required|email|max:150",
            "mensaje" => "required",
            "file" => "required|mimes:jpeg,png,jpg,gif,txt,doc,docx,xls,xlsx,pdf,zip,rar,7zip|max:2048"
        ];
        // $validator = Validator::make($request->all(), $rules);
        // if ($validator->fails())
        //     return [ "estado" => 0 , "mssg" => "Validación incorrecta"];
         $dataRequest = $request->all();
        // unset( $dataRequest[ "_token" ] );
        $file = isset($dataRequest["file"]) ? $request->file('file') : null;
         //$email = $this->data->form[ "presupuesto" ];
        // $captcha = $dataRequest[ "token" ];
        // if(!$captcha){
        //     return [ "estado" => 0 , "mssg" => "Captcha no verificado"];
        //     exit;
        // }
        // $ip = $_SERVER['REMOTE_ADDR'];
        // $url = 'https://www.google.com/recaptcha/api/siteverify';
        // $data = array('secret' => $this->data->captcha[ 'private' ], 'response' => $captcha);
        // $options = [
        //     'http' => [
        //         'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
        //         'method'  => 'POST',
        //         'content' => http_build_query($data)
        //     ]
        // ];
        // $context = stream_context_create($options);
        // $response = file_get_contents($url, false, $context);
        // $responseKeys = json_decode($response,true);
        // if($responseKeys["success"]) {


            Mail::to( 'info@cristiandiez.com.ar' )->send( new Presupuesto( $dataRequest , $file ) );
            $obj= new \stdClass();
            $obj->respuesta=false;
            if (count(Mail::failures()) > 0){
                $obj->respuesta=true;
                return json_encode($obj);
            }else{
                return json_encode($obj);
            }
               
        // } else {
        //     return [ "estado" => 0 , "mssg" => "Error"];
        // }
    }
    public function enviarConsulta(Request $request){
    
        $usuario=new \stdClass();
        $usuario->Nombre=$request->nombre;
        $usuario->Email=$request->correo;
        $usuario->Msg=$request->mensaje;
        $usuario->Apellido=$request->apellido;
        $usuario->Telefono=$request->telefono;
        
        
        $mail=new Consulta($usuario);
        $obj= new \stdClass();
        $obj->respuesta=false;
        Mail::to('gigliottilucas4@gmail.com')->send($mail);
        if (count(Mail::failures()) > 0){
            $obj->respuesta=true;
            return json_encode($obj);
        }else{
            return json_encode($obj);
        }
    }
}
