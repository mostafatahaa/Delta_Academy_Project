<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

abstract class Controller
{
    public function uploadedImage(Request $request, $fileName)
    {
        // if request hasn't it will make this method return null and if not it will return the path
        if (!$request->hasFile($fileName)) {
            return;
        }

        $file = $request->file($fileName); // return uploadedFile object
        $path =  $file->store('uploads/files', [
            'disk' => 'public'
        ]); // or i can put key and value ('disk' => 'public')
        return $path;
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
