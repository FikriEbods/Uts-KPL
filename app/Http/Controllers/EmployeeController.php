<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Gender;
use App\Models\Group;

class EmployeeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('employee.index', [
            'employees' => Employee::paginate(10),
        ]);
    }

    public function show(Employee $employee)
    {
        return view('employee.show', compact('employee'));
    }

    public function create()
    {
        return view('employee.create', [
            'employee'  => new Employee,
            'genders'   => Gender::get(),
            'groups'    => Group::get(),
        ]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nik'           => 'required|numeric',
            'name'          => 'required',
            'gender'        => 'required',
            'email'         => 'email',
            'hire_date'     => 'required|date',
            'group'         => 'required',
            'allowance'     => 'required',
            'salary_cut'    => 'required',
        ]);

        $group          = Group::find($request->group);
        $total_salary   = ($group->salary + $request->allowance) - $request->salary_cut;

        Employee::create([
            'nik'           => $request->nik,
            'name'          => $request->name,
            'gender_id'     => $request->gender,
            'email'         => $request->email,
            'phone_number'  => $request->phone_number,
            'hire_date'     => $request->hire_date,
            'group_id'      => $request->group,
            'address'       => $request->address,
            'allowance'     => $request->allowance,
            'salary_cut'    => $request->salary_cut,
            'total_salary'  => $total_salary,
        ]);

        session()->flash('success', 'Data Karyawan Baru Berhasil Tersimpan');
        return redirect()->to('employee');
    }

    public function edit(Employee $employee)
    {
        return view('employee.edit',[
            'employee'  => $employee,
            'genders'   => Gender::get(),
            'groups'    => Group::get(),
        ]);
    }

    public function update(Employee $employee, Request $request)
    {
        $group          = Group::find($request->group);
        $total_salary   = ($group->salary + $request->allowance) - $request->salary_cut;

        $employee->update([
            'nik'           => $request->nik,
            'name'          => $request->name,
            'gender_id'     => $request->gender,
            'email'         => $request->email,
            'phone_number'  => $request->phone_number,
            'hire_date'     => $request->hire_date,
            'group_id'      => $request->group,
            'address'       => $request->address,
            'allowance'     => $request->allowance,
            'salary_cut'    => $request->salary_cut,
            'total_salary'  => $total_salary,
        ]);

        session()->flash('success', 'Data Karyawan Berhasil Diubah');
        return redirect()->to('employee');
    }

    public function destroy(Employee $employee)
    {
        $employee->delete();

        session()->flash('success', 'Data Karyawan Berhasil Dihapus');
        return redirect()->to('employee');
    }
}
