<?php

function whatsapp_api($nohp, $pesan){

    $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,"http://192.168.99.121/whatsappapi/public/api/KirimPesan");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $headers = [
            'Accept: application/json',
            'Authorization: Bearer xoViJFEVEKPhGecVSMPiTeegFxbitkblQcFCgWz4',
        ];
        $post=[
            'number'=>$nohp,
            'message'=>$pesan,
            'servername'=>$_SERVER['SERVER_NAME'],
        ];
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS,$post);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        $result = curl_exec($ch);
        // curl_close($ch);
        // var_dump($result)
        // return json_decode($result);
        if (curl_errno($ch)) {
            // this would be your first hint that something went wrong
            die('Couldn\'t send request: ' . curl_error($ch));
        } else {
            // check the HTTP status code of the request
            $resultStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            if ($resultStatus == 200) {
                // var_dump($result);
                // header('Content-type:application/json;charset=utf-8');
                // echo json_encode($result);
                // $x=json_decode($result);
                // return view('opd.ekonomi.harga-mingguan', compact('x'));
            } else {
                var_dump('Request failed: HTTP status code: ' . $resultStatus);
                // die('Request failed: HTTP status code: ' . $resultStatus);
            }
        }
        curl_close($ch);

}



