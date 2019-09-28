<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductCategory extends Model
{
    use SoftDeletes;
    protected $table = 'product_categories';
    protected $fillable = ['category', 'title'];

    public function products(){
        return $this->hasMany('App\Product', 'category_id');w
    }
}
