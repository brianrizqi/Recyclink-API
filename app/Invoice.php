<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Invoice extends Model
{
    use SoftDeletes;

    protected $table = 'invoices';
    protected $fillable = ['user_id', 'total_price', 'resi', 'status'];
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    public function product_orders(){
        return $this->hasMany('App\ProductOrder', 'invoice_id');
    }

    public function buyer(){
        return $this->belongsTo('App\User', 'user_id');
    }

    public function recycle_orders(){
        return $this->hasMany('App\RecycleOrder', 'invoice_id');
    }
}
