<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class EmployeeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nik' => rand(10000000, 99999999),
            'name' => $this->faker->name(),
            'gender_id' => rand(1,2),
            'email' => $this->faker->unique()->safeEmail(),
            'phone_number' => $this->faker->phoneNumber(),
            'hire_date' => $this->faker->date($format = 'Y-m-d', $max = 'now'),
            'group_id' => rand(1,4),
            'address' => $this->faker->address(),
            'allowance' => rand(100000, 1000000),
            'salary_cut' => rand(100000, 1000000),
            'total_salary' => rand(100000, 1000000),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
