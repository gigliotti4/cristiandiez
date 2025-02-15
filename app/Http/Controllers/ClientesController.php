<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cliente;
class ClientesController extends Controller
{
    public function agregarCliente(Request $request){
        $cliente= new Cliente();
        $cliente->orden=$request->orden;
        if($archivo=$request->file('imagen')){
            $nombre="logocliente_".$request->orden.".".$archivo->getClientOriginalExtension();
            $archivo->move('images/inicio',$nombre);
            $cliente->imagen=$nombre;
        }
        $cliente->save();
    }
    public function editarCliente($id){
        $cliente=Cliente::findorFail($id);
        return $cliente;
    }
    public function actualizarCliente(Request $request,$id){
        $cliente=Cliente::findorFail($id);
        $cliente->orden=$request->orden;
        if($archivo=$request->file('imagenedit')){
            $nombre="logocliente_".$request->orden.".".$archivo->getClientOriginalExtension();
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images/inicio',$nombre);
            $cliente->imagen=$nombre;
        }
        $cliente->update($request->all());
    }
    public function eliminarCliente($id){
        $cliente=Cliente::findorFail($id);
        $cliente->delete();
    }
}
