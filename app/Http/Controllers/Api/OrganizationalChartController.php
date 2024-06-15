<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AllFiles;
use Illuminate\Http\Request;

class OrganizationalChartController extends Controller
{
    public function show()
    {
        $image = AllFiles::select('organizational_chart')->first();

        if ($image->organizational_chart) {
            return SendResponse::sendResponse(200, 'All Data Retrieved Successfully', asset('storage/' . $image->organizational_chart));
        }
        return SendResponse::sendResponse(200, 'No Data To Retrieved', []);
    }

    public function update(Request $request)
    {
        $request->validate([
            'image' => ['required', 'image']
        ]);

        $image = AllFiles::first();
        $resultImage = $this->checkIfImageChange($request, 'image', $image->organizational_chart);

        $image->update([
            'organizational_chart' => $resultImage
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }
}
