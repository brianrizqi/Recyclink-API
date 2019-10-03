<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Recycle extends Model
{
    use SoftDeletes;
    protected $table = 'recycles';
    protected $fillable = ['category_id', 'recycle_order_id', 'stock'];
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }

    public function category(){
        return $this->belongsTo('App\RecycleCategory'. 'category_id');
    }
}
