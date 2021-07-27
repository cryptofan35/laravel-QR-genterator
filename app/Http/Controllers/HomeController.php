<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    public function home($value='')
    {
    	return view('welcome');
    }
    public function YourhomePage($value='')
    {
    	return view('home');
    }
    public function dashboard($value='')
    {   
        $qr_infos = DB::table('qr_contents')
                    ->select('qr_contents.*', 'users.email')
                    ->leftJoin('users', 'qr_contents.user_id', '=', 'users.id')
                    ->get();
    	return view('backEnd.dashboard', ['qr_infos' => $qr_infos]);
    }
}
