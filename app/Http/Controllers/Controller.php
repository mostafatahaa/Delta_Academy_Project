<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

abstract class Controller
{
    public function uploadedImage(Request $request, $fileName)
    {
        // if request hasn't it will make this method return null and if not it will return the path
        if (!$request->hasFile($fileName)) {
            return;
        }

        $file = $request->file($fileName); // return uploadedFile object
        $path =  $file->store('uploads/images', [
            'disk' => 'public'
        ]); // or i can put key and value ('disk' => 'public')
        return $path;
    }
}
