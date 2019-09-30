<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use SoftDeletes;
    protected $table = 'products';
    protected $fillable = ['user_id', 'title', 'price', 'thumbnail', 'stock', 'category_id', 'description'. 'rating'];
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }

    public function category(){
        return $this->belongsTo('App\ProductCategory', 'category_id');
    }

    public function product_order(){
        return $this->hasMany('App\ProductOrder', 'product_id');
    }
}
