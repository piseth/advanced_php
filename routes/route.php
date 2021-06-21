<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
// 1 string
Route::get('/string', function () {
    return "Hello World";
});
// 2 view
Route::get('/view', function () {
    return view('student');
});
// 3 controller action
Route::get('/controller', 'StudentController@index');

// 4 route match function
Route::match(['get', 'post'],'/get_post', function () {
    return 'match function';
});
// 5 route any function
Route::any('/any', function () {
    return 'any function';
});

// 6 route redirect
Route::redirect('/home', '/homepage');
Route::get('/homepage', function () {
    return view('welcome');
});

// 7 route view function
Route::view('/welcome', 'welcome');

// 8 route view function with param
Route::view('/param', 'welcome', ['username'=>'Sok Piseth']);

// 9 route param in url
Route::get('/student/{id}', function ($id) {
    return 'Student ' . $id;
});

// 10 route param in url optional
Route::get('/mystudent/{id?}', function ($id="") {
    return 'My Student ' . $id;
});

// 11 route with regular expression
Route::get('/letter/{name}', function ($name) {
    return "Letter: " . $name;
})->where('name', '[A-Za-z]+');
Route::get('/number/{phone}', function ($phone) {
    return "Number: " . $phone;
})->where('phone', '[0-9]+');

// 12 named route
Route::get('user/profile', function () {
    $url = route('profile');
    return "user profile : " . $url;
})->name('profile');
