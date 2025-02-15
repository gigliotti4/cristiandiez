<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubCategoria extends Model
{
    protected $fillable=['orden','titulo','imagen','category_id'];

    public function categoria() {
        return $this->Belongsto('App\Categorias','category_id');
    }
    public function productos(){
        return $this->hasMany('App\Producto','subcategory_id');
    }
}
