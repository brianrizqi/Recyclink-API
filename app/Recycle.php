<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Recycle extends Model
{
    use SoftDeletes;
    protected $table = 'recycles';
    protected $fillable = ['user_id', 'category_id', 'title', 'quantity', 'price'];

    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }

    public function category(){
        return $this->belongsTo('App\RecycleCategory'. 'category_id');
    }
}
