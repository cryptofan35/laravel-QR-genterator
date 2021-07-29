<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Sentinel;

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
        if(!Sentinel::inRole('admin')){
            return redirect('/');
        }
        $qr_infos = DB::table('qr_contents')->get();
    	return view('backEnd.dashboard', ['qr_infos' => $qr_infos]);
    }
}
