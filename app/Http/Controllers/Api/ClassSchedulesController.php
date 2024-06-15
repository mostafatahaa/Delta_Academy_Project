<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AllFiles;
use Illuminate\Http\Request;

class ClassSchedulesController extends Controller
{
    public function show()
    {
        $image = AllFiles::select('class_schedules_one', 'class_schedules_two', 'class_schedules_three', 'class_schedules_four')->first();

        $data = [
            'first_class_schedule' => asset('storage/' . $image->class_schedules_one),
            'second_class_schedule' => asset('storage/' . $image->class_schedules_two),
            'third_class_schedule' => asset('storage/' . $image->class_schedules_three),
            'fourth_class_schedule' => asset('storage/' . $image->exam_schedules_four),
        ];

        return SendResponse::sendResponse(200, 'All Data Retrieved Successfully', $data);
    }

    public function update(Request $request)
    {
        $request->validate([
            'first_class_schedule' => ['required', 'file'],
            'second_class_schedule' => ['required', 'file'],
            'third_class_schedule' => ['required', 'file'],
            'fourth_class_schedule' => ['required', 'file'],
        ]);

        $image = AllFiles::first();
        $first_class_schedule = $this->checkIfImageChange($request, 'first_class_schedule', $image->class_schedules_one);
        $second_class_schedule = $this->checkIfImageChange($request, 'second_class_schedule', $image->class_schedules_two);
        $third_class_schedule = $this->checkIfImageChange($request, 'third_class_schedule', $image->class_schedules_three);
        $fourth_class_schedule = $this->checkIfImageChange($request, 'fourth_class_schedule', $image->class_schedules_four);

        $image->update([
            'class_schedules_one' => $first_class_schedule,
            'class_schedules_two' => $second_class_schedule,
            'class_schedules_three' => $third_class_schedule,
            'class_schedules_four' => $fourth_class_schedule,
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }
}
