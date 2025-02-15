@extends('home')
@section('contenido')
    <script src="{{asset('js/inicio.js')}}"></script>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                @if(session()->has('success'))
                <script>
                    swal("Icono editado","","success");
                </script>
             @endif
                <div class="card">
                    <div class="card-header">
                        Editar Iconos
                    </div>
                    <div class="card-body">
                        <div class="row">
                        @foreach ($iconos as $icono)
                            <div class="col-md-4">
                            <form action="{{route('inicio.actualizarIcono',$icono->id)}}" enctype="multipart/form-data" method="POST">
                                @csrf
                                <input type="hidden" name="_method" value="PUT">
                                    <label>Icono</label>
                                    <img class="img-fluid" src="{{asset('images/inicio/'.$icono->icono)}}">
                                    <input type="file" class="form-control-file" name="iconoe">
                                    <small class="text-muted">Resolución Recomendada 70px * 70px</small>
                                    <br>
                                    <label>Texto</label>
                            <input type="text" class="form-control" name="texto" value="{{$icono->texto}}">
                                    <div class="text-center mt-3">
                                        <button type="submit" class="btn btn-info">
                                            Modificar
                                        </button>
                                    </div>
                                </form>
                            </div>
                        @endforeach
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Editar Seccion Presupuesto
                    </div>
                    <form id="formPresupuesto">
                        @csrf
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <img class="img-fluid" src="{{asset('images/inicio/'.$seccionPresupuesto->imagen)}}">
                                <small class="text-muted">Resolucion 1366px * 260px</small>
                                <input type="file" class="form-control-file" name="imagenPresupuesto">
                            </div>
                            <div class="col-md-6">
                                <div id="summerpresupuesto">{!!$seccionPresupuesto->texto!!}</div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-center">
                        <button class="btn btn-info" type="submit">
                            Modificar
                        </button>
                    </div>
                    </form>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Editar Clientes
                        <div class="float-right">
                            <button class="btn btn-outline-info" data-toggle="modal" data-target="#agregar">
                                <i class="fas fa-plus"></i>
                                Agregar Cliente
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table ">
                            <thead>
                                <th>Orden</th>
                                <th>Logo</th>
                                <th>Accion</th>
                            </thead>
                            <tbody>
                                @foreach ($clientes as $cliente)
                                <tr>
                                    <td>
                                        {{$cliente->orden}}
                                    </td>
                                    <td>
                                    <img src="{{asset('images/inicio/'.$cliente->imagen)}}" class="img-fluid" width="100px">
                                    </td>
                                    <td>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#editar" onclick="editarCliente({{$cliente->id}})" ><i class="fas fa-pencil-alt"></i></button>
                                        <button class="btn btn-danger" onclick="eliminarCliente({{$cliente->id}})" ><i class="fas fa-trash-alt"></i></button>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- Agregar -->
<div class="modal fade" id="agregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Agregar Cliente</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="agregarCliente">
            <meta name="csrf-token" content="{{ csrf_token() }}">
        <div class="modal-body">
            <label>Orden</label>
            <input type="text" class="form-control" id="orden">
            <label>Logo Cliente</label>
            <input type="file" class="form-control-file" id="imagen">
            <small class="text-muted"><strong> Resolucion Recomendada 174px * 80px </strong> </small>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-success">Agregar Cliente</button>
        </div>
        </form>
      </div>
    </div>
</div>
<!-- Editar -->
<div class="modal fade" id="editar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Editar Cliente</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="actualizarCliente">
            <input type="hidden" id="id" value="">
            <meta name="csrf-token" content="{{ csrf_token() }}">
        <div class="modal-body">
            <label>Orden</label>
            <input type="text" class="form-control" id="ordenedit">
            <label>Imagen</label>
            <img src="" id="preview" class="img-fluid" width="100px">
            <input type="file" class="form-control-file" id="imagenedit">
            <small class="text-muted"><strong> Resolucion Recomendada 174px * 80px </strong> </small>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-success">Editar Cliente</button>
        </div>
        </form>
      </div>
    </div>
</div>
@endsection