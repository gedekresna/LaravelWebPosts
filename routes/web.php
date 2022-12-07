<?php

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostController;


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

// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('/about', function () {
    return view('about',[
        "title" => "about",
        "active" => "about",
        "name" => "i Gede Kresna",
        "email" => "gedekresnap@gmail.com",
        "image" => "fotoku.jpg"
    ]);
});


Route::get('/posts', [PostController::class, "index"]);

Route::get('/', function () {
    return view('home',[
        "title" => "home",
        "active" => "home",
        "name"=>"kresna",
        "role"=>"admin",
        "buah"=>["apel","jeruk","semangka"]
    ]);
});

//SIngle Post
Route::get('/posts/{post:slug}',[PostController::class, "show"]);

Route::get('/categories',function(){
    return view('categories',[
        'title' => 'Post Categories',
        'active' => "categories",
        'categories' => Category::all()
    ]);
});

Route::get('/login', [LoginController::class, "index"])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, "authenticate"]);

// Route::get('/dashboard',[DashboardController::class, 'index'])->middleware('auth');
Route::get('/dashboard',function(){
    return view('dashboard.index');
})->middleware('auth');

Route::resource('/dashboard/posts',DashboardPostController::class)->middleware('auth');

Route::post('/logout',[LoginController::class, 'logout']);


Route::get('/register', [RegisterController::class, "index"])->middleware('guest');
Route::post('/register', [RegisterController::class, "store"]);

