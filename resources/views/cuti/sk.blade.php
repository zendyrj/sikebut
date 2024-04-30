@forelse($detcuti as $index => $detcuti)
<html>
  <head>
    <title>SK PIRT</title>
    <style>
      body {
        font-size: 12px;
        font-family: "Arial";
        border:5px solid;
        border-style: double;
        padding: 10px;
        margin: -20px;
      }
    </style>
  </head>
  <body>
    <table width="100%" style="margin-top:-20px">
      <tr>
        <th rowspan="2" width="15%">
          <img src="{{ asset('imgsk/logobw.png') }}" style=" position: fixed;
    margin-left: 30px;
    width:100px;
        z-index: 98;
    margin-top: 15px;" />
        </th>
      </tr>
      <tr>
        <td style="text-align: center">
          <b style="font-size: 18pt">PEMERINTAH KABUPATEN SITUBONDO</b><br />
          <b style="font-size: 20pt"
            >DINAS PENANAMAN MODAL<br />
            PELAYANAN TERPADU SATU PINTU</b
          >
          <p style="font-size: 16px; margin-top: 0px">
            JL. PB. Sudirman No. 20 Telp. 0338 672155 Faks 0338 679155<br />SITUBONDO
            68312
          </p>
        </td>
      </tr>
      <tr>
        <td colspan="2" style="border-top: 2px solid; border-bottom: 1px solid"></td>
      </tr>
    </table>
    <div style="height: 5px"></div>

    <div style="text-align: center; font-size: 18px">
      <b style="">
        SURAT PERNYATAAN<br> PEMBATALAN SERTIFIKAT PEMENUHAN KOMITMEN<br>PRODUKSI
        PANGAN INDUSTRI RUMAH TANGGA
      </b>
    </div>
    <div style="height: 5px; text-align:center;">
        <table width="75%" style="margin-left: auto;
  margin-right: auto;"><tr><td style="border-top: 1px solid"></td></tr></table>
    </div>
    <div style="text-align: center; font-size: 16px">
      NOMOR : {{ $detcuti->nomor_sk }}
    </div>
    <div style="height: 5px"></div>
    <div style="text-align: justify; font-size: 16px; line-height: 2;">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Berdasarkan Peraturan Badan
      Pengawas Obat dan Makanan Nomor 22 Tahun 2018 tentang Pedoman Pemberian
      Sertifikat Produksi Pangan Industri Rumah Tangga serta memperhatikan Surat
      Rekomendasi Kepala Dinas Kesehatan Kabupaten Situbondo Nomor
      tanggal, Kepala Dinas Penanaman
      Modal Pelayanan Terpadu Satu Pintu Kabupaten Situbondo menerangkan
      Pembatalan SPPIRT kepada:
      {{-- {{ Carbon\Carbon::parse($detcuti->tanggal_rekom)->isoFormat('DD MMMM Y') }} --}}
    </div>

    <div style="height: 5px"></div>

    <table style="padding-left: 20px; font-size: 16px; line-height: 2;">
     <tr>
        <td>Nama Pemilik</td>
        <td>:</td>
        <td><b>{{ $detcuti->pegawai_name }}</b></td>
      </tr>
    </table>
    <div style="height: 5px"></div>
    <div style="text-align: justify; font-size: 16px">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Demikian surat ini dibuat, untuk
      dipergunakan sebagaimana mestinya.
    </div>
    <table width="100%" border="0" style="font-size: 16px">
      <tr>
        <td rowspan="4" style="width: 350px" valign="bottom"></td>
        <td colspan="5" align="left">
          Ditetapkan di <b>Situbondo</b><br />Pada tanggal
          <b>{{ Carbon\Carbon::parse($detcuti->tanggal_sk)->isoFormat('DD MMMM Y') }}</b>
    <div style="height: 10px"></div>

        </td>
      </tr>
      <tr>
        <td colspan="5" align="center">

          <b
            >a.n. BUPATI SITUBONDO<br />KEPALA DINAS PENANAMAN MODAL<br />PELAYANAN
            TERPADU SATU PINTU<br />KABUPATEN SITUBONDO,</b
          >
        </td>
      </tr>

      <!-- TAMBAHAN TANDA TANGAN (TTD) KADIS DPMTPSP -->

      <tr>
        <td colspan="5" align="center" height="40px">
          <img
            src="{{ asset('imgsk/ttd_kadis1.png') }}"
            style="
              width: 210px;
              position: fixed;
              z-index: 99;
              margin-left: 450px;
              margin-top: 830px;
            "
          />
        </td>
      </tr>
      <tr>
        <td colspan="5" align="center">
          <b style="text-decoration: underline">{{ $detcuti->pegawai_namettd }}</b
          ><br />{{ $detcuti->golru_name }}<br />NIP. {{ $detcuti->pegawai_nipttd }}
        </td>
      </tr>
      <tr>
        <td colspan="5" valign="top">
          <table style="font-size: 12px;" >
            <tr>
              <td colspan="3">
                <p style="text-decoration: underline">
                  <b>Tembusan </b> disampaikan kepada Yth.:
                </p>
              </td>
            </tr>
            <tr>
              <td width="450">
                <ol style="margin-top:-10px; margin-left:-10px;">
                  <li>Bupati Kabupaten Situbondo;</li>
                  <li>
                    Direktorat Pengawasan Obat Tradisional dan Suplemen
                    Kesehatan. Badan Pengawas Obat dan Makanan<br> Republik
                    Indonesia;
                  </li>
                  <li>Kepala Dinas Kesehatan Kabupaten Situbondo;</li>
                  <li>Arsip.</li>
                </ol>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
       <table style=" position: fixed;
    margin-left: 10px;
    margin-top: 1080px;">
            <tr>
              <td><img src="{{ asset('imgsk/bsrelogo.png') }}" style="width: 130px" /></td>
              <td>
                <p style="font-size: 9px">
                  UU ITE No.11 Tahun 2008 Pasal 5 Ayat 1
                  <i>
                    "Informasi Elektronik dan/atau Dokumen Elektronik dan/atau
                    hasil <br>cetaknya merupakan alat bukti yang sah."</i
                  ><br />Dokumen ini telah ditandatangani secara elektronik
                  menggunakan <b>Sertifikat Elektronik</b> yang diterbitkan
                  <b>BSrE</b>.
                </p>
                <p style="font-size: 9px"></p>
              </td>
            </tr>
          </table>
    <img src="{{ asset('imgsk/qr/'.$detcuti->cuti_id.'.png') }}" style=" position: fixed;
    margin-left: 615px;
    width:100px;
        z-index: 98;
    margin-top: 1050px;" />
  </body>
</html>
@empty
<h1>ERROR CREATE SK</h1>
@endforelse
