<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\FollowUpCommittee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class FollowUpCommitteeController extends Controller
{
    public function show()
    {
        $allHeaderImages = FollowUpCommittee::all();
        $data = [];

        foreach ($allHeaderImages as $image) {
            $data[] = ['id' => $image->id, 'image' => asset('storage/' . $image->image), 'name' => $image->name, 'title' => $image->title];
        }


        if (count($allHeaderImages) > 0) {
            return SendResponse::sendResponse(200, 'All Data Retrieved Successfully', $data);
        }
        return SendResponse::sendResponse(200, 'No Data To Retrieved', []);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string'],
            'title' => ['required', 'string'],
            'image' => ['nullable', 'image']
        ]);

        $image = $this->uploadedImage($request, 'image');

        FollowUpCommittee::create([
            'image' => $image,
            'name' => $request->name,
            'title' => $request->title
        ]);

        return SendResponse::sendResponse(200, 'Data Uploaded Successfully', []);
    }

    public function update(Request $request)
    {
        $data = $request->validate([
            'name' => ['required', 'string'],
            'title' => ['required', 'string'],
            'image' => ['nullable', 'image'],
            'id' => ['required', 'exists:follow_up_committees,id']
        ]);
        $record = FollowUpCommittee::find($request->id);
        $data['image'] = $this->checkIfImageChange($request, 'image', $record->image);

        $record->update([
            'image' => $data['image'],
            'name' => $data['name'],
            'title' => $data['title']
        ]);

        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }

    public function checkIfImageChange(Request $request, $imageName, $oldImage)
    {
        if ($request->has($imageName)) {
            Storage::disk('public')->delete($oldImage);
            return $data[$imageName] = $this->uploadedImage($request, $imageName);
        } else {
            return $data[$imageName] = $oldImage;
        }
    }
}
