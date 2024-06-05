<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cuti extends Model
{
   use HasFactory;
   protected $table = 't_cuti';
    protected $primaryKey = 'cuti_id';

    // protected $fillable = [
    //     'pegawai_id',
    //     'hari_cuti',
    //     'pegawai_id',
    //     'pegawai_id',
    //     'pegawai_id',
    //     'pegawai_id',
    //     'pegawai_id',
    // ];
    protected $guarded = [''];
}
