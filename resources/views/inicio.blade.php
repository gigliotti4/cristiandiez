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
                    height:450px;
                    ">
                    </div>
                    <div class="carousel-caption d-none d-md-block mx-md-auto" style="bottom:25%" >
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
                height:450px;
                ">
                </div>
                <div class="carousel-caption d-none d-md-block  mx-md-auto" style="bottom:25%">
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
      <!--Iconos-->
      <div class="container my-5" data-aos="fade-up">
  <div class="row">
    <div class="col-md-8 mx-auto">
      <div class="row">
        @foreach ($iconos as $index => $icono)
          <div class="col-md-4 text-center" data-aos="fade-up" data-aos-delay="{{ $index * 100 }}">
            <img class="img-fluid" src="{{ asset('images/inicio/' . $icono->icono) }}">
            <div style="font-family: 'Montserrat-Regular'; color: #716F6E; font-size: 14px;">
              {{ $icono->texto }}
            </div>
          </div>
        @endforeach
      </div>
    </div>
  </div>
</div>

<style>
    .category-container {
        position: relative;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: left;
        overflow: hidden;
    }
    
    .category-content {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
        height: 240px;
        background: #fff;
        padding: 15px;
        border-radius: 10px;
        border: 1px solid #f1f1f1;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    
    .category-info {
        flex: 1;
    }
    
    .category-title {
        font-family: 'Montserrat-SemiBold';
        color:#E10915;
        font-size:16px;
        text-transform:uppercase;
    }
    
    .category-subtitle {
        font-size: 1rem;
        color: #6c757d;
    }
    
    .category-image-wrapper {
        width: 150px;
        height: 150px;
        overflow: hidden;
        border-radius: 10px;
    }
    
    .category-image {
        width: 100%;
        height: 100%;
        background-size: contain;
        background-repeat: no-repeat;
        background-position: center;
        transition: transform 0.3s ease-in-out;
    }
    
    .category-image-wrapper:hover .category-image {
        transform: scale(1.1);
    }
    
    .category-overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border: 1px;
        z-index: 1;
    }
</style>

<div class="container my-5">
    <div class="text-center titulo__seccion" data-aos="fade-up">
                Nuestros Categorias
                <div class="mx-auto mt-2 border__secciones"></div>
            </div>
    <div class="row justify-content-center">
        @foreach ($categorias as $index => $categoria)
            <div class="col-md-6 col-10 col-sm-12 mt-5" data-aos="fade-up" data-aos-delay="{{ ($index % 4) * 100 }}">
                <div class="category-container">
                    <div class="category-content">
                        <div class="category-info">
                            <div class="category-title">{{$categoria->titulo}}</div>
                            <div class="category-subtitle mt-2">{{$categoria->texto}}</div>
                        </div>
                        <div class="category-image-wrapper">
                            <div class="category-image"
                                style="background-image: url({{url('/')}}/images/productos/{{$categoria->imagen}});">
                            </div>
                        </div>
                    </div>
                    @if(($categoria->subcategorias()->get())->isEmpty())
                        <a class="category-overlay" href="{{route('verProdPorCategorias',$categoria->id)}}"></a>
                    @else 
                        <a class="category-overlay" href="{{route('subcategorias',$categoria->id)}}"></a>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
</div>





    <!--Presupuesto-->
    <div class="row-fluid pb-5 my-5" style="width:100%; position:relative;">
        <div style="
            position: absolute; top:0; bottom:0; left:0; right:0;
            background: url({{url('/')}}/images/inicio/{{$seccionPresupuesto->imagen}});
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100%; /* Adjusted to take the height of its content */
            filter: brightness(0.5);
        "></div>

        <div class="col-md-12 py-md-5 text-center" style="color: white" 
            data-aos="fade-down" 
            data-aos-duration="800" 
            data-aos-delay="300">
            
            {!!$seccionPresupuesto->texto!!}

            <div class="mr-md-5">
                <button class="boton_presupuesto" onclick="location.href='{{route('presupuesto')}}'">
                    Solicitar Presupuesto
                </button>
            </div>
        </div>
    </div>

    <!--Clientes-->
    <div class="container my-5">
            <div class="text-center titulo__seccion" data-aos="fade-up">
                Nuestros Clientes
                <div class="mx-auto mt-2 border__secciones"></div>
            </div>
        <div class="autoplay my-5" data-aos="fade-up"  data-aos-delay="200">
            @foreach ($clientes as $item)
            <div class="text-center" style="min-height:80px;
            min-width:175px;
            background-image: url({{url('/')}}/images/inicio/{{$item->imagen}}); 
            background-size: contain;
            background-position:  center; 
            background-repeat: no-repeat;
             ">
            </div>
            @endforeach
        </div>

    </div>
    
@endsection