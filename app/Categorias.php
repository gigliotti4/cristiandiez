<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categorias extends Model
{
    protected $fillable=['orden','titulo','imagen','texto'];

    public function subcategorias(){
        return $this->hasMany('App\SubCategoria','category_id');
    }
    public function productos(){
        return $this->hasMany('App\Producto','category_id');
    }
}
