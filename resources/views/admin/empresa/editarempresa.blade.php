@extends('home')
@section('contenido')
<script src="{{asset('js/empresa.js')}}"></script>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Editar Contenido Empresa
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <form id="formTextoIzq">
                                    @csrf
                                <label>Texto Empresa</label>
                                <input type="hidden" id="idizq" value="{{$textoizq->id}}">
                                <div id="summertextoizq">{!!$textoizq->texto!!}</div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-info">
                                        Modificar
                                    </button>
                                </div>
                                </form>
                            </div>
                            <div class="col-md-6">
                                <form id="formTextoDer">
                                    @csrf
                                <label>Texto Aplicaciones</label>
                                <input type="hidden" id="idder" value="{{$textoder->id}}">
                                <div id="summertextoder">{!!$textoder->texto!!}</div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-info">
                                        Modificar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection