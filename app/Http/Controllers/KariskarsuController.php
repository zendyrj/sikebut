<?php

namespace App\Http\Controllers;

use Carbon;
use App\Models\kariskarsu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use PDF;
use DataTables;


class KariskarsuController extends Controller
{
    public function index()
    {
        $t_kariskarsu = kariskarsu::latest();
        return view('kariskarsu.index', compact('t_kariskarsu'));
    }

    public function create()
    {
        return view('kariskarsu.create');
    }

    public function getkariskarsu(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('t_kariskarsu')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '';
                        $actionBtn .= "<button class=\"btn btn-sm btn-primary\" style=\"margin:5px;\" onclick=\"edit('{{ $row->kariskarsu_id }}')\"><i class=\"fa fa-edit\"> Edit Data</i></button><button class=\"btn btn-sm btn-danger\" style=\"margin:5px;\" onclick=\delete('{{ $row->kariskarsu_id }}')\"><i class=\"fa fa-trash\"> Hapus Data</i></button>";
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'kariskarsu_name'     => 'required',
        ]);
        $mytime = Carbon\Carbon::now();

        $kariskarsu = kariskarsu::create([
            'kariskarsu_name'     => $request->kariskarsu_name,
            'create_at' => $mytime->toDateTimeString(),
            'updated_at' => $mytime->toDateTimeString(),
        ]);

        if($kariskarsu){
            return redirect()->route('kariskarsu.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            return redirect()->route('kariskarsu.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit(kariskarsu $kariskarsu)
    {
        return view('kariskarsu.edit', compact('kariskarsu'));
    }

    public function update(Request $request, kariskarsu $kariskarsu)
    {
        $this->validate($request, [
            'kariskarsu_name'     => 'required',
        ]);
        
        $kariskarsu = kariskarsu::findOrFail($kariskarsu->kariskarsu_id);
        $mytime = Carbon\Carbon::now();
        $kariskarsu->update([
                'kariskarsu_name'     => $request->kariskarsu_name,
                'updated_at' => $mytime->toDateTimeString()
        ]);


        if($kariskarsu){
            //redirect dengan pesan sukses
            return redirect()->route('kariskarsu.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('kariskarsu.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    public function destroy($id)
    {
        $kariskarsu = kariskarsu::findOrFail($id);
        $kariskarsu->delete();

        if($kariskarsu){
            //redirect dengan pesan sukses
            return redirect()->route('kariskarsu.index')->with(['success' => 'Data Berhasil Dihapus!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('kariskarsu.index')->with(['error' => 'Data Gagal Dihapus!']);
        }
    }
}
