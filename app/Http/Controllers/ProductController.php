<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Product;
use App\ProductCategory;
use Illuminate\Http\Request;
class ProductController extends Controller
{
    public function index(){
        $data = Product::get();
        return json_response(1, 'Berhasil', $data);
    }

    public function favouriteProducts(){
        $data = Product::orderBy('rating', 'desc')->get()->take(10);
        return json_response(1, 'Berhasil', $data);
    }

    public function newProducts(){
        $data = Product::orderBy('rating', 'desc')->get()->take(4);
        return json_response(1, 'Berhasil', $data);
    }

    public function category(){
        $data = ProductCategory::select('id', 'category', 'title')->get();
        return json_response(1, 'Berhasil', $data);
    }

    public function getProductByCategory(Request $request){
        if(!$request->has('product_id')){
            return json_response(0, 'Something Error');
        }

        $data = ProductCategory::find($request->product_id)->products;
        return json_response(1, 'Berhasil', $data);
    }

    public function store(Request $request){
        
    }
}
