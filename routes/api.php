<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\TransaksiController;
use App\Models\User;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/getUsers', [UserController::class, 'index']);
Route::get('/insertUser-{nama_user}-{email_user}-{password_user}-{status}', [UserController::class, 'insert']);
Route::get('/updateUser-{id_user}-{nama_user}-{email_user}-{password_user}-{status}', [UserController::class, 'update']);
Route::get('/deleteUser-{id_user}', [UserController::class, 'delete']);

Route::get('/getProduct', [BarangController::class, 'index']);
Route::get('/insertProduct-{nama_barang}-{harga_barang}-{stok_barang}-{thumbnail}', [BarangController::class, 'insert']);
Route::get('/updateProduct-{id_barang}-{nama_barang}-{harga_barang}-{stok_barang}-{thumbnail}', [BarangController::class, 'update']);
Route::get('/deleteProduct-{id_barang}', [BarangController::class, 'delete']);

Route::get('/getTransaksi', [TransaksiController::class, 'index']);
Route::get('/deleteTransaksi-{id_transaksi}', [TransaksiController::class, 'delete']);