<?php

namespace App\Http\Controllers;

use App\Categorias;
use App\Producto;
use App\SubCategoria;
use App\Ventaja;
use Illuminate\Http\Request;
use App\Cliente;
use App\Contacto;
use App\Iconos;
use App\Logos;
use App\SeccionPresupuesto;
use App\Sliders;
use App\TextoEmpresa;
class ProductosController extends Controller
{
    public function vistaCategorias(){
        $categorias=Categorias::orderby('orden',"ASC")->get();
        $subcategorias=SubCategoria::orderby('orden',"ASC")->get();
        return view('admin.productos.editarcategorias',compact('categorias','subcategorias'));
    }
    public function editarCategoria($id){
        $Categoria=Categorias::findorFail($id);
        return $Categoria;
    }
    public function agregarCategoria(Request $request){
        $Categoria= new Categorias();
        $Categoria->orden=$request->orden;
        $Categoria->titulo=$request->titulo;
        if($archivo=$request->file('imagen')){
            $nombre="imgcat_".$request->orden.".".$archivo->getClientOriginalExtension();
            $archivo->move('images/productos',$nombre);
            $Categoria->imagen=$nombre;
        }
        $Categoria->texto=$request->texto;
        $Categoria->save();
    }
    public function actualizarCategoria(Request $request,$id){
        $Categoria=Categorias::findorFail($id);
        if($archivo=$request->file('imagenedit')){
            $nombre="imgcat_".$request->orden.".".$archivo->getClientOriginalExtension();
            $archivo->move('images/productos',$nombre);
            $Categoria->imagen=$nombre;
        }
        $Categoria->update($request->all());
    }
    public function eliminarCategoria($id){
        $Categoria=Categorias::findorFail($id);
        $Categoria->delete();
    }
    public function agregarSubCategoria(Request $request){
        $subcategoria= new SubCategoria($request->all());
        if($archivo=$request->file('imagensub')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images/productos',$nombre);
            $subcategoria->imagen=$nombre;
        }
        $subcategoria->save();
    }
    public function editarSubCategoria($id){
        $subcategoria=SubCategoria::find($id);
        return $subcategoria;
    }
    public function actualizarSubCategoria(Request $request,$id){
        $subcategoria=SubCategoria::find($id);
        if($archivo=$request->file('imagensubedit')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images/productos',$nombre);
            $subcategoria->imagen=$nombre;
        }
        $subcategoria->update($request->all());
    }
    public function eliminarSubCategoria($id){
        $subcategoria=SubCategoria::find($id);
        $subcategoria->delete();
    }
    public function vistaProductosAdmin(){
     
        $ventajas= Ventaja::all();
        $productos=Producto::orderby('orden',"ASC")->paginate(10);
        $categorias=Categorias::orderby('orden',"ASC")->get();
        $subcategorias=SubCategoria::orderby('orden',"ASC")->get();
        return view('admin.productos.editarproductos',compact('productos','categorias','subcategorias','ventajas'));
    }
    public function agregarVentaja(Request $request){
        $ventaja= new Ventaja();
        $ventaja->titulo=$request->titulo;
        if($archivo=$request->file('imagenVentaja')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images/productos',$nombre);
            $ventaja->imagen=$nombre;
        }
        $ventaja->save();
    }
    public function editarVentaja($id){
        $ventaja=Ventaja::find($id);
        return $ventaja;
    }
    public function actualizarVentaja(Request $request,$id){
        $ventaja=Ventaja::find($id);
        if($archivo=$request->file('imagenVentajae')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images/productos',$nombre);
            $ventaja->imagen=$nombre;
        }
        $ventaja->update($request->all());
    }
    public function eliminarVentaja(Request $request,$id){
        $ventaja=Ventaja::find($id);
        $ventaja->delete();
    }
    public function agregarProducto(Request $request){
        $producto=new Producto($request->all());
        if($archivo=$request->file('img')){
            $nombre="imgprod_".$request->orden.".".$archivo->getClientOriginalExtension();
            $archivo->move('images/productos',$nombre);
            $producto->imagen=$nombre;
        }
        if($archivo=$request->file('img_dos')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images/productos',$nombre);
            $producto->imagen_dos=$nombre;
        }
        if($archivo=$request->file('fichatecnica')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('fichas',$nombre);
            $producto->fichatecnica=$nombre;
        }
        $producto->save();
    }
    public function editarProducto($id){
        $producto=Producto::find($id);
        return $producto;
    }
    public function actualizarProducto(Request $request,$id){
        $producto=Producto::find($id);
        if($archivo=$request->file('imge')){
             $nombre="imgprod_".$request->orden.".".$archivo->getClientOriginalExtension();
            $archivo->move('images/productos',$nombre);
            $producto->imagen=$nombre;
        }
        if($archivo=$request->file('img_dose')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('images/productos',$nombre);
            $producto->imagen_dos=$nombre;
        }
        if($archivo=$request->file('fichatecnicae')){
            $nombre=$archivo->getClientOriginalName();
            $archivo->move('fichas',$nombre);
            $producto->fichatecnica=$nombre;
        }
        $producto->update($request->all());
    }
    public function eliminarProducto($id){
        $producto=Producto::find($id);
        $producto->delete();
    }
    public function viewCategorias(){
        $contactos=Contacto::all();
        $logosup=Logos::find(1);
        $logoinf=Logos::find(2);
        $categorias=Categorias::orderby('orden',"ASC")->get();
        return view('categorias',compact('contactos','logosup','logoinf','categorias'));
    }
    public function viewSubCategorias($id){
        $contactos=Contacto::all();
        $logosup=Logos::find(1);
        $logoinf=Logos::find(2);
        $subcategorias=SubCategoria::orderby('orden',"ASC")->where('category_id',$id)->get();
        return view('subcategorias',compact('contactos','logosup','logoinf','subcategorias'));
    }
    public function viewProductosFromSub($id){
        $contactos=Contacto::all();
        $logosup=Logos::find(1);
        $logoinf=Logos::find(2);
        $productos=Producto::orderby('orden',"ASC")->where('subcategory_id',$id)->get();
        return view('productos',compact('contactos','logosup','logoinf','productos'));
    }
    public function viewProductosFromCat($id){
        $contactos=Contacto::all();
        $logosup=Logos::find(1);
        $logoinf=Logos::find(2);
        $productos=Producto::orderby('orden',"ASC")->where('category_id',$id)->get();
        return view('productos',compact('contactos','logosup','logoinf','productos'));
    }
    public function viewProducto($id){
        $contactos=Contacto::all();
        $logosup=Logos::find(1);
        $logoinf=Logos::find(2);
        $producto=Producto::find($id);
        $subcatsel=null;
        $catsel=null;
        $prodsel=$producto->id;
        $subcategoria=null;
        if($producto->category_id!=null){
            $catsel=$producto->category_id;
        }
        if($producto->subcategory_id!=null){
            $subcatsel=$producto->subcategory_id;
            $subcategoria=SubCategoria::find($producto->subcategory_id);
            $catsel=$subcategoria->category_id;
        }
        $relventajas=explode(',',$producto->ventajauno);
        $ventajas=Ventaja::whereIn('titulo',$relventajas)->get();
        // $ventajaUno=Ventaja::find($producto->ventajauno);
        // $ventajaDos=Ventaja::find($producto->ventajados);
        // $ventajaTres=Ventaja::find($producto->ventajatres);
        // $ventajaCuatro=Ventaja::find($producto->ventajacuatro);
        $categorias=Categorias::orderby('orden',"ASC")->get();
        $prodRelUno=Producto::find($producto->prodrel_uno);
        $prodRelDos=Producto::find($producto->prodrel_dos);
        $prodRelTres=Producto::find($producto->prodrel_tres);
        return view('producto',compact('contactos','logosup','logoinf','producto','categorias','catsel','subcatsel','prodsel','ventajas','prodRelUno','prodRelDos','prodRelTres'));
    }
    public function buscar(Request $request){
        $contactos=Contacto::all();
        $logosup=Logos::find(1);
        $logoinf=Logos::find(2);
        $productos=Producto::where('titulo', 'LIKE', '%'.$request->buscar.'%')->orWhere('descripcion','LIKE','%'.$request->buscar.'%')->get();
        return view('resultados',compact('contactos','logosup','logoinf','productos'));
    }
}
