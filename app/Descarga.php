<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Descarga extends Model
{
    protected $fillable=['orden','titulo','imagen','archivo','tipo_id'];
}
