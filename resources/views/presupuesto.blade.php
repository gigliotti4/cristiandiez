@extends('layouts.plantilla')
@section('contenido')
<div class="breadcrumb-container mt-2">
    <div class="container">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="">Inicio</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Contacto</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-2 col-4">
            <img id="icono_edit" class="d-block mx-auto" src="{{asset('images/edit.svg')}}">
            <div class="text-center mt-3" style="font-family: 'Montserrat-Bold';color:#E10915">
                DATOS <br> PERSONALES
            </div>
            <div class="text-center">
                <img class="cositoDatos" src="{{url('/')}}/images/cositorojo.png" style="padding-top: 10px;">
            </div>
        </div>
        <div class="col-md-3 col-4 d-flex align-items-center" style="padding-left:0;padding-right:0px;">
            <div class="" style="width: 100%;height:1px; background-color:#CBD0D3;"></div>
        </div>
        <div class="col-md-2 col-4">
            <img id="icono_chat" class="d-block mx-auto" src="{{asset('images/chat2.svg')}}">
            <div class="text-center mt-3" style="font-family: 'Montserrat-Bold';color:#E10915">
                CONSULTA
            </div>
            <div class="text-center">
                <img class="cositoConsulta" src="{{url('/')}}/images/cositorojo.png" style="padding-top: 20px;">
            </div>
        </div>
        <div class="mt-5 col-md-8">
            <form novalidate="" id="form" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-12 col-md-6">
                        <input type="text" name="nombre" id="nombre" placeholder="Nombre (*)" class="form-control" required>
                    </div>
                    <div class="col-12 col-md-6">
                        <input type="email" name="email" id="email" placeholder="Correo electrónico (*)" class="form-control" required="">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12 col-md-6">
                        <input type="text" id="telefono" name="telefono" placeholder="Ingrese Teléfono(*)" class="form-control">
                    </div>
                    <div class="col-12 col-md-6">
                        <input type="text" id="empresa" name="empresa" placeholder="Empresa" class="form-control">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12 col-12">
                        <textarea name="mensaje" placeholder="Mensaje" rows="3" class="form-control"></textarea>
                    </div>
                    <div class="col-md-6 col-12 mt-3">
                        <div class="input-group mb-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="file" id="archivo" placeholder="Elige">
                                <label class="custom-file-label" for="inputGroupFile01">Elegir Archivo</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-md-6">
                    <div class="form-group  ">   
                                                  {!! NoCaptcha::renderJs() !!}
                                                      {!! NoCaptcha::display() !!}
                                              @error('g-recaptcha-response')
                                              <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                              @enderror
                        </div>
                    </div>
                    <div class="col-md-6 ">
                        <div class="float-right">

                            <button type="submit" class="btn boton_presupuesto px-md-3" style="">
                                <span class="spinner-border spinner-border-sm d-none"> </span> <span class="btn-text"> Solicitar presupuesto</span>
                            </button>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="g-recaptcha-response" id="g-recaptcha-response">
            </form>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
<script>
    $(document).ready(function(){
        $("#form").validate({
            onfocusout: false,
            rules: {
                nombre: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                telefono: {
                    required: true,
                    digits: true,
                },
                'g-recaptcha-response': {
                    required: true
                }
            },
            messages: {
                nombre: {
                    required: "Este campo es necesario"
                },
                email: {
                    required: "Este campo es necesario",
                    email: "No cumple con la estructura de un correo."
                },
                telefono: {
                    required: "Por favor indique su telefono",
                    digits: "Ingrese solo numeros"
                },
                'g-recaptcha-response': {
                    required: "Por favor complete el captcha"
                }
            },
            submitHandler: function(){
                $('.spinner-border').removeClass('d-none');
                $('.btn-text').text('Enviando');
                let form = new FormData($('#form')[0]);
                $.ajax({
                    type: 'POST',
                    url: 'presupuesto',
                    data: form,
                    processData: false,
                    contentType: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        swal("Muchas Gracias!", "Hemos recibido tu consulta!", "success");
                        $('#form')[0].reset();
                    },
                    error: function(response) {
                        console.log(response);
                        swal("Oops", "Algo salio mal!", "error");
                    },
                    complete: function(){
                        $('.spinner-border').addClass('d-none');
                        $('.btn-text').text('Enviar');
                    }
                });
            },
            invalidHandler: function(event, validator) {
                var errors = validator.numberOfInvalids();
                if (errors) {
                    var message = errors == 1 ? ' Error: Te perdiste 1 campo. Ha sido destacado' : ' Error: Te perdiste ' + errors + ' campos. Se han destacado';
                    $("div#formError span#Mensaje").html(message);
                    $("div#formError").removeClass("hidden");
                }
            },
            highlight: function(element, errorClass) {
                $(element).fadeOut(function() {
                    $(element).fadeIn();
                });
            },
            errorElement: "div",
            errorClass: "alert alert-danger",
        });
    });
</script>
@endsection