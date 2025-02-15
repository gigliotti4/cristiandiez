$(document).ready(function(){
    $('#summertextoizq').summernote({
        tabsize: 2,
        lang: 'es-ES',
        height: 250,
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
        tabsize: 2,
        lang: 'es-ES',
        height: 250,
        lineHeights: ['0.2', '0.3', '0.4', '0.5', '0.6', '0.8', '1.0', '1.2', '1.4', '1.5', '2.0', '3.0'],
        fontNames: ['Montserrat-Bold', 'Montserrat-Light', 'Montserrat-Medium', 'Montserrat-Regular', 'Montserrat-SemiBold'],
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['fontNames', ['fontname']],
          ['lineHeight',['lineHeights']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        
        ]
    });
    $('#formTextoIzq').on('submit',function(e){
        e.preventDefault();
        let id=$('#idizq').val();
        let form= new FormData($('#formTextoIzq')[0]);
        form.append('texto',$('#summertextoizq').summernote('code'));
        form.append('_method','PUT');
        $.ajax({
            type: "POST",
            url: "actualizarTexto/"+id,
            data: form,
            processData:false,
            contentType:false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Texto editado!","","success");
                setTimeout(function(){location.reload()},1500);
            },
            error: function(response){
                console.log(response);
                swal("Algo salio mal","","error");
            }
        });
    });
    $('#formTextoDer').on('submit',function(e){
        e.preventDefault();
        let id=$('#idder').val();
        let form= new FormData($('#formTextoDer')[0]);
        form.append('texto',$('#summertextoder').summernote('code'));
        form.append('_method','PUT');
        $.ajax({
            type: "POST",
            url: "actualizarTexto/"+id,
            data: form,
            processData:false,
            contentType:false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Texto editado!","","success");
                setTimeout(function(){location.reload()},1500);
            },
            error: function(response){
                console.log(response);
                swal("Algo salio mal","","error");
            }
        });
    });
});