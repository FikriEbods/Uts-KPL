<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->integer('nik');
            $table->string('name');
            $table->foreignId('gender_id');
            $table->text('address');
            $table->string('email');
            $table->string('phone_number');
            $table->date('hire_date');
            $table->foreignId('group_id');
            $table->integer('allowance');
            $table->integer('salary_cut');
            $table->integer('total_salary');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employees');
    }
};
