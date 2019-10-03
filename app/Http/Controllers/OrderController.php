<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Invoice;
use App\Product;
use App\ProductOrder;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Steevenz\Rajaongkir;

class OrderController extends Controller
{
    public function myOrder(Request $request)
    {
        $user = User::auth($request);
        $data = Invoice::with('product_orders.product.user')->where('user_id', $user->id)->get();
        return json_response(1, 'Berhasil', $data);
    }

    public function order(Request $request)
    {
        $user = User::auth($request);

        $rajaongkir = new Rajaongkir(env("RAJAONGKIR_API"), Rajaongkir::ACCOUNT_STARTER);
        DB::beginTransaction();
        try {
            $invoice = Invoice::create([
                'user_id' => $user->id,
                'alamat' => $request->alamat,
                'total_price' => 0,
                'courier' => $request->courier,
                'status' => 1
            ]);

            $total = $request->quantity * Product::find($request->product_id)->price;
            ProductOrder::create([
                'invoice_id' => $invoice->id,
                'product_id' => $request->product_id,
                'quantity' => $request->quantity,
                'payment' => $request->payment
            ]);

            $invoice->update([
                'total_price' => $total
            ]);

            DB::commit();
        } catch (\Exception $e) {
            DB::rollBack();
            return json_response_error("Data gagal diinputkan");
        }

        /*
         * product_id
         * quantity
         * alamat
         * district_id
         * */
        return json_response(1, "Pesanan berhasil dilakukan");
    }

    public function confirmOrder(Request $request){
        $user = User::auth($request);
        $order_id = $request->order_id;
        $resi = $request->resi;
        Invoice::find($order_id)->update([
            'resi' => $resi,
            'status' => 2   ,
        ]);
        return json_response(1, "Konfirmasi Berhasil");
    }

    public function myProductOrder(Request $request){
        $user = User::auth($request);
        $products = $user->products->pluck('id');
        $data = Invoice::with(['product_orders.product', 'buyer'])->whereHas('product_orders', function($q) use ($products){
            $q->whereIn('product_id', $products);
        })->get();

        return json_response(1, "Berhasil", $data);
    }

    public function confirmOrderBuyer(Request $request){
        $user = User::auth($request);
        Invoice::find($request->order_id)->update([
            'status' => 3
        ]);
        return json_response(1, "Berhasil dikonfirmasi");
    }
}
