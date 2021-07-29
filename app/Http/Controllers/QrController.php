<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Sentinel;
use App\User;
class QrController extends Controller
{
    public function index(Request $request) {
    	
		return view('frontLayout.qrcode');
	}
}