<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;

    protected $fillable = ['judul', 'penulis', 'total', 'genre_id'];

    public function genre()
    {
        return $this->belongsTo('App\Models\Genre');
    }
    public function book_transaction()
    {
        return $this->hasMany('App\Models\Book_Transaction');
    }
}
