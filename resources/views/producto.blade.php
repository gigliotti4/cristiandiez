@extends('layouts.plantilla')
@section('contenido')

<div class="breadcrumb-container mt-2">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ route('inicio') }}">Inicio</a></li>
                    @if($categoriaSeleccionada)
                        <li class="breadcrumb-item"><a href="{{ route('subcategorias', $categoriaSeleccionada->id) }}">{{ $categoriaSeleccionada->titulo }}</a></li>
                    @endif
                    @if($subcategoriaSeleccionada)
                        <li class="breadcrumb-item"><a href="{{ route('subcategorias.productos', $subcategoriaSeleccionada->id) }}">{{ $subcategoriaSeleccionada->titulo }}</a></li>
                    @endif
                    <li class="breadcrumb-item active" aria-current="page">{{ $producto->titulo }}</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<div class="container my-5">
    <div class="row">
        <div class="col-md-3 p-0">
            <div id="accordion" class="panel-group">
                @foreach ($categorias as $cat)
                    <div class="panel">
                        <div class="panel-heading">
                            <p style="display:inline;">
                                <span href="#panel{{$cat->id}}" data-target="#panel{{$cat->id}}" aria-expanded="{{ $catsel == $cat->id ? 'true' : 'false' }}" aria-controls="panel{{$cat->id}}" class="accordion-toggle {{ $catsel == $cat->id ? '' : 'collapsed' }}" data-toggle="collapse" data-parent="#accordion"></span>
                                @if(($cat->productos()->get())->isEmpty())
                                    <a href="{{route('subcategorias', $cat->id)}}" class="">{{ $cat->titulo }}</a>
                                @else
                                    <a href="{{route('verProdPorCategorias', $cat->id)}}" class="">{{ $cat->titulo }}</a>
                                @endif
                            </p>
                        </div>
                        <div id="panel{{$cat->id}}" class="panel-collapse collapse {{ $catsel == $cat->id ? 'show' : '' }}">
                            <div class="panel-body">
                                @if(($cat->subcategorias()->get())->isEmpty())
                                    @foreach ($cat->productos()->get() as $prod)
                                        <a class="{{ $prod->id == $prodsel ? 'bg-light' : '' }}" href="{{route('producto', $prod->id)}}">{{ $prod->titulo }}</a>
                                    @endforeach
                                @else
                                    @foreach ($cat->subcategorias()->get() as $subcategoria)
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <p style="display:inline;">
                                                    <span href="#panelsub{{$subcategoria->id}}" data-target="#panelsub{{$subcategoria->id}}" aria-expanded="{{ $subcatsel == $subcategoria->id ? 'true' : 'false' }}" aria-controls="panelsub{{$subcategoria->id}}" class="accordion-toggle {{ $subcatsel == $subcategoria->id ? '' : 'collapsed' }}" data-toggle="collapse" data-parent="#accordion"></span>
                                                    <a href="{{route('subcategorias.productos', $subcategoria->id)}}">{{ $subcategoria->titulo }}</a>
                                                </p>
                                            </div>
                                            <div id="panelsub{{$subcategoria->id}}" class="panel-collapse collapse {{ $subcatsel == $subcategoria->id ? 'show' : '' }}">
                                                <div class="panel-body">
                                                    @foreach ($subcategoria->productos()->get() as $prod)
                                                        <a style="background: #F6F6F6 0% 0% no-repeat padding-box;" href="{{route('producto', $prod->id)}}">{{ $prod->titulo }}</a>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="col-md-9">
    <div class="row">
        <!-- Fotorama Galería de imágenes -->
        <div class="col-md-8 col-lg-8" style="padding-right: 0px">
            <div class="fotorama " data-nav="thumbs" data-width="100%">
                <img class="" src="{{asset('images/productos/'.$producto->imagen)}}">
                <img class="" src="{{asset('images/productos/'.$producto->imagen_dos)}}">
            </div>
        </div>

        <!-- Información del producto -->
        <div class="col-md-4 col-lg-4">
            <div class="producto-titulo">{{ $producto->titulo }}</div>
            <div class="producto-texto my-4">{!! $producto->texto !!}</div>
            
            @if($producto->fichatecnica != null)
                <div class="d-flex justify-content-md-start justify-content-lg-start">
                    <button class="btn btn-outline-light producto-btn-ficha">
                        <a class="link_ficha" href="{{asset('fichas/'.$producto->fichatecnica)}}" download="">Ficha Técnica
                            <i class="fas fa-file-download ml-2"></i>
                        </a>
                    </button>
                    <button class="btn ml-md-3 producto-btn-presupuesto">
                        <a class="link_presupuesto" href="{{route('presupuesto')}}">Solicitar Presupuesto</a>
                    </button>
                </div>
            @else
                <button class="btn producto-btn-presupuesto">
                    <a class="link_presupuesto" href="{{route('presupuesto')}}">Solicitar Presupuesto</a>
                </button>
            @endif
        </div>

        <!-- Ventajas -->
        <div class="col-md-12 mt-3">
            <div class="ventajas-titulo">Ventajas</div>
            <div class="row mt-3">
                @if($ventajas != null)
                    @foreach($ventajas as $ventaja)
                        <div class="col-md-3 text-center mt-3">
                            <img src="{{asset('images/productos/'.$ventaja->imagen)}}" class="ventaja-imagen">
                            <div class="ventaja-texto">{{ $ventaja->titulo }}</div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>

        <!-- Descripción del producto -->
        <div class="col-md-12 mt-3">
            <div class="descripcion-titulo">Descripción</div>
            <div class="mt-3 producto-descripcion">{!! $producto->descripcion !!}</div>
        </div>

     <!-- Productos Relacionados -->
