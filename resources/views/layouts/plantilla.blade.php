<!doctype html>
<html lang="en">
  <head>
    <script src="{{asset('js/jquery/jquery.js')}}"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="{{ $metadatos->keyword ?? '' }}">
    <meta name="description" content="{{ $metadatos->descripcion ?? '' }}">
    <script src="https://kit.fontawesome.com/1231344c8f.js" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="{{asset('css/fonts.css')}}">
    <link rel="stylesheet" href="{{asset('css/plantilla.css')}}">
    <link rel="stylesheet" href="{{asset('css/page.css')}}">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Cristian Diez SA</title>
  </head>
    
    	<?php 
        $routeName = Route::currentRouteName();
    
    
    switch ($routeName) {
        case 'inicio':
            $inicio_active = 'active';
            break;
        case 'empresa':
            $empresa_active = 'active';
            break;
        case 'categorias':
            $productos_active = 'active';
            break;
        case 'subcategorias':
            $productos_active= 'active';
            break;
        case 'producto':
            $productos_active= 'active';
            break;
        case 'verProdPorCategorias':
            $productos_active= 'active';
            break;
        case 'subcategorias.productos':
            $productos_active='active';
            break;
        case 'descargas': 
            $descargas_active= 'active';
            break;
        case 'calidad': 
            $calidad_active= 'active';
            break;
        case 'presupuesto': 
            $presupuesto_active= 'active';
            break;
        case 'contacto': 
            $contacto_active= 'active';
            break;
    }
            ?>
  <body>
<header class="shadow-lg">
      <div class="bg_red">
    <div class="container">
        <div class="row align-items-center">
            <!-- Columna Izquierda -->
            <div class="col-md-6 d-flex flex-wrap align-items-center">

            @foreach ($contactos as $contacto)
                    @if($contacto->dato=="linkedin")
                      
                        <a class="link_red text-white ms-2 mr-4" href="{{$contacto->texto}}">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                      
                    @endif
                    
                    @if($contacto->dato=="instagram")
                        <a class="link_red text-white ms-2 mr-4" href="{{$contacto->texto}}">
                            <i class="fab fa-instagram"></i>
                        </a>
                      
                    @endif
                    
                    @if($contacto->dato=="facebook")
                        <a class="link_red text-white ms-2 mr-4" href="{{$contacto->texto}}">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                      
                    @endif
                    
                    @if($contacto->dato=="youtube")
                        <a class="link_red text-white ms-2 mr-4" href="{{$contacto->texto}}">
                            <i class="fab fa-youtube"></i>
                        </a>
                      
                    @endif
                @endforeach
                <!-- @foreach ($contactos as $contacto)
                    @if($contacto->dato=="email")
                      
                        <i class="fas fa-envelope text-white mr-2"></i>
                        <a class="link_encabezado text-white mr-3 " href="mailto:{{$contacto->texto}}">{{$contacto->texto}}</a>
                      
                    @endif
                @endforeach

                @foreach ($contactos as $contacto)
                    @if($contacto->dato=="telefono")
                        <i class="fas fa-phone-alt text-white mr-2"></i>
                        <a class="link_encabezado text-white mr-3 " href="tel:{{$contacto->texto}}">{{$contacto->texto}}</a>
                      
                    @endif
                @endforeach -->
            </div>

            <!-- Columna Derecha -->
            <div class="col-md-6 d-flex justify-content-md-end align-items-center">
            <form action="{{route('buscar')}}" method="POST">
                @csrf
                <input type="text" class="form-control custom-search" name="buscar" placeholder="Buscar producto...">
            </form>
</div>


        </div>
    </div>
</div>

<div class="shadow-sm ">
    <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light ">
                <!-- Logo a la izquierda -->
                <a class="navbar-brand" href="{{ route('inicio') }}">
                    <img src="{{ asset('images/'.$logosup->icono) }}" alt="Logo" style="max-height: 50px;">
                </a>

                <!-- Botón toggle para móvil -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" 
                        data-target="#navbarNav" 
                        aria-controls="navbarNav" 
                        aria-expanded="false" 
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Menú a la derecha -->
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav align-items-center">
                        <!-- Ítems del menú -->
                        <!-- <li class="nav-item {{ $inicio_active ?? '' }}">
                            <a class="nav-link" href="{{ route('inicio') }}">HOME</a>
                        </li> -->
                        <li class="nav-item {{ $empresa_active ?? '' }}">
                            <a class="nav-link" href="{{ route('empresa') }}">EMPRESA</a>
                        </li>
                        <li class="nav-item dropdown {{ $productos_active ?? '' }}">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                PRODUCTOS
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                @foreach($categorias as $categoria)
                                    <a class="dropdown-item" href="{{ route('subcategorias', $categoria->id) }}">{{ $categoria->titulo }}</a>
                                @endforeach
                            </div>
                        </li>
                        <li class="nav-item {{ $descargas_active ?? '' }}">
                            <a class="nav-link" href="{{ route('descargas') }}">DESCARGAS</a>
                        </li>
                        <li class="nav-item {{ $calidad_active ?? '' }}">
                            <a class="nav-link" href="{{ route('calidad') }}">CALIDAD</a>
                        </li>
                        <li class="nav-item {{ $presupuesto_active ?? '' }}">
                            <a class="nav-link" href="{{ route('presupuesto') }}">SOLICITAR PRESUPUESTO</a>
                        </li>
                        <li class="nav-item {{ $contacto_active ?? '' }}">
                            <a class="nav-link" href="{{ route('contacto') }}">CONTACTO</a>
                        </li>
                        
                        <!-- Ícono de búsqueda -->
                        <!-- <li class="nav-item ml-2">
                            <a class="nav-link boton_buscar" href="{{ route('buscador') }}">
                                <i class="fas fa-search" style="color: #E10915;"></i>
                            </a>
                        </li> -->
                    </ul>
                </div>
            </nav>
    </div>
