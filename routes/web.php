<?php

use App\Categorias;
use App\Cliente;
use App\Contacto;
use App\Iconos;
use App\Producto;
use App\Logos;
use App\SeccionPresupuesto;
use App\Sliders;
use App\TextoEmpresa;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::post('presupuesto', 'ContactoController@presupuesto');
Route::post('/email', 'ContactoController@enviarConsulta');
Route::get('buscador', [PageController::class, 'buscador'])->name('buscador');
Route::post('buscar', 'ProductosController@buscar')->name('buscar');

Route::get('/', [PageController::class, 'index'])->name('inicio');
Route::get('empresa', [PageController::class, 'empresa'])->name('empresa');
Route::get('presupuesto', [PageController::class, 'presupuesto'])->name('presupuesto');
Route::get('contacto', [PageController::class, 'contacto'])->name('contacto');

Route::get('categorias', [PageController::class, 'viewCategorias'])->name('categorias');
Route::get('subcategorias/{id}', [PageController::class, 'viewSubCategorias'])->name('subcategorias');
Route::get('subcategoria/productos/{id}', [PageController::class, 'viewProductosFromSub'])->name('subcategorias.productos');
Route::get('productos/{id}', [PageController::class, 'viewProductosFromCat'])->name('verProdPorCategorias');
Route::get('producto/{id}', [PageController::class, 'viewProducto'])->name('producto');
Route::get('descarga', [PageController::class, 'viewDescargas'])->name('descargas');
Route::get('calidad', [PageController::class, 'viewCalidad'])->name('calidad');

