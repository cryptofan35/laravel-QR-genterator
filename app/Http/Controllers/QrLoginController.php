<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Sentinel;
use App\User;
use QrCode;
use DB;

class QrLoginController extends Controller
{
    public function index(Request $request) {
		return view('auth.QrLogin');
	}
	public function Qrcode(Request $request) {
		return view('frontLayout.qrcode', [
			'email' 	=> '',
			'firstname' => '',
			'lastname'	=> '',
			'phone'		=> '',
			'address'	=> '',
			'qr_id'		=> 'default',
			'size'		=> 10,
			'img_name'	=> 'QR ID',
		]);
	}
	public function getUsernameFromEmail($email) {
		$find = '@';
		$pos = strpos($email, $find);
		$username = substr($email, 0, $pos);
		return $username;
	}
	public function Qrcode_create(Request $request) {
		$firstname = $request->firstname;
		$lastname = $request->lastname;
		$email = $request->mail;
		$phone = $request->phone;
		$address =  $request->address;
		$size = $request->size;

		if ($size == null) {
			$size = 10;
		}

		$codeContents = $firstname.';'.$lastname.';'.$email.';'.$phone.';'.$address;
		$qr_value = Crypt::encryptString($codeContents);

		$empty = DB::table('qr_contents')->get();
		$qr_id = 0;
		if ($empty->isEmpty()) {
			DB::table('qr_contents')
			->insert([
				'qr_value' => $qr_value,
			]);
			$qr_id = 1000000;
		}else {
			$pre_qr_id = DB::table('qr_contents')->orderBy('id', 'desc')->first();
			$qr_id = $pre_qr_id->id+1000000;
			DB::table('qr_contents')
				->insert([
					'qr_id'		=> $qr_id,
					'qr_value' => $qr_value,
				]);
		}

		QrCode::size($size)
            ->format('png')
            ->generate($qr_id.$codeContents, public_path('images/'.$qr_id.'.png')); 
		return view('frontLayout.qrcode', [
			'email' => $email,
			'firstname' => $firstname,
			'lastname'	=> $lastname,
			'phone'		=> $phone,
			'address'	=> $address,
			'qr_id'		=> $qr_id,
			'size'		=> $size,
			'img_name'	=> $qr_id
		]);
	}
	public function indexoption2(Request $request) {
    	
		return view('auth.QrLogin2');
	}
	public function ViewUserQrCode($value='')
	{
		return view('backEnd.users.viewqrcode');
	}
	public function checkUser(Request $request) {
		 $result =0;
			if ($request->data) {
				$user = User::where('QRpassword',$request->data)->first();
				if ($user) {
					Sentinel::authenticate($user);
				    $result =1;
				 }else{
				 	$result =0;
				 }

				
			}
			
			return $result;
	}

	public function QrAutoGenerate(Request $request)
	{	
		$result=0;
		if ($request->action = 'updateqr') {
			$user = Sentinel::getUser();
			if ($user) {
				$qrLogin=bcrypt($user->personal_number.$user->email.str_random(40));
		        $user->QRpassword= $qrLogin;
		        $user->update();
		        $result=1;
			}
		
		}
		
        return $result;
	}

	// public function Download($file){
	// 	$filePath = public_path('/images/');
 //    	$headers = ['Content-Type: application/png'];
 //    	$fileName = $file.'.png';
 //    	return response()->download($filePath, $file.'.png', $headers);
	// }

}