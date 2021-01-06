<?php

namespace App\Http\Controllers;

use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function index(){
        // return Users::all();
        $user = DB::table('user')->get();

        // dump($user);
        return response()->json($user);

    }
    
    public function delete($id_user)
    {
        DB::table('user')->where('id_user', '=', $id_user)->delete();
    }
    
    public function update($id_user, $newNama, $email_user, $password_user, $status){
        $affected = DB::table('user')
            ->where('id_user', $id_user)
            ->update(['nama_user' => $newNama, 'email_user'=>$email_user, 'password_user'=>$password_user]);
        // return response()->json($affected)
    }

    public function insert($nama_user, $email_user, $password_user, $status){
        DB::table('user')->insert([
            'nama_user' => $nama_user,
            'email_user' => $email_user,
            'password_user' => $password_user,
            'status' => $status
        ]);
    }
    // public function getUsers($id){
    //     $product = Users::find($id);
    //     return response() -> json($product, 200)
    // }
}
