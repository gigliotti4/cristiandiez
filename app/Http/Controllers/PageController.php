<?php

namespace App\Http\Controllers;

use App\Categorias;
use App\Cliente;
use App\Contacto;
use App\Iconos;
use App\Logos;
use App\Metadato;
use App\Producto;
use App\SeccionPresupuesto;
use App\Sliders;
use App\SubCategoria;
use App\TextoEmpresa;
use App\TextoCalidad;
use App\Ventaja;
use App\Descarga;
use App\Certificado;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PageController extends Controller
{
    public function index()
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $sliders = Sliders::where('pagina', 'inicio')->orderby('orden', "ASC")->get();
        $iconos = Iconos::all();
        $categorias = Categorias::orderby('orden', "ASC")->take(8)->get();
        $seccionPresupuesto = SeccionPresupuesto::all()->first();
        $clientes = Cliente::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'inicio')->first();
        return view('inicio', compact('contactos', 'logosup', 'logoinf', 'sliders', 'iconos', 'categorias', 'seccionPresupuesto', 'clientes', 'metadatos'));
    }

    public function empresa()
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $sliders = Sliders::where('pagina', 'empresa')->orderby('orden', "ASC")->get();
        $iconos = Iconos::all();
        $textoizq = TextoEmpresa::find(1);
        $textoder = TextoEmpresa::find(2);
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'empresa')->first();
        return view('empresa', compact('contactos', 'logosup', 'logoinf', 'sliders', 'iconos', 'textoizq', 'textoder', 'categorias', 'metadatos'));
    }

    public function presupuesto()
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'presupuesto')->first();
        return view('presupuesto', compact('contactos', 'logosup', 'logoinf', 'categorias', 'metadatos'));
    }

    public function contacto()
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'contacto')->first();
        return view('contacto', compact('contactos', 'logosup', 'logoinf', 'categorias', 'metadatos'));
    }

    public function buscador()
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'buscador')->first();
        return view('buscador', compact('contactos', 'logosup', 'logoinf', 'categorias', 'metadatos'));
    }

    public function viewCategorias()
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'categorias')->first();
        return view('categorias', compact('contactos', 'logosup', 'logoinf', 'categorias', 'metadatos'));
    }

    public function viewSubCategorias($id)
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $subcategorias = SubCategoria::orderby('orden', "ASC")->where('category_id', $id)->get();
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $categoriaSeleccionada = Categorias::find($id);
        $metadatos = Metadato::where('seccion', 'subcategorias')->first();
        return view('subcategorias', compact('contactos', 'logosup', 'logoinf', 'subcategorias', 'categorias', 'categoriaSeleccionada', 'metadatos'));
    }

    public function viewProductosFromSub($id)
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $productos = Producto::orderby('orden', "ASC")->where('subcategory_id', $id)->get();
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $subcategoriaSeleccionada = SubCategoria::find($id);
        $categoriaSeleccionada = $subcategoriaSeleccionada->categoria;
        $metadatos = Metadato::where('seccion', 'productos')->first();
        return view('productos', compact('contactos', 'logosup', 'logoinf', 'productos', 'categorias', 'subcategoriaSeleccionada', 'categoriaSeleccionada', 'metadatos'));
    }

    public function viewProductosFromCat($id)
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $productos = Producto::orderby('orden', "ASC")->where('category_id', $id)->get();
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'productos')->first();
        return view('productos', compact('contactos', 'logosup', 'logoinf', 'productos', 'categorias', 'metadatos'));
    }

    public function viewProducto($id)
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $producto = Producto::find($id);
        $subcatsel = null;
        $catsel = null;
        $prodsel = $producto->id;
        $subcategoria = null;
        $categoriaSeleccionada = null;
        $subcategoriaSeleccionada = null;

        if ($producto->category_id != null) {
            $catsel = $producto->category_id;
            $categoriaSeleccionada = Categorias::find($producto->category_id);
        }
        if ($producto->subcategory_id != null) {
            $subcatsel = $producto->subcategory_id;
            $subcategoriaSeleccionada = SubCategoria::find($producto->subcategory_id);
            $catsel = $subcategoriaSeleccionada->category_id;
            $categoriaSeleccionada = $subcategoriaSeleccionada->categoria;
        }

        $relventajas = explode(',', $producto->ventajauno);
        $ventajas = Ventaja::whereIn('titulo', $relventajas)->get();
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $prodRelUno = Producto::find($producto->prodrel_uno);
        $prodRelDos = Producto::find($producto->prodrel_dos);
        $prodRelTres = Producto::find($producto->prodrel_tres);
        $metadatos = Metadato::where('seccion', 'producto')->first();

        return view('producto', compact('contactos', 'logosup', 'logoinf', 'producto', 'categorias', 'catsel', 'subcatsel', 'prodsel', 'ventajas', 'prodRelUno', 'prodRelDos', 'prodRelTres', 'categoriaSeleccionada', 'subcategoriaSeleccionada', 'metadatos'));
    }

    public function viewDescargas()
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $descargas_prod = Descarga::where('tipo_id', 1)->orderby('orden', "ASC")->get();
        $descargas_tecnicas = Descarga::where('tipo_id', 2)->orderby('orden', "ASC")->get();
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'descargas')->first();
        return view('descargas', compact('contactos', 'logosup', 'logoinf', 'descargas_prod', 'descargas_tecnicas', 'categorias', 'metadatos'));
    }

    public function viewCalidad()
    {
        $contactos = Contacto::all();
        $logosup = Logos::find(1);
        $logoinf = Logos::find(2);
        $sliders = Sliders::where('pagina', 'calidad')->orderby('orden', "ASC")->get();
        $textoizq = TextoCalidad::find(1);
        $textoder = TextoCalidad::find(2);
        $certificados = Certificado::orderby('orden', "ASC")->get();
        $categorias = Categorias::orderby('orden', "ASC")->get();
        $metadatos = Metadato::where('seccion', 'calidad')->first();
        return view('calidad', compact('contactos', 'logosup', 'logoinf', 'sliders', 'textoizq', 'textoder', 'certificados', 'categorias', 'metadatos'));
    }
}