@if($prodRelUno || $prodRelDos || $prodRelTres)
    <div class="col-md-12 col-lg-12 mt-3">
        <div class="productos-relacionados-titulo">Productos Relacionados</div>
        <div class="row justify-content-center ">
            @if($prodRelUno)
                <div class="col-md-4 col-10 col-sm-12 mt-5 mx-md-0 mx-auto">
                    <div class="contenedor">
                        <div class="image-wrapper">
                            <div class="border image" 
                                style="background-image: url({{url('/')}}/images/productos/{{$prodRelUno->imagen}});
                                    background-size: contain;
                                    background-repeat: no-repeat;
                                    background-position: center;
                                    height: 303px;
                                    width: 100%;">

                                <!-- La letra "A" sobre toda la imagen -->
                                <a href="{{route('producto', $prodRelUno->id)}}" class="overlay">
                                    <a href="{{route('producto', $prodRelUno->id)}}" class="text">
                                       
                                    </a>
                                </a>
                            </div>
                        </div>
                        <div class="mt-3 categorias__titulo">
                            <a href="{{route('producto', $prodRelUno->id)}}" style="color: #E10915; text-transform: uppercase; font-family: 'Montserrat-SemiBold'; font-size: 17px;">
                                {{$prodRelUno->titulo}}
                            </a>
                        </div>   
                    </div>
                </div>
            @endif
            @if($prodRelDos)
                <div class="col-md-4 col-10 col-sm-12 mt-5 mx-md-0 mx-auto">
                    <div class="contenedor">
                        <div class="image-wrapper">
                            <div class="border image" 
                                style="background-image: url({{url('/')}}/images/productos/{{$prodRelDos->imagen}});
                                    background-size: contain;
                                    background-repeat: no-repeat;
                                    background-position: center;
                                    height: 303px;
                                    width: 100%;">

                                <!-- La letra "A" sobre toda la imagen -->
                                <a href="{{route('producto', $prodRelDos->id)}}" class="overlay">
                                    <a href="{{route('producto', $prodRelDos->id)}}" class="text">
                                       
                                    </a>
                                </a>
                            </div>
                        </div>
                        <div class="mt-3 categorias__titulo">
                            <a href="{{route('producto', $prodRelDos->id)}}" style="color: #E10915; text-transform: uppercase; font-family: 'Montserrat-SemiBold'; font-size: 17px;">
                                {{$prodRelDos->titulo}}
                            </a>
                        </div>   
                    </div>
                </div>
            @endif
            @if($prodRelTres)
                <div class="col-md-4 col-10 col-sm-12 mt-5 mx-md-0 mx-auto">
                    <div class="contenedor">
                        <div class="image-wrapper">
                            <div class=" image" 
                                style="background-image: url({{url('/')}}/images/productos/{{$prodRelTres->imagen}});
                                    background-size: contain;
                                    background-repeat: no-repeat;
                                    background-position: center;
                                    height: 303px;
                                    width: 100%;">

                                <!-- La letra "A" sobre toda la imagen -->
                                <a href="{{route('producto', $prodRelTres->id)}}" class="overlay">
                                    <a href="{{route('producto', $prodRelTres->id)}}" class="text">
                                       
                                    </a>
                                </a>
                            </div>
                        </div>
                        <div class="mt-3 categorias__titulo">
                            <a href="{{route('producto', $prodRelTres->id)}}" style="color: #E10915; text-transform: uppercase; font-family: 'Montserrat-SemiBold'; font-size: 17px;">
                                {{$prodRelTres->titulo}}
                            </a>
                        </div>   
                    </div>
                </div>
            @endif
        </div>
    </div>
@endif

    </div>
</div>
    </div>
</div>

@endsection