<?php

use Laravel\Lumen\Testing\DatabaseMigrations;
use Laravel\Lumen\Testing\DatabaseTransactions;

class ExampleTest extends TestCase
{

    public function testServiceStatus()
    {
        $response = $this->call('GET', '/api/v1');
    
        $this->assertEquals(200, $response->status());
    }

    public function testApplicationv2()
    {
        $response = $this->call('GET', '/api/v122');
    
        $this->assertEquals(200, $response->status());
    }

}
