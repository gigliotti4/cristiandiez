@extends('layouts.plantilla')
@section('contenido')
    <div class="container my-5">
        <div class="row ">
            <div class="col-xl-12 col-lg-12 col-md-12 my-5 ">
            <form action="{{route('buscar')}}" method="POST">
                @csrf
                    <input type="text" class="form-control" name="buscar" placeholder="Ingrese nombre del producto a buscar">
                    <button type="submit" class="btn btn-danger mt-5">Buscar</button>
                </form>
            </div>
        </div>
    </div>
@endsection