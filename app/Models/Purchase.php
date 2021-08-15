<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    use HasFactory;
    
    public $timestamps = false;
    protected $primaryKey ='product_sku';
    public $incrementing = false;
    protected $table = 'purchased';

        /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id',
        'product_sku',
    ];



    public function product()
    {
        return $this->hasOne(Product::class, 'sku', 'product_sku');
    }
}
