<?php

namespace App\Http\Controllers\Api;

use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{

    public function index()
    {
        try{
            $products = Product::latest()->get();
            return sendSuccessResponse($products, "Data Retrieve Successfully", 200);
        }catch(QueryException $e){
            return sendErrorResponse("Database Connection Failed !", $e->getMessage(), 500);
        }
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'unique:products,name']
        ]);

        if($validator->fails()){
            return sendErrorResponse('Client Side Errors !!', $validator->errors(), 422);
        };

       // return $request->all();

       try{
            $data = $validator->validate();
            $data['slug'] = \Str::slug($data['name']);
            $product = Product::create($data);
            return sendSuccessResponse($product, "Data Created Successfully !", 201);
       }catch(QueryException $e){
            return sendErrorResponse("Something Went Wrong !", $e->getMessage(), 500);
       }

    }

    public function view($id)
    {
        try{
            $data = Product::whereId($id)->first();

            if($data){
                return sendSuccessResponse($data, "Data Reterive Successfully!", 200);
            }else{
                return sendSuccessResponse([], "Data not available !", 404);
            }
        }catch(QueryException $e){
            return sendErrorResponse("Something Went Wrong !", $e->getMessage(), 500);
        }

    }

    public function update(Request $request,$id)
    {
        // return $request->all();

        $validator = Validator::make($request->all(), [
            'name' => ['required', 'unique:products,name,' .$id]
        ]);

        if($validator->fails()){
            return sendErrorResponse('Client Side Errors !!', $validator->errors(), 422);
        };

       try{
           $findProduct = Product::whereId($id)->first();

           if($findProduct){
                $data = $validator->validate();
                $data['slug'] = \Str::slug($data['name']);
                $data = Product::find($id)->update($data);
                return sendSuccessResponse($findProduct, "Data Updated Successfully !", 201);
            }else{
                return sendSuccessResponse([], "Data not available !", 404);
            }
       }catch(QueryException $e){
            return sendErrorResponse("Something Went Wrong !", $e->getMessage(), 500);
       }

    }

    public function delete($id)
    {
        try{
            $product = Product::whereId($id)->first();
            if($product){
                $product->delete();
                return sendSuccessResponse($product, "Data deleted Successfully !!", 202);
            }else{
                return sendSuccessResponse([], "Opps! Data not found.", 404);
            }
        }catch(QueryException $e){
            return sendErrorResponse('Something went wrong', $e->getMessage(), 500);
        }
    }
}
