<?php

namespace App\Http\Controllers;

use App\TextoEmpresa;
use Illuminate\Http\Request;

class EmpresaController extends Controller
{
    public function editarEmpresa(){
        $textoizq= TextoEmpresa::find(1);
        $textoder=TextoEmpresa::find(2);
        return view('admin.empresa.editarempresa',compact('textoizq','textoder'));
    }
    public function actualizarTexto(Request $request,$id){
        $texto=TextoEmpresa::find($id);
        $texto->update($request->all());
    }
}
