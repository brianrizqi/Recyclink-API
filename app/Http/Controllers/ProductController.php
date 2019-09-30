<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Product;
use App\ProductCategory;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    public function index(){
        $data = Product::get();
        return json_response(1, 'Berhasil', $data);
    }

    public function favouriteProducts(){
        $data = Product::with('user')
            ->orderBy('rating', 'desc')
            ->get()
            ->take(10);
        return json_response(1, 'Berhasil', $data);
    }

    public function newProducts(){
        $data = Product::with('user')
            ->orderBy('rating', 'desc')
            ->get()
            ->take(4);
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
        $temp = Validator::make($request->all(), [
            'title' => 'required|min:3|max:255',
            'thumbnail' => 'required|image',
            'price' => 'required',
            'stock' => 'required',
            'category_id' => 'required',
            'description' => 'required'
        ]);

        if($temp->fails()){
            return json_response_error("Gagal menambahkan product", $temp->errors());
        }

        $user = User::auth($request);
        $file = $request->file('thumbnail');
        $thumbnail = $file->storeAs('assets/products', Str::random(16) . '.' . $file->getClientOriginalExtension());

        $product = Product::create([
            'user_id' => $user->id,
            'title' => $request->title,
            'price' => $request->price,
            'stock' => $request->stock,
            'thumbnail' => $thumbnail,
            'category_id' => $request->category_id,
            'description' => $request->description,
        ]);

        return json_response(1, "Berhasil menambahkan product", $product);
    }
}
