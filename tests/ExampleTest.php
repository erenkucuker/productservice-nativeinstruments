<?php

use Laravel\Lumen\Testing\DatabaseMigrations;
use Laravel\Lumen\Testing\DatabaseTransactions;
use App\Models\User;

class ExampleTest extends TestCase
{

    public function testServiceStatus()
    {
        $response = $this->call('GET', '/api/v1');
    
        $this->assertEquals(200, $response->status());
    }

}
