<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;

use App\Models\User;
use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class UserController extends Controller
{

    /**
     * @group User Management
     * Get Current User.
     *
     * 
     */
    public function index(Request $request)
    {
    
    return $this->success('',$request->user());
    }


    /**
     * @group User Management
     * Get Users Purchase.
     *
     *
     */

    public function indexUserPurchase(Request $request)
    {
        /*We are using Eloquent ORM for now but its getting slower and we would use DB facade if 
        records was more thn 100k or you have much more complex relation on your data.*/
        $user_id = ($request->user())->get()->pluck('id')->first();
        $users_purchase = Purchase::where('user_id','=',$user_id)->paginate(25);
        $users_purchase = ['purchase' => $users_purchase ];
        return $this->success('',[$users_purchase]);
        
    }
    /**
     * @group User Management
     * Create Users Purchase.
     *
     *
     */
    public function storeUsersPurchase(Request $request)
    {
        $user_id = ($request->user())->get()->pluck('id')->first();
        
        $data = $this->validate($request,[
            'product_sku' => ['required'],
        ]);

        $purchase = Purchase::create([
            'user_id' => $user_id,
            'product_sku' => $data['product_sku']
        ]);

        return $this->success('Users purchased product created.',$purchase);
    }
    /**
     * @group User Management
     * Update Users Purchase.
     *
     *
     */
    public function updateUsersPurchase(Request $request,$sku)
    {
        $data = $request->only('product_sku');
        $purchase = Purchase::where('product_sku','=',$sku)->first();
        isset($data['product_sku']) ? $purchase->product_sku = $data['product_sku']: null;
        $purchase->save();
        return $this->success('Users purchased product updated.',$purchase);
    }

    
    /**
     * @group User Management
     * Delete Users Purchase.
     *
     *
     */
    public function destroyUsersPurchase(Request $request,$sku)
    {
        $purchase = Purchase::destroy($sku);
        return $this->success('Users purchased product deleted.',$purchase);
    }
}