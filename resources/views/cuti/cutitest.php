<?php
$awal_cuti = '1-08-2020';
$akhir_cuti = '31-08-2020';

// tanggalnya diubah formatnya ke Y-m-d
$awal_cuti = date_create_from_format('d-m-Y', $awal_cuti);
$awal_cuti = date_format($awal_cuti, 'Y-m-d');
$awal_cuti = strtotime($awal_cuti);

$akhir_cuti = date_create_from_format('d-m-Y', $akhir_cuti);
$akhir_cuti = date_format($akhir_cuti, 'Y-m-d');
$akhir_cuti = strtotime($akhir_cuti);

$haricuti = array();
$sabtuminggu = array();

for ($i=$awal_cuti; $i <= $akhir_cuti; $i += (60 * 60 * 24)) {
    if (date('w', $i) !== '0' && date('w', $i) !== '6') {
        $haricuti[] = $i;
    } else {
        $sabtuminggu[] = $i;
    }

}
$jumlah_cuti = count($haricuti);
$jumlah_sabtuminggu = count($sabtuminggu);
$abtotal = $jumlah_cuti + $jumlah_sabtuminggu;
echo "<pre>";
echo "<h1>Sistem Cuti Online</h1>";
echo "<hr>";
echo "Mulai Cuti : " . date('d-m-Y', $awal_cuti) . "<br>";
echo "Terakhir Cuti : " . date('d-m-Y', $akhir_cuti) . "<br>";
echo "Jumlah Hari Cuti : " . $jumlah_cuti ."<br>";
echo "Jumlah Sabtu/Minggu : " . $jumlah_sabtuminggu ."<br>";
echo "Total Hari : " . $abtotal ."<br>";


echo "<h1>Hari Kerja</h1>";
echo "<hr>";
    foreach ($haricuti as $value) {
        echo date('d-m-Y', $value)  . " -> " . strftime("%A, %d %B %Y", date($value)) . "\n" . "<br>";
    }

echo "<h1>Sabtu Minggu</h1>";
echo "<hr>";
    foreach ($sabtuminggu as $value) {
        echo date('d-m-Y', $value) . " -> " . strftime("%A, %d %B %Y", date($value)) . "\n" . "<br>";
    }
