<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rules\Password;
use Illuminate\Support\Facades\Validator;



class AdminAuthController extends Controller
{
    public function createUser(Request $request)
    {
        $request->validate([
            'first_name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'phone_number' => ['required', 'numeric', 'digits_between:7,15'],
            'email' => ['required', 'email', 'unique:users,email'],
            'password' => ['required', Password::min(6)]
        ]);

        $user = User::create($request->all());

        $data = [
            'first_name' => $user->first_name,
            'last_name' => $user->last_name,
            'email' => $user->email,
            'phone_number' => $user->phone_number,
        ];

        return SendResponse::sendResponse(200, 'Admin Created Successfully', $data);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|exists:users,email',
            'password' => 'required'
        ], [
            'email.required' => 'The email field is required.',
            'email.exists' => 'The selected email is invalid.',
            'password.required' => 'The password field is required.'
        ]);

        if ($validator->fails()) {

            return SendResponse::sendResponse(401, $validator->errors()->first(), []);
        }



        if (Auth::guard('web')->attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = Auth::guard('web')->user();
            $data['email'] = $user->email;
            return SendResponse::sendResponse(200, 'Login Successfully', $data);
        }
        return SendResponse::sendResponse(401, 'Login Failed', []);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json(['message' => 'Logout Successfully'], 200);
    }

    public function editAdminInfo(Request $request)
    {
        $request->validate([
            'first_name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'phone_number' => ['required', 'numeric', 'digits_between:7,15'],
            'email' => ['required', 'email', 'unique:users,email'],
            'password' => ['required', Password::min(6)]
        ]);

        $user = User::findOrFail($request->user_id);
        $user->update($request()->all());

        $data = [
            'first_name' => $user->first_name,
            'last_name' => $user->last_name,
            'email' => $user->email,
            'phone_number' => $user->phone_number,
        ];

        return SendResponse::sendResponse(200, 'Admin Created Successfully', $data);
    }
}
