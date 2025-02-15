$(document).ready(function(){
    $('#formAgregarDescarga').on('submit',function(e){
        e.preventDefault();
        let form= new FormData($('#formAgregarDescarga')[0]);
        $('.spinner-border').removeClass('d-none');
        $('.btn-text').text('Agregando');
        $.ajax({
            type: "post",
            url: "agregarDescarga",
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Descarga Agregada","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    })
    $('#formActualizarDescarga').on('submit',function(e){
        e.preventDefault();
        let id=$('#idDescarga').val();
        let form= new FormData($('#formActualizarDescarga')[0]);
        $('.spinner-border').removeClass('d-none');
        $('.btn-text').text('Editando');
        form.append('_method','PUT');
        $.ajax({
            type: "POST",
            url: "actualizarDescarga/"+id,
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Descarga actualizada","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    })
});
function editarDescarga(id){
    $.ajax({
        type:"get",
        url:"editarDescarga/"+id,
        success:function(response){
            let path="../../images/descargas/";
            $('#idDescarga').val(id);
            $('#ordenedit').val(response.orden);
            $('#tituloedit').val(response.titulo);
            $('#imgPreview').attr('src',path+response.imagen);
             $('#tipoedit').val(response.tipo_id);
        }
    })
}
function eliminarDescarga(id){
    swal({
        title: "Estas seguro/a?",
        text: "Estas ha punto de eliminar una Descarga",
        icon: "warning",
        buttons: true,
        dangerMode: true,
        buttons:['Cancelar','Eliminar']
      })
      .then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "delete",
                url: "eliminarDescarga/"+id,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Poof! El Descarga ha sido eliminada!", {
                        icon: "success",
                      });
                      setTimeout(function(){ location.reload(); }, 1500);
                },
                error: function (response) {
                    swal("No se ha podido borrar la Descarga","","error");
                }
            });

        } else {
          swal("No se ha eliminado nada!");
        }
      });
}