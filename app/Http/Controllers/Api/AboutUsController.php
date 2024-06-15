<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\AboutUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;

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
        $data = AboutUs::select('title', 'our_goals', 'students_number', 'graduated_students')->first();
    
        if ($data) {
            $data->our_goals = json_decode($data->our_goals, true);
    
            $commonQuestions = AboutUs::select('id', 'question', 'answers')->where('question', '<>', null)->get();
    
            $commonQuestions->transform(function ($question) {
                $question->answers = json_decode($question->answers, true); // Convert JSON to associative array
                return $question;
            });
    
            $data['common_questions'] = $commonQuestions;
    
            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $data);
        }
    
        return SendResponse::sendResponse(200, 'No Data To Retrieve', []);
    }

    public function update(Request $request)
    {
        $data = $request->validate([
            'title' => ['required', 'string'],
            'our_goals' => ['required'],
            'students_number' => ['required', 'numeric', 'min:1'],
            'graduated_students' => ['required', 'numeric', 'min:1'],
        ]);

        $record = AboutUs::first();

        // just put a key to array
        $data['our_goals'] = explode(',', $data['our_goals']);
        $i = 1;
        $goals = null;
        foreach($data['our_goals'] as $result) {
            $goals[$i] = $result;
            $i++;
        }



        $record->update([
            'our_goals' => $goals,
            'title' => $data['title'],
            'students_number' => $data['students_number'],
            'graduated_students' => $data['graduated_students'],
    ]);

        // $data['institute_dean_image'] = $this->checkIfImageChange($request, 'institute_dean_image', $record->institute_dean_image);
        // $data['chairman_of_board_image'] = $this->checkIfImageChange($request, 'chairman_of_board_image', $record->chairman_of_board_image);
        // $data['organizational_char_image'] = $this->checkIfImageChange($request, 'organizational_char_image', $record->organizational_char_image);
        
        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }

    public function updateCommonQuestion(Request $request)
    {
        $data = $request->validate([
            'id' => ['nullable', 'exists:about_us,id'],
            'question' => ['required', 'max:255'],
            'answers' => ['required'],
        ]);

        $data['answers'] = explode(',', $data['answers']);
        $i = 1;
        $answers = null;
        foreach($data['answers'] as $result) {
            $answers[$i] = $result;
            $i++;
            }
            $answers = json_encode($answers);


        $record = AboutUs::updateOrCreate([
            'id' => $request->id
        ], [
            'question' => $data['question'],
            'answers' => $answers 
        ]);
        return SendResponse::sendResponse(200, 'Data Updated Or Created Successfully', []);
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
