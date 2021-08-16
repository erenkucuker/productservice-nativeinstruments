<?php


namespace App\Traits;

use Illuminate\Pagination\LengthAwarePaginator;

trait ApiResponds
{
    protected function success($message = null, $data = [],$link = [], $meta = [] , $status = 200)
    {
        
        if ($data instanceof LengthAwarePaginator) {
            return response([
                'success' => true,
                'data' => $data->items(),
                'link' => [
                    'next_page_url' => $data->nextPageUrl(),
                    'previous_page_url' => $data->previousPageUrl(),
                ],
                'meta' => [
                    'per_page' => $data->perPage(),
                    'current_page' => $data->currentPage(),
                    'total' => $data->total(),
                    'last_page' => $data->lastPage()

                ],
                'message' => $message,
            ], $status);
        }

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