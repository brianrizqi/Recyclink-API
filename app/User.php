<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Laravel\Lumen\Auth\Authorizable;

class User extends Model implements AuthenticatableContract, AuthorizableContract
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'username', 'verification_code', 'email_verified_at', 'role_id', 'api_token'
    ];
    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token'
    ];

    public function invoices(){
        return $this->hasMany('App\Invoice', 'user_id');
    }

    public static function auth(Request $request){
        $token = $request->header('token');
        $user = User::where('api_token', $token)->first();
        return $user;
    }

    public function products(){
        return $this->hasMany('App\Product', 'user_id');
    }
}
