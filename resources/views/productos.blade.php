@extends('layouts.plantilla')
@section('contenido')

<div class="breadcrumb-container mt-2">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ route('inicio') }}">Inicio</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('subcategorias', $categoriaSeleccionada->id) }}">{{ $categoriaSeleccionada->titulo }}</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $subcategoriaSeleccionada->titulo }}</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<div class="container my-5">
    <div class="text-center titulo__seccion" data-aos="fade-up">
        {{ $subcategoriaSeleccionada->titulo }}
        <div class="mx-auto mt-2 border__secciones"></div>
    </div>
    <div class="row justify-content-center ">
    @if($productos->isEmpty())
        <div class="display-4 my-5">
            No hay productos
        </div>
    @else 
        @foreach ($productos as $prod)
            <div class="col-md-3 col-10 col-sm-12 mt-5 mx-md-0 mx-auto">
                <div class="contenedor">
                    <div class="image-wrapper">
                        <div class=" image" 
                            style="background-image: url({{url('/')}}/images/productos/{{$prod->imagen}});
                                background-size: contain;
                                background-repeat: no-repeat;
                                background-position: center;
                                height: 303px;
                                width: 100%;">

                            <!-- La letra "A" sobre toda la imagen -->
                             <a href="{{route('producto', $prod->id)}}" class="overlay">
                                <a href="{{route('producto', $prod->id)}}" class="text" >
                                   
                                </a>
                            </a>
                        </div>
                    </div>
                    <div class="mt-3 categorias__titulo">
                        <a href="{{route('producto', $prod->id)}}" style="color: #E10915; text-transform: uppercase; font-family: 'Montserrat-SemiBold'; font-size: 17px;">
                            {{$prod->titulo}}
                        </a>
                    </div>   
                </div>
            </div>
        @endforeach
    @endif
</div>

</div>

@endsection