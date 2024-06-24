<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\academicLife;
use Illuminate\Http\Request;

class AcademicLifeController extends Controller
{
    public function showOne()
    {
        $record = academicLife::select('id', 'name', 'image', 'description')->find(1);
        $record->image = asset('storage/' . $record->image);

        if ($record) {
            $record->description = json_decode($record->description, true);

            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $record);
        }

        return SendResponse::sendResponse(200, 'No Data To Retrieve', []);
    }

    public function updateOne(Request $request)
    {
        $data = $request->validate([
            'name' => ['required', 'max:255'],
            'description' => ['required'],
            'image' => ['required', 'image'],
        ]);
        $record = academicLife::find(1);

        $data['description'] = explode(',', $data['description']);
        $i = 1;
        $description = null;
        foreach ($data['description'] as $result) {
            $description[$i] = $result;
            $i++;
        }
        $description = json_encode($description);

        $image = $this->checkIfImageChange($request, 'image', $record->image);

        $record->update(
            [
                'description' => $description,
                'name' => $data['name'],
                'image' => $image
            ]
        );

        return SendResponse::sendResponse(200, 'Data Updated Or Created Successfully', []);
    }

    public function showTwo()
    {
        $record = academicLife::select('id', 'name', 'image', 'description')->find(2);

        if ($record) {
            $record->description = json_decode($record->description, true);
            $record->image = asset('storage/' . $record->image);

            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $record);
        }

        return SendResponse::sendResponse(200, 'No Data To Retrieve', []);
    }

    public function updateTwo(Request $request)
    {
        $data = $request->validate([
            'name' => ['required', 'max:255'],
            'description' => ['required'],
            'image' => ['required', 'image'],
        ]);
        $record = academicLife::find(2);

        $data['description'] = explode(',', $data['description']);
        $i = 1;
        $description = null;
        foreach ($data['description'] as $result) {
            $description[$i] = $result;
            $i++;
        }
        $description = json_encode($description);

        $image = $this->checkIfImageChange($request, 'image', $record->image);

        $record->update(
            [
                'description' => $description,
                'name' => $data['name'],
                'image' => $image
            ]
        );

        return SendResponse::sendResponse(200, 'Data Updated Or Created Successfully', []);
    }

    public function showThree()
    {
        $record = academicLife::select('id', 'name', 'image', 'description')->find(3);

        if ($record) {
            $record->description = json_decode($record->description, true);
            $record->image = asset('storage/' . $record->image);


            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $record);
        }

        return SendResponse::sendResponse(200, 'No Data To Retrieve', []);
    }

    public function updateThree(Request $request)
    {
        $data = $request->validate([
            'name' => ['required', 'max:255'],
            'description' => ['required'],
            'image' => ['required', 'image'],
        ]);
        $record = academicLife::find(3);

        $data['description'] = explode(',', $data['description']);
        $i = 1;
        $description = null;
        foreach ($data['description'] as $result) {
            $description[$i] = $result;
            $i++;
        }
        $description = json_encode($description);

        $image = $this->checkIfImageChange($request, 'image', $record->image);

        $record->update(
            [
                'description' => $description,
                'name' => $data['name'],
                'image' => $image
            ]
        );

        return SendResponse::sendResponse(200, 'Data Updated Or Created Successfully', []);
    }
}
