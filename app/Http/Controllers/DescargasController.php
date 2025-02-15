<?php

namespace App\Http\Controllers;

use App\Contacto;
use Illuminate\Http\Request;
use App\Descarga;
use App\Logos;
use App\TipoDescarga;
class DescargasController extends Controller
{
    public function vistaDescargas(){
        $descargas= Descarga::orderby('orden',"ASC")->get();
        $tipos_descarga=TipoDescarga::all();
        return view('admin.descargas.editardescargas',compact('descargas','tipos_descarga'));
    }
    public function agregarDescarga(Request $request){
        $descarga = new Descarga($request->all());
        if($archivo=$request->file('imagen')){
            $nombre="imgdesc_".$request->orden.".".$archivo->getClientOriginalExtension();
            $archivo->move('images/descargas',$nombre);
            $descarga->imagen=$nombre;
        }
        if($archivo=$request->file('archivo')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('descargas',$nombre);
            $descarga->archivo=$nombre;
        }
        $descarga->save();
    }
    public function editarDescarga($id){
        $descarga=Descarga::find($id);
        return $descarga;
    }
    public function actualizarDescarga(Request $request,$id){
        $descarga=Descarga::find($id);
        if($archivo=$request->file('imagene')){
            $nombre="imgdesc_".$request->orden.".".$archivo->getClientOriginalExtension();
           
            $archivo->move('images/descargas',$nombre);
            $descarga->imagen=$nombre;
        }
        if($archivo=$request->file('archivoe')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('descargas',$nombre);
            $descarga->archivo=$nombre;
        }
        $descarga->update($request->all());
    }
    public function eliminarDescarga($id){
        $descarga=Descarga::find($id);
        $descarga->delete();
    }
    public function viewDescargas(){
        $contactos=Contacto::all();
        $logosup=Logos::find(1);
        $logoinf=Logos::find(2);
        $descargas_prod= Descarga::where('tipo_id',1)->orderby('orden',"ASC")->get();
        $descargas_tecnicas= Descarga::where('tipo_id',2)->orderby('orden',"ASC")->get();
        return view('descargas',compact('contactos','logosup','logoinf','descargas_prod','descargas_tecnicas'));
    }
}
