@extends('home')
@section('contenido')
<script src="{{asset('js/descargas.js')}}"></script>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Editar Descargas
                        <div class="float-right">
                            <button class="btn btn-outline-info" data-toggle="modal" data-target="#modalAgregarDescarga">
                                <i class="fas fa-plus"></i>
                                Agregar Descarga
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <th>Orden</th>
                                <th>Imagen</th>
                                <th>Titulo</th>
                                <th>Archivo</th>
                                <th>Accion</th>
                            </thead>
                            <tbody>
                                @foreach ($descargas as $descarga)
                                    <tr>
                                        <td>{{$descarga->orden}}</td>
                                        <td><img src="{{asset('images/descargas/'.$descarga->imagen)}}" width="200px"></td>
                                        <td>{{$descarga->titulo}}</td>
                                        <td>{{$descarga->archivo}}</td>
                                        <td>
                                            <div class="form-button-action">
                                                <button   class="btn btn-link btn-primary btn-lg" data-toggle="modal" data-target="#modalEditarDescarga" onclick="editarDescarga({{$descarga->id}})">
                                                    <i class="fa fa-edit"></i>
                                                    </button>
            
                                                    <button    class="btn btn-link btn-danger  "  onclick="eliminarDescarga({{$descarga->id}})" >
                                                    <i class="fa fa-times"></i>
                                                    </button>        
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--Agregar Descarga-->
<div class="modal fade" id="modalAgregarDescarga" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Agregar Descarga</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            <form id="formAgregarDescarga">
             <label>Orden</label>
             <input type="text" name="orden" class="form-control">
             <label>Titulo</label>
             <input type="text" class="form-control" name="titulo">
             <label>Imagen</label>
             <input type="file" class="form-control-file" name="imagen">
             <small class="text-muted">Resolucion 265px * 265px</small>
             <br>
             <label>Archivo</label>
             <input type="file" class="form-control-file" name="archivo">
             <label>Tipo de Descarga</label>
             <select name="tipo_id" class="form-control" required>
                <option value="" selected>Seleccione un tipo de descarga</option> 
                @foreach ($tipos_descarga as $tipo)
                    <option value="{{$tipo->id}}">{{$tipo->titulo}}</option>
                @endforeach
             </select>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              <button type="submit" class="btn btn-primary">
                <span class="spinner-border spinner-border-sm d-none"></span>
                <span class="btn-text">Agregar Descarga</span>
              </button>
            </form>
            </div>
        </div>
    </div>
</div>
<!--Editar Descarga-->
<div class="modal fade" id="modalEditarDescarga" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Editar Descarga</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            <form id="formActualizarDescarga">
                <input type="hidden" id="idDescarga">
             <label>Orden</label>
             <input type="text" name="orden" id="ordenedit" class="form-control">
             <label>Titulo</label>
             <input type="text" class="form-control"  id="tituloedit" name="titulo">
             <label>Imagen</label>
             <img id="imgPreview" width="200px">
             <input type="file" class="form-control-file" name="imagene">
             <small class="text-muted">Resolucion 265px * 265px</small>
             <br>
             <label>Archivo</label>
             <input type="file" class="form-control-file" name="archivoe">
             <label>Tipo de Descarga</label>
             <select name="tipo_id" class="form-control" id="tipoedit" required>
                @foreach ($tipos_descarga as $tipo)
                    <option value="{{$tipo->id}}">{{$tipo->titulo}}</option>
                @endforeach
             </select>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
              <button type="submit" class="btn btn-primary">
                <span class="spinner-border spinner-border-sm d-none"></span>
                <span class="btn-text">Editar Descarga</span>
              </button>
            </form>
            </div>
        </div>
    </div>
</div>
@endsection