Auth::routes();
Route::get('adm',function(){
    return redirect('login');
});
Route::get('/home', 'HomeController@index')->name('home');
Route::middleware(['auth'])->group(function(){
    //Inicio
    Route::get('home/sliders','SlidersController@EditarSlidersInicio')->name('inicio.sliders');
    Route::post('home/agregarslider','SlidersController@AgregarSlider');
    Route::get('home/editarslider/{id}','SlidersController@EditarSlider');
    Route::delete('home/eliminarslider/{id}','SlidersController@EliminarSlider');
    Route::put('home/actualizarslider/{id}','SlidersController@ActualizarSlider');
    Route::get('home/inicio/editarinicio','InicioController@editarInicio')->name('inicio.editarContenido');
    Route::put('home/inicio/actualizarIcono/{id}','InicioController@actualizarIcono')->name('inicio.actualizarIcono');
    Route::put('home/inicio/editarSeccionPresupuesto','InicioController@editarSeccionPresupuesto');
    Route::post('home/inicio/agregarCliente','ClientesController@agregarCliente');
    Route::get('home/inicio/editarCliente/{id}','ClientesController@editarCliente');
    Route::put('home/inicio/actualizarCliente/{id}','ClientesController@actualizarCliente');
    Route::delete('home/inicio/eliminarCliente/{id}','ClientesController@eliminarCliente');
    //Empresa
    Route::get('home/empresa/editarSliders','SlidersController@EditarSlidersEmpresa')->name('empresa.sliders');
    Route::post('home/empresa/agregarslider','SlidersController@AgregarSlider');
    Route::get('home/empresa/editarslider/{id}','SlidersController@EditarSlider');
    Route::delete('home/empresa/eliminarslider/{id}','SlidersController@EliminarSlider');
    Route::put('home/empresa/actualizarslider/{id}','SlidersController@ActualizarSlider');
    Route::get('home/empresa/editarEmpresa','EmpresaController@editarEmpresa')->name('empresa.editarContenido');
    Route::put('home/empresa/actualizarTexto/{id}','EmpresaController@actualizarTexto');
    //Productos
        //Categorias
        Route::get('home/productos/editarCategorias','ProductosController@vistaCategorias')->name('categorias.productos');
        Route::post('home/productos/agregarCategoria','ProductosController@agregarCategoria');
        Route::get('home/productos/editarCategoria/{id}','ProductosController@editarCategoria');
        Route::put('home/productos/actualizarCategoria/{id}','ProductosController@actualizarCategoria');
        Route::delete('home/productos/eliminarCategoria/{id}','ProductosController@eliminarCategoria');
        //SubCategorias
        Route::post('home/productos/agregarSubCategoria','ProductosController@agregarSubCategoria');
        Route::get('home/productos/editarSubCategoria/{id}','ProductosController@editarSubCategoria');
        Route::put('home/productos/actualizarSubCategoria/{id}','ProductosController@actualizarSubCategoria');
        Route::delete('home/productos/eliminarSubCategoria/{id}','ProductosController@eliminarSubCategoria');
        //Productos
        Route::get('home/productos/editarProductos','ProductosController@vistaProductosAdmin')->name('editar.productos');
        Route::post('home/productos/agregarProducto','ProductosController@agregarProducto');
        Route::get('home/productos/editarProducto/{id}','ProductosController@editarProducto');
        Route::put('home/productos/actualizarProducto/{id}','ProductosController@actualizarProducto');
        Route::delete('home/productos/eliminarProducto/{id}','ProductosController@eliminarProducto');
        //Ventajas
        Route::post('home/productos/agregarVentaja','ProductosController@agregarVentaja');
        Route::get('home/productos/editarVentaja/{id}','ProductosController@editarVentaja');
        Route::put('home/productos/actualizarVentaja/{id}','ProductosController@actualizarVentaja');
        Route::delete('home/productos/eliminarVentaja/{id}','ProductosController@eliminarVentaja');
    //Descargas
    Route::get('home/descargas/editarDescargas','DescargasController@vistaDescargas')->name('editar.descargas');
    Route::post('home/descargas/agregarDescarga','DescargasController@agregarDescarga');
    Route::get('home/descargas/editarDescarga/{id}','DescargasController@editarDescarga');
    Route::put('home/descargas/actualizarDescarga/{id}','DescargasController@actualizarDescarga');
    Route::delete('home/descargas/eliminarDescarga/{id}','DescargasController@eliminarDescarga');
    //Calidad
    Route::get('home/calidad/editarSliders','SlidersController@EditarSlidersCalidad')->name('calidad.sliders');
    Route::post('home/calidad/agregarslider','SlidersController@AgregarSlider');
    Route::get('home/calidad/editarslider/{id}','SlidersController@EditarSlider');
    Route::delete('home/calidad/eliminarslider/{id}','SlidersController@EliminarSlider');
    Route::put('home/calidad/actualizarslider/{id}','SlidersController@ActualizarSlider');
    Route::get('home/calidad/editarCalidad','CalidadController@editarContenido')->name('editar.calidad');
    Route::put('home/calidad/actualizarTexto/{id}','CalidadController@editarTexto');
    Route::post('home/calidad/agregarCertificado','CalidadController@agregarCertificado');
    Route::get('home/calidad/editarCertificado/{id}','CalidadController@editarCertificado');
    Route::put('home/calidad/actualizarCertificado/{id}','CalidadController@actualizarCertificado');
    Route::delete('home/calidad/eliminarCertificado/{id}','CalidadController@eliminarCertificado');
    //Contacto
    Route::get('home/contacto/editarcontenido','ContactoController@Editarcontenido')->name('contacto.contenido');
    Route::get('home/contacto/editarContacto/{id}','ContactoController@EditarContacto');
    Route::put('home/contacto/actualizarContacto/{id}','ContactoController@ActualizarContacto');
    Route::put('home/contacto/actualizarIconoSup/{id}','ContactoController@actualizarIconoSup');
    Route::put('home/contacto/actualizarIconoInf/{id}','ContactoController@actualizarIconoInf');
    //Usuarios
    Route::get('home/usuarios','UsuariosController@index')->name('usuarios.index');
    Route::post('home/usuarios/crearusuario','UsuariosController@store');
    Route::get('home/usuarios/verusuarios','UsuariosController@verUsuarios')->name('verusuarios');
    Route::get('home/usuarios/editarusuario/{id}','UsuariosController@edit');
    Route::put('home/usuarios/actualizarusuario/{id}','UsuariosController@update');
    Route::delete('home/usuarios/eliminarusuario/{id}','UsuariosController@destroy');
    //Metadatos
    Route::get('home/metadatos/vercontenido','MetadatosController@show')->name('vermetadatos');
    Route::get('home/metadatos/editarmetadato/{id}','MetadatosController@edit');
    Route::put('home/metadatos/actualizarmetadato/{id}','MetadatosController@update');

});
