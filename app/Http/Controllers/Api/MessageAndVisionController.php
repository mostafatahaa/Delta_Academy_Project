<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\MessageAndVision;
use Illuminate\Http\Request;

class MessageAndVisionController extends Controller
{
    public function show()
    {
        $record = MessageAndVision::select('id', 'title', 'description')->get();
        $record->transform(function ($description) {
            $description->description = json_decode($description->description, true); // Convert JSON to associative array
            return $description;
        });
        if (count($record) > 0) {
            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $record);
        }
        return SendResponse::sendResponse(200, 'No Data To Retrieve', []);
    }

    public function delete(Request $request)
    {
        $request->validate([
            'id' => ['required', 'exists:created_ats,id'],
        ]);
        $record = MessageAndVision::find($request->id);
        $record->delete();
        return SendResponse::sendResponse(200, 'Successfully Deleted', []);
    }


    public function update(Request $request)
    {
        $data = $request->validate([
            'id' => ['nullable', 'exists:created_ats,id'],
            'title' => ['nullable', 'string', 'max:255'],
            'description' => ['nullable', 'string'],
        ]);

        $data['description'] = explode(',', $data['description']);
        $i = 1;
        $description = null;
        foreach ($data['description'] as $result) {
            $description[$i] = $result;
            $i++;
        }
        $description = json_encode($description);


        $record = MessageAndVision::updateOrCreate([
            'id' => $request->id
        ], [
            'title' => $data['title'] ?? null,
            'description' => $description
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Or Created Successfully', []);
    }
}
