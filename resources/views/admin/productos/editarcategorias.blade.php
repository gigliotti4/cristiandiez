@extends('home')
@section('contenido')
<script src="{{asset('js/productos.js')}}"></script>
<div class="container my-3">
    <div class="row">
        <!--Categorias-->
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    Editar Categorias
                    <div class="float-right">
                      <button class="btn btn-outline-info" data-toggle="modal" data-target="#modalagregar">
                        <i class="fas fa-plus"></i>
                        Agregar Categoria
                      </button>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table ">
                        <thead>
                            <th>Orden</th>
                            <th>Imagen</th>
                            <th>Titulo</th>
                            <th>Acciones</th>
                        </thead>
                        @foreach($categorias as $categoria)
                        <tr>
                            <td>{{$categoria->orden}}</td>
                            <td><img src="{{asset('images/productos/'.$categoria->imagen)}}" width="200px"></td>
                            <td>{{$categoria->titulo}}</td>
                            <td>
                                <div class="form-button-action">
                                    <button   class="btn btn-link btn-primary btn-lg" data-toggle="modal" data-target="#modaledit" onclick="editarcategoria({{$categoria->id}})">
                                        <i class="fa fa-edit"></i>
                                        </button>

                                        <button    class="btn btn-link btn-danger  "  onclick="eliminarcategoria({{$categoria->id}})" >
                                        <i class="fa fa-times"></i>
                                        </button>        
                                </div>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
        <!--Subcategorias-->
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              Editar SubCategorias
              <div class="float-right">
                <button class="btn btn-outline-info" data-toggle="modal" data-target="#modalagregarsubcategoria">
                  <i class="fas fa-plus"></i>
                  Agregar Subcategoria
                </button>
              </div>
            </div>
            <div class="card-body">
              <table class="table ">
                <thead>
                    <th>Orden</th>
                    <th>Imagen</th>
                    <th>Titulo</th>
                    <th>Categoria</th>
                    <th>Acciones</th>
                </thead>
                @foreach($subcategorias as $subcategoria)
                <tr>
                    <td>{{$subcategoria->orden}}</td>
                    <td><img src="{{asset('images/productos/'.$subcategoria->imagen)}}" width="200px"></td>
                    <td>{{$subcategoria->titulo}}</td>
                    <td>{{$subcategoria->categoria->titulo}}</td>
                    <td>
                        <div class="form-button-action">
                            <button   class="btn btn-link btn-primary btn-lg" data-toggle="modal" data-target="#modaleditarsubcategoria" onclick="editarSubCategoria({{$subcategoria->id}})">
                                <i class="fa fa-edit"></i>
                                </button>

                                <button    class="btn btn-link btn-danger  "  onclick="eliminarSubCategoria({{$subcategoria->id}})" >
                                <i class="fa fa-times"></i>
                                </button>        
                        </div>
                    </td>
                </tr>
                @endforeach
              </table>
            </div>
          </div>
        </div>
    </div>
</div>
<!--Agregar-->
<div class="modal fade" id="modalagregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar Categoria</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="agregarcategoria">
              <meta name="csrf-token" content="{{ csrf_token() }}">
          <div class="form-group">
               <label>Orden</label>
            <input type="text" name="orden" id="orden" class="form-control">
            
            <label>Imagen</label>
            <div id="preview"></div>
            <input type="file"  id="img"  class="form-control-file">
            <br>
            <strong>Resolucion: 265px x 265px</strong>
            <br>
              <label>Titulo</label>
              <input type="text" id="titulo" class="form-control">
              <label>Texto</label>
              <input type="text" id="texto" class="form-control">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-success">Agregar Categoria</button>
        </div>
        </form>
      </div>
    </div>
</div>
<!-- Editar -->
<div class="modal fade" id="modaledit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Editar Categoria</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
         <form id="actualizarcategoria">
         <input type="hidden" id="id-categoria" value="">
              <meta name="csrf-token" content="{{ csrf_token() }}">
               <label>Orden</label>
         <input type="text" name="orden" id="ordenedit" class="form-control">
          <br>
            <label>Imagen</label>
            <img id="img-categoria" width="200px">
            <input type="file"  id="imgcategoria" class="form-control-file">
            <br>
            <strong>Resolucion: 265px x 265px</strong>
            <br>
              <label>Titulo</label>
              <input type="text"  id="titulocategoria" class="form-control">
              <label>Texto</label>
              <input type="text" id="textoedit" class="form-control">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-success">Editar Categoria</button>
        </div>
        </form>
      </div>
    </div>
</div>
<!--Agregar Subcategoria-->
<div class="modal fade" id="modalagregarsubcategoria" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agregar Subcategoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="agregarSubcategoria">
            <meta name="csrf-token" content="{{ csrf_token() }}">
          <div class="form-group">
             <label>Orden</label>
          <input type="text" name="orden"  class="form-control" required> 
          <label>Titulo</label>
          <input type="text" name="titulo" class="form-control" required>
          <label>Imagen</label>
          <div id="preview"></div>
          <input type="file"  name="imagensub"  class="form-control-file" required>
          <strong>Resolucion: 265px x 265px</strong>
          <label>Categoria</label>
          <select class="form-control" name="category_id" required>
          @if (!$categorias->isEmpty())
            <option value="" selected>Seleccionar Categoria</option>
            @foreach ($categorias as $categoria)
              <option value="{{$categoria->id}}">{{$categoria->titulo}}</option>
            @endforeach
          @else
            <option value="" selected>No hay categorias cargadas</option>
          @endif
          </select>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="submit" class="btn btn-success">Agregar Subcategoria</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!--Editar Subcategoria-->
<div class="modal fade" id="modaleditarsubcategoria" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Subcategoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="editarSubcategoria">
            <meta name="csrf-token" content="{{ csrf_token() }}">
          <div class="form-group">
             <label>Orden</label>
          <input type="hidden" id="id_subcategoria">
          <input type="text" id="ordensubcategoria" name="orden"  class="form-control" > 
          <label>Titulo</label>
          <input type="text" id="titulosubcategoria" name="titulo" class="form-control" >
          <label>Imagen</label>
          <img id="previewsubcategoria" width="200px">
          <input type="file"  name="imagensubedit"  class="form-control-file">
          <strong>Resolucion: 265px x 265px</strong>
          <label>Categoria</label>
          <select class="form-control" id="select_categorias" name="category_id" required>
          @if (!$categorias->isEmpty())
            <option value="" selected>Seleccionar Categoria</option>
            @foreach ($categorias as $categoria)
              <option value="{{$categoria->id}}">{{$categoria->titulo}}</option>
            @endforeach
          @else
            <option value="" selected>No hay categorias cargadas</option>
          @endif
          </select>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="submit" class="btn btn-success">Editar Subcategoria</button>
      </div>
      </form>
    </div>
  </div>
</div>
@endsection