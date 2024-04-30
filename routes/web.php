<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\OpdController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\JabatanController;
use App\Http\Controllers\GolruController;
use App\Http\Controllers\KgbController;
use App\Http\Controllers\CutiController;
use App\Http\Controllers\PensiunController;
use App\Http\Controllers\TugasbelajarController;
use App\Http\Controllers\KariskarsuController;
use App\Http\Controllers\PaperlessController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::group(['middleware' => 'auth'], function () {
    Route::resource('opd', OpdController::class);
    Route::get('/data-opd',[OpdController::class, 'index']);
    Route::get('/data-opd/get-data',[OpdController::class, 'getOPD']);

    Route::resource('pegawai', PegawaiController::class);
    Route::get('/data-pegawai',[PegawaiController::class, 'index']);
    Route::get('/data-pegawai/get-data',[PegawaiController::class, 'getPEGAWAI']);

    Route::resource('golru', GolruController::class);
    Route::get('/data-golru',[GolruController::class, 'index']);
    Route::get('/data-golru/get-data',[GolruController::class, 'getGOLRU']);

    Route::resource('jabatan', JabatanController::class);
    Route::get('/data-jabatan',[JabatanController::class, 'index']);
    Route::get('/data-jabatan/get-data',[JabatanController::class, 'getJABATAN']);

    Route::resource('kgb', KgbController::class);
    Route::get('/data-kgb',[KgbController::class, 'index']);
    Route::get('/data-kgb/get-data',[KgbController::class, 'getKGB']);

    Route::resource('cuti', CutiController::class);
    Route::get('/cuti/view-sk/{cuti_id}',[CutiController::class, 'viewSK']);
    Route::get('/cuti/cetak-sk/{cuti_id}',[CutiController::class, 'cetakSK']);
    Route::get('/data-cuti',[CutiController::class, 'index']);
    Route::get('/data-cuti/get-data',[CutiController::class, 'getCUTI']);

    Route::resource('pensiun', PensiunController::class);
    Route::get('/data-pensiun',[PensiunController::class, 'index']);
    Route::get('/data-pensiun/get-data',[PensiunController::class, 'getPENSIUN']);

    Route::resource('tugasbelajar', TugasbelajarController::class);
    Route::get('/data-tugasbelajar',[TugasbelajarController::class, 'index']);
    Route::get('/data-tugasbelajar/get-data',[TugasbelajarController::class, 'getTUGASBELAJAR']);

    Route::resource('kariskarsu', KariskarsuController::class);
    Route::get('/data-kariskarsu',[KariskarsuController::class, 'index']);
    Route::get('/data-kariskarsu/get-data',[KariskarsuController::class, 'getKARISKARSU']);

    Route::get('/paperless/{pegawai_id}',[PaperlessController::class, 'index']);
    Route::get('/data-paperless/get-data/{pegawai_id}',[PaperlessController::class, 'getPAPERLESS']);
});

Route::get('/', [CustomAuthController::class, 'dashboard']); 
Route::get('dashboard', [CustomAuthController::class, 'dashboard']); 
Route::get('webmin', [CustomAuthController::class, 'index'])->name('webmin');
Route::post('custom-webmin', [CustomAuthController::class, 'customLogin'])->name('webmin.custom'); 
Route::get('registration', [CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [CustomAuthController::class, 'customRegistration'])->name('register.custom'); 
Route::get('signout', [CustomAuthController::class, 'signOut'])->name('signout');