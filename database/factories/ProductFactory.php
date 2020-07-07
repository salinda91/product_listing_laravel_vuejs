<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(\App\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'sku' => $faker->ean13,
        'description' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
        'inventory' => $faker->randomDigit,
        'status' => 1,
        'created_at' => $faker->dateTimeBetween($startDate = '-5 years', $endDate = 'now', $timezone = null),

    ];
});
