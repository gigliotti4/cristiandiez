@extends('home')
@section('contenido')
    <link href="{{asset('js/tags/tagsinput.css')}}" rel="stylesheet" type="text/css">
<script src="{{asset('js/tags/tagsinput.js')}}"></script>
    <script src="{{asset('js/productos.js')}}"></script>
    <div class="container mt-5">
        <div class="row">
            <!--Productos-->
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Editar Productos
                        <div class="float-right">
                            <button class="btn btn-outline-info" data-toggle="modal" data-target="#modalAgregarProducto">
                                <i class="fas fa-plus"></i>
                                Agregar Producto
                            </button>
                        </div>  
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <th>Orden</th>
                                <th>Titulo</th>
                                <th>Imagen</th>
                                <th>Categoria</th>
                                <th>SubCategoria</th>
                                <th>Acciones</th>
                            </thead>
                            @foreach ($productos as $prod)
                                <tr>
                                    <td>{{$prod->orden}}</td>
                                    <td>{{$prod->titulo}}</td>
                                    <td style="width: 100px"><img src="{{asset('images/productos/'.$prod->imagen)}}" width="200px"></td>
                                    <td>@if($prod->category_id != null) {{$prod->categoria->titulo ?? 'Sin categoría'}} @endif</td>
                                    <td>@if($prod->subcategory_id != null) {{$prod->subcategoria->titulo ?? 'Sin subcategoría'}} @endif</td>
                                    <td>
                                        <div class="form-button-action">
                                            <button   class="btn btn-link btn-primary btn-lg" data-toggle="modal" data-target="#modalEditarProducto" onclick="editarProducto({{$prod->id}})">
                                                <i class="fa fa-edit"></i>
                                                </button>
                
                                                <button    class="btn btn-link btn-danger  "  onclick="eliminarProducto({{$prod->id}})" >
                                                <i class="fa fa-times"></i>
                                                </button>        
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Editar Ventajas
                        <div class="float-right">
                            <button class="btn btn-outline-info" data-toggle="modal" data-target="#modalAgregarVentaja">
                                <i class="fas fa-plus"></i>
                                Agregar Ventaja
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <th>Imagen</th>
                            <th>Titulo</th>
                            <th>Acciones</th>
                            @foreach ($ventajas as $ventaja)
                                <tr>
                                    <td><img src="{{asset('images/productos/'.$ventaja->imagen)}}" width="60px"></td>
                                    <td>{{$ventaja->titulo}}</td>
                                    <td>
                                        <div class="form-button-action">
                                            <button   class="btn btn-link btn-primary btn-lg" data-toggle="modal" data-target="#modalEditarVentaja" onclick="editarVentaja({{$ventaja->id}})">
                                                <i class="fa fa-edit"></i>
                                                </button>
                
                                                <button    class="btn btn-link btn-danger  "  onclick="eliminarVentaja({{$ventaja->id}})" >
                                                <i class="fa fa-times"></i>
                                                </button>        
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--Agregar Producto-->
<div class="modal fade" id="modalAgregarProducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar Producto</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="agregarProducto">
              <meta name="csrf-token" content="{{ csrf_token() }}">
          <div class="form-group">
            <label>Orden</label>
            <input type="text" name="orden"  class="form-control" required>
            <label>Titulo</label>
            <input type="text" name="titulo" class="form-control" required>
            <label>Imagen</label>
            <input type="file"  name="img"  class="form-control-file" required>
            <small class="text-muted"><strong>Resolucion: 265px x 265px</strong></small>
            <br>
            <label>Imagen Dos</label>
            <input type="file"  name="img_dos"  class="form-control-file">
            <small class="text-muted"><strong>Resolucion: 265px x 265px</strong></small>
            <label>Texto</label>
            <div id="summertexto"></div>
            <label>Ficha T谷cnica</label>
            <input type="file" class="form-control-file" name="fichatecnica">
            <h5>Ventajas</h5>
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                          <select id="selectrelaciontipo" class="form-control">
                            @foreach($ventajas as $ventaja)
                          <option value="{{$ventaja->titulo}}">{{$ventaja->titulo}}</option>
                            @endforeach
                          </select>
                        </div>
                    </div>
                    <div class="col-6">
                      <div class="form-group">
                        <a id="btnaddrelaciontipo" class="btn btn-sm btn-success" style="color: white;
                      "><i class="fa fa-plus"></i></a>
                      </div>
                      
                    </div>
                </div>
                
                <input id="relacionadostipo"type="text" data-role="tagsinput" name="ventajauno" >
            {{-- <label>Ventaja Dos</label>
            <select class="form-control" name="ventajados">
                @if (!$ventajas->isEmpty())
            <option value="" selected>Seleccionar Ventaja</option>
            @foreach ($ventajas as $ventaja)
              <option value="{{$ventaja->id}}">{{$ventaja->titulo}}</option>
            @endforeach
            @else
            <option value="" selected>No hay ventajas cargadas</option>
             @endif  
            </select>
            <label>Ventaja Tres</label>
            <select class="form-control" name="ventajatres">
                @if (!$ventajas->isEmpty())
            <option value="" selected>Seleccionar Ventaja</option>
            @foreach ($ventajas as $ventaja)
              <option value="{{$ventaja->id}}">{{$ventaja->titulo}}</option>
            @endforeach
            @else
            <option value="" selected>No hay ventajas cargadas</option>
             @endif  
            </select>
            <label>Ventaja Cuatro</label>
            <select class="form-control" name="ventajacuatro">
                @if (!$ventajas->isEmpty())
            <option value="" selected>Seleccionar Ventaja</option>
            @foreach ($ventajas as $ventaja)
              <option value="{{$ventaja->id}}">{{$ventaja->titulo}}</option>
            @endforeach
            @else
            <option value="" selected>No hay ventajas cargadas</option>
             @endif  
            </select> --}}
            <label>Descripci車n</label>
            <div id="summerdescripcion"></div>
            <label>Producto Relacionado Uno</label>
            <select class="form-control" name="prodrel_uno">
                @if (!$productos->isEmpty())
                <option value="" selected>Seleccionar Producto</option>
                @foreach ($productos as $prod)
                    <option value="{{$prod->id}}">{{$prod->titulo}}</option>
                @endforeach
                @else
                    <option value="" selected>No hay productos cargados</option>
                 @endif  
             </select>
             <label>Producto Relacionado Dos</label>
            <select class="form-control" name="prodrel_dos">
                @if (!$productos->isEmpty())
                <option value="" selected>Seleccionar Producto</option>
                @foreach ($productos as $prod)
                    <option value="{{$prod->id}}">{{$prod->titulo}}</option>
                @endforeach
                @else
                    <option value="" selected>No hay productos cargados</option>
                 @endif  
             </select>
             <label>Producto Relacionado Tres</label>
            <select class="form-control" name="prodrel_tres">
                @if (!$productos->isEmpty())
                <option value="" selected>Seleccionar Producto</option>
                @foreach ($productos as $prod)
                    <option value="{{$prod->id}}">{{$prod->titulo}}</option>
                @endforeach
                @else
                    <option value="" selected>No hay productos cargados</option>
                 @endif  
             </select>
             <label>Seleccione Categoria o Subcategoria a vincular:</label>
             <br>
             <input type="radio" id="age1" name="tipo" value="categoria" required/>
             <label for="age1">Categoria</label><br>
             <input type="radio" id="age2" name="tipo" value="subcategoria"/>
             <label for="age2">Subcategoria</label><br> 
             <div class="categorias d-none">
                 <select class="form-control" name="category_id" >
                    @if (!$categorias->isEmpty())
                        <option value="" selected>Seleccionar Categoria</option>
                        @foreach ($categorias as $categoria)
                        <option value="{{$categoria->id}}">{{$categoria->titulo}}</option>
                        @endforeach
                    @else
                        <option value="" selected>No hay categorias cargadas</option>
                    @endif
         
                 </select>
             </div>
             <div class="subcategorias d-none">
                <select class="form-control" name="subcategory_id">
                    @if (!$subcategorias->isEmpty())
                        <option value="" selected>Seleccionar subcategoria</option>
                        @foreach ($subcategorias as $subcategoria)
                        <option value="{{$subcategoria->id}}">{{$subcategoria->titulo}}</option>
                        @endforeach
                    @else
                        <option value="" selected>No hay subcategoria cargadas</option>
                    @endif
         
                 </select>
             </div>
           <script>
              $(document).ready(function(){
                
                $('input[type=radio][name=tipo]').on('change',function(){
                    let tipo=$(this).val(); 
                    if(tipo=='categoria'){
                        $('.categorias').removeClass('d-none');
                        $('#select_categorias').prop('required',true);
                         $("#select_subcategorias").prop('required',false);
                        $('.subcategorias').addClass('d-none');
                    }
                    if(tipo=='subcategoria'){
                        $('.categorias').addClass('d-none');
                        $('#select_subcategorias').prop('required',true);
                         $("#select_categorias").prop('required',false);
                        $('.subcategorias').removeClass('d-none');
                    }
                });
                $('#btnaddrelaciontipo').click(function() {

                console.log('asd');

                  var prodtoadd = $('#selectrelaciontipo').val();
                  var prodlabel = $( "#selectrelaciontipo option:selected" ).text();

                  /*$('#relacionados').tagsinput('add', { id: prodtoadd, text: prodlabel });*/
                  $('#relacionadostipo').tagsinput('add', prodlabel);
                  /*$('#relacionados2').tagsinput('add', prodtoadd);*/

                  
                });
               });
              
           </script>
           

          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-success">
            <span class="spinner-border spinner-border-sm d-none"></span>
            <span class="btn-text">Agregar Producto</span>  
          </button>
        </div>
        </form>
      </div>
    </div>
