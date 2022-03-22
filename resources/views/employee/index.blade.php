@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="d-flex align-items-center justify-content-between">
                        Karyawan
                        <a href="{{ route('employee.create') }}" class="btn btn-small btn-primary"><i class="fa fa-plus"></i> Tambah Karyawan Baru</a>
                    </div>
                </div>

                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Action</th>
                                <th scope="col">NIK</th>
                                <th scope="col">Name</th>
                                <th scope="col">Golongan</th>
                                <th scope="col">Total Gaji</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($employees as $employee)
                            <tr>
                                <th>
                                    <div class="d-flex align-item-center justify-content-evenly">

                                        <form action="{{ route('employee.destroy', [$employee->id]) }}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-sm btn-danger"><i class="fa fa-sm fa-trash"></i></button>
                                        </form>
                                        <a href="{{ route('employee.edit', $employee->id) }}" class="btn btn-sm btn-success"><i class="fa fa-sm fa-edit"></i></a>
                                        <button type="button" onclick="modalDetail({{ $employee->id }})" class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            <i class="fa-solid fa-sm fa-eye"></i>
                                        </button>
                                    </div>
                                </th>
                                <td>{{ $employee->nik }}</td>
                                <td>{{ $employee->name }}</td>
                                <td>{{ $employee->group->group_category }}</td>
                                <td>Rp. {{ number_format($employee->total_salary,2,',','.'); }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                {{ $employees->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
