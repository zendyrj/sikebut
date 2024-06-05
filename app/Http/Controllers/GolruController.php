<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\golru;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;

class GolruController extends Controller
{
    public function index()
    {
        $golrus = golru::latest();
        return view('golru.index', compact('golrus'));
    }

    public function create()
    {
        return view('golru.create');
    }

    public function getgolru(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('golrus')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->golru_id }}')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->golru_id }}')\"><i class=\"fa fa-trash\"> Hapus Data</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'golru_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $golru = golru::create([
            'golru_name'     => $request->golru_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($golru){
            return redirect()->route('golru.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('golru.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(golru $golru)
    {
        return view('golru.edit', compact('golru'));
    }

    public function update(Request $request, golru $golru)
    {
        $this->validate($request, [
            'golru_name'     => 'required',
        ]);
        
        $golru = golru::findOrFail($golru->golru_id);
        $mytime = Carbon\Carbon::now();
        $golru->update([
                'golru_name'     => $request->golru_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($golru){
            //redirect dengan pesan sukses
            return redirect()->route('golru.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('golru.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $golru = golru::findOrFail($id);
        $golru->delete();

        if($golru){
            //redirect dengan pesan sukses
            return redirect()->route('golru.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('golru.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }
}
