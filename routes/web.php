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
$router->get('/product-category', 'ProductController@category');

$router->group(['middleware' => 'token'], function () use ($router) {
    $router->get('/profile', 'ProfileController@getProfile');
    $router->post('/profile', 'ProfileController@updateProfile');

    $router->get('/products', 'ProductController@index');
    $router->get('/fav-products', 'ProductController@favouriteProducts');
    $router->get('/new-products', 'ProductController@newProducts');

    $router->post('/product', 'ProductController@store');
    $router->get('/my-products', 'ProductController@myProducts');

    $router->get('/my-order', 'OrderController@myOrder');
    $router->post('/order', 'OrderController@order');
    $router->get('/my-product-order', 'OrderController@myProductOrder');
    $router->post('/confirm-order', 'OrderController@confirmOrder');
    $router->post('/confirm-order-buyer', 'OrderController@confirmOrderBuyer');

    $router->post('/get-product-by-category', 'ProductController@getProductByCategory');

    $router->get('/recycle-category', 'RecycleController@category');
    $router->post('/recycle', 'RecycleController@store');
    $router->get('/my-recycle-order', 'RecycleController@myOrder');
});

$router->get('/provinces', function () {
    $rajaongkir = new \Steevenz\Rajaongkir(env("RAJAONGKIR_API"), \Steevenz\Rajaongkir::ACCOUNT_STARTER);
    return json_response(1, "", [
        "provinces" => $rajaongkir->getProvinces()
    ]);
});

$router->post('/cities', function (\Illuminate\Http\Request $request) {
    $province = $request->province_id;
    $rajaongkir = new \Steevenz\Rajaongkir("RAJAONGKIR_API", \Steevenz\Rajaongkir::ACCOUNT_STARTER);
//    return $rajaongkir->getCouriersList();
    return json_encode($rajaongkir->getCost(11, 12, ["jne"]));
    return json_response(1, "", [
        "cities" => $rajaongkir->getCities($province)
    ]);
});
