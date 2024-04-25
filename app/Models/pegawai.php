<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pegawai extends Model
{
    use HasFactory;
    protected $primaryKey = 'pegawai_id';
    
    protected $fillable = [
        'pegawai_name',
        'opd_id',
        'jabatan_id',
        'golru_id',
        'pegawai_nip',
        'nomorhp',
        'alamat_lengkap',
        'jeniskelamin',
        'tempat_lahir',
        'tanggal_lahir',
        'agama_id',
    ];
}
