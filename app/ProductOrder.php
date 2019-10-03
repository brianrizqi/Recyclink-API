<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductOrder extends Model
{
    use SoftDeletes;
    protected $table = 'product_orders';
    protected $fillable = ['invoice_id', 'product_id', 'quantity'];
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    public function invoice(){
        return $this->belongsTo('App\Invoice', 'invoice_id');
    }

    public function product(){
        return $this->belongsTo('App\Product', 'product_id');
    }
}
