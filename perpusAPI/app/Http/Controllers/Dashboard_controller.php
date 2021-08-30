<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;

class Dashboard_controller extends Controller
{
    public function ThreeData()
    {
        $dataBuku = Book::all();
        $totalBuku = 0;
        foreach($dataBuku as $buku) $totalBuku += $buku->total;
        $borrowed = Transaction::where('is_back', 0)->get();
        $totalBorrowed = 0;
        foreach($borrowed as $key) $totalBorrowed += $key->book_transaction->where('status', 1)->count();
        $missingBook = Transaction::where('MONTH(tanggal_kembali)', Carbon::now()->month)->where('YEAR(tanggal_kembali)', Carbon::now()->year)->get();
        $missing = 0;
        foreach($missingBook as $miss) $missing += $miss->book_transaction->where('status', 3)->count();
        return response(
            [
                'bookCount' => $totalBuku,
                'borrowed' => $totalBorrowed,
                'missing' => $missing
            ],
        );
    }
    public function chart()
    {
        $transaction = Transaction::all();
        $transactionTotal = [0, 0, 0, 0, 0];
        foreach ($transaction as $key) {
            if ($key->created_at == (Carbon::now()->year - 2)) $transactionTotal[0] += $key->book_transaction->count();
            if ($key->created_at == (Carbon::now()->year - 1)) $transactionTotal[1] += $key->book_transaction->count();
            if ($key->created_at == (Carbon::now()->year)) $transactionTotal[2] += $key->book_transaction->count();
            if ($key->created_at == (Carbon::now()->year + 1)) $transactionTotal[3] += $key->book_transaction->count();
            if ($key->created_at == (Carbon::now()->year + 2)) $transactionTotal[4] += $key->book_transaction->count();
        }
        $transactionMonth = Transaction::where('YEAR(created_at)', Carbon::now()->year);
        $transactionMonthTotal = [];
        // for ($i = 0; $i < 12; $i++) $transactionMonthTotal[$i] = 0;
        for($i = 1; $i <= 12; $i++) $transactionMonthTotal[$i - 1] = $transactionMonth->where('MONTH(created_at)', $i)->get()->count();
        return response([
            'year' => $transactionTotal,
            'month' => $transactionMonthTotal
        ]);
    }
}
