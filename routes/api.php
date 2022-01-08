<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsersController;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// user manage
Route::resource('users',UsersController::class);

// get user by id
Route::get('users/{user}', [UsersController::class, 'show']);
