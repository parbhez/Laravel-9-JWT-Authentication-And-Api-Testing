<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Auth\JWTAuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//url = http://127.0.0.1:8000/api/products/

//middleware('auth:jwt_auth')->
// Route::prefix('products')->middleware('auth:jwt_auth')->controller(ProductController::class)->group(function(){

Route::prefix('products')->controller(ProductController::class)->group(function(){
    Route::get('/','index')->name('index');
    Route::post('/','store')->name('store');
    Route::get('view/{id}','view')->name('view');
    Route::post('update/{id}','update');
    Route::post('delete/{id}','delete')->name('delete');

});


//Route::post('register', [JWTAuthController::class,'register']);

Route::controller(JWTAuthController::class)->group(function () {

    Route::post('register', 'register');
    Route::post('login', 'login');
    Route::middleware('auth:jwt_auth')->group(function () {
        Route::post('logout', 'logout');
        Route::post('me', 'me');
    });
});



