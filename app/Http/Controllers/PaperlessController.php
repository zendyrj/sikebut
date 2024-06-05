<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\paperless;
use App\Models\pegawai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;

class PaperlessController extends Controller
{
    public function index($pegawai_id)
    {
        $pegawais = DB::table('v_pegawai')->where('pegawai_id', $pegawai_id)->first();
        return view('paperless.index', compact('pegawais'));
    }

    public function create()
    {
        return view('paperless.create');
    }

    public function getpaperless($pegawai_id, Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('v_paperless')->where('pegawai_id', $pegawai_id)->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"lihat_paperless('$row->paperless_file','$row->pegawai_nip')\"><i class=\"fa fa-search\"> Lihat File</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->paperless_id }}')\"><i class=\"fa fa-trash\"> Hapus File</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'paperless_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $paperless = paperless::create([
            'paperless_name'     => $request->paperless_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($paperless){
            return redirect()->route('paperless.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('paperless.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(paperless $paperless)
    {
        return view('paperless.edit', compact('paperless'));
    }

    public function update(Request $request, paperless $paperless)
    {
        $this->validate($request, [
            'paperless_name'     => 'required',
        ]);

        $paperless = paperless::findOrFail($paperless->paperless_id);
        $mytime = Carbon\Carbon::now();
        $paperless->update([
                'paperless_name'     => $request->paperless_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($paperless){
            //redirect dengan pesan sukses
            return redirect()->route('paperless.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('paperless.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $paperless = paperless::findOrFail($id);
        $paperless->delete();

        if($paperless){
            //redirect dengan pesan sukses
            return redirect()->route('paperless.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('paperless.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }

   
}
