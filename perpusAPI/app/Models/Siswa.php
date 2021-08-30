<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;

    protected $fillable = ['nama', 'kelas_id', 'jurusan_id', 'rombel_id', 'alamat', 'no_tlp'];

    public function kelas()
    {
        return $this->belongsTo('App\Models\Kelas');
    }
    public function jurusan()
    {
        return $this->belongsTo('App\Models\Jurusan');
    }
    public function rombel()
    {
        return $this->belongsTo('App\Models\Rombel');
    }
    public function transaction()
    {
        return $this->hasMany('App\Models\Transaction');
    }
}
