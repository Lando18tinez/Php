<?php

use Illuminate\Database\Seeder;
use App\Models\Movie;
use Faker\Factory as Faker;


class MovieTableSeeder extends Seeder
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
            $user = new Movie;
            $user->name = $faker->name;
            $user->description = $faker->sentence(10);
            $user->user_id = 2;
            $user->status_id = 1;
            $user->save();
        }
    }
}
