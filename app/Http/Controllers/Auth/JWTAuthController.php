<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;

class JWTAuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:jwt_auth', ['except' => ['login']]);
    }

    public function login()
    {
        $credentials = request(['email','password']);

        if (!$token = auth()->guard('jwt_auth')->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token);
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth('jwt_auth')->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth('jwt_auth')->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth('jwt_auth')->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->guard('jwt_auth')->factory()->getTTL() * 60
        ]);
    }

    public function register(Request $request)
    {
        return $request->all();

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            //return response()->json($validator->errors()->toJson(), 400);
            return sendErrorResponse("Client Side Errors", $validator->errors(), 400);
        }

        try{
            $data = $validator->validated();
            $data['password'] = bcrypt($request->password);
            $user = User::create($data);
            return sendSuccessResponse($user, "User Successfully registered", 201);
        }catch(QueryException $e){
            return sendErrorResponse("Something Went Wrong !", $e->getMessage(), 500);
        }
    }
}
