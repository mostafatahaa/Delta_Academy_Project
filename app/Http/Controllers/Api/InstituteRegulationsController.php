<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AllFiles;
use Illuminate\Http\Request;

class InstituteRegulationsController extends Controller
{
    public function show()
    {
        $image = AllFiles::select('old_institute_regulations', 'new_institute_regulations')->first();

        $data = [
            'new_regulation' => asset('storage/' . $image->old_institute_regulations),
            'old_regulation' => asset('storage/' . $image->new_institute_regulations),
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
        $new_regulation = $this->checkIfImageChange($request, 'new_regulation', $image->new_institute_regulations);
        $old_regulation = $this->checkIfImageChange($request, 'old_regulation', $image->old_institute_regulations);

        $image->update([
            'old_institute_regulations' => $new_regulation,
            'new_institute_regulations' => $old_regulation,
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }
}
