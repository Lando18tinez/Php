<?php

use Illuminate\Database\Seeder;
use App\Models\Roles;
use Faker\Factory as Faker;

class RoleTableSeeder extends Seeder
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
            $user = new Roles;
            $user->name = $faker->jobTitle;
            $user->status_id = 1;
            $user->save();
        }
    }
}
