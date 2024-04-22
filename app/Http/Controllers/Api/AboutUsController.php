<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AboutUs;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function mainPage(Request $request)
    {
        $request->validate([
            'title' => ['required', 'string'],
            'our_goals' => ['required', 'array'],
            'students_number' => ['required', 'numeric', 'min:1'],
            'graduated_students' => ['required', 'numeric', 'min:1'],
            'question' => ['nullable', 'max:255'],
            'answer' => ['required', 'array', 'max:255'],
            'constructed_at' => ['required', 'string'],
            'organizational_char_image' => ['nullable', 'image'],
            'institute_dean_name' => ['required', 'string'],
            'institute_dean_image' => ['nullable', 'image'],
            'institute_dean_word' => ['nullable', 'string'],
            'chairman_of_board_name' => ['required', 'string'],
            'chairman_of_board_image' => ['nullable', 'image'],
            'chairman_of_board_word' => ['nullable', 'string']
        ]);

        $request['institute_dean_image'] = $this->uploadedImage($request, 'institute_dean_image');
        $request['chairman_of_board_image'] = $this->uploadedImage($request, 'chairman_of_board_image');

        AboutUs::create($request->all());

        return SendResponse::sendResponse(201, 'Data Created Successfully', []);
    }


    protected function uploadedImage(Request $request, $fileName)
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
