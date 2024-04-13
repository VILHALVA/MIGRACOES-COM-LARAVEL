<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('produtos', function (Blueprint $table) {
            $table->id();
            $table->string('nome');
            $table->text('descricao');
            $table->double('preco', 10, 2);
            $table->string('slug');
            $table->string('imagem')->nullable();
            $table->unsignedBigInteger('id_user');
            $table->unsignedBigInteger('id_categoria'); // Adicionando coluna id_categoria

            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade'); // Corrigindo referência para users
            $table->foreign('id_categoria')->references('id')->on('categorias')->onDelete('cascade')->onUpdate('cascade'); // Corrigindo referência para categorias
            $table->timestamps(); // Removido timestamps duplicado
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('produtos');
    }
};