</div>
<!--Editar Producto-->
<div class="modal fade" id="modalEditarProducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Producto</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="actualizarProducto">
            <meta name="csrf-token" content="{{ csrf_token() }}">
        <div class="form-group">
          <input type="hidden" id="idProd">
          <label>Orden</label>
          <input type="text" name="orden" id="ordene"  class="form-control">
          <label>Titulo</label>
          <input type="text" name="titulo" id="tituloe" class="form-control">
          <label>Imagen</label>
          <img id="previewImgProd" width="200px">
          <input type="file"  name="imge"  class="form-control-file">
          <small class="text-muted"><strong>Resolucion: 265px x 265px</strong></small>
          <br>
          <label>Imagen</label>
          <img id="previewImgProdDos" width="200px">
          <input type="file"  name="img_dose"  class="form-control-file">
          <small class="text-muted"><strong>Resolucion: 265px x 265px</strong></small>
          <br>
          <label>Texto</label>
          <div id="summertextoe"></div>
          <label>Ficha Técnica</label>
          <input type="file" class="form-control-file" name="fichatecnicae">
          <h5>Ventajas</h5>
          <div class="row">
              <div class="col-6">
                  <div class="form-group">
                    <select id="selectrelaciontipoedit" class="form-control">
                      @foreach($ventajas as $ventaja)
                    <option value="{{$ventaja->titulo}}">{{$ventaja->titulo}}</option>
                      @endforeach
                    </select>
                  </div>
              </div>
              <div class="col-6">
                <div class="form-group">
                  <a id="btnaddrelaciontipoedit" class="btn btn-sm btn-success" style="color: white;
                "><i class="fa fa-plus"></i></a>
                </div>
                
              </div>
          </div>
          
          <input id="relacionadostipoedit"type="text" data-role="tagsinput">
          <label>Descripci車n</label>
          <div id="summerdescripcione"></div>
          <label>Producto Relacionado Uno</label>
          <select class="form-control" name="prodrel_uno" id="prodrel_uno">
              @if (!$productos->isEmpty())
              <option value="" selected>Seleccionar Producto</option>
              @foreach ($productos as $prod)
                  <option value="{{$prod->id}}">{{$prod->titulo}}</option>
              @endforeach
              @else
                  <option value="" selected>No hay productos cargados</option>
               @endif  
           </select>
           <label>Producto Relacionado Dos</label>
          <select class="form-control" name="prodrel_dos" id="prodrel_dos">
              @if (!$productos->isEmpty())
              <option value="" selected>Seleccionar Producto</option>
              @foreach ($productos as $prod)
                  <option value="{{$prod->id}}">{{$prod->titulo}}</option>
              @endforeach
              @else
                  <option value="" selected>No hay productos cargados</option>
               @endif  
           </select>
           <label>Producto Relacionado Tres</label>
          <select class="form-control" name="prodrel_tres" id="prodrel_tres">
              @if (!$productos->isEmpty())
              <option value="" selected>Seleccionar Producto</option>
              @foreach ($productos as $prod)
                  <option value="{{$prod->id}}">{{$prod->titulo}}</option>
              @endforeach
              @else
                  <option value="" selected>No hay productos cargados</option>
               @endif  
           </select>
           <label>Seleccione Categoria o Subcategoria a vincular:</label>
           <br>
           <input type="radio" id="categoria" name="tipo" value="categoria" required/>
           <label for="age1">Categoria</label><br>
           <input type="radio" id="subcategoria" name="tipo" value="subcategoria"/>
           <label for="age2">Subcategoria</label><br> 
           <div class="categorias  d-none">
               <select class="form-control" name="category_id" id="select_categorias">
                  @if (!$categorias->isEmpty())
                      <option value="" selected>Seleccionar Categoria</option>
                      @foreach ($categorias as $categoria)
                      <option value="{{$categoria->id}}">{{$categoria->titulo}}</option>
                      @endforeach
                  @else
                      <option value="" selected>No hay categorias cargadas</option>
                  @endif
       
               </select>
           </div>
           <div class="subcategorias d-none">
              <select class="form-control" name="subcategory_id" id="select_subcategorias">
                  @if (!$subcategorias->isEmpty())
                      <option value="" selected>Seleccionar subcategoria</option>
                      @foreach ($subcategorias as $subcategoria)
                      <option value="{{$subcategoria->id}}">{{$subcategoria->titulo}}</option>
                      @endforeach
                  @else
                      <option value="" selected>No hay subcategoria cargadas</option>
                  @endif
       
               </select>
           </div>
         <script>
             $(document).ready(function(){
              
              $('input[type=radio][name=tipo]').on('change',function(){
                  let tipo=$(this).val(); 
                  if(tipo=='categoria'){
                      $('.categorias').removeClass('d-none');
                      $('#select_categorias').prop('required',true);
                       $("#select_subcategorias").prop('required',false);
                       $('#select_subcategorias').val("");
                      $('.subcategorias').addClass('d-none');
                  }
                  if(tipo=='subcategoria'){
                      $('.categorias').addClass('d-none');
                      $('#select_subcategorias').prop('required',true);
                       $("#select_categorias").prop('required',false);
                       $('#select_categorias').val("");
                      $('.subcategorias').removeClass('d-none');
                  }
              });
              $('#btnaddrelaciontipoedit').click(function() {
  
                  console.log('asd');

                    var prodtoadd = $('#selectrelaciontipoedit').val();
                    var prodlabel = $( "#selectrelaciontipoedit option:selected" ).text();

                    /*$('#relacionados').tagsinput('add', { id: prodtoadd, text: prodlabel });*/
                    $('#relacionadostipoedit').tagsinput('add', prodlabel);
                    /*$('#relacionados2').tagsinput('add', prodtoadd);*/

                    
                });
             });
            
         </script>
         

        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="submit" class="btn btn-success">
        <span class="spinner-border spinner-border-sm d-none"></span>
        <span class="btn-text">Editar Producto</span>  
        </button>
      </div>
      </form>
    </div>
  </div>
