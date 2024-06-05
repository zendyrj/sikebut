<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class opd extends Model
{
    protected $primaryKey = 'opd_id';
    use HasFactory;
    protected $fillable = [
        'opd_name'
    ];
}
