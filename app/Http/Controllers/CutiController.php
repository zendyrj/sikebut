<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\pegawai;
use App\Models\cuti;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;
use QrCode;
use File;

class CutiController extends Controller
{
    public function index()
    {
        $t_cuti = cuti::latest();
        return view('cuti.index', compact('t_cuti'));
    }

    public function create()
    {
         $pegawais = pegawai::all();
        return view('cuti.create', compact('pegawais'));
    }

    public function getcuti(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('v_cuti')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('$row->cuti_id')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-success\" style=\"margin:5px;\" onclick=\"cetakSK('$row->cuti_id')\"><i class=\"fa fa-print\"> Cetak Cuti</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
       try{
        $this->validate($request, [
            'pegawai_id'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $cuti = cuti::create([
            'pegawai_id'     => $request->pegawai_id,
            'hari_cuti'     => $request->hari_cuti,
            'tanggalmulai'     => $request->tanggalmulai,
            'tanggalakhir'     => $request->tanggalakhir,
            'tipe_cuti'     => 1,
            'alasan_cuti'     => $request->alasan_cuti,
            'alamat_cuti'     => $request->alamat_cuti,
            'ttdcuti'     => 1,
            'tanggal_sk'     => $request->tanggal_sk,
            'nomor_sk'     => $request->nomor_sk,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if ($cuti) {
               echo json_encode(array('status'=>true));
           }else{
               echo json_encode(array('status'=>false,'pesan'=>'Update Data Gagal!'));
           }
       } catch (Exception $e){
           echo json_encode(array('status'=>false,'pesan'=>$e->getMessage()));
       }
    }

    public function edit(cuti $cuti)
    {
        return view('cuti.edit', compact('cuti'));
    }

    public function update(Request $request, cuti $cuti)
    {
        $this->validate($request, [
            'cuti_name'     => 'required',
        ]);

        $cuti = cuti::findOrFail($cuti->cuti_id);
        $mytime = Carbon\Carbon::now();
        $cuti->update([
                'cuti_name'     => $request->cuti_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($cuti){
            //redirect dengan pesan sukses
            return redirect()->route('cuti.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('cuti.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $cuti = cuti::findOrFail($id);
        $cuti->delete();

        if($cuti){
            //redirect dengan pesan sukses
            return redirect()->route('cuti.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('cuti.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }

    public function viewSK($cuti_id) {
        // $id_pirt = urldecode($id_pirt);
        $detcuti = DB::table('v_cuti')->where('cuti_id', $cuti_id)->get();
        return view('cuti.viewSK', compact('detcuti'));
    }

    public function cetakSK($cuti_id)
    {
        // $cuti_id = urldecode($cuti_id);
        $detcuti1 = DB::table('v_cuti')->where('cuti_id', $cuti_id)->first();

         QrCode::size(1024)
            ->format('png')
            ->merge('/public/imgsk/qr/logoqr.png', .4)
            // ->gradient(8, 109, 191,8, 109, 191, 'radial')
            ->style('square')
            ->eye('square')
            ->errorCorrection('H')
            ->generate(
                'https://sipinter.situbondokab.go.id/sppirt/public/persetujuan/Persetujuan-'.$detcuti1->cuti_id.'.pdf', '../public/imgsk/qr/'.$cuti_id.'.png'
            );
        // // QrCode::format('png')->merge('/public/imgsk/qr/logoqr.png')->generate('Make me into a QrCode!');
        // QrCode::backgroundColor(255, 0, 0);
        // QrCode::backgroundColor(255, 0, 0)->generate('Make me into a QrCode!', '../public/imgsk/qr/'.$id_pirt.'.png');
        // QrCode::format('png')->merge('path-to-image.png')->generate();
        $detcuti = DB::table('v_cuti')->where('cuti_id', $cuti_id)->get();
        $html = view('cuti.sk', compact('detcuti'));
        $pdf =  Pdf::loadHTML($html)->setPaper('folio', 'potrait')->setWarnings(false);
    	return $pdf->stream($detcuti1->cuti_id.'.pdf');

        // return view('cuti.sk', compact('detcuti'));
    }

}
