$(document).ready(function(){
    $('#summertexto').summernote({
        placeholder: 'Ingrese texto del producto',
        tabsize: 2,
        lang: 'es-ES',
        height: 120,
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
    $('#summertextoe').summernote({
        placeholder: 'Ingrese texto del producto',
        tabsize: 2,
        lang: 'es-ES',
        height: 120,
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
    $('#summerdescripcion').summernote({
        placeholder: 'Ingrese descripción del producto',
        tabsize: 2,
        lang: 'es-ES',
        height: 120,
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
    $('#summerdescripcione').summernote({
        placeholder: 'Ingrese descripción del producto',
        tabsize: 2,
        lang: 'es-ES',
        height: 120,
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

    $('#agregarcategoria').on('submit',function(e){
        e.preventDefault();
        var form= new FormData();
        var orden=$('#orden').val();
        var titulo=$('#titulo').val();
        var imagen=$('#img');
        var texto=$('#texto').val();
        form.append('orden',orden);
        form.append('titulo',titulo);
        form.append('texto',texto);
        form.append('imagen',imagen[0].files[0]);
        $.ajax({
            type: "post",
            url: "agregarCategoria",
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Categoria Agregada","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    });
    $('#actualizarcategoria').on('submit',function(e){
        e.preventDefault();
        var form= new FormData();
        var id=$('#id-categoria').val();
        var orden=$('#ordenedit').val();
        var imagen=$('#imgcategoria');
        var titulo=$('#titulocategoria').val();
        var texto=$('#textoedit').val();
        form.append('orden',orden);
        form.append('titulo',titulo);
        form.append('texto',texto);
        form.append('imagenedit',imagen[0].files[0]);
        form.append('_method','PUT');
        $.ajax({
            type: 'POST',
            url: "actualizarCategoria/"+id,
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Categoria editada correctamente","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
               swal("Algo salió mal","","error");
            }
        });
    });
    $('#agregarSubcategoria').on('submit',function(e){
        e.preventDefault();
        let form= new FormData($('#agregarSubcategoria')[0]);
        $.ajax({
            type: "post",
            url: "agregarSubCategoria",
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("SubCategoria Agregada","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    });
    $('#editarSubcategoria').on('submit',function(e){
        e.preventDefault();
        let id= $('#id_subcategoria').val();
        let form= new FormData($('#editarSubcategoria')[0]);
        form.append('_method','PUT');
        $.ajax({
            type: "post",
            url: "actualizarSubCategoria/"+id,
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("SubCategoria Editada","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    });
    $('#agregarVentaja').on('submit',function(e){
        e.preventDefault();
        let form= new FormData($('#agregarVentaja')[0]);
        $.ajax({
            type: "post",
            url: "agregarVentaja",
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Ventaja Agregada","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    });
    $('#actualizarVentaja').on('submit',function(e){
        e.preventDefault();
        let id= $('#id_ventaja').val();
        let form = new FormData($('#actualizarVentaja')[0]);
        form.append('_method','PUT');
        $.ajax({
            type: "post",
            url: "actualizarVentaja/"+id,
            data: form,
            processData: false,  // tell jQuery not to process the data
            contentType: false,   // tell jQuery not to set contentType
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                swal("Ventaja Actualizada","","success");
                setTimeout(function(){ location.reload(); }, 1500);
            },
            error: function(response){
                console.log(response);
                swal("Hubo un error","","error");
            }
        });
    });
    $('#agregarProducto').on('submit',function(e){
        e.preventDefault();
        let form= new FormData($('#agregarProducto')[0]);
        let texto=$('#summertexto').summernote('code');
        let descripcion=$('#summerdescripcion').summernote('code');
        let ventajas=$('#relacionadostipo').val();
        form.append('texto',texto);
        form.append('descripcion',descripcion);
        form.append('ventajauno',ventajas);
        if($('#summertexto').summernote('isEmpty')){
            swal("El producto tiene que tener texto","","warning");
            $('#summertexto').summernote('focus');
        }else if($('#summerdescripcion').summernote('isEmpty')){
             swal("El producto tiene que tener descripcion","","warning");
              $('#summerdescripcion').summernote('focus');
        }else{
            $('.spinner-border').removeClass('d-none');
            $('.btn-text').text('Agregando');
            $.ajax({
                type:"POST",
                url:"agregarProducto",
                data:form,
                processData:false,
                contentType:false,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Producto Agregado","","success");
                    setTimeout(function(){ location.reload(); }, 1500);
                },
                error: function(response){
                    console.log(response);
                    swal("Hubo un error","","error");
                }
            });
        }
        
    });
    $('#actualizarProducto').on('submit',function(e){
        e.preventDefault();
        let id=$('#idProd').val();
        let form= new FormData($('#actualizarProducto')[0]);
        let texto=$('#summertextoe').summernote('code');
        let descripcion=$('#summerdescripcione').summernote('code');
        let ventajas=$('#relacionadostipoedit').val();
        form.append('ventajauno',ventajas);
        form.append('texto',texto);
        form.append('descripcion',descripcion);
        form.append('_method','PUT');
        if($('#summertextoe').summernote('isEmpty')){
            swal("El producto tiene que tener texto","","warning");
            $('#summertextoe').summernote('focus');
        }else if($('#summerdescripcione').summernote('isEmpty')){
             swal("El producto tiene que tener descripcion","","warning");
              $('#summerdescripcione').summernote('focus');
        }else{
            $('.spinner-border').removeClass('d-none');
            $('.btn-text').text('Editando');
            $.ajax({
                type:"POST",
                url:"actualizarProducto/"+id,
                data:form,
                processData:false,
                contentType:false,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Producto Editado","","success");
                    setTimeout(function(){ location.reload(); }, 1500);
                },
                error: function(response){
                    console.log(response);
                    swal("Hubo un error","","error");
                }
            });
        }
        
    });
});
function editarcategoria(id){
    $.ajax({
        type: "get",
        url: "editarCategoria/"+id,
        success: function (response) {
            $('#id-categoria').val(id);
            path="../../images/productos/";
            $('#img-categoria').attr("src",path+response.imagen);
            $('#titulocategoria').val(response.titulo);
            $('#ordenedit').val(response.orden);
            $('#textoedit').val(response.texto);
        }
    });
}
function editarSubCategoria(id){
    $.ajax({
        type: "get",
        url: "editarSubCategoria/"+id,
        success: function (response) {
            $('#id_subcategoria').val(id);
            path="../../images/productos/";
            $('#previewsubcategoria').attr("src",path+response.imagen);
            $('#titulosubcategoria').val(response.titulo);
            $('#ordensubcategoria').val(response.orden);
            $('#select_categorias').val(response.category_id);
        }
    });
}
function editarVentaja(id){
    $.ajax({
        type: "get",
        url: "editarVentaja/"+id,
        success: function (response) {
            $('#id_ventaja').val(id);
            path="../../images/productos/";
            $('#previewVentaja').attr("src",path+response.imagen);
            $('#tituloVentaja').val(response.titulo);
        }
    });
}
function editarProducto(id){
    $.ajax({
        type:"GET",
        url:"editarProducto/"+id,
        success:function(response){
           
            let path="../../images/productos/";
            $('#idProd').val(id);
            $('#ordene').val(response.orden);
            $('#tituloe').val(response.titulo);
            $('#previewImgProd').attr('src',path+response.imagen);
             $('#previewImgProdDos').attr('src',path+response.imagen_dos);
            $('#summertextoe').summernote('code',response.texto);
            $('#relacionadostipoedit').tagsinput('add', response.ventajauno);
            $('#summerdescripcione').summernote('code',response.descripcion);
            $('#prodrel_uno').val(response.prodrel_uno);
            $('#prodrel_dos').val(response.prodrel_dos);
            $('#prodrel_tres').val(response.prodrel_tres);
            if(response.category_id!=null){
                $('#categoria').prop('checked',true);
                $('.categorias').removeClass('d-none');
                $('#select_categorias').val(response.category_id);
                $('.subcategorias').addClass('d-none');
            }
            if(response.subcategory_id!=null)
            {
                $('#subcategoria').prop('checked',true);
                $('.subcategorias').removeClass('d-none');
                $('#select_subcategorias').val(response.subcategory_id);
                $('.categorias').addClass('d-none');
            }
            

        }
    });
}
function eliminarcategoria(id){
    swal({
        title: "Estas seguro/a?",
        text: "Estas ha punto de eliminar una categoria",
        icon: "warning",
        buttons: true,
        dangerMode: true,
        buttons:['Cancelar','Eliminar']
      })
      .then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "delete",
                url: "eliminarCategoria/"+id,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Poof! La categoria ha sido eliminada!", {
                        icon: "success",
                      });
                      setTimeout(function(){ location.reload(); }, 1500);
                },
                error: function (response) {
                    swal("No se ha podido borrar la categoria","","error");
                }
            });

        } else {
          swal("No se ha eliminado nada!");
        }
      });
}
function eliminarSubCategoria(id){
    swal({
        title: "Estas seguro/a?",
        text: "Estas ha punto de eliminar una subcategoria",
        icon: "warning",
        buttons: true,
        dangerMode: true,
        buttons:['Cancelar','Eliminar']
      })
      .then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "delete",
                url: "eliminarSubCategoria/"+id,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Poof! La SubCategoria ha sido eliminada!", {
                        icon: "success",
                      });
                      setTimeout(function(){ location.reload(); }, 1500);
                },
                error: function (response) {
                    swal("No se ha podido borrar la subcategoria","","error");
                }
            });

        } else {
          swal("No se ha eliminado nada!");
        }
      });
}
function eliminarVentaja(id){
    swal({
        title: "Estas seguro/a?",
        text: "Estas ha punto de eliminar una ventaja",
        icon: "warning",
        buttons: true,
        dangerMode: true,
        buttons:['Cancelar','Eliminar']
      })
      .then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "delete",
                url: "eliminarVentaja/"+id,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Poof! La ventaja ha sido eliminada!", {
                        icon: "success",
                      });
                      setTimeout(function(){ location.reload(); }, 1500);
                },
                error: function (response) {
                    swal("No se ha podido borrar la ventaja","","error");
                }
            });

        } else {
          swal("No se ha eliminado nada!");
        }
      });
}
function eliminarProducto(id){
    swal({
        title: "Estas seguro/a?",
        text: "Estas ha punto de eliminar un producto",
        icon: "warning",
        buttons: true,
        dangerMode: true,
        buttons:['Cancelar','Eliminar']
      })
      .then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "delete",
                url: "eliminarProducto/"+id,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    swal("Poof! El producto ha sido eliminado!", {
                        icon: "success",
                      });
                      setTimeout(function(){ location.reload(); }, 1500);
                },
                error: function (response) {
                    swal("No se ha podido borrar el producto","","error");
                }
            });

        } else {
          swal("No se ha eliminado nada!");
        }
      });
}
 