<fieldset>
    <legend>Biodata</legend>
    <div class="row">
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="nik" class="form-label">NIK</label>
                        <input value="{{ old('nik') ?? $employee->nik }}" type="number" id="nik" name="nik" class="form-control @error('nik') is-invalid @enderror" placeholder="Masukan NIK">
                        @error('nik')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="name" class="form-label">Nama</label>
                        <input value="{{ old('name') ?? $employee->name }}" type="text" id="name" name="name" class="form-control @error('name') is-invalid @enderror" placeholder="Masukan Nama">
                        @error('name')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="gender" class="form-label">Jenis Kelamin</label>
                        <select name="gender" id="gender" class="form-control @error('gender') is-invalid @enderror">
                            <option disabled selected>Pilih Jenis Kelamin</option>
                            @foreach ($genders as $gender)
                                <option {{ $gender->id == $employee->gender_id ? 'selected' : '' }} value="{{ $gender->id }}">{{ $gender->gender }}</option>
                            @endforeach
                        </select>
                        @error('gender')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="address" class="form-label">Alamat</label>
                        <textarea rows="5" id="address" name="address" class="form-control @error('address') is-invalid @enderror" placeholder="Masukan Alamat">{{ old('nik') ?? $employee->address }}</textarea>
                        @error('address')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
            </div>
        </div>
    </div>
</fieldset>
<fieldset>
    <legend>Kontak</legend>
    <div class="row">
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="email" class="form-label">E-mail</label>
                        <input value="{{ old('email') ?? $employee->email }}" type="email" id="email" name="email" class="form-control @error('email') is-invalid @enderror" placeholder="Masukan E-mail">
                        @error('email')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="phone_number" class="form-label">Nomor Telpon</label>
                        <input value="{{ old('phone_number') ?? $employee->phone_number }}" type="text" id="phone_number" name="phone_number" class="form-control @error('phone_number') is-invalid @enderror" placeholder="Masukan Nomor Telpon">
                        @error('phone_number')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
            </div>
        </div>
    </div>
</fieldset>
<fieldset>
    <legend>Informasi Lainnya</legend>
    <div class="row">
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="hire_date" class="form-label">Tanggal Bergabung</label>
                        <input value="{{ old('hire_date') ?? $employee->hire_date }}" type="date" id="hire_date" name="hire_date" class="form-control @error('hire_date') is-invalid @enderror">
                        @error('hire_date')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="group" class="form-label">Golongan</label>
                        <select name="group" id="group" class="form-control @error('group') is-invalid @enderror">
                            <option disabled selected>Pilih Golongan</option>
                            @foreach ($groups as $group)
                                <option value="{{ $group->id }}" {{ $group->id == $employee->group_id ? 'selected' : '' }}>{{ $group->group_category }} - Gaji Pokok : Rp. {{ number_format($group->salary,2,',','.'); }}</option>
                            @endforeach
                        </select>
                        @error('group')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="allowance" class="form-label">Tunjangan</label>
                        <input value="{{ old('allowance') ?? $employee->allowance }}" type="number" id="allowance" name="allowance" class="form-control @error('allowance') is-invalid @enderror">
                        @error('allowance')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="mb-3">
                        <label for="salary_cut" class="form-label">Potongan Gaji</label>
                        <input value="{{ old('salary_cut') ?? $employee->salary_cut }}" type="number" id="salary_cut" name="salary_cut" class="form-control @error('salary_cut') is-invalid @enderror">
                        @error('salary_cut')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
            </div>
        </div>
    </div>
</fieldset>
