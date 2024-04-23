<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\pegawai;
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
        return view('pegawai.create');
    }

    public function getpegawai(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('v_pegawai')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->pegawai_id }}')\"><i class=\"fa fa-edit\"> Edit Data Pegawai</i></button><button class=\"btn btn-sm btn-success\" style=\"margin:5px;\" onclick=\"edit('{{ $row->pegawai_id }}')\"><i class=\"fa fa-search\"> Lihat Data Paperless</i></button>";
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

        $pegawai = pegawai::create([
            'pegawai_name'     => $request->pegawai_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($pegawai){
            return redirect()->route('pegawai.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('pegawai.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(pegawai $pegawai)
    {
        return view('pegawai.edit', compact('pegawai'));
    }

    public function update(Request $request, pegawai $pegawai)
    {
        $this->validate($request, [
            'pegawai_name'     => 'required',
        ]);
        
        $pegawai = pegawai::findOrFail($pegawai->pegawai_id);
        $mytime = Carbon\Carbon::now();
        $pegawai->update([
                'pegawai_name'     => $request->pegawai_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($pegawai){
            //redirect dengan pesan sukses
            return redirect()->route('pegawai.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('pegawai.index')->with(['error' => 'Data Gagal Diupdate!']);
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
