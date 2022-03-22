<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::prefix('employee')->group(function () {
    Route::get('/', [App\Http\Controllers\EmployeeController::class, 'index'])->name('employee');
    Route::get('/{employee:id}/detail', [App\Http\Controllers\EmployeeController::class, 'show']);

    Route::name('employee.')->group(function () {
        Route::get('/create', [App\Http\Controllers\EmployeeController::class, 'create'])->name('create');
        Route::post('/create', [App\Http\Controllers\EmployeeController::class, 'store'])->name('create');

        Route::delete('/{employee:id}/delete', [App\Http\Controllers\EmployeeController::class, 'destroy'])->name('destroy');

        Route::get('/{employee:id}/edit', [App\Http\Controllers\EmployeeController::class, 'edit'])->name('edit');
        Route::put('/{employee:id}/edit', [App\Http\Controllers\EmployeeController::class, 'update'])->name('edit');
    });
});
