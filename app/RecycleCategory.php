<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RecycleCategory extends Model
{
    use SoftDeletes;
    protected $table = 'recycle_categories';
    protected $fillable = ['category', 'title'];

    public function recycles(){
        return $this->hasMany('App\Recycle', 'category_id');
    }
}
