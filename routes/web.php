<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ForgetPasswordController;
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

//Route::get('/', function () {
//    return view('welcome');
//});

/*Route::get("/foo", function () {
    return "Hello Laravel";
});

Route::get("/test", "TestController@index");

Route::match(['get', 'post'], '/test1', function () {
    return "TEST1 TEST2";
});

Route::any('/test2', function () {
    return "Any";
});

Route::redirect('/here1', 'http://youtube.com');
Route::redirect('/here2', '/hello');

Route::view('/welcome1', 'welcome1');
Route::view('/welcome2', 'welcome2', ['name' => 'Piseth']);

Route::get('/user/{id}', function ($id) {
    return 'User ' . $id;
});

Route::get(
    '/posts/{post}/comments/{comment}',
    function ($postId, $commentId) {
        return 'post ' . $postId . ' comment ' . $commentId;
    }
);

Route::get('/welcome3/{name?}', function ($name = "default") {
    return $name;
});

Route::get('welcome4/{name}', function ($name) {
    return $name;
})->where('name', '[A-Za-z]+');

Route::get('welcome5/{id}', function ($id) {
    return $id;
})->where('id', '[0-9]+');

Route::get('welcome6/{id}/{name}', function ($id, $name) {
    return $id . " " . $name;
})->where(['id' => '[0-9]+', 'name' => '[a-z]+']);

Route::get('user/profile', function () {
    //$url = route('profile');
    return "user profile";
})->name('profile');

Route::get("welcome7", function () {
    return redirect()->route("profile");
});

Route::get('student/details/example', array('as' => 'student.details', function () {
    $url = route('student.details');
    return "The url is : " . $url;
}));*/
Route::get('/form',function() {
    return view('form');
 });
Route::group(['middleware'=> ['web']],function () {
    Route::resource('category', 'CategoryController');

    Route::get('/','FrontendController@index');
    Route::get('/show/{post}','FrontendController@show');
    Route::get('/frontend/category/{category}', 'FrontendController@getByCategory');
    Route::get('/frontend/search/', 'FrontendController@getBySearch');
});
// single route check authentication
Route::get("/post", "PostController@index", ['middleware' => 'auth']);
// multiple routes check authentication
Route::group(['middleware' => 'auth'], function() {
    //Route::get('/post','PostController@index')->name('post.index');
    Route::get('/post/create','PostController@create')->name('post.create');
    Route::post('/post','PostController@store')->name('post.store');
    Route::get('/post/{post}','PostController@show')->name('post.show');
    Route::delete('/post/{post}','PostController@destroy')->name('post.destroy');
    Route::get('/post/{post}/edit','PostController@edit')->name('post.edit');
    Route::put('/post/{post}','PostController@update')->name('post.update');
});

Route::get('/admin', function () {
    return redirect()->route('login');
});
// register and login
Route::get('login', [AuthController::class, 'index'])->name('login');
Route::post('post-login', [AuthController::class, 'postLogin'])->name('login.post');
Route::get('registration', [AuthController::class, 'registration'])->name('register');
Route::post('post-registration', [AuthController::class, 'postRegistration'])->name('register.post');
//Route::get('dashboard', [AuthController::class, 'dashboard']);
Route::get('logout', [AuthController::class, 'logout'])->name('logout');
/* New Added Routes */
Route::get('dashboard', [AuthController::class, 'dashboard'])->middleware(['auth', 'is_verify_email']);
Route::get('account/verify/{token}', [AuthController::class, 'verifyAccount'])->name('user.verify');

// forget and reset password
Route::get('forget-password', [ForgetPasswordController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password', [ForgetPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post');
Route::get('reset-password/{token}', [ForgetPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [ForgetPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');
