<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Invoice;
use App\User;
use Illuminate\Http\Request;
use Steevenz\Rajaongkir;

class OrderController extends Controller
{
    public function myOrder(Request $request){
        $user = User::auth($request);
        $data = Invoice::with('product_orders')->where('user_id', $user->id)->get();
        return json_response(1, 'Berhasil', $data);
    }

    public function order(Request $request){
        $user = User::auth($request);

        $rajaongkir = new Rajaongkir(env("RAJAONGKIR_API"), Rajaongkir::ACCOUNT_STARTER);
//        $rajaongkir->getCost()

        $invoice = Invoice::create([
            'user_id' => $user->id,
//            'alamat' =>
        ]);
        /*
         * product_id
         * quantity
         * alamat
         * district_id
         * */
    }
}
