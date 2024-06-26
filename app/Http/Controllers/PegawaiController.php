<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\pegawai;
use App\Models\opd;
use App\Models\jabatan;
use App\Models\golru;
use App\Models\agama;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;

class PegawaiController extends Controller
{
    public function index()
    {
        $pegawais = pegawai::latest();
        return view('pegawai.index', compact('pegawais'));
    }

    public function create()
    {
        $opds = opd::all();
        $jabatans = jabatan::all();
        $golrus = golru::all();
        $agamas = agama::all();
        return view('pegawai.create', compact('opds', 'jabatans','golrus','agamas'));
    }

    public function getpegawai(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('v_pegawai')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('$row->pegawai_id')\"><i class=\"fa fa-edit\"> Edit Data Pegawai</i></button><a class=\"btn btn-sm btn-success\" style=\"margin:5px;\" href=\"paperless/$row->pegawai_id\"><i class=\"fa fa-search\"> Lihat Data Paperless</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'pegawai_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        try {
            $pegawai = pegawai::create([
                'pegawai_name'     => $request->pegawai_name,
                'opd_id'            => $request->opd_id,
                'jabatan_id'     => $request->jabatan_id,
                'golru_id'     => $request->golru_id,
                'pegawai_nip'     => $request->pegawai_nip,
                'nomorhp'     => $request->nomorhp,
                'alamat_lengkap'     => $request->alamat_lengkap,
                'jeniskelamin'     => $request->jeniskelamin,
                'tempat_lahir'     => $request->tempat_lahir,
                'agama_id'     => $request->agama_id,
                'tanggal_lahir'     => Carbon\Carbon::parse($request->tanggal_lahir)->format('Y-m-d'),
                'tempat_lahir'     => $request->tempat_lahir,
                'create_at' => $mytime->toDateTimeString(),
                'updated_at' => $mytime->toDateTimeString(),
            ]);

           if ($pegawai) {
               echo json_encode(array('status'=>true));
           }else{
               echo json_encode(array('status'=>false,'pesan'=>'Update Data Gagal!'));
           }
       } catch (Exception $e){
           echo json_encode(array('status'=>false,'pesan'=>$e->getMessage()));
       }
    }

    public function edit(pegawai $pegawai)
    {
        $opds = opd::all();
        $jabatans = jabatan::all();
        $golrus = golru::all();
        $agamas = agama::all();
        return view('pegawai.edit', compact('pegawai','opds', 'jabatans','golrus','agamas'));
    }

    public function update(Request $request)
    {
        try{
            $pegawai = pegawai::findOrFail($request->pegawai_id);
            $mytime = Carbon\Carbon::now();
            $pegawai->update([
                    'pegawai_name'     => $request->pegawai_name,
                    'opd_id'            => $request->opd_id,
                    'jabatan_id'     => $request->jabatan_id,
                    'golru_id'     => $request->golru_id,
                    'pegawai_nip'     => $request->pegawai_nip,
                    'nomorhp'     => $request->nomorhp,
                    'alamat_lengkap'     => $request->alamat_lengkap,
                    'jeniskelamin'     => $request->jeniskelamin,
                    'tempat_lahir'     => $request->tempat_lahir,
                    'agama_id'     => $request->agama_id,
                    'tanggal_lahir'     => Carbon\Carbon::parse($request->tanggal_lahir)->format('Y-m-d'),
                    'tempat_lahir'     => $request->tempat_lahir,
                    'updated_at' => $mytime->toDateTimeString(),
            ]);

         if ($pegawai) {
               echo json_encode(array('status'=>true));
           }else{
               echo json_encode(array('status'=>false,'pesan'=>'Update Data Gagal!'));
           }
       } catch (Exception $e){
           echo json_encode(array('status'=>false,'pesan'=>$e->getMessage()));
       }
    }

    public function destroy($id)
    {
        $pegawai = pegawai::findOrFail($id);
        $pegawai->delete();

        if($pegawai){
            //redirect dengan pesan sukses
            return redirect()->route('pegawai.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('pegawai.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }

}
