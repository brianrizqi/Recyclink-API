<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\RecycleCategory;
use App\RecycleOrder;
use App\User;
use Illuminate\Http\Request;
class RecycleController extends Controller
{
    public function category(){
        $data = RecycleCategory::select('id', 'category', 'title', 'price')->get();
        return json_response(1, 'Berhasil', $data);
    }

    public function store(Request $request){
        $user = User::auth($request);
        return $request;
//        \DB::transaction(function() use ($user){
//            $order = RecycleOrder::create([
//                'user_id' => $user->id,
//                'total_price' => 0,
//                'quantity' => 0,
//                'status' => 1
//            ]);
//
//
//        });
    }
}
