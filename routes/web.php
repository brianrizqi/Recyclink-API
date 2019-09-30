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
$router->post('/logout', 'UsersController@logout');

$router->group(['middleware' => 'token'], function () use ($router){
    $router->get('/profile', 'ProfileController@getProfile');

    $router->get('/products', 'ProductController@index');
    $router->get('/fav-products', 'ProductController@favouriteProducts');
    $router->get('/new-products', 'ProductController@newProducts');

    $router->post('/product', 'ProductController@store');

    $router->get('/my-order', 'OrderController@myOrder');

    $router->get('/product-category', 'ProductController@category');
    $router->post('/get-product-by-category', 'ProductController@getProductByCategory');

    $router->get('/recycle-category', 'RecycleController@category');
    $router->post('/recycle', 'RecycleController@store');

});
