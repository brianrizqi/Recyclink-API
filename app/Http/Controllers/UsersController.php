<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Mail\RegisterMail;
use App\User;
use Bcrypt\Bcrypt;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;

class UsersController extends Controller
{
    public function register(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:3|max:200',
            'email' => 'required|unique:users|email',
            'username' => 'required|unique:users|min:3|max:64',
            'password' => 'required|min:3|max:32'
        ]);

        $verification_code = Str::random(32);

        $user = User::create([
            'name' => $request->name,
            'username' => $request->username,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role_id' => 3,
            'verification_code' => $verification_code,
        ]);

        Mail::to($request->email)->send(new RegisterMail($user, $verification_code));

        return response()->json([
            'success' => 1,
            'message' => 'Register Berhasil, silahkan cek email anda'
        ]);
    }

    public function login(Request $request){
        $user = User::where('username', $request->username)->first();
        if(is_null($user)){
            return response()->json([
                'success' => 0,
                'message' => 'User tidak ditemukan'
            ]);
        }

        if(!Bcrypt::verify($request->password, $user->password)){
            return response()->json([
                'success' => 0,
                'message' => 'Password salah'
            ]);
        }

        $token = Str::random(16);
        $user->update([
            'api_token' => $token
        ]);
        return response()->json([
            'success' => 1,
            'message' => 'Login berhasil',
            'token' => $token,
            'role' => $user->role_id
        ]);

    }

    public function logout(Request $request){
        $user = User::auth($request);
        $user->update([
            'api_token' => null
        ]);
        return json_response(1,'Logout Berhasil');
    }

    public function verify($token)
    {
        $user = User::where('verification_code', $token)->first();
        if(!is_null($user)){
            $user->update([
                'verification_code' => null,
                'email_verified_at' => date('Y-m-d H:i:s')
            ]);
            return response()->json([
                'success' => 1,
                'message' => 'Email berhasil diverifikasi'
            ]);
        } else {
            return response()->json([
                'success' => 0,
                'message' => 'Token tidak ditemukan'
            ]);
        }
    }
}
