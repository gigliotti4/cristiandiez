<?php

namespace App\Http\Controllers;

use App\Cliente;
use App\Iconos;
use App\SeccionPresupuesto;
use Illuminate\Http\Request;

class InicioController extends Controller
{
    public function editarInicio(){
        $iconos=Iconos::all();
        $seccionPresupuesto=SeccionPresupuesto::all()->first();
        $clientes= Cliente::orderby('orden',"ASC")->get();
        return view('admin.inicio.editarinicio',compact('iconos','seccionPresupuesto','clientes'));
    }
    public function actualizarIcono(Request $request,$id){
        $icono=Iconos::find($id);
        if($archivo=$request->file('iconoe')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images/inicio',$nombre);
            $icono->icono=$nombre;
        }
        $icono->update($request->all());
        return back()->with('success', 'Icono editado.');
    }
    public function editarSeccionPresupuesto(Request $request){
        $seccionPresupuesto=SeccionPresupuesto::all()->first();
        if($archivo=$request->file('imagenPresupuesto')){
            $nombre="img_presupuesto".".".$archivo->getClientOriginalExtension();
            $archivo->move('images/inicio',$nombre);
            $seccionPresupuesto->imagen=$nombre;
        }
        $seccionPresupuesto->update($request->all());
    }
}
