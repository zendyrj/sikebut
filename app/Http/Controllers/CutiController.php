<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\cuti;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;

class CutiController extends Controller
{
    public function index()
    {
        $t_cuti = cuti::latest();
        return view('cuti.index', compact('t_cuti'));
    }

    public function create()
    {
        return view('cuti.create');
    }

    public function getcuti(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('t_cuti')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->cuti_id }}')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->cuti_id }}')\"><i class=\"fa fa-trash\"> Hapus Data</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'cuti_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $cuti = cuti::create([
            'cuti_name'     => $request->cuti_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($cuti){
            return redirect()->route('cuti.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('cuti.index')->with(['error' => 'Data Gagal Disimpan!']);
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
}
