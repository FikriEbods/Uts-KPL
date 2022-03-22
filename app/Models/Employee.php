<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $fillable = [
        'nik',
        'name',
        'gender_id',
        'email',
        'phone_number',
        'hire_date',
        'group_id',
        'address',
        'allowance',
        'salary_cut',
        'total_salary',
        'created_at',
        'updated_at',
    ];

    public function gender()
    {
        return $this->belongsTo(Gender::class);
    }

    public function group()
    {
        return $this->belongsTo(Group::class);
    }
}
