<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;

class Auth_controller extends Controller
{
    public function register(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'username' => 'required|string|unique:users,username',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|confirmed',
        ]);
        $user = User::create([
            'name' => $request->name,
            'username' => $request->username,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);
        $token = $user->createToken('perpusToken')->plainTextToken;
        $response = [
            'user' => $user,
            'token' => $token
        ];
        return response($response, 201);
    }
    public function login(Request $request)
    {
        $this->validate($request, [
            'username' => 'required|string',
            'password' => 'required|string'
        ]);
        $user = User::where('username', $request->username)->orWhere('email', $request->username)->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            return response([
                'message' => 'Username or Password is wrong!'
            ], 401);
        }
        $token = $user->createToken('perpusToken')->plainTextToken;
        $response = [
            'user' => $user,
            'token' => $token
        ];
        return response($response, 201);
    }
    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return [
            'message' => 'Logged Out'
        ];
    }
}
