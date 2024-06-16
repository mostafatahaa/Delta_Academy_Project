<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\Complaints;
use Illuminate\Http\Request;

class ComplaintsController extends Controller
{
    public function show()
    {
        $data = Complaints::select('student_name', 'student_code', 'description')->get();

        if (count($data) > 0) {
            return SendResponse::sendResponse(200, 'All Data Retrieved Successfully', $data);
        }
        return SendResponse::sendResponse(200, 'No Data To Retrieved', []);
    }

    public function store(Request $request)
    {
        $request->validate([
            'student_name' => ['required', 'string'],
            'student_code' => ['required', 'numeric'],
            'description' => ['required', 'string'],
        ]);

        Complaints::create($request->all());
        return SendResponse::sendResponse(200, 'Data Sent Successfully', []);
    }
}
