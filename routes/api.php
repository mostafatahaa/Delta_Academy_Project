<?php

use App\Http\Controllers\Api\AboutUsController;
use App\Http\Controllers\Api\AcademicLifeController;
use App\Http\Controllers\Api\AdminAuthController;
use App\Http\Controllers\Api\ClassSchedulesController;
use App\Http\Controllers\Api\ComplaintsController;
use App\Http\Controllers\Api\CoursesController;
use App\Http\Controllers\Api\ExamSchedulesController;
use App\Http\Controllers\Api\FollowUpCommitteeController;
use App\Http\Controllers\Api\HeaderImagesController;
use App\Http\Controllers\Api\ImportantRulesForStudentsController;
use App\Http\Middleware\CorsMiddleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\InstituteCreatedAtController;
use App\Http\Controllers\Api\InstituteRegulationsController;
use App\Http\Controllers\Api\LeadersOfCollageController;
use App\Http\Controllers\Api\MessageAndVisionController;
use App\Http\Controllers\Api\OrganizationalChartController;
use App\Http\Controllers\Api\ScientificResearchDatabaseController;
use App\Http\Controllers\Api\SettingsController;
use App\Http\Controllers\Api\StaticPagesController;
use App\Models\LeadersOfCollage;

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
    Route::get('/main-page', [AboutUsController::class, 'show']);
    Route::post('/main-page-update', [AboutUsController::class, 'update']);
    Route::post('/common-questions-update', [AboutUsController::class, 'updateCommonQuestion']);
    Route::post('/about-us-delete', [AboutUsController::class, 'destroy']);


    // test Routes 
    Route::post('add-common-question', [AboutUsController::class, 'addQuestion']);
    Route::post('update-common-question', [AboutUsController::class, 'updateQuestion']);
    Route::get('get-all-common-question', [AboutUsController::class, 'getCommonQuestion']);

    Route::get('institute-created-at/get', [InstituteCreatedAtController::class, 'show']);
    Route::post('institute-created-at/update',  [InstituteCreatedAtController::class, 'update']);
    Route::post('institute-created-at/delete',  [InstituteCreatedAtController::class, 'delete']);

    Route::get('vision-mission-goals/get', [MessageAndVisionController::class, 'show']);
    Route::post('vision-mission-goals/update',  [MessageAndVisionController::class, 'update']);
    Route::post('vision-mission-goals/delete',  [MessageAndVisionController::class, 'delete']);

    Route::get('academic-and-administrative-leaders/get', [LeadersOfCollageController::class, 'show']);
    Route::post('academic-and-administrative-leaders/update',  [LeadersOfCollageController::class, 'update']);
    Route::post('academic-and-administrative-leaders/create',  [LeadersOfCollageController::class, 'store']);

    Route::get('follow-up-committee/get', [FollowUpCommitteeController::class, 'show']);
    Route::post('follow-up-committee/update',  [FollowUpCommitteeController::class, 'update']);
    Route::post('follow-up-committee/create',  [FollowUpCommitteeController::class, 'store']);

    Route::get('organizational-chart/get', [OrganizationalChartController::class, 'show']);
    Route::post('organizational-chart/update',  [OrganizationalChartController::class, 'update']);

    Route::get('institute-regulations/get', [InstituteRegulationsController::class, 'show']);
    Route::post('institute-regulations/update',  [InstituteRegulationsController::class, 'update']);

    Route::get('class-schedules/get', [ClassSchedulesController::class, 'show']);
    Route::post('class-schedules/update',  [ClassSchedulesController::class, 'update']);

    Route::get('important-rules-for-students/get', [ImportantRulesForStudentsController::class, 'show']);
    Route::post('important-rules-for-students/update',  [ImportantRulesForStudentsController::class, 'update']);

    Route::get('scientific_research_database/get', [ScientificResearchDatabaseController::class, 'show']);
    Route::post('scientific_research_database/update',  [ScientificResearchDatabaseController::class, 'update']);

    Route::get('courses/get', [CoursesController::class, 'show']);
    Route::post('courses/update',  [CoursesController::class, 'update']);

    Route::get('exam-schedules/get', [ExamSchedulesController::class, 'show']);
    Route::post('exam-schedules/update',  [ExamSchedulesController::class, 'update']);

    Route::get('complaints/get', [ComplaintsController::class, 'show']);
    Route::post('complaints/create',  [ComplaintsController::class, 'store']);

    Route::get('department-of-management-information-systems/get', [AcademicLifeController::class, 'showOne']);
    Route::post('department-of-management-information-systems/update',  [AcademicLifeController::class, 'updateOne']);

    Route::get('department-of-accounting/get', [AcademicLifeController::class, 'showTwo']);
    Route::post('department-of-accounting/update',  [AcademicLifeController::class, 'updateTwo']);

    Route::get('basic-sciences/get', [AcademicLifeController::class, 'showThree']);
    Route::post('basic-sciences/update',  [AcademicLifeController::class, 'updateThree']);

    Route::post('page-based-on-name/get', [StaticPagesController::class, 'show']);
    Route::get('all-pages-data/get', [StaticPagesController::class, 'showAll']);
    Route::post('page-based-on-name/update',  [StaticPagesController::class, 'update']);

    Route::get('settings/get', [SettingsController::class, 'show']);
    Route::post('settings/update',  [SettingsController::class, 'update']);
});
