<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\tugasbelajar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;

class TugasbelajarController extends Controller
{
    public function index()
    {
        $t_tugasbelajar = tugasbelajar::latest();
        return view('tugasbelajar.index', compact('t_tugasbelajar'));
    }

    public function create()
    {
        return view('tugasbelajar.create');
    }

    public function gettugasbelajar(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('t_tugasbelajar')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->tugasbelajar_id }}')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->tugasbelajar_id }}')\"><i class=\"fa fa-trash\"> Hapus Data</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'tugasbelajar_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $tugasbelajar = tugasbelajar::create([
            'tugasbelajar_name'     => $request->tugasbelajar_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($tugasbelajar){
            return redirect()->route('tugasbelajar.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('tugasbelajar.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(tugasbelajar $tugasbelajar)
    {
        return view('tugasbelajar.edit', compact('tugasbelajar'));
    }

    public function update(Request $request, tugasbelajar $tugasbelajar)
    {
        $this->validate($request, [
            'tugasbelajar_name'     => 'required',
        ]);
        
        $tugasbelajar = tugasbelajar::findOrFail($tugasbelajar->tugasbelajar_id);
        $mytime = Carbon\Carbon::now();
        $tugasbelajar->update([
                'tugasbelajar_name'     => $request->tugasbelajar_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($tugasbelajar){
            //redirect dengan pesan sukses
            return redirect()->route('tugasbelajar.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('tugasbelajar.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $tugasbelajar = tugasbelajar::findOrFail($id);
        $tugasbelajar->delete();

        if($tugasbelajar){
            //redirect dengan pesan sukses
            return redirect()->route('tugasbelajar.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('tugasbelajar.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }
}
