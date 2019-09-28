<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
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

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token'
    ];

    public function register($name, $email, $username, $password, $verification_code)
    {
        $user = User::create([
            'name' => $name,
            'email' => $email,
            'username' => $username,
            'password' => $password,
            'verification_code' => $verification_code,
            'role_id' => 3
        ]);
        if ($user) {
            return true;
        } else {
            return false;
        }
    }
}
