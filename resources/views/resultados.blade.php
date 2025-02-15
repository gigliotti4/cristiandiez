@extends('layouts.plantilla')
@section('contenido')

<div class="container my-5">
    <div class="mt-5" style="font-family: 'Montserrat-Bold'; font-size: 17px; color: #D5290D;">Resultados</div>
    <div class="row">
        @if(!$productos->isEmpty())
            @foreach ($productos as $prod)
                <div class="col-md-3 col-10 col-sm-12 mt-5 mx-md-0 mx-auto">
                    <div class="contenedor">
                        <div class="image-wrapper">
                            <div class=" image" 
                                style="background-image: url({{ url('/') }}/images/productos/{{ $prod->imagen }});
                                    background-size: contain;
                                    background-repeat: no-repeat;
                                    background-position: center;
                                    height: 303px;
                                    width: 100%;">
                                <a href="{{ route('producto', $prod->id) }}" class="overlay">
                                    <div class="text">
                                      
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="mt-3 categorias__titulo">
                            <a href="{{ route('producto', $prod->id) }}" 
                               style="color: #E10915; text-transform: uppercase; font-family: 'Montserrat-SemiBold'; font-size: 17px;">
                                {{ $prod->titulo }}
                            </a>
                        </div>   
                    </div>
                </div>
            @endforeach
        @else
            <div class="display-3 my-5">No se encontraron resultados</div>
        @endif
    </div>
</div>

@endsection