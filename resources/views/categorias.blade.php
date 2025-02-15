@extends('layouts.plantilla')
@section('contenido')

   
<div class="breadcrumb-container mt-2">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Productos</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

  
       
   </div>
<div class="container my-5" data-aos="fade-up">
<div class="row justify-content-center justify-content-md-between">
        @foreach ($categorias as $index => $categoria)
            <div class="col-md-3 col-10 col-sm-12 mt-5" data-aos="fade-up" data-aos-delay="{{ ($index % 4) * 100 }}">
                <div class="contenedor">
                    <!-- Contenedor de imagen con overflow para evitar que el zoom desborde -->
                    <div class="image-wrapper">
                        <div class="border image"
                            style="background-image: url({{url('/')}}/images/productos/{{$categoria->imagen}});
                                background-size:contain;
                                background-repeat:no-repeat;
                                background-position:center;
                                height:303px;
                                width:100%;">
                        </div>
                    </div>

                    @if(($categoria->subcategorias()->get())->isEmpty())
                        <a class="overlay" href="{{route('verProdPorCategorias',$categoria->id)}}">
                            <a class="text" href="{{route('verProdPorCategorias',$categoria->id)}}">
                                <i class="fas fa-plus fa-lg"></i>
                            </a>
                        </a>
                    @else 
                        <a class="overlay" href="{{route('subcategorias',$categoria->id)}}">
                            <a class="text" href="{{route('subcategorias',$categoria->id)}}">
                                <i class="fas fa-plus fa-lg"></i>
                            </a>
                        </a>
                    @endif

                    <div class="mt-3 categorias__titulo">
                        {{$categoria->titulo}}
                    </div>
                    <div class="categorias__subtitulos mt-2">
                        {{$categoria->texto}}
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection