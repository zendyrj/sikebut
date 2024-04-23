<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\kgb;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;

class KgbController extends Controller
{
    public function index()
    {
        $t_kgb = kgb::latest();
        return view('kgb.index', compact('t_kgb'));
    }

    public function create()
    {
        return view('kgb.create');
    }

    public function getkgb(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('t_kgb')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->kgb_id }}')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->kgb_id }}')\"><i class=\"fa fa-trash\"> Hapus Data</i></button>";
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
}
