<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class IndexController extends Controller
{
    //index
    public function index(){

    	if(empty($_POST['search'])){
    		$data = DB::table('users')->get();
    	}else{
    		echo "用户使用了搜索".$_POST['search'];
    		$data = DB::table('users')->get();
    	}
    	//dd($data);
    	return view('users')->with("data",$data);
    }

    public function user($id="默认ID",$sex="默认SEX"){
    	var_dump($id);
    	var_dump($sex);
    }
}
