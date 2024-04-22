<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\OpdController;
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
Route::resource('opd', OpdController::class);
Route::get('/data-opd',[OpdController::class, 'index']);
Route::get('/data-opd/get-data',[OpdController::class, 'getOPD']);

Route::get('/', [CustomAuthController::class, 'dashboard']); 
Route::get('dashboard', [CustomAuthController::class, 'dashboard']); 
Route::get('webmin', [CustomAuthController::class, 'index'])->name('webmin');
Route::post('custom-login', [CustomAuthController::class, 'customLogin'])->name('login.custom'); 
Route::get('registration', [CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [CustomAuthController::class, 'customRegistration'])->name('register.custom'); 
Route::get('signout', [CustomAuthController::class, 'signOut'])->name('signout');