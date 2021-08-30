<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book_transaction extends Model
{
    use HasFactory;

    protected $fillable = ['book_id', 'transaction_id', 'status', 'total'];

    public function book()
    {
        return $this->belongsTo('App\Models\Book');
    }
    public function transaction()
    {
        return $this->belongsTo('App\Models\Transaction');
    }
}
