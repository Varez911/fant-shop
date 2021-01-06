<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TransaksiController extends Controller
{
    public function index()
    {
        $transaksi = DB::table('transaksi')->get();

        // dump($produk);
        return response()->json($transaksi);
    }
    public function delete($id_transaksi)
    {
        DB::table('transaksi')->where('id_transaksi', '=', $id_transaksi)->delete();
    }
}
