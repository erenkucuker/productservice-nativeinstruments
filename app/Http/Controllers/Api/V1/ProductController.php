<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;


class ProductController extends Controller
{
    


    /**
     * @group Product Management
     * Get All Products.
     *
     *
     */
    public function index()
    { 
        $products = Product::paginate(25);
        return $this->success('',$products);
    }
    
    



}