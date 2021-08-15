<?php

/** @var \Laravel\Lumen\Routing\Router $router */

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




/**
* Home 
* @unauthenticated
*/
$router->get('/', function () use ($router) {
    return 'Welcome to ' . env('APP_NAME');
});

$router->post('/auth', 'AuthController@login');


    //Check Auth
$router->group(['middleware' => 'auth'], function () use ($router) {
    //User Routes
    $router->group(['prefix'=> 'user'],function() use ($router){
        $router->get('/', 'UserController@index');

        //Product Routes
        $router->group(['prefix'=> 'products'],function() use ($router){
        $router->get('/', 'UserController@indexUserPurchase');
        $router->post('/', 'UserController@storeUsersPurchase');
        $router->put('/{sku}','UserController@updateUsersPurchase');
        $router->patch('/{sku}','UserController@updateUsersPurchase');
        $router->delete('/{sku}','UserController@destroyUsersPurchase');
        });
    });


    //Product Routes
    $router->get('/products','ProductController@index');

});