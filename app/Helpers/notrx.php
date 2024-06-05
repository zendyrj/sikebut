<?php
function entry_otp($otp){
    // return "asdasdasdasdsad";
    date_default_timezone_set('Asia/Jakarta');
      $tgl_now=strtotime("now"); //tanggal sekarang
      $tgl_dibuat=Auth::user()->updated_at; // tanggal dibuat aplikasi
      $masa_berlaku = strtotime('+60 seconds', strtotime($tgl_dibuat)); // jangka waktu + 30 hari atau sebulan
      $tgl_exp=date($tgl_now,$masa_berlaku); //tanggal expired atau kadaluarsa
      if ($tgl_now >= $masa_berlaku && Auth::user()->otp > 0){
        return "<center><h1>Mohon Maaf Web Expired</h1><h3>Silahkan Hubungi Admin<h3></center>";
      }else{
        return "Aktif".$tgl_now.'-'.strtotime($tgl_dibuat);
      }
}
