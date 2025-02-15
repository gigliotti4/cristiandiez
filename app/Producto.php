<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    protected $fillable=['orden','titulo','imagen','imagen_dos','texto','fichatecnica','ventajauno','ventajados','ventajatres',
    'ventajacuatro','descripcion','prodrel_uno','prodrel_dos','prodrel_tres','category_id','subcategory_id'];
    public function categoria(){
       return  $this->belongsTo('App\Categorias','category_id');
    }
    public function subcategoria(){
        return $this->belongsTo('App\SubCategoria','subcategory_id');
    }
}
