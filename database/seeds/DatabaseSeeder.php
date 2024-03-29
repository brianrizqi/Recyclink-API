<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(\App\User::class, 20)->create();
        factory(\App\Recycle::class, 20)->create();
        factory(\App\Product::class, 20)->create();
        // $this->call('UsersTableSeeder');
    }
}
