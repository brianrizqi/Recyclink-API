<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Invoice;
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
        $data = Invoice::with('product_orders')->where('user_id', $user->id)->get();
        return json_response(1, 'Berhasil', $data);
    }

    public function order(Request $request)
    {
        $user = User::auth($request);

        $rajaongkir = new Rajaongkir(env("RAJAONGKIR_API"), Rajaongkir::ACCOUNT_STARTER);
//        $rajaongkir->getCost()

        DB::beginTransaction();
        try {
            $invoice = Invoice::create([
                'user_id' => $user->id,
                'alamat' => $request->alamat,
                'total_price' => 0,
                'courier' => $request->courier,
                'status' => 1
            ]);

            $total = $request->quantity;
            ProductOrder::create([
                'invoice_id' => $invoice,
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
}
