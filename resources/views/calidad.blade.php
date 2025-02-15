@extends('layouts.plantilla')
@section('contenido')
    <style>
        .link:hover{
        text-decoration: none;
    }
    .texto_link{
        color:#7E90A1;
    }
    .texto_link:hover{
        color:#7E90A1;
    }
    </style>



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
                    background-position:center;
                    height:400px;
                    ">
                    </div>
                    <div class="d-none d-sm-block d-md-block" style="position: absolute;bottom: 50%;left:25%">
                    {!!$slider->texto!!}
                    </div>
              </div>
               @else 
               <div class="carousel-item">
               <div style=" 
                background-image:url('{{url('/')}}/images/sliders/{{$slider->imagen}}');
                background-size:cover;
                background-repeat:no-repeat;
                background-position:center;
                height:400px;
                ">
                </div>
                <div class="carousel-caption d-none d-md-block">
                    {!!$slider->texto!!}
                </div>
              </div>
               @endif
           @endforeach 
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <i class="fas fa-arrow-circle-left fa-lg" style="color: #E10915"></i>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <i class="fas fa-arrow-circle-right fa-lg" style="color: #E10915"></i>
          <span class="sr-only">Next</span>
        </a>
    </div>
    <!--Textos-->
    <div class="container my-5">
        <div class="row">
            <div class="col-md-6" style="font-size: 14px" data-aos="fade-right">
                {!!$textoizq->texto!!}
            </div>
            <div class="col-md-6"  style="font-size: 14px" data-aos="fade-left">
                {!!$textoder->texto!!}
            </div>
        </div>
    </div>
    <!--Certificados
    <div class="container">
        <div class="row">
            @foreach ($certificados as $item)
                <div class="col-md-6 mt-3 mt-md-0">
                    <div class="card">
                        <div class="card-header shadow-sm"  style="background-color: #F8F8F8">
                            <div style="font-family: 'Montserrat-Regular';color:#D20612;font-size:17px;"> {{$item->titulo}}
                                <div class="float-right">
                                    <a class="link  " href="{{asset('certificados/'.$item->archivo)}}" download="">
                                    <i class="fas fa-file-download" style="color: #D5290D;font-size:25px"></i>
                                    </a>
                                   </div>
                            </div>
                           <div style="font-family: 'Montserrat-Regular';color:#7E90A1;font-size:14px;">
                            <a class="texto_link  " href="{{asset('certificados/'.$item->archivo)}}" download="">
                                DESCARGAR
                            </a>
                            </div>
                           
                        </div>
                       
                    </div>
                </div>
            @endforeach
            
        </div>
    </div>-->
@endsection