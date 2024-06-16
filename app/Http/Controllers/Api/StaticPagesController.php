<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\UnitsAndDepartments;
use Illuminate\Http\Request;

class StaticPagesController extends Controller
{
    public function show(Request $request)
    {
        $request->validate([
            'page_name' => 'required|exists:units_and_departments,page_name'
        ]);

        $record = UnitsAndDepartments::select('id', 'title', 'description', 'page_name')->where('page_name', $request->page_name)->get();
        $record->transform(function ($description) {
            $description->description = json_decode($description->description, true); // Convert JSON to associative array
            return $description;
        });
        if (count($record) > 0) {
            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $record);
        }
        return SendResponse::sendResponse(200, 'No Data To Retrieve', []);
    }

    public function showAll()
    {
        $record = UnitsAndDepartments::select('id', 'title', 'description', 'page_name')->get();
        $record->transform(function ($description) {
            $description->description = json_decode($description->description, true); // Convert JSON to associative array
            return $description;
        });
        if (count($record) > 0) {
            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $record);
        }
        return SendResponse::sendResponse(200, 'No Data To Retrieve', []);
    }

    public function update(Request $request)
    {
        $data = $request->validate([
            'id' => ['nullable', 'exists:units_and_departments,id'],
            'page_name' => ['required'],
            'title' => ['required', 'string', 'max:255'],
            'description' => ['required', 'string'],
        ]);

        $data['description'] = explode(',', $data['description']);
        $i = 1;
        $description = null;
        foreach ($data['description'] as $result) {
            $description[$i] = $result;
            $i++;
        }
        $description = json_encode($description);


        UnitsAndDepartments::updateOrCreate([
            'id' => $request->id
        ], [
            'title' => $data['title'] ?? null,
            'description' => $description,
            'page_name' => $data['page_name']
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Or Created Successfully', []);
    }
}
