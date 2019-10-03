<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Product;
use App\ProductCategory;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    public function index()
    {
        $data = Product::get();
        return json_response(1, 'Berhasil', $data);
    }

    public function favouriteProducts()
    {
        $data = Product::with('user')
            ->orderBy('rating', 'desc')
            ->get()
            ->take(10);
        return json_response(1, 'Berhasil', $data);
    }

    public function newProducts()
    {
        $data = Product::with('user')
            ->orderBy('created_at', 'desc')
            ->get()
            ->take(4);
        return json_response(1, 'Berhasil', $data);
    }

    public function category()
    {
        $data = ProductCategory::select('id', 'category', 'title')->get();
        return json_response(1, 'Berhasil', $data);
    }

    public function getProductByCategory(Request $request)
    {
        if (!$request->has('category_id')) {
            return json_response(0, 'Something Error');
        }

        $data = ProductCategory::find($request->category_id)->products;
        return json_response(1, 'Berhasil', $data);
    }

    public function store(Request $request)
    {
//        $temp = Validator::make($request->all(), [
//            'title' => 'required|min:3|max:255',
//            'thumbnail' => 'required',
//            'price' => 'required',
//            'stock' => 'required',
//            'category_id' => 'required',
//            'description' => 'required'
//        ]);
//
////        if($temp->fails()){
////            return json_response_error("Gagal menambahkan product", $temp->errors());
////        }

        $user = User::auth($request);
        $file = $request->file('thumbnail');
        $image = $request->thumbnail;
        $filename = Str::random(16) . '.' . $file->getClientOriginalExtension();
        $thumbnail = $file->storeAs('public/assets/products', $filename);
        $product = Product::create([
            'user_id' => $user->id,
            'title' => str_replace('"', '', $request->title),
            'price' => $request->price,
            'stock' => $request->stock,
            'thumbnail' => url('/storage/assets/products/' . $filename),
//            'thumbnail' => url('storage/assets/product/' . $imageName),
            'category_id' => $request->category_id,
            'description' => str_replace('"', '', $request->description),
        ]);

        return json_response(1, "Berhasil menambahkan product", $product);
    }

    public function myProducts(Request $request)
    {
        $user = User::auth($request);

        return json_response(1, "Berhasil", $user->products);
    }
}
