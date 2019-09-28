<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\Recycle::class, function (Faker\Generator $faker) {
    return [
        'user_id' => $faker->numberBetween(2, 20),
        'title' => 'Jual ' . $faker->text(50),
        'price' => $faker->numberBetween(1000, 10000),
        'stock' => $faker->numberBetween(1, 1000),
        'category_id' => $faker->numberBetween(1, 5),
    ];
});
