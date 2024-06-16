<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AllFiles;
use Illuminate\Http\Request;

class ScientificResearchDatabaseController extends Controller
{
    public function show()
    {
        $image = AllFiles::select('scientific_research_database')->first();

        $data = [
            'scientific_research_database' => asset('storage/' . $image->scientific_research_database),
        ];

        return SendResponse::sendResponse(200, 'All Data Retrieved Successfully', $data);
    }

    public function update(Request $request)
    {
        $request->validate([
            'scientific_research_database' => ['required', 'file'],
        ]);

        $image = AllFiles::first();
        $scientific_research_database = $this->checkIfImageChange($request, 'scientific_research_database', $image->scientific_research_database);


        $image->update([
            'scientific_research_database' => $scientific_research_database,
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }
}
