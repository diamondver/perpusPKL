<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = ['siswa_id', 'tanggal_pengembalian', 'tanggal_kembali', 'is_back'];

    public function siswa()
    {
        return $this->belongsTo('App\Models\Siswa');
    }
    public function book_transaction()
    {
        return $this->hasMany('App\Models\Book_transaction');
    }
}