</div>
<!--Agregar Ventaja-->
<div class="modal fade" id="modalAgregarVentaja" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar Ventaja</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="agregarVentaja">
              <meta name="csrf-token" content="{{ csrf_token() }}">
          <div class="form-group">
            <label>Titulo</label>
            <input type="text" name="titulo" class="form-control">
            <label>Imagen</label>
            <input type="file"  name="imagenVentaja"  class="form-control-file">
            <small class="text-muted"><strong>Resolucion: 70px * 70px</strong></small>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-success">Agregar Ventaja</button>
        </div>
        </form>
      </div>
    </div>
</div>
<!--Editar Ventaja-->
<div class="modal fade" id="modalEditarVentaja" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Editar Ventaja</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="actualizarVentaja">
              <meta name="csrf-token" content="{{ csrf_token() }}">
            <input type="hidden" id="id_ventaja">
          <div class="form-group">
            <label>Titulo</label>
            <input type="text" name="titulo" id="tituloVentaja" class="form-control">
            <label>Imagen</label>
            <img id="previewVentaja" width="100px">
            <input type="file"  name="imagenVentajae"  class="form-control-file">
            <small class="text-muted"><strong>Resolucion: 70px * 70px</strong></small>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="submit" class="btn btn-success">Editar Ventaja</button>
        </div>
        </form>
      </div>
    </div>
</div>
@endsection