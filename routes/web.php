<?php

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/user', function () {
    return view('addUser');
});

Route::post('/save-user', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'email' => ['required', 'unique:users,email'],
        'name' => ['required', 'min:3'],
        'password' => ['required', 'min:6']
    ]);

    if($validator->fails()){
        $message = sendErrorResponse('Client Side Errors !!', $validator->errors(), 422);
        $request->session()->flash('message', $message);
    };

   // return $request->all();

   try{
        $data = $validator->validate();
        $user = User::create($data);
        $message = sendSuccessResponse($user, "Data Created Successfully !", 201);
        $request->session()->flash('message', $message);
   }catch(QueryException $e){
        $message = sendErrorResponse("Something Went Wrong !", $e->getMessage(), 500);
        $request->session()->flash('message', $message);
   }
    return redirect()->back();

});
