@extends('layouts.plantilla')
@section('contenido')
    
  <!-- Sliders -->
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" data-interval="2000">
    
    <!-- Indicadores -->
    <ol class="carousel-indicators">
        @foreach ($sliders as $index => $slider)
            <li data-target="#carouselExampleCaptions" data-slide-to="{{ $index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
        @endforeach
    </ol>

    <div class="carousel-inner">
        @foreach ($sliders as $slider)
            <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                <div style="
                    background-image: url('{{ url('/') }}/images/sliders/{{ $slider->imagen }}');
                    background-size: cover;
                    background-repeat: no-repeat;
                    background-position: center;
                    height: 550px;">
                </div>
                @if($slider->texto && $slider->texto !== "<p><br></p>")
                    <div class="carousel-caption d-none d-md-block mx-md-auto" style="bottom: 40%">
                        <div style="background-color: rgba(83, 83, 83, 0.6);">
                            {!! $slider->texto !!}
                        </div>
                    </div>
                @endif
            </div>
        @endforeach
    </div>

    <!-- Controles de navegación -->
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <i class="fas fa-arrow-circle-left fa-lg" style="color: white"></i>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <i class="fas fa-arrow-circle-right fa-lg" style="color: white"></i>
        <span class="sr-only">Next</span>
    </a>
</div>



    <!--Textos-->
    <div class="container my-5">
        <div class="row">
            <div class="col-md-6 " data-aos="fade-right">
                {!!$textoizq->texto!!}
                <div class="row">
                    @foreach ($iconos as $icono)
                    <div class="col-md-4 text-center">
                        <img class="img-fluid" src="{{asset('images/inicio/'.$icono->icono)}}">
                        <div style="font-family: 'Montserrat-Regular';color:#716F6E;font-size:14px">
                        {{$icono->texto}}
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="col-md-6 lista" data-aos="fade-left">
                {!!$textoder->texto!!}
            </div>
        </div>
    </div>
@endsection