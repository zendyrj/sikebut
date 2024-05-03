<?php
function whatsapp_api($nomor, $pesan){
    // kirim whatapp
    $number=$nomor;
    $message=$pesan;
    $msg="";
    if($number != ""){
        $client = new \GuzzleHttp\Client();
        $body['number'] = $number;
        $body['message'] = $message;
        $body['servername'] = $_SERVER['SERVER_NAME'];
        $url = "http://103.165.156.216/whatsappapi/public/api/KirimPesan";
        try {
            $response = $client->request("POST", $url, [
                'headers'=> [
                    'Accept' =>'application/json',
                    'Authorization' => 'Bearer Ma98vUXVd0Ci327TEucaSAjsuuIbvcJ1EDnBg4wW'
                ],
                'form_params'=>$body
            ]);
            $apiRequest=json_decode($response->getBody()->getContents(), true);
            //   return response()->json($apiRequest);
            $msg='Kode OTP telah dikirim ke nomor Whatsapp ';
        } catch (RequestException $e) {
            if ($e->hasResponse()) {
                $apiRequest=json_decode($e->getResponse()->getBody()->getContents(), true);
                //   return response()->json($apiRequest);
                $msg='GAGAL mengirim Kode OTP ke nomor Whatsapp ';
            }
        }
    }
    // and whatapp
    return $msg."+".$nomor;
}

