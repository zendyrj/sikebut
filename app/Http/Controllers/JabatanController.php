<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\jabatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;

class JabatanController extends Controller
{
    public function index()
    {
        $jabatans = jabatan::latest();
        return view('jabatan.index', compact('jabatans'));
    }

    public function create()
    {
        return view('jabatan.create');
    }

    public function getjabatan(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('jabatans')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                    $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->jabatan_id }}')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->jabatan_id }}')\"><i class=\"fa fa-trash\"> Hapus Data</i></button>";
                   return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'jabatan_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $jabatan = jabatan::create([
            'jabatan_name'     => $request->jabatan_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($jabatan){
            return redirect()->route('jabatan.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('jabatan.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(jabatan $jabatan)
    {
        return view('jabatan.edit', compact('jabatan'));
    }

    public function update(Request $request, jabatan $jabatan)
    {
        $this->validate($request, [
            'jabatan_name'     => 'required',
        ]);
        
        $jabatan = jabatan::findOrFail($jabatan->jabatan_id);
        $mytime = Carbon\Carbon::now();
        $jabatan->update([
                'jabatan_name'     => $request->jabatan_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($jabatan){
            //redirect dengan pesan sukses
            return redirect()->route('jabatan.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('jabatan.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $jabatan = jabatan::findOrFail($id);
        $jabatan->delete();

        if($jabatan){
            //redirect dengan pesan sukses
            return redirect()->route('jabatan.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('jabatan.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }
}
