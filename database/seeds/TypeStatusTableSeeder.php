<?php

use Illuminate\Database\Seeder;
use App\Models\Type_statuses;
use Faker\Factory as Faker;

class TypeStatusTableSeeder extends Seeder
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
            $user = new Type_statuses;
            $user->name = $faker->name;
            $user->save();
        }
    }
}
