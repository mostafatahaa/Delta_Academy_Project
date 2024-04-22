<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MainPageRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'header_images' => ['required', 'array', 'min:1'],
            'header_images*' => ['image'],
            'about_us' => ['required', 'string'],
            'our_goals' => ['required', 'string'],
            'students_number' => ['required', 'numeric', 'min:1'],
            'graduated_students' => ['required', 'numeric', 'min:1'],
            'common_question_title' => ['required', 'string', 'max:255'],
            'common_question_answer' => ['required', 'string', 'max:255'],
        ];
    }
}
