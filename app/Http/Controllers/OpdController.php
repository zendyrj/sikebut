<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\opd;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;
class OpdController extends Controller
{
    public function index()
    {
        $opds = opd::latest();
        return view('opd.index', compact('opds'));
    }

    public function create()
    {
        return view('opd.create');
    }

    public function getopd(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('opds')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->opd_id }}')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->opd_id }}')\"><i class=\"fa fa-trash\"> Hapus Data</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'opd_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $opd = opd::create([
            'opd_name'     => $request->opd_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($opd){
            return redirect()->route('opd.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('opd.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(Opd $opd)
    {
        return view('opd.edit', compact('opd'));
    }

    public function update(Request $request, Opd $opd)
    {
        $this->validate($request, [
            'opd_name'     => 'required',
        ]);
        
        $opd = Opd::findOrFail($opd->opd_id);
        $mytime = Carbon\Carbon::now();
        $opd->update([
                'opd_name'     => $request->opd_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($opd){
            //redirect dengan pesan sukses
            return redirect()->route('opd.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('opd.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $opd = Opd::findOrFail($id);
        $opd->delete();

        if($opd){
            //redirect dengan pesan sukses
            return redirect()->route('opd.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('opd.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }

}
