@extends('home')
@section('contenido')
    <script src="{{asset('js/calidad.js')}}"></script>
    <div class="container-fluid mt-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Editar Textos Calidad
                    </div>
                    <div class="card-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6">
                                    <form id="formTextIzq">
                                        @csrf
                                    <div id="summertextoizq">{!!$textoizq->texto!!}</div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-info">
                                            Modificar
                                        </button>
                                    </div>
                                    </form>
                                </div>
                                <div class="col-md-6">
                                    <form id="formTextDer">
                                        @csrf
                                    <div id="summertextoder">{!!$textoder->texto!!}</div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-info">
                                            Modificar
                                        </button>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Editar Certificados
                        <div class="float-right">
                            <button class="btn btn-outline-info" data-toggle="modal" data-target="#modalagregar">
                                <i class="fas fa-plus"></i>
                                Agregar Certificado
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <th>Nombre</th>
                            <th>Archivo</th>
                            <th>Acciones</th>
                            @foreach ($certificados as $certificado)
                                <tr>
                                    <td>
                                        {{$certificado->titulo}}
                                    </td>
                                    <td>
                                        {{$certificado->archivo}}
                                    </td>
                                    <td>
                                        <div class="form-button-action">
                                            <button   class="btn btn-link btn-primary btn-lg" data-toggle="modal" data-target="#modaleditar" onclick="editarCertificado({{$certificado->id}})">
                                                <i class="fa fa-edit"></i>
                                                </button>
        
                                                <button    class="btn btn-link btn-danger  "  onclick="eliminarCertificado({{$certificado->id}})" >
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
          <h5 class="modal-title" id="exampleModalLabel">Agregar Certificado</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="agregarcertificado">
              <meta name="csrf-token" content="{{ csrf_token() }}">
          <div class="form-group">
            <label for="orden">Orden</label>
            <input type="text" class="form-control" name="orden" id="orden">
            <label>Titulo</label>
            <input type="text"  id="titulo" class="form-control">
            <br>
            <label>Certificado</label>
            <input type="file"  id="certificado"  class="form-control-file">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-info">Agregar Certificado</button>
        </div>
        </form>
      </div>
    </div>
</div>
<!--Editar-->
<div class="modal fade" id="modaleditar" tabindex="-1" role="dialog" aria-labelledby="modaleditar" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalCenterTitle">Editar Certificado</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form id="editarcertificado" enctype="multipart/form-data">
            <meta name="csrf-token" content="{{ csrf_token() }}">
            <input type="hidden" name="id" id="id" value="">

            <div class="modal-body">
                <label for="orden">Orden</label>
                <input type="text" class="form-control" id="ordenedit" name="orden">
                <label for="tituloedit">Titulo</label>
                <input type="text" class="form-control" id="tituloedit">
                <label>Certificado</label>
                <input type="file" class="form-control-file" id="certificadoedit">
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            
            <button type="submit" class="btn btn-success">Editar</button>
            </div>
        </form>
      </div>
    </div>
</div>
@endsection