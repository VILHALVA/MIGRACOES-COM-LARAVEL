<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProdutoController;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\UserController;

Route::get('/', function () {
    return view('home');
});

//Puxando a api do produto
Route::resource('produtos',ProdutoController::class);
Route::resource('categoria',CategoriaController::class);
Route::resource('user',UserController::class);
