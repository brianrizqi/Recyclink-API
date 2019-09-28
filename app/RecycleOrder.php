<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RecycleOrder extends Model
{
    use SoftDeletes;
    protected $table = 'recycle_orders';
    protected $fillable = ['invoice_id', 'recycle_id', 'quantity'];

    public function invoice(){
        return $this->belongsTo('App\Invoice', 'invoice_id');
    }

    public function recycle(){
        return $this->belongsTo('App\Recycle', 'recycle_id');
    }
}
