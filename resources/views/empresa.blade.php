@extends('layouts.plantilla')
@section('contenido')
    
     <!--Sliders-->
     <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
           @foreach ($sliders as $slider)
               @if($loop->first)
               <div class="carousel-item active">
                <div style=" 
                    background-image:url('{{url('/')}}/images/sliders/{{$slider->imagen}}');
                    background-size:cover;
                    background-repeat:no-repeat;
                    height:350px;
                    ">
                    </div>
                    <div class="d-none d-sm-block d-md-block mx-md-auto" style="position: absolute;bottom: 50%;left:25%">
                        @if($slider->texto!=null || $slider->texto!="" || $slider->texto=="<p><br></p>")
                        <div style="background-color:rgba(83, 83, 83, 0.6);">
                            {!!$slider->texto!!}
                        </div>
                        @endif
                    </div>
              </div>
               @else 
               <div class="carousel-item">
               <div style=" 
                background-image:url('{{url('/')}}/images/sliders/{{$slider->imagen}}');
                background-size:cover;
                background-repeat:no-repeat;
                height:350px;
                ">
                </div>
                <div class="carousel-caption d-none d-md-block">
                        @if($slider->texto!=null || $slider->texto!="" || $slider->texto=="<p><br></p>")
                        <div style="background-color:rgba(83, 83, 83, 0.6);">
                            {!!$slider->texto!!}
                        </div>
                        @endif
                </div>
              </div>
               @endif
           @endforeach 
        </div>
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