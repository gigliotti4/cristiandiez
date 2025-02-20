@extends('layouts.plantilla')
@section('contenido')

<div class="breadcrumb-container mt-2">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $categoriaSeleccionada->titulo }}</li>
           
                </ol>
            </nav>
        </div>
    </div>
</div>

<div class="container my-5">
    <div class="text-left titulo__seccion" data-aos="fade-up">
         {{ $categoriaSeleccionada->titulo }}
        <div class=" mt-2 border__secciones"></div>
    </div>
    <div class="row justify-content-start ">
        @foreach ($subcategorias as $index => $subcategoria)
            <div class="col-md-3 col-12 col-sm-12 mt-5" data-aos="fade-up" data-aos-delay="{{ ($index % 4) * 100 }}">
                <div class="contenedor">
                    <!-- Contenedor de imagen con overflow para evitar que el zoom desborde -->
                    <div class="image-wrapper">
                        <div class=" image"
                            style="background-image: url({{url('/')}}/images/productos/{{$subcategoria->imagen}});
                                background-size:contain;
                                background-repeat:no-repeat;
                                background-position:center;
                                height:303px;
                                width:100%;">
                        </div>
                    </div>

                    <a class="overlay" href="{{route('subcategorias.productos', $subcategoria->id)}}">
                        
                        <a class="text" href="{{route('subcategorias.productos', $subcategoria->id)}}">
                           
                        </a>
                    </a>

                    <div class="mt-3 categorias__titulo">
                        {{$subcategoria->titulo}}
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>

@endsection