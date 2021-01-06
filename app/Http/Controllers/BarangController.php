<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BarangController extends Controller
{
    public function index(){
        $produk = DB::table('barang')->get();
        // dump($produk);
        return response()->json($produk);
    }

    public function delete($id_barang){
        DB::table('barang')->where('id_barang', '=', $id_barang)->delete();
    }

    public function update($id_barang, $nama_barang, $harga_barang, $stok_barang, $thumbnail){
        $affected = DB::table('barang')
            ->where('id_barang', $id_barang)
            ->update(['nama_barang' => $nama_barang, 'harga_barang' => $harga_barang, 'stok_barang' => $stok_barang]);
    }

    public function insert($nama_barang, $harga_barang, $stok_barang, $thumbnail){
        DB::table('barang')->insert([
            'nama_barang' => $nama_barang,
            'harga_barang' => $harga_barang,
            'stok_barang' => $stok_barang,
            'gambar_barang' => $thumbnail
        ]);
    }
}
