<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\pensiun;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;

class PensiunController extends Controller
{
    public function index()
    {
        $t_pensiun = pensiun::latest();
        return view('pensiun.index', compact('t_pensiun'));
    }

    public function create()
    {
        return view('pensiun.create');
    }

    public function getpensiun(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('t_pensiun')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->pensiun_id }}')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->pensiun_id }}')\"><i class=\"fa fa-trash\"> Hapus Data</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'pensiun_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $pensiun = pensiun::create([
            'pensiun_name'     => $request->pensiun_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($pensiun){
            return redirect()->route('pensiun.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('pensiun.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(pensiun $pensiun)
    {
        return view('pensiun.edit', compact('pensiun'));
    }

    public function update(Request $request, pensiun $pensiun)
    {
        $this->validate($request, [
            'pensiun_name'     => 'required',
        ]);
        
        $pensiun = pensiun::findOrFail($pensiun->pensiun_id);
        $mytime = Carbon\Carbon::now();
        $pensiun->update([
                'pensiun_name'     => $request->pensiun_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($pensiun){
            //redirect dengan pesan sukses
            return redirect()->route('pensiun.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('pensiun.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $pensiun = pensiun::findOrFail($id);
        $pensiun->delete();

        if($pensiun){
            //redirect dengan pesan sukses
            return redirect()->route('pensiun.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('pensiun.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }
}
