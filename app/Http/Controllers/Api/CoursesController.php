<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AllFiles;
use Illuminate\Http\Request;

class CoursesController extends Controller
{
    public function show()
    {
        $image = AllFiles::select('courses_new', 'courses_old')->first();

        $data = [
            'new_regulation' => asset('storage/' . $image->courses_new),
            'old_regulation' => asset('storage/' . $image->courses_old),

        ];

        return SendResponse::sendResponse(200, 'All Data Retrieved Successfully', $data);
    }

    public function update(Request $request)
    {
        $request->validate([
            'new_regulation' => ['required', 'file'],
            'old_regulation' => ['required', 'file'],
        ]);

        $image = AllFiles::first();
        $new_regulation = $this->checkIfImageChange($request, 'new_regulation', $image->courses_new);
        $old_regulation = $this->checkIfImageChange($request, 'old_regulation', $image->courses_old);

        $image->update([
            'courses_new' => $new_regulation,
            'courses_old' => $old_regulation,
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }
}
