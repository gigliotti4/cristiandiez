<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoDescarga extends Model
{
    protected $fillable=['titulo'];

    public function descargas(){
        return $this->hasMany('App\Descarga','tipo_id');
    }
}
