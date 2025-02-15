@extends('layouts.plantilla')

@section('contenido')

<div class="breadcrumb-container mt-2">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Descargas</li>
           
                </ol>
            </nav>
        </div>
    </div>
</div>
<div class="container my-5" data-aos="fade-up">
    <div class="text-center titulo__seccion" data-aos="fade-up">
        Descarga Productos
        <div class="mx-auto mt-2 border__secciones"></div>
    </div>
    <div class="row justify-content-start my-5">
        @foreach ($descargas_prod as $descarga)
            <div class="col-md-4 col-12 mt-3" data-aos="fade-up">
                <div class="d-flex justify-content-between align-items-center p-3 border rounded shadow-sm">
                    <span style="font-family: 'Montserrat-SemiBold'; color:#E10915; font-size:13px; text-transform:uppercase;">
                        {{ $descarga->titulo }}
                    </span>
                    <div>
                        <a class="link mx-2" target="_blank" href="{{ asset('descargas/'.$descarga->archivo) }}">
                            <i class="fas fa-eye fa-lg" style="color: #D5290D"></i>
                        </a>
                        <a class="link" href="{{ asset('descargas/'.$descarga->archivo) }}" download>
                            <i class="fas fa-file-download fa-lg" style="color: #D5290D"></i>
                        </a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>



<div class="container my-5" data-aos="fade-up">
    <div class="text-center titulo__seccion" data-aos="fade-up">
        Descargas Técnicas
        <div class="mx-auto mt-2 border__secciones"></div>
    </div>
    <div class="row justify-content-start my-5">
        @foreach ($descargas_tecnicas as $descarga)
            <div class="col-md-6 col-12 mt-2" >
                <div class="d-flex justify-content-between align-items-center p-3 border rounded shadow-sm">
                    <span style="font-family: 'Montserrat-SemiBold'; color:#E10915; font-size:12px; text-transform:uppercase;">
                        {{ $descarga->titulo }}
                    </span>
                    <div>
                        <a class="link mx-2" target="_blank" href="{{ asset('descargas/'.$descarga->archivo) }}">
                            <i class="fas fa-eye fa-lg" style="color: #D5290D"></i>
                        </a>
                        <a class="link" href="{{ asset('descargas/'.$descarga->archivo) }}" download>
                            <i class="fas fa-file-download fa-lg" style="color: #D5290D"></i>
                        </a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>




    
@endsection