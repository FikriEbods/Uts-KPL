@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="justify-content-between">
                        Tambahkan Karyawan Baru
                    </div>
                </div>
                <div class="card-body">
                    <form action="{{ route('employee.create') }}" method="post">
                    @csrf
                    @include('employee.partial.form')
                    <hr>
                    <div class="col-sm-12">
                        <div class="mb-3">
                            <h5><b>Total Gaji Yang Di Dapatkan</b> : (Gaji Pokok + Tunjangan) - Potongan</h5>
                        </div>
                    </div>
                        <div class="d-flex justify-content-end">
                            <button class="btn btn-success"> <i class="fa fa-download"></i> Simpan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
