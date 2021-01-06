<?php

use App\Http\Controllers\BarangController;

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



// Route::any('/', function () {
//     return view('home');
// });

// Route::any('/{slug}', function () {
//     return view('home');
// });

// Route::any('/{slug1}/{slug2}', function () {
//     return view('home');
// });

// Route::view('/', 'home');

// Route::view('/{slug1}', 'home');

Route::get('/{any}', function () {
    return view('home');
})->where('any', '.*'); 

