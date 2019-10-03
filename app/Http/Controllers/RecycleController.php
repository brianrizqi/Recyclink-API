<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\RecycleCategory;
use App\RecycleOrder;
use App\User;
use Illuminate\Http\Request;

class RecycleController extends Controller
{
    public function category()
    {
        $data = RecycleCategory::select('id', 'category', 'title', 'price', 'thumbnail')->get();
        return json_response(1, 'Berhasil', $data);
    }

    public function store(Request $request)
    {
        $user = User::auth($request);
        $orders = json_decode($request->orders);
        $total = 0;
        $total_weight = 0;
        foreach ($orders as $order) {
            $id = $order->category_id;
            $total += (RecycleCategory::find($id)->price * $order->quantity);
            $total_weight += $order->quantity;
        }

        $recycle_order = RecycleOrder::create([
            'user_id' => $user->id,
            'total_price' => $total,
            'quantity' => $total_weight,
            'status' => 1
        ]);

        return json_response(1, "Order Berhasil", $recycle_order);
    }

    public function myOrder(Request $request){
        $user = User::auth($request);
        return json_response(1, "Berhasil", $user->recycle_orders);
    }
}
