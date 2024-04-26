<?php

use App\Http\Controllers\Api\AboutUsController;
use App\Http\Controllers\Api\AdminAuthController;
use App\Http\Controllers\Api\HeaderImagesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('admin/login', [AdminAuthController::class, 'login']);
Route::group(['prefix' => 'dashboard'], function () {
    Route::post('create-user', [AdminAuthController::class, 'createUser']);
    Route::post('logout', [AdminAuthController::class, 'logout']);
    Route::post('edit-admin-info', [AdminAuthController::class, 'editAdminInfo']);

    #Header Images
    Route::post('/create-header-image', [HeaderImagesController::class, 'storeHeaderImages']);
    Route::get('/get-all-header-images', [HeaderImagesController::class, 'getAllHeaderImages']);
    Route::post('/delete-header-image', [HeaderImagesController::class, 'removeHeaderImage']);
    Route::post('/update-header-image', [HeaderImagesController::class, 'updateHeaderImage']);
    #Header Images
    Route::post('/about-us-create', [AboutUsController::class, 'create']);
    Route::get('/get-about-us-data', [AboutUsController::class, 'show']);
    Route::post('/about-us-update', [AboutUsController::class, 'update']);
    Route::post('/about-us-delete', [AboutUsController::class, 'destroy']);


    // test Routes 
    Route::post('add-common-question', [AboutUsController::class, 'addQuestion']);
    Route::post('update-common-question', [AboutUsController::class, 'updateQuestion']);
    Route::get('get-all-common-question', [AboutUsController::class, 'getCommonQuestion']);
});
