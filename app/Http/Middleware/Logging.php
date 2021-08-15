<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Log;

class Logging {

	public function handle($request, \Closure  $next)
	{
		return $next($request);
	}

	public function terminate($request, $response)
	{
		Log::channel('request_response')->info('app.requests', ['request' => ['url' =>$request->url(),'header' => $request->headers->all(),'body' =>$request->all()], 'response' => $response]);
	}

}
