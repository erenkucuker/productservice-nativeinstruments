<?php

namespace App\Http\Controllers\Api\V1;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\ApiKey;
use Hash;
use Illuminate\Support\Str;

class AuthController extends Controller
{


    /**
     * 
     * Authenticating the user.
     * @unauthenticated
     * 
     * @bodyParam   email    string  required    The email of the  user.      Example: testuser@example.com
     * @bodyParam   password    string  required    The password of the  user.   Example: secret
     *
     * @response {
     * "success": true,
     * "data": {
     * "access_token": "6|dnXwYoauF0NJQOdfFgeJvtAPI5eWWWIJmkzIHG5s"
     * },
     * "link": [],
     * "meta": [],
     * "message": ""
     * }
     */
    public function login(Request $request)
    {   
        $credentials = $this->validate($request,[
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);
        

        $user = User::where('email', $credentials['email'])->where('password', $credentials['password'])->first();
        

        if(!$user){
            return $this->failure('Your credentials are incorrect.',401);
        }
        $api_key = base64_encode(Str::random(30));
        
        ApiKey::where('user_id', $user->id)->updateOrCreate([
            'user_id' => $user->id,
            'key' => $api_key,
            'abilities' => '[*]'
        ]);
        return $this->success('',['access_token' => $api_key]);
    }
}
