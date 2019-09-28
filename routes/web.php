<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return "Recyclink 2019";
});

$router->post('/register', 'UsersController@register');
$router->get('/verify/{token}', 'UsersController@verify');
$router->post('/login', 'UsersController@login');

$router->get('/test', function(){
    $name = "asdasd";
    return view('emails.register', compact('name'));
});
