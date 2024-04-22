<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AboutUs;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function create(Request $request)
    {
        $data = $request->validate([
            'title' => ['required', 'string'],
            'our_goals' => ['required', 'array'],
            'students_number' => ['required', 'numeric', 'min:1'],
            'graduated_students' => ['required', 'numeric', 'min:1'],
            'question' => ['nullable', 'max:255'],
            'answers' => ['required', 'array', 'max:255'],
            'constructed_at' => ['required', 'string'],
            'organizational_char_image' => ['nullable', 'image'],
            'institute_dean_name' => ['required', 'string'],
            'institute_dean_image' => ['nullable', 'image'],
            'institute_dean_word' => ['nullable', 'string'],
            'chairman_of_board_name' => ['required', 'string'],
            'chairman_of_board_image' => ['nullable', 'image'],
            'chairman_of_board_word' => ['nullable', 'string']
        ]);
        $data['our_goals'] = implode(',', $request->post('our_goals'));
        $data['answers'] = implode(',', $request->post('answers'));
        $data['institute_dean_image'] = $this->uploadedImage($request, 'institute_dean_image');
        $data['chairman_of_board_image'] = $this->uploadedImage($request, 'chairman_of_board_image');
        $data['organizational_char_image'] = $this->uploadedImage($request, 'organizational_char_image');

        AboutUs::create($data);

        return SendResponse::sendResponse(201, 'Data Created Successfully', []);
    }

    public function show()
    {
        $data = AboutUs::all();
        if (count($data) > 0) {
            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $data);
        }
        return SendResponse::sendResponse(200, 'No Data To Retrieved', []);
    }


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
