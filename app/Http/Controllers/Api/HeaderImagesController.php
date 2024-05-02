<?php

namespace App\Http\Controllers\Api;

use Illuminate\Support\Facades\Http;


use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\HeaderImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class HeaderImagesController extends Controller
{
    public function storeHeaderImages(Request $request)
    {
        $request->validate([
            'header_image' => ['required', 'image'],
        ]);

        $image = $this->uploadedImage($request, 'header_image');

        HeaderImage::create([
            'image' => $image
        ]);

        return SendResponse::sendResponse(200, 'Image Uploaded Successfully', []);
    }

    public function getAllHeaderImages()
    {

        $allHeaderImages = HeaderImage::all();
        $data = [];

        foreach ($allHeaderImages as $image) {
            $data[] = ['id' => $image->id, 'image' => asset('storage/' . $image->image)];
        }


        if (count($allHeaderImages) > 0) {
            return SendResponse::sendResponse(200, 'All Header Images Retrieved Successfully', $data);
        }
        return SendResponse::sendResponse(200, 'No Header Images To Retrieved', []);
    }

    public function removeHeaderImage(Request $request)
    {
        $request->validate([
            'header_image_id' => ['required', 'exists:header_images,id']
        ]);

        $image = HeaderImage::find($request->header_image_id);

        if ($image->delete()) {
            Storage::disk('public')->delete($image->image);
        }

        return SendResponse::sendResponse(200, 'Image Deleted Successfully', []);
    }

    public function updateHeaderImage(Request $request)
    {
        $request->validate([
            'header_image_id' => ['required', 'exists:header_images,id'],
            'header_image' => ['required', 'image']
        ]);

        $oldImage = HeaderImage::find($request->header_image_id);
        $newImage = $this->uploadedImage($request, 'header_image');

        if ($newImage) {
            Storage::disk('public')->delete($oldImage->image);

            $oldImage->update([
                'image' => $newImage
            ]);
            return SendResponse::sendResponse(200, 'Image Uploaded Successfully', []);
        }
        return SendResponse::sendResponse(200, 'No Image To Upload', []);
    }
}
