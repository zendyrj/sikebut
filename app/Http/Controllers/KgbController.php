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
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('$row->kgb_id')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-success\" style=\"margin:5px;\" onclick=\"cetakSK('$row->kgb_id')\"><i class=\"fa fa-print\"> Cetak kgb</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'kgb_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $kgb = kgb::create([
            'kgb_name'     => $request->kgb_name,
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
}
