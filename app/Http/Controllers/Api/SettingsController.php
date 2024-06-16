<?php

namespace App\Http\Controllers\Api;

use App\Helper\SendResponse;
use App\Http\Controllers\Controller;
use App\Models\Settings;
use Illuminate\Http\Request;

class SettingsController extends Controller
{
    public function show()
    {
        $settings = Settings::select('facebook', 'youtube', 'footer_description', 'address', 'phone_number')->first();

        if ($settings) {
            return SendResponse::sendResponse(200, 'Data Retrieved Successfully', $settings);
        }
        return SendResponse::sendResponse(200, 'No Data To Retrieved', []);
    }

    public function update(Request $request)
    {
        $request->validate([
            'facebook' => ['nullable', 'url'],
            'youtube' => ['nullable', 'url'],
            'footer_description' => ['nullable', 'string'],
            'address' => ['nullable', 'string'],
            'phone_number' => ['nullable'],
        ]);

        $settings = Settings::first();


        $settings->update($request->all());
        return SendResponse::sendResponse(200, 'Data Updated Successfully', []);
    }
}
