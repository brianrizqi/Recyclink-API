<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RecycleCategory extends Model
{
    use SoftDeletes;
    protected $table = 'recycle_categories';
    protected $fillable = ['category', 'title', 'price'];
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    public function recycles(){
        return $this->hasMany('App\Recycle', 'category_id');
    }
}
