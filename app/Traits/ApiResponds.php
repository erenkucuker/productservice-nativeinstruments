<?php


namespace App\Traits;



trait ApiResponds
{
    protected function success($message = null, $data = [],$link = [], $meta = [] , $status = 200)
    {

        return response([
            'success' => true,
            'data' => $data,
            'link' => $link,
            'meta' => $meta,
            'message' => $message,
        ], $status);
    }

    protected function failure($message, $status = 422, $exceptions = [])
    {
        return response([
            'success' => false,
            'message' => $message,
            'errrrors' => $exceptions,
        ], $status);
    }
}