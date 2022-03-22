<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="d-flex align-items-end justify-content-between">
                <img width="60px" src="{{ asset('img/download-removebg-preview.png') }}" alt="">
                <h4>Profil Karyawan</h4>
            </div>
            <hr>
        </div>
    </div>
    <form>
        <fieldset>
            <legend class="fw-bold">Biodata</legend>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="nik" class="form-label fw-bold">NIK : </label><br>
                                {{ $employee->nik }}
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="name" class="form-label fw-bold">Nama : </label><br>
                                {{ $employee->name }}
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="gender" class="form-label fw-bold">Jenis Kelamin : </label><br>
                                {{ $employee->gender->gender }}
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="address" class="form-label fw-bold">Alamat : </label><br>
                                {{ $employee->address }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <legend class="fw-bold">Kontak</legend>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="email" class="form-label fw-bold">E-mail : </label><br>
                                {{ $employee->email }}
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="phone_number" class="form-label fw-bold">Nomor Telpon : </label><br>
                                {{ $employee->phone_number }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <legend class="fw-bold">Informasi Lainnya</legend>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="mb-3">
                                <label for="hire_date" class="form-label fw-bold">Tanggal Bergabung : </label><br>
                                {{ date('d-m-Y', strtotime($employee->hire_date)); }}
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="group" class="form-label fw-bold">Golongan : </label><br>
                                {{ $employee->group->group_category }}
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="group" class="form-label fw-bold">Gaji Pokok : </label><br>
                                Rp. {{ number_format($employee->group->salary,2,',','.'); }}
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="allowance" class="form-label fw-bold">Tunjangan : </label><br>
                                Rp. {{ number_format($employee->allowance,2,',','.'); }}
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="salary_cut" class="form-label fw-bold">Potongan Gaji : </label><br>
                                Rp. {{ number_format($employee->salary_cut,2,',','.'); }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
    </form>
    <div class="row">
        <div class="col-sm-12">
            <hr>
            <div class="d-flex align-items-center justify-content-between">
                <h5><b>Total Gaji Yang Di Dapatkan</b> : (Gaji Pokok + Tunjangan) - Potongan</h5>
                <div>
                    <h5><b>Total Gaji : </b> <u>Rp. {{ number_format($employee->total_salary,2,',','.'); }} </u></h5>
                </div>
            </div>
        </div>
    </div>
</div>
