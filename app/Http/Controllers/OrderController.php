<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
class OrderController extends Controller
{
    public function myOrder(Request $request){
        $user = User::auth($request);
        return json_response(1, 'Berhasil', $user->invoices);
    }

    public function order(Request $request){

    }
}
