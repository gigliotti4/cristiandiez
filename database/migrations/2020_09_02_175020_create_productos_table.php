<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->id();
            $table->string('orden');
            $table->string('titulo');
            $table->string('imagen');
            $table->text('texto');
            $table->string('fichatecnica')->nullable();
            $table->integer('ventajauno')->nullable();
            $table->integer('ventajados')->nullable();
            $table->integer('ventajatres')->nullable();
            $table->integer('ventajacuatro')->nullable();
            $table->text('descripcion');
            $table->integer('category_id')->nullable();
            $table->integer('subcategory_id')->nullable();
            $table->integer('prodrel_uno')->nullable();
            $table->integer('prodrel_dos')->nullable();
            $table->integer('prodrel_tres')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
