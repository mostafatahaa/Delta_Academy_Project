<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AllFiles;
use Illuminate\Http\Request;

class ImportantRulesForStudentsController extends Controller
{
    public function show()
    {
        $image = AllFiles::select('student_guide', 'academic_advising', 'scientific_leadership_guide')->first();

        $data = [
            'student_guide' => asset('storage/' . $image->student_guide),
            'academic_advising' => asset('storage/' . $image->academic_advising),
            'scientific_leadership_guide' => asset('storage/' . $image->scientific_leadership_guide),
        ];

        return SendResponse::sendResponse(200, 'All Data Retrieved Successfully', $data);
    }

    public function update(Request $request)
    {
        $request->validate([
            'student_guide' => ['required', 'file'],
            'academic_advising' => ['required', 'file'],
            'scientific_leadership_guide' => ['required', 'file'],
        ]);

        $image = AllFiles::first();
        $student_guide = $this->checkIfImageChange($request, 'student_guide', $image->student_guide);
        $academic_advising = $this->checkIfImageChange($request, 'academic_advising', $image->academic_advising);
        $scientific_leadership_guide = $this->checkIfImageChange($request, 'scientific_leadership_guide', $image->scientific_leadership_guide);

        $image->update([
            'student_guide' => $student_guide,
            'academic_advising' => $academic_advising,
            'scientific_leadership_guide' => $scientific_leadership_guide,
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }
}
