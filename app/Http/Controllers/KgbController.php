<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\kgb;
use App\Models\pegawai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;
use QrCode;
use File;

class KgbController extends Controller
{
    public function index()
    {
        $t_kgb = kgb::latest();
        return view('kgb.index', compact('t_kgb'));
    }

    public function create()
    {
         $pegawais = pegawai::all();
        return view('kgb.create', compact('pegawais'));
    }

    public function getkgb(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('v_kgb')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-success\" style=\"margin:5px;\" onclick=\"cetakSK('$row->kgb_id')\"><i class=\"fa fa-print\"> Cetak kgb</i></button><button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"kirimnotif('$row->kgb_id')\"><i class=\"fa fa-info\"> Kirim Notifikasi</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'pegawai_id'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();


        $data =  DB::table('v_pegawai')->where('pegawai_id', '=', $request->pegawai_id)->get();
        foreach($data as $peg){
            $codegolru = $peg->golru_numb;
        }
        $code = $codegolru.$request->mkth_bf;

        $gajilama =  DB::table('gajis')->where('gaji_code', '=', $code)->where('gaji_tahun', '=', '2019')->get();

        foreach($gajilama as $gjlm){
            $gajilama_bf = $gjlm->gaji_rupiah;
            $gajipp_lama = $gjlm->gaji_pp;
        }

        $mkth_br = sprintf("%02d", $request->mkth_bf+2);
        $code2 = $codegolru.$mkth_br;
        echo $code2;
        $gajibaru =  DB::table('gajis')->where('gaji_code', '=', $code2)->where('gaji_tahun', '=', '2024')->get();

        foreach($gajibaru as $gjbr){
            $gajibaru_br = $gjbr->gaji_rupiah;
            $gajipp_baru = $gjbr->gaji_pp;
        }

        $kgb = kgb::create([
            'pegawai_id'     => $request->pegawai_id,
            'dasarkgb_id'     => '1',
            'nomorsk_bf'     => $request->nomorsk_bf,
            'tanggalsk_bf'     => $request->tanggalsk_bf,
            'tmtsk_bf'     => $request->tmtsk_bf,
            'blnsk_bf'     => \Carbon\Carbon::parse($request->tmtsk_bf)->format('m'),
            'thnsk_bf'     => \Carbon\Carbon::parse($request->tmtsk_bf)->format('Y'),
            'ppsk_bf'     => '2019',
            'mkth_bf'     => $request->mkth_bf,
            'mkbl_bf'     => $request->mkbl_bf,
            'gajilama_bf'     => $gajilama_bf,
            'selisihtahun'     => '2',
            'mkth_br'     => $mkth_br,
            'mkbl_br'     => $request->mkbl_bf,
            'gajibaru_br'     => $gajibaru_br,
            'tmtbl_br'     => \Carbon\Carbon::parse($request->tmtsk_bf)->format('m'),
            'tmtth_br'     => \Carbon\Carbon::parse($mytime)->format('Y'),
            'tmtkgb_br'     => \Carbon\Carbon::parse($mytime)->format('Y').'-'.\Carbon\Carbon::parse($request->tmtsk_bf)->format('m').'-01',
            'tahunsk'     => '2024',
            'pp_lama'     => $gajipp_lama,
            'pp_baru'     => $gajipp_baru,
            'nomor_sk'     => $request->nomor_sk,
            'tanggal_sk'     => $request->tanggal_sk,
            'ttdcuti'     => 1,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($kgb){
            return redirect()->route('kgb.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('kgb.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(kgb $kgb)
    {
        return view('kgb.edit', compact('kgb'));
    }

    public function update(Request $request, kgb $kgb)
    {
        $this->validate($request, [
            'kgb_name'     => 'required',
        ]);

        $kgb = kgb::findOrFail($kgb->kgb_id);
        $mytime = Carbon\Carbon::now();
        $kgb->update([
                'kgb_name'     => $request->kgb_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($kgb){
            //redirect dengan pesan sukses
            return redirect()->route('kgb.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('kgb.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $kgb = kgb::findOrFail($id);
        $kgb->delete();

        if($kgb){
            //redirect dengan pesan sukses
            return redirect()->route('kgb.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('kgb.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }
     public function viewSK($kgb_id) {
        // $id_pirt = urldecode($id_pirt);
        $detkgb = DB::table('v_kgb')->where('kgb_id', $kgb_id)->get();
        return view('kgb.viewSK', compact('detkgb'));
    }

    public function cetakSK($kgb_id)
    {
        // $kgb_id = urldecode($kgb_id);
        $detkgb1 = DB::table('v_kgb')->where('kgb_id', $kgb_id)->first();

         QrCode::size(1024)
            ->format('png')
            ->merge('/public/imgsk/qr/logoqr.png', .4)
            // ->gradient(8, 109, 191,8, 109, 191, 'radial')
            ->style('square')
            ->eye('square')
            ->errorCorrection('H')
            ->generate(
                'https://sipinter.situbondokab.go.id/sppirt/public/persetujuan/Persetujuan-'.$detkgb1->kgb_id.'.pdf', '../public/imgsk/qr/'.$kgb_id.'.png'
            );
        // // QrCode::format('png')->merge('/public/imgsk/qr/logoqr.png')->generate('Make me into a QrCode!');
        // QrCode::backgroundColor(255, 0, 0);
        // QrCode::backgroundColor(255, 0, 0)->generate('Make me into a QrCode!', '../public/imgsk/qr/'.$id_pirt.'.png');
        // QrCode::format('png')->merge('path-to-image.png')->generate();
        $detkgb = DB::table('v_kgb')->where('kgb_id', $kgb_id)->get();
        $html = view('kgb.sk', compact('detkgb'));
        $pdf =  Pdf::loadHTML($html)->setPaper('folio', 'potrait')->setWarnings(false);
    	return $pdf->stream($detkgb1->kgb_id.'.pdf');

        // return view('kgb.sk', compact('detkgb'));
    }

     public function selesaikgb($kgb_id) {

        $data =  DB::table('t_kgb')->where('kgb_id', '=', $kgb_id)->get();
        foreach($data as $kgb){
            $pegawai_id = $kgb->pegawai_id;
            $periode = \Carbon\Carbon::parse($kgb->tmtkgb_br)->format('m');
        }

        $data2 =  DB::table('v_pegawai')->where('pegawai_id', '=', $pegawai_id)->get();
        foreach($data2 as $peg){
            $pegawai_name = $peg->pegawai_name;
            $nomorhp = $peg->nomorhp;
        }

        $details = [
            'title' => 'Hi '.$pegawai_name.'.',
            'body' => 'KGB anda telah selesai diproses oleh BERLIANA EKA YORINDA, S.Tr.IP.',
            'ket' => 'Keterangan: KGB Periode'.$periode,
            'warning' => ''
        ];


        $jadi = 'sikebut.situbondokab.go.id/bsre/sign/ttd/KGB.pdf';
        // kirim whatapp
        $number=$nomorhp;
        $message= $details['title']."\r\n".$details['body']."\r\n".$details['ket']."\r\nanda dapat mengunduh kenaikan gaji berkala anda melalui link berikut :\r\n".$jadi."\r\n\r\nPesan ini dari DPMPTSP Kab. Situbondo";
        whatsapp_api($number, $message);
    }
}
