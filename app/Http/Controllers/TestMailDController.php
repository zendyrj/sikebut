<?php
 
namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
 
class TestMailDController extends Controller
{
    public function index(){
    	
        $details = [

            'title' => 'Hi Zendy',

            'body' => 'Permohonan anda telah diverifikasi oleh Saya',

            'ket' => 'dan aaaaw',

            'id' => '23891890890123890123089012389012',

            'warning' => ''

            ];

        \Mail::to('ndonkk@gmail.com')->send(new \App\Mail\KirimEmail($details));

        if (\Mail::failures()) {
            return "GAGAL".\Mail::failures();
        }else{
            return "Sukses";
        }
    }
}