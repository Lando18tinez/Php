<?php

use Illuminate\Database\Seeder;
use App\Models\Rentals;
use Faker\Factory as Faker;

class RentalsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = faker::create();
        for($i=0; $i<10; $i++){
            $user = new Rentals;
            $user->start_date = $faker->dateTime();
            $user->end_date = $faker->dateTime();
            $user->total = 2000;
            $user->status_id = 1;
            $user->user_id = 2;
            $user->save();
        }
    }
}
