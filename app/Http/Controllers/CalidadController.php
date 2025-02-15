<?php

namespace App\Http\Controllers;

use App\Certificado;
use App\Contacto;
use App\Logos;
use App\Sliders;
use Illuminate\Http\Request;
use App\TextoCalidad;
class CalidadController extends Controller
{
    public function editarContenido(){
        $textoizq=TextoCalidad::find(1);
        $textoder=TextoCalidad::find(2);
        $certificados=Certificado::orderby('orden',"ASC")->get();
        return view('admin.calidad.editarcalidad',compact('textoizq','textoder','certificados'));
    }
    public function editarTexto(Request $request,$id){
        $texto=TextoCalidad::find($id);
        $texto->update($request->all());
    }
    public function editarCertificado($id){
        $certificado=Certificado::find($id);
        return $certificado;
    }
    public function agregarCertificado(Request $request){
        $certificado= new Certificado();
        $certificado->orden=$request->orden;
        $certificado->titulo=$request->titulo;
        if($archivo=$request->file('certificado')){
            $nombre=$request->titulo.".".$archivo->getClientOriginalExtension();
            $archivo->move('certificados',$nombre);
            $certificado->archivo=$nombre;
        }
        $certificado->save();
    }
    public function actualizarCertificado(Request $request,$id){
        $certificado=Certificado::find($id);
        if($archivo=$request->file('certificadoedit')){
            $nombre=$request->titulo.".".$archivo->getClientOriginalExtension();
            $archivo->move('certificados',$nombre);
            $certificado->archivo=$nombre;
        }
        $certificado->update($request->all());
    }
    public function eliminarCertificado($id){
        $certificado=Certificado::find($id);
        $certificado->delete();
    }
    public function viewCalidad(){
        $contactos=Contacto::all();
        $logosup=Logos::find(1);
        $logoinf=Logos::find(2);
        $sliders= Sliders::where('pagina','calidad')->orderby('orden',"ASC")->get();
        $textoizq=TextoCalidad::find(1);
        $textoder=TextoCalidad::find(2);
        $certificados=Certificado::orderby('orden',"ASC")->get();
        return view('calidad',compact('contactos','logosup','logoinf','sliders','textoizq','textoder','certificados'));
    }
}