</div>
      



       
      </header>
      @yield('contenido')

      
     <footer  style="border-top: 9px solid #E10915">
        <!-- <a href="https://wa.me/+5491151838051">
            <span class="fa-stack fa-2x" style="position:absolute;right:100px;z-index:10;top:-25px;">
                <i class="fas fa-circle fa-stack-2x" style="color: #0DC143"></i>
                <i class="fab fa-whatsapp fa-stack-1x fa-inverse"></i>
              </span>
            </a> -->
        <div class="container py-5 mt-5" >
            <div class="row">
                <div class="col-md-4">
                <a href="{{route('inicio')}}">
                    <img class="" src="{{asset('images/'.$logoinf->icono)}}" style="max-height: 100px;">
                </a>
                    <div class="mt-5">
                        @foreach ($contactos as $item)
                            @if($item->dato=="linkedin")
                            <a class="icono_redes ml-3" href="{{$contacto->texto}}">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            @endif
                            @if($item->dato=="instagram")
                            <a class="icono_redes ml-3" href="{{$contacto->texto}}">
                                <i class="fab fa-instagram"></i>
                            </a>
                            @endif
                            @if($item->dato=="facebook")
                            <a class="icono_redes ml-3" href="{{$contacto->texto}}">
                                <i class="fab fa-facebook-f "></i>
                            </a>
                            @endif
                            @if($item->dato=="youtube")
                            <a class="icono_redes ml-3" href="{{$contacto->texto}}">
                                <i class="fab fa-youtube"></i>
                            </a>
                            @endif
                        @endforeach
                    </div>
                </div>
                <div class="col-md-4">
                    <span class="titulo__pie">
                        MAPA DEL SITIO
                    </span>
                        <div class="row mt-3" style="">
                            <div class="col-md-6">
                            <div class="mb-1"> <a class="enlace_pie" href="{{route('inicio')}}"> Home</a> </div>
                               
                                <div class="mb-1"> <a class="enlace_pie" href="{{route('empresa')}}"> Empresa</a> </div>
                                
                                <div class="mb-1"> <a class="enlace_pie" href="{{route('categorias')}}"> Productos </a></div>
                               
                                <div> <a class="enlace_pie" href="{{route('descargas')}}">Descargas</a></div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-1"> <a class="enlace_pie" href="{{route('calidad')}}">  Calidad </a></div>
                                
                                <div class="mb-1"> <a class="enlace_pie" href="{{route('presupuesto')}}">  Solicitar Presupuesto </a></div>
                                
                                <div class="mb-1"> <a class="enlace_pie" href="{{route('contacto')}}"> Contacto </a></div>
                            </div>
                        </div>
                   
                </div>
                <div class="col-md-4">
                    <span class="titulo__pie">
                        CRISTIAN DIEZ & CIA S.R.L
                    </span>
                    <div class="row mt-3" style="">
                         @foreach ($contactos as $item)
                            @if($item->dato=="direccion")
                            <div class="col-md-1 col-1 mb-3">
                                <i class="fas fa-map-marker-alt" style="color:#D5290D;"></i>
                            </div>
                            <div class="col-md-11 col-11 mb-3">
                              <a class="link_contacto" href="https://goo.gl/maps/L5yhQiQk11khRg6AA"> {{$item->texto}}</a>
                            </div>
                            @endif
                        @endforeach
                        @foreach ($contactos as $item)
                        @if($item->dato=="telefono")
                        <div class="col-md-1  col-1  mb-3">
                            <i class="fas fa-phone-alt" style="color:#D5290D;"></i>
                        </div>
                        <div class="col-md-11 col-11 mb-3">
                          <a class="link_contacto" href="tel:{{$item->texto}}"> {{$item->texto}}</a>
                        </div>
                        @endif
                        @endforeach
                        @foreach ($contactos as $item)
                        @if($item->dato=="email")
                        <div class="col-md-1 col-1">
                            <i class="fas fa-envelope" style="color:#D5290D;"></i>
                        </div>
                        <div class="col-md-11 col-11">
                          <a class="link_contacto" href="mailto:{{$item->texto}}" > {{$item->texto}}</a>
                        </div>
                        @endif
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        @foreach ($contactos as $item)
        @if($item->dato=="telefono")
        <a href="https://api.whatsapp.com/send?phone={{$item->texto}}" class="whatsapp" target="_blank"> 
        <i class="fab fa-whatsapp whatsapp-icon text-white mt-3" aria-hidden="true"></i></a>
        @endif
        @endforeach
      </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
    <script>
    AOS.init();
    </script>

<script>
  $(document).ready(function(){
    function initializeSlick(selector, slidesToShow, slidesToScroll, autoplaySpeed = 3000) {
      $(selector).slick({
        dots: true,
        infinite: true,
        arrows: true,
        speed: 300,
        slidesToShow: slidesToShow,
        slidesToScroll: slidesToScroll,
        autoplay: true,
        autoplaySpeed: autoplaySpeed,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 3,
              dots: true
            }
          },
          {
            breakpoint: 600,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 2
            }
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              autoplaySpeed: selector === '.autoplay-products' ? 500 : autoplaySpeed
            }
          }
        ]
      });
    }

    // Inicializar sliders
    initializeSlick('.autoplay', 4, 1, 1000);
    initializeSlick('.autoplay-products', 4, 1, 1000);

    // Mostrar dropdown en hover
    $('.nav-item.dropdown').hover(
      function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeIn(500);
      }, 
      function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeOut(500);
      }
    );
  });
</script>

  </body>
</html>