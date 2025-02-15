$(document).ready(function(){
    $('#summerpresupuesto').summernote({
        placeholder: 'Ingrese texto del slider',
        tabsize: 2,
        lang: 'es-ES',
        height: 120,
        fontNames: ['Montserrat-Bold', 'Montserrat-Light', 'Montserrat-Medium', 'Montserrat-Regular', 'Montserrat-SemiBold'],
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['fontNames', ['fontname']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']]
        ]
    });
    $('#formPresupuesto').on('submit',function(e){
        e.preventDefault();
        let form= new FormData($('#formPresupuesto')[0]);
        form.append('texto',$('#summerpresupuesto').summernote('code'));
        form.append('_method','PUT');
        $.ajax({
            type:"POST",
            url:"editarSeccionPresupuesto",
            data:form,
            processData:false,
            contentType:false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success:function(response){
                swal("Seccion presupuesto editada","","success");
                setTimeout(() => {
                    location.reload();
                }, 1500);
            },
            error:function(response){
                swal("Algo salió mal","","error");
            }
        })
    });
    $('#agregarCliente').on('submit',function(e){
        e.preventDefault();
        var orden=$('#orden').val();
        var imagen=$('#imagen');
        var form= new FormData();
        form.append('orden',orden);
        form.append('imagen',imagen[0].files[0]);
        $.ajax({
            type: "POST",
            url: "agregarCliente",
            data: form,
            processData:false,
            contentType:false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Cliente agregado!","","success");
                setTimeout(function(){location.reload()},1500);
            },
            error: function(response){
                console.log(response);
                swal("Algo salio mal","","error");
            }
        });
    });
    $('#actualizarCliente').on('submit',function(e){
        e.preventDefault();
        var id=$('#id').val();
        var orden=$('#ordenedit').val();
        var imagen=$('#imagenedit');
        var form= new FormData();
        form.append('orden',orden);
        form.append('imagenedit',imagen[0].files[0]);
        form.append('_method','PUT');
        $.ajax({
            type: "POST",
            url: "actualizarCliente/"+id,
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
               swal("Cliente editado correctamente","","success");
               setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response) {
                console.log(response);
                swal("Hubo un problema","","error");
            }
        });
    });
});
function editarCliente(id){
    $.ajax({
        type: "get",
        url: "editarCliente/"+id,
        success: function (response) {
            //console.log(response);
            $('#id').val(id);
            var path= "../../images/inicio/";
            $('#preview').attr('src',path+response.imagen);
            $('#ordenedit').val(response.orden);

        },
        error: function(response){
            console.log(response);
        }
    });

}
function eliminarCliente(id){
    swal({
        title: "Esta seguro/a de eliminar un Cliente?",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "DELETE",
                url: "eliminarCliente/"+id,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Poof! Cliente Eliminado!","","success");
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