@forelse($detkgb as $index => $detkgb)
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>USUL KENAIKAN GAJI BERKALA PEGAWAI</title>
        <style>
            body {
                font-size: 12pt;
                font-family: "Arial";
                /* border:5px solid;
        border-style: double; */
                padding: 1em;
            }

            .page_break {
                page-break-before: always;
            }
        </style>
    </head>

    <body>
        <table width="100%" style="margin-top:-40px">
            <tr>
                <img src="{{ 'imgsk/logobw.png' }}"
                    style=" position: fixed;
    margin-left: 50px;
    width:80px;
        z-index: 98;
    margin-top: -20px;" />
            </tr>
            <tr>
                <td style="text-align: center">
                    <div style="font-size: 14pt; margin-left:50px;">PEMERINTAH KABUPATEN SITUBONDO</div>
                    <div style="font-size: 16pt; font-weight: bold; margin-left:50px;">DINAS PENANAMAN MODAL<br />
                        PELAYANAN TERPADU SATU PINTU</div>
                    <div style="font-size: 12pt; margin-top: 0px; margin-left:50px;">
                        Jalan PB. Sudirman No. 20 Telp. (0338) 672155 Fax (0338) 679155
                        <br>SITUBONDO 68312
                    </div>
                </td>
            </tr>
            <tr>
                <td style="border-top: 2px solid; border-bottom: 1px solid"></td>
            </tr>
        </table>
        <div style="height: 15px"></div>

        <table>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td> Situbondo, {{ Carbon\Carbon::parse($detkgb->tanggal_sk)->isoFormat('DD MMMM Y') }}</td>
            </tr>
            <tr>
                <td>Nomor</td>
                <td>:</td>
                <td>822.3/303/431.315.1.1/2024</td>
                <td></td>
                <td>Kepada Yth.</td>
            </tr>
            <tr>
                <td>Lampiran</td>
                <td>:</td>
                <td>-</td>
                <td style="text-align: left;vertical-align: top;">Sdr.</td>
                <td style="text-align: left;vertical-align: top;">Kepala Badan Keuangan dan Aset </td>
            </tr>
            <tr>
                <td style="text-align: left;vertical-align: top;">Perihal</td>
                <td style="text-align: left;vertical-align: top;">:</td>
                <td style="text-align: left;vertical-align: top; width: 350px;">Surat Pemberitahuan Kenaikan Gaji
                    Berkala a.n. </td>
                <td></td>
                <td>Daerah Kabupaten
                    Situbondo</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td style="text-align: left;vertical-align: top; text-decoration:underline; font-weight:bold;">{{ $detkgb->pegawai_name }}</td>
                <td></td>
                <td>di - </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td style="text-align: center;vertical-align: top; text-decoration:underline; font-weight:bold;"> S I T
                    U B O N D O</td>
            </tr>
        </table>
        <div style="height: 20px"></div>
        <div style="padding-left:75px;">
            <div style="text-align: justify; font-size: 12pt; line-height: 1,5;text-indent: 45px;">
                Dengan ini diberitahukan bahwa berhubung dengan telah dipenuhinya masa kerja dan syarat-syarat lainnya
                kepada :
                {{-- {{ Carbon\Carbon::parse($detkgb->tanggal_rekom)->isoFormat('DD MMMM Y' }} --}}
            </div>

            <div style="height:
                5px"></div>

            <table style="font-size: 12pt; line-height: 1,5;">
                <tr>
                    <td style="width:20px;">1.</td>
                    <td style=" width: 270px;">Nama</td>
                    <td>:</td>
                    <td>{{ $detkgb->pegawai_name }}</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>NIP</td>
                    <td>:</td>
                    <td>{{ $detkgb->pegawai_nip }}</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Pangkat</td>
                    <td>:</td>
                    <td>{{ $detkgb->golru_name }} </td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Jabatan</td>
                    <td>:</td>
                    <td>{{ $detkgb->jabatan_name }}</td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Unit Kerja</td>
                    <td>:</td>
                    <td>Dinas Penanaman Modal Pelayanan Terpadu Satu Pintu</td>
                </tr>
                <tr>
                    <td>6.</td>
                    <td>Gaji pokok lama</td>
                    <td>:</td>
                    <td>Rp. {{ format_uang((int) $detkgb->gajilama_bf) }},00 (PP No. {{ $detkgb->pp_lama }})</td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="4">atas dasar surat keputusan terakhir tentang gaji/pangkat yang ditetapkan:</td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: left">a. Oleh Pejabat</td>
                    <td>:</td>
                    <td>Bupati Situbondo</td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: left">b. Tanggal</td>
                    <td>:</td>
                    <td>{{ $detkgb->tanggalsk_bf }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: left">c. Nomor</td>
                    <td>:</td>
                    <td>{{ $detkgb->nomorsk_bf }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: left;">c. Tanggal mulai berlakunya gaji tsb</td>
                    <td>:</td>
                    <td>{{ $detkgb->tmtsk_bf }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: left">d. Masa kerja golongan pada tanggal tsb</td>
                    <td>:</td>
                    <td>{{ $detkgb->mkth_bf }} Tahun {{ $detkgb->mkbl_bf }} Bulan</td>
                </tr>
                <tr>
                    <td colspan="4">Diberikan kenaikan gaji berkala hingga memperoleh:</td>
                </tr>
                <tr>
                    <td>7.</td>
                    <td>Gaji pokok baru</td>
                    <td>:</td>
                    <td>Rp. {{ format_uang((int) $detkgb->gajibaru_br) }},00 (PP No. {{ $detkgb->pp_baru }})</td>
                </tr>
                <tr>
                    <td>8.</td>
                    <td>Berdasarkan masa kerja</td>
                    <td>:</td>
                    <td>{{ $detkgb->mkth_br }} Tahun {{ $detkgb->mkbl_br }} Bulan</td>
                </tr>
                <tr>
                    <td>9.</td>
                    <td>Dalam golongan</td>
                    <td>:</td>
                    <td>{{ $detkgb->golru_name }}</td>
                </tr>
                <tr>
                    <td>10.</td>
                    <td>Berlakunya mulai tanggal</td>
                    <td>:</td>
                    <td>{{ $detkgb->tmtkgb_br }}</td>
                </tr>
            </table>
            <div style="height: 5px"></div>
            <div style="text-align: justify; font-size: 12pt; line-height: 1,5;text-indent: 45px;">
                Diharap agar sesuai dengan Peraturan Pemerintah Nomor 05 Tahun 2024 kepada Pegawai tersebut dapat
                dibayarkan penghasilannya berdasarkan gaji pokoknya yang baru.
                {{-- {{ Carbon\Carbon::parse($detkgb->tanggal_rekom)->isoFormat('DD MMMM Y' }} --}}
            </div>
        </div>
        <div style="height: 5px"></div>

        <table width="100%" border="0" style="font-size: 12pt">
            <tr>
                <td rowspan="4" style="width: 350px" valign="bottom"></td>
            </tr>
            <tr>
                <td colspan="5" align="left">

                    <b>KEPALA DINAS PENANAMAN MODAL<br />PELAYANAN
                        TERPADU SATU PINTU<br />KABUPATEN SITUBONDO,</b>
                </td>
            </tr>

            <!-- TAMBAHAN TANDA TANGAN (TTD) KADIS DPMTPSP -->

            <tr>
                <td colspan="5" align="center" height="40px">
                    <img src="{{ 'imgsk/ttd_kadis1.png' }}"
                        style="
              width: 210px;
              position: fixed;
              z-index: 99;
              margin-left: 360px;
              margin-top: 815px;
            " />
                </td>
            </tr>
            <tr>
                <td colspan="5" align="left">
                    <b
                        style="text-decoration: underline">{{ $detkgb->pegawai_namettd }}</b><br />{{ $detkgb->golru_namettd }}<br />NIP.
                    {{ $detkgb->pegawai_nipttd }}
                </td>
            </tr>
        </table>
        <div
            style="
              position: fixed;
              z-index: 999;
              margin-top:-30px;
            ">
            <table style="font-size: 9pt;">
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
                            <li>Gubernur Jawa Timur (Biro Keuangan) di Surabaya;
                            </li>
                            <li>
                                Kepala Badan Kepegawaian Daerah Prov. Jatim di Surabaya;
                            </li>
                            <li>
                                Inspektur Kabupaten Situbondo;
                            </li>
                            <li>
                                Kepala Dinas Penanaman Modal dan PTSP Kabupaten Situbondo;
                            </li>
                            <li>
                                Kepala Cabang PT. Taspen (Persero) di Jember;
                            </li>
                            <li>
                                Pegawai Negeri Sipil yang bersangkutan;
                            </li>
                            <li>A r s i p.</li>
                        </ol>
                    </td>
                </tr>
            </table>
        </div>
        <table style=" position: fixed;
    margin-left: 10px;
    margin-top: 1050px;">
            <tr>
                <td><img src="{{ 'imgsk/bsrelogo.png' }}" style="width: 130px" /></td>
                <td>
                    <p style="font-size: 9pt">
                        UU ITE No.11 Tahun 2008 Pasal 5 Ayat 1
                        <i>
                            "Informasi Elektronik dan/atau <br>Dokumen Elektronik dan/atau
                            hasil cetaknya merupakan alat bukti yang sah."</i><br />Dokumen ini telah ditandatangani
                        secara elektronik
                        menggunakan <b>Sertifikat Elektronik</b> <br>yang diterbitkan
                        <b>BSrE</b>.
                    </p>
                    <p style="font-size: 9pt"></p>
                </td>
            </tr>
        </table>
        <img src="{{ 'imgsk/qr/' . $detkgb->kgb_id . '.png' }}"
            style=" position: fixed;
    margin-left: 615px;
    width:100px;
        z-index: 98;
    margin-top: 1050px;" />
    </body>

    </html>
@empty
    <h1>ERROR CREATE SK</h1>
@endforelse
