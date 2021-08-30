<?php

use App\Http\Controllers\Auth_controller;
use App\Http\Controllers\Book_controller;
use App\Http\Controllers\Dashboard_controller;
use App\Http\Controllers\Genre_controller;
use App\Http\Controllers\Siswa_controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Public API

// Login
Route::post('/login', [Auth_controller::class, 'login']);

// Protected API
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:sanctum')->group(function () {
    // Auth_controller
    Route::post('/register', [Auth_controller::class, 'register']);
    Route::post('/logout', [Auth_controller::class, 'logout']);
});

// Siswa_controller
Route::resource('siswa', Siswa_controller::class);

// Dashboard_controller
Route::get('/threeData', [Dashboard_controller::class, 'ThreeData']);
Route::get('/chart', [Dashboard_controller::class, 'chart']);

// Book_controller
Route::resource('book', Book_controller::class);

// Genre_controller
Route::resource('genre', Genre_controller::class);
