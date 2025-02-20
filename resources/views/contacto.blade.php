@extends('layouts.plantilla')

@section('contenido')


<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13122.695772880312!2d-58.3664537!3d-34.6881778!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe88384ddce585eaa!2sCristian%20Diez%20y%20C%C3%ADa%20SRL!5e0!3m2!1ses-419!2sar!4v1599449888019!5m2!1ses-419!2sar" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

<div class="container my-5">

    <div class="row">
        <div class="col-xl-4 col-lg-4 col-md-4">
          <div style="color: #D5290D;font-family:'Montserrat-Bold';font-size:18px">  CONTACTO</div>
          <div style="width;100%; height:1px; background-color:#D5290D"></div>
            <div class="row mt-2">
                <div class="col-xl-12 col-lg-12 col-md-12 ">
                <p class=""style="font-family:'Montserrat-Medium';color:#333333;font-size:13px">
                    Para mayor información, no dude en contactarse mediante el siguiente formulario, o a través de nuestras vías de comunicación.
                </p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12">
                   
                       
                        <div class="row">
                            <div class="col-xl-1 col-lg-1 col-md-1 col-sm-1 col-2 my-2">
                                <i class="fas fa-map-marker-alt fa-lg" style="color:#D5290D;"></i>
                            </div>
                            <div class="col-xl-11 col-lg-10 col-md-10 col-sm-11 col-10 my-2">
                                @foreach ($contactos as $contacto)
                                    @if($contacto->dato=="direccion")
                                    <a class="link"  href="https://g.page/CristianDiez?share">   <span style="font-size:13px;font-family: 'Montserrat-Medium';color:#333333" >{{$contacto->texto}}</span></a>
                                    @endif
                                @endforeach
                            </div>
                            
                            <div class="col-xl-1 col-lg-1 col-md-1 col-sm-1 col-2 my-2">
                                <i class="fas fa-phone-alt fa-lg" style="color: #D5290D"></i>
                            </div>
                            <div class="col-xl-11 col-lg-10 col-md-10 col-sm-11 col-10  my-2">
                                @foreach ($contactos as $contacto)
                                @if($contacto->dato=="telefono")
                            <a class="link" href="tel:{{$contacto->texto}}">    <span style="font-size:13px;font-family: 'Montserrat-Medium';color:#333333">{{$contacto->texto}} </span></a>
                                @endif
                                @endforeach
                            </div>
                            <div class="col-xl-1 col-lg-1 col-md-1 col-sm-1 col-2 my-2">
                                <i class="fas fa-envelope fa-lg" style="color: #D5290D"></i>
                            </div>
                            <div class="col-xl-11 col-lg-10 col-md-10 col-sm-10 col-10 my-2">
                                @foreach($contactos as $contacto)
                                @if($contacto->dato=="email")
                                <a class="link" href="mailto:{{$contacto->texto}}">     <span style="font-size:13px;font-family: 'Montserrat-Medium';color:#333333">{{$contacto->texto}} </span></a>
                                @endif
                                @endforeach
                            </div>
                           
                    
                        </div>
                    
                </div>
            </div>
        </div>
        <div class="col-xl-8 col-lg-8 col-md-8">
            <form id="contacto">
               @csrf
                <div class="form-row">
                  <div class="col">
                    <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Nombre" required>
                  </div>
                  <div class="col">
                   <input type="text" name="apellido" id="apellido" class="form-control" placeholder="Apellido" required>
                  </div>
                </div>
                <div class="form-row my-3">
                    <div class="col">
                      <input type="text" class="form-control" name="correo" id="correo" placeholder="Correo electrónico" required>
                    </div>
                    <div class="col">
                        <input type="text" class="form-control" name="telefono" id="telefono" placeholder="Telefono" required>
                    </div>
                </div>
                <div class="form-row my-3">
                    <div class="col">
                    <textarea class="form-control" name="mensaje" id="mensaje"placeholder="Mensaje" rows="4" cols="50" required></textarea>
                    </div>
                </div>
                <div class="form-row my-3">
                    <div class="form-group  ">   
                                                  {!! NoCaptcha::renderJs() !!}
                                                      {!! NoCaptcha::display() !!}
                                              @error('g-recaptcha-response')
                                              <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                              @enderror
                        </div>
                    <div class="col text-center">
                        <button class="btn boton_presupuesto py-2 px-5 float-right " type="submit" style="">
                        <span class="spinner-border spinner-border-sm d-none"> </span>
                        <span class="btn-text">    ENVIAR</span>
                        </button>
                    </div>
                </div>
              </form>
        </div>
    </div>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
<script>
    $(document).ready(function(){
        $("#contacto").validate({
            onfocusout: false,
            rules: {
                nombre: {
                    required: true
                },
                apellido: {
                    required: true
                },
                correo: {
                    required: true,
                    email: true
                },
                telefono: {
                    required: true,
                    digits: true,
                },
                mensaje: {
                    required: true
                },
                'g-recaptcha-response': {
                    required: true
                }
            },
            messages: {
                nombre: {
                    required: "Este campo es necesario"
                },
                apellido: {
                    required: "Este campo es necesario"
                },
                correo: {
                    required: "Este campo es necesario",
                    email: "No cumple con la estructura de un correo."
                },
                telefono: {
                    required: "Por favor indique su telefono",
                    digits: "Ingrese solo numeros"
                },
                mensaje: {
                    required: "Este campo es necesario"
                },
                'g-recaptcha-response': {
                    required: "Por favor complete el captcha"
                }
            },
            submitHandler: function(){
                $('.spinner-border').removeClass('d-none');
                $('.btn-text').text('Enviando');
                let form = new FormData($('#contacto')[0]);
                $.ajax({
                    type: 'POST',
                    url: 'email',
                    data: form,
                    processData: false,
                    contentType: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        swal("Muchas Gracias!", "Hemos recibido tu consulta!", "success");
                        $('#contacto')[0].reset();
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