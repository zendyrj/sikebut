@forelse($detcuti as $index => $detcuti)
<html>
  <head>
    <title>USUL CUTI PEGAWAI</title>
    <style>
      body {
        font-size: 12pt;
        font-family: "Arial";
        /* border:5px solid;
        border-style: double; */
        padding: 2em;
      }
      .page_break { page-break-before: always; }
    </style>
  </head>
  <body>
    <table width="100%" style="margin-top:0px">
      <tr>
          <img src="{{ 'imgsk/logobw.png' }}" style=" position: fixed;
    margin-left: 50px;
    width:80px;
        z-index: 98;
    margin-top: 40px;" />
      </tr>
      <tr>
        <td style="text-align: center">
          <div style="font-size: 14pt; margin-left:50px;">PEMERINTAH KABUPATEN SITUBONDO</div>
          <div style="font-size: 16pt; font-weight: bold; margin-left:50px;"
            >DINAS PENANAMAN MODAL<br />
            PELAYANAN TERPADU SATU PINTU</div
          >
          <div style="font-size: 12pt; margin-top: 0px; margin-left:50px;">
            Jalan PB. Sudirman No. 20 Telp. (0338) 672155 Fax (0338) 679155
            <br>SITUBONDO   68312            
          </div>
        </td>
      </tr>
      <tr>
        <td colspan="2" style="border-top: 2px solid; border-bottom: 1px solid"></td>
      </tr>
    </table>
    <div style="height: 15px"></div>
    <div style="height: 25px; font-size: 12pt; text-align:right;">
    Situbondo, {{ Carbon\Carbon::parse($detcuti->tanggal_sk)->isoFormat('DD MMMM Y') }}</div>
    <div style="height: 15px"></div>

    <div style="text-align: center; font-size: 12pt; text-decoration: underline;">
      <b style="">
        SURAT IZIN PELAKSANAAN CUTI TAHUNAN
      </b>
    </div>
    <div style="text-align: center; font-size: 12pt">
      NOMOR : {{ $detcuti->nomor_sk }}
    </div>
    <div style="height: 20px"></div>
    <div style="text-align: justify; font-size: 12pt; line-height: 2;">
      Diberikan Izin untuk melaksanakan Cuti Tahunan kepada Aparatur Sipil Negara:
      {{-- {{ Carbon\Carbon::parse($detcuti->tanggal_rekom)->isoFormat('DD MMMM Y' }} --}}
    </div>

    <div style="height: 5px"></div>

    <table style="padding-left: 20px; font-size: 12pt; line-height: 2;">
     <tr>
        <td>Nama</td>
        <td>:</td>
        <td>{{ $detcuti->pegawai_name }}</td>
      </tr>
      <tr>
        <td>NIP</td>
        <td>:</td>
        <td>{{ $detcuti->pegawai_name }}</td>
      </tr>
      <tr>
        <td>Pangkat/Gol.Ruang</td>
        <td>:</td>
        <td>{{ $detcuti->pegawai_name }}</td>
      </tr>
      <tr>
        <td>Jabatan</td>
        <td>:</td>
        <td>{{ $detcuti->pegawai_name }}</td>
      </tr>
      <tr>
        <td>Unit Kerja</td>
        <td>:</td>
        <td>{{ $detcuti->pegawai_name }}</td>
      </tr>
    </table>
    <div style="height: 15px"></div>
    <div style="padding-left: 20px; text-align: justify; font-size: 12pt">
      Selama ….. (…..) hari kerja/kalender, terhitung mulai tanggal ….. sampai dengan tanggal ….., dengan ketentuan sebagai berikut:
    </div>
    <div style="text-align: justify; font-size: 12pt">
      <ol type="a">
        <li>Sebelum menjalankan Cuti Tahunan wajib menyerahkan pekerjaannya kepada atasan langsungnya atau pejabat lain yang ditunjuk;
          </li>
          <li>
          Setelah selesai menjalankan Cuti Tahunan, wajib melaporkan diri kepada atasan langsungnya dan bekerja kembali sebagaimana biasa.

          </li>
      </ol>
    </div>
    <div style="text-align: justify; font-size: 12pt">
      Demikianlah surat izin melaksanakan Cuti Tahunan ini dibuat untuk dapat digunakan sebagaimana mestinya.
    </div>
    <div style="height: 15px"></div>

    <table width="100%" border="0" style="font-size: 12pt">
      <tr>
        <td rowspan="4" style="width: 350px" valign="bottom"></td>
      </tr>
      <tr>
        <td colspan="5" align="left">

          <b
            >KEPALA DINAS PENANAMAN MODAL<br />PELAYANAN
            TERPADU SATU PINTU<br />KABUPATEN SITUBONDO,</b
          >
        </td>
      </tr>

      <!-- TAMBAHAN TANDA TANGAN (TTD) KADIS DPMTPSP -->

      <tr>
        <td colspan="5" align="center" height="40px">
          <img
            src="{{ 'imgsk/ttd_kadis1.png' }}"
            style="
              width: 210px;
              position: fixed;
              z-index: 99;
              margin-left: 380px;
              margin-top: 740px;
            "
          />
        </td>
      </tr>
      <tr>
        <td colspan="5" align="left">
          <b style="text-decoration: underline">{{ $detcuti->pegawai_namettd }}</b
          ><br />{{ $detcuti->golru_name }}<br />NIP. {{ $detcuti->pegawai_nipttd }}
        </td>
      </tr>
      <tr>
        <td colspan="5" valign="top">
          <table style="font-size: 12pt;" >
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
                  <li>Bapak Bupati Situbondo
                    <br>Cq. Sekretaris Daerah Kab. Situbondo;
               </li>
                  <li>
                    Sdr. Kepala BKPSDM Kab. Situbondo;
                  </li>
                  <li>A r s i p.</li>
                </ol>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
       {{-- <table style=" position: fixed;
    margin-left: 10px;
    margin-top: 1050px;">
            <tr>
              <td><img src="{{ 'imgsk/bsrelogo.png' }}" style="width: 130px" /></td>
              <td>
                <p style="font-size: 9pt">
                  UU ITE No.11 Tahun 2008 Pasal 5 Ayat 1
                  <i>
                    "Informasi Elektronik dan/atau <br>Dokumen Elektronik dan/atau
                    hasil cetaknya merupakan alat bukti yang sah."</i
                  ><br />Dokumen ini telah ditandatangani secara elektronik
                  menggunakan <b>Sertifikat Elektronik</b> <br>yang diterbitkan
                  <b>BSrE</b>.
                </p>
                <p style="font-size: 9pt"></p>
              </td>
            </tr>
          </table>
    <img src="{{ 'imgsk/qr/'.$detcuti->cuti_id.'.png'}}" style=" position: fixed;
    margin-left: 615px;
    width:100px;
        z-index: 98;
    margin-top: 1050px;" /> --}}

  <div class="page_break">
    <table>
      <tr>
        <td widht="75%">
          <div style="width: 400px"></div>
        </td>
        <td widht="25%">
          Situbondo, {{ Carbon\Carbon::parse($detcuti->tanggal_sk)->isoFormat('DD MMMM Y') }}
          <br><br>
          Kepada Yth.<br>
          Kepala Dinas Penanaman Modal<br>
    Pelayanan Terpadu Satu Pintu<br>
    Kabupaten Situbondo<br>
          di - <br>
                <b style="margin-left: 35px; text-decoration: underline;">SITUBONDO</b>
    
        </td>
      </tr>
    </table>
    <div style="height: 20px;"></div>
    <div style="text-align: center; font-weight: bold;">
      FORMULIR PERMINTAAN DAN PEMBERIAN CUTI
    </div>
    <div style="height: 10px;"></div>
    <table style="border: 1px solid black; border-collapse: collapse; width: 100%">
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; font-weight: bold;" colspan="4">
          I.	DATA PEGAWAI
        </td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;">Nama</td>
        <td style="border: 1px solid black; border-collapse: collapse;">Ir. Quratul</td>
        <td style="border: 1px solid black; border-collapse: collapse;">NIP</td>
        <td style="border: 1px solid black; border-collapse: collapse;">19995</td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;">Jabatan</td>
        <td style="border: 1px solid black; border-collapse: collapse;">kEPALA</td>
        <td style="border: 1px solid black; border-collapse: collapse;">Masa Kerja</td>
        <td style="border: 1px solid black; border-collapse: collapse;">20 tH</td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;">Pangkat/Gol</td>
        <td colspan="3" style="border: 1px solid black; border-collapse: collapse;">Pembina Utama Muda / IV.c</td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;">Unit Kerja</td>
        <td colspan="3" style="border: 1px solid black; border-collapse: collapse;">Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu</td>
      </tr>
    </table>
    <div style="height: 15px;"></div>
    <table style="border: 1px solid black; border-collapse: collapse; width: 100%">
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; font-weight: bold;" colspan="4">
          II.	JENIS CUTI YANG DI AMBIL **
        </td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px; padding-left:20px">1.	Cuti Tahunan</td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">√</td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">2.	Cuti Besar</td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;height:40px"></div></td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">3.	Cuti Sakit</td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">4.	Cuti Melahirkan</td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;height:40px"></div></td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">5.	Cuti Karena Alasan Penting</td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">6.	Cuti di Luar Tanggungan Negara</td>
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;height:40px"></div></td>
      </tr>
    </table>

    <div style="height: 15px;"></div>
    <table style="border: 1px solid black; border-collapse: collapse; width: 100%">
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; font-weight: bold;">
          III.	ALASAN CUTI
        </td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; widht: 100px; padding-left:20px"><div style="width: 100px;height:70px"></td>
        </tr>
    </table>



  <div style="height: 15px;"></div>
  <table style="border: 1px solid black; border-collapse: collapse; width: 100%">
    <tr style="border: 1px solid black; border-collapse: collapse;">
      <td style="border: 1px solid black; border-collapse: collapse; font-weight: bold;" colspan="6">
        IV.	LAMANYA CUTI
      </td>
    </tr>
    <tr style="border: 1px solid black; border-collapse: collapse;">
      <td style="border: 1px solid black; border-collapse: collapse; widht: 100px; padding-left:20px">Selama </td>
      <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;"></td>
      <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">Mulai tanggal</td>
      <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;height:20px"></div></td>
      <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding:10px">s.d</td>
      <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;height:20px"></div></td>
    </tr>
  </table>

<div style="height: 15px;"></div>
<table style="border: 1px solid black; border-collapse: collapse; width: 100%">
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; font-weight: bold;" colspan="5">
      V.	CATATAN CUTI***
    </td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px; padding-left:20px" colspan="3">1.	Cuti Tahunan</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">2.	CUTI BESAR</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">-</td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">Tahun</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">Sisa</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">Keterangan</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">3.	CUTI SAKIT</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">-</td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">N-2</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">0</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">Sudah diambil </td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">4.	CUTI MELAHIRKAN</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">-</td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">N-1</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">0</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">Sudah diambil </td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">5.	CUTI KARENA ALASAN PENTING</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">-</td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">N</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">12</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">Belum diambil </td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">6.	CUTI DI LUAR TANGGUNGAN NEGARA</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">-</td>
  </tr>
</table>

<div style="height: 15px;"></div>
<table style="border: 1px solid black; border-collapse: collapse; width: 100%">
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; font-weight: bold;" colspan="3">
      VI.	ALAMAT SELAMA MENJALANKAN CUTI
    </td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px; padding-left:20px"><div style="width: 100px;"> </td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px">TELEPON</td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px"><div style="width: 100px;height:20px"></div></td>
  </tr>
  <tr style="border: 1px solid black; border-collapse: collapse;">
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px; padding-left:20px"><div style="width: 100px;"> </td>
    <td style="border: 1px solid black; border-collapse: collapse; widht: 100px;padding-left:20px; text-align:center" colspan="2">
      <div>
        Hormat saya,
      <br>
      <br>
      <br>
      SITI SANIYAH S.Sos<br>
      Penata tingkat I<br>
      NIP.  196605051990032013<br>
      
      </div>
    </td>
  </tr>
</table>

  </div>



  <div class="page_break">
    <div style="height: 10px;"></div>
    <table style="border: 1px solid black; border-collapse: collapse; width: 100%">
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; font-weight: bold;" colspan="4">
          VII.	PERTIMBANGAN ATASAN LANGSUNG**
        </td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;">DISETUJUI</td>
        <td style="border: 1px solid black; border-collapse: collapse;">PERUBAHAN****</td>
        <td style="border: 1px solid black; border-collapse: collapse;">DITANGGUHKAN****</td>
        <td style="border: 1px solid black; border-collapse: collapse;">TIDAK DISETUJUI*****</td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;" colspan="2"></td>
        <td style="border: 1px solid black; border-collapse: collapse;"colspan="2">KEPALA DINAS PENANAMAN MODAL<br />PELAYANAN
          TERPADU SATU PINTU<br />KABUPATEN SITUBONDO,<br><br><br>SITI SANIYAH S.Sos<br>
          Penata tingkat I<br>
          NIP.  196605051990032013<br></td>
      </tr>
    </table>

    <div style="height: 15px;"></div>
    <table style="border: 1px solid black; border-collapse: collapse; width: 100%">
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse; font-weight: bold;" colspan="4">
          VIII.	KEPUTUSAN PEJABAT YANG BERWENANG MEMBERIKAN CUTI**
        </td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;">DISETUJUI</td>
        <td style="border: 1px solid black; border-collapse: collapse;">PERUBAHAN****</td>
        <td style="border: 1px solid black; border-collapse: collapse;">DITANGGUHKAN****</td>
        <td style="border: 1px solid black; border-collapse: collapse;">TIDAK DISETUJUI*****</td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
        <td style="border: 1px solid black; border-collapse: collapse;"><div style="width: 100px;height:40px"></div></td>
      </tr>
      <tr style="border: 1px solid black; border-collapse: collapse;">
        <td style="border: 1px solid black; border-collapse: collapse;" colspan="2"></td>
        <td style="border: 1px solid black; border-collapse: collapse;"colspan="2">KEPALA DINAS PENANAMAN MODAL<br />PELAYANAN
          TERPADU SATU PINTU<br />KABUPATEN SITUBONDO,<br><br><br>SITI SANIYAH S.Sos<br>
          Penata tingkat I<br>
          NIP.  196605051990032013<br></td>
      </tr>

      
</table>
<div style="height: 25px;"></div>

   <table>
    <tr>
      <td colspan="2" style="font-style: italic; font-weight: bold;">Catatan:</td>
    </tr>
    <tr>
      <td>*</td>
      <td>Coret yang tidak perlu</td>
    </tr>
    <tr>
      <td>**</td>
      <td>Pilih salah satu dengan member tanda centang (√)</td>
    </tr>
    <tr>
      <td>***</td>
      <td>Diisi oleh penjabat yang menangani bidang kepegawaian sebelum ASN mengajukan cuti</td>
    </tr>
    <tr>
      <td>****</td>
      <td>Diberi tanda centang dan alasannya.</td>
    </tr>
    <tr>
      <td>N</td>
      <td>Coret yang tidak perlu</td>
    </tr>
    <tr>
      <td>N-1</td>
      <td>Sisa cuti 1 tahun sebelumnya</td>
    </tr>
    <tr>
      <td>N-2</td>
      <td>Sisa cuti 2 tahun sebelumnya</td>
    </tr>
   </table>
  </div>
  </body>
</html>
@empty
<h1>ERROR CREATE SK</h1>
@endforelse
