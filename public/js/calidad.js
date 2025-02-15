$(document).ready(function(){
    $('#summertextoizq').summernote({
        placeholder: 'Ingrese texto del producto',
        tabsize: 2,
        lang: 'es-ES',
        height: 350,
        fontNames: ['Montserrat-Bold', 'Montserrat-Light', 'Montserrat-Medium', 'Montserrat-Regular', 'Montserrat-SemiBold'],
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['fontNames', ['fontname']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        
        ]
    });
    $('#summertextoder').summernote({
        placeholder: 'Ingrese texto del producto',
        tabsize: 2,
        lang: 'es-ES',
        height: 350,
        fontNames: ['Montserrat-Bold', 'Montserrat-Light', 'Montserrat-Medium', 'Montserrat-Regular', 'Montserrat-SemiBold'],
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['fontNames', ['fontname']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        
        ]
    });
    $('#formTextIzq').on('submit',function(e){
        e.preventDefault();
        let form= new FormData();
        let id=1;
        let texto= $('#summertextoizq').summernote('code');
        form.append('texto',texto);
        form.append('_method','PUT');
         $.ajax({
            type: "post",
            url: "actualizarTexto/"+id,
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Texto Actualizado","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    });
     $('#formTextDer').on('submit',function(e){
        e.preventDefault();
        let form= new FormData();
        let id=2;
        let texto= $('#summertextoder').summernote('code');
        form.append('texto',texto);
        form.append('_method','PUT');
         $.ajax({
            type: "post",
            url: "actualizarTexto/"+id,
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Texto Actualizado","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    });
     $('#agregarcertificado').on('submit',function(e){
        e.preventDefault();
        var certificado=$('#certificado');
        var titulo=$('#titulo').val();
        var form= new FormData();
        let orden= $('#orden').val();
        form.append('orden',orden);
        form.append('certificado',certificado[0].files[0]);
        form.append('titulo',titulo);
        $.ajax({
            type: "POST",
            url: "agregarCertificado",
            data: form,
            processData:false,
            contentType:false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Certificado Agregado","","success");
                setTimeout(function(){location.reload()},1500);
            },
            error: function(response){
                console.log(response);
                swal("Algo salio mal","","error");
            }
        });
    });
    $('#editarcertificado').on('submit',function(e){
        e.preventDefault();
        var id=$('#id').val();
        var certificado=$('#certificadoedit');
        var titulo=$('#tituloedit').val();
        var form= new FormData();
        form.append('certificadoedit',certificado[0].files[0]);
        form.append('titulo',titulo);
        form.append('_method','PUT');
        $.ajax({
            type: "POST",
            url: "actualizarCertificado/"+id,
            data: form,
            processData:false,
            contentType:false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Certificado Editado","","success");
                setTimeout(function(){location.reload()},1500);
            },
            error: function(response){
                console.log(response);
                swal("Algo salio mal","","error");
            }
        });
    });
});
function editarCertificado(id){
    $.ajax({
        type: "get",
        url: "editarCertificado/"+id,
        success: function (response) {
           
            $('#id').val(id);
            path="../../images/laboratorio/";
           $('#tituloedit').val(response.titulo);
           $('#ordenedit').val(response.orden);
            
        }
    });
}
function eliminarCertificado(id){
    swal({
        title: "Esta seguro/a de eliminar un certificado?",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "DELETE",
                url: "eliminarCertificado/"+id,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Poof! certificado Eliminado!","","success");
                      setTimeout(function(){location.reload()},1500);
                },
                error: function(response){
                    console.log(response);
                    swal("Algo salió mal","","error");
                }
            });

        } else {
          swal("No se borrado nada!");
        }
      });

}