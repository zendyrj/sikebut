<div class="modal fade" id="modal-default">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Persetujuan</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="{{ route('pegawai.store') }}" method="POST" enctype="multipart/form-data" id="form_value">   
                @csrf
                <div class="form-group">
                    <label class="font-weight-bold">NAMA PEGAWAI</label>
                    <input type="text" class="form-control @error('title') is-invalid @enderror" name="pegawai_name" value="{{ old('pegawai_name') }}" >
                    <!-- error message untuk title -->
                    @error('title')
                        <div class="alert alert-danger mt-2">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <div class="form-group">
                    <label class="font-weight-bold">NIP</label>
                    <input type="text" class="form-control @error('title') is-invalid @enderror" name="pegawai_nip" value="{{ old('pegawai_nip') }}">
                    <!-- error message untuk title -->
                    @error('title')
                        <div class="alert alert-danger mt-2">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="form-group">
                    <label class="font-weight-bold">OPD</label>
                    <select name="opd_id" id="opd_id" class="form-control select2bs4  @error('title') is-invalid @enderror">
                    <option value="">-- Pilih Opd --</option>

                      @foreach ($opds as $opd)
                        <option value="{{ $opd->opd_id }}">{{ $opd->opd_name }}</option>
                      @endforeach
                    </select>

                    <!-- error message untuk title -->
                    @error('title')
                        <div class="alert alert-danger mt-2">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="form-group">
                  <label class="font-weight-bold">Jabatan</label>
                  <select name="jabatan_id" id="jabatan_id" class="form-control select2bs4  @error('title') is-invalid @enderror">
                  <option value="">-- Pilih Jabatan --</option>

                    @foreach ($jabatans as $jabatan)
                      <option value="{{ $jabatan->jabatan_id }}">{{ $jabatan->jabatan_name }}</option>
                    @endforeach
                  </select>

                  <!-- error message untuk title -->
                  @error('title')
                      <div class="alert alert-danger mt-2">
                          {{ $message }}
                      </div>
                  @enderror
              </div>
              <div class="form-group">
                <label class="font-weight-bold">Golongan Ruang</label>
                <select name="golru_id" id="golru_id" class="form-control select2bs4  @error('title') is-invalid @enderror">
                <option value="">-- Pilih Jabatan --</option>

                  @foreach ($golrus as $golru)
                    <option value="{{ $golru->golru_id }}">{{ $golru->golru_name." - ".$golru->golru_code }}</option>
                  @endforeach
                </select>

                <!-- error message untuk title -->
                @error('title')
                    <div class="alert alert-danger mt-2">
                        {{ $message }}
                    </div>
                @enderror
            </div>

            <div class="form-group">
              <label class="font-weight-bold">Alamat</label>
              <textarea name="alamat_lengkap" id="alamat_lengkap" class="form-control" cols="30" rows="10">{{ old('alamat_lengkap') }}</textarea>
          </div>

          <div class="form-group">
            <label class="font-weight-bold">Nomor Hp</label>
            <input type="text" class="form-control @error('title') is-invalid @enderror" name="nomorhp" value="{{ old('nomorhp') }}" >
            <!-- error message untuk title -->
            @error('title')
                <div class="alert alert-danger mt-2">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <div class="form-group">
          <label class="font-weight-bold">Jenis Kelamin</label>
          <select name="jeniskelamin" id="jeniskelamin" class="form-control select2bs4  @error('title') is-invalid @enderror">
            <option value="">-- Pilih Jenis Kelamin --</option>
            <option value="Laki-laki">Laki-laki</option>
            <option value="Perempuan">Perempuan</option>
            </select>

            <!-- error message untuk title -->
            @error('title')
                <div class="alert alert-danger mt-2">
                    {{ $message }}
                </div>
            @enderror
      </div>

      <div class="form-group">
        <label class="font-weight-bold">Agama</label>
        <select name="agama_id" id="agama_id" class="form-control select2bs4  @error('title') is-invalid @enderror">
        <option value="">-- Pilih Agama --</option>

          @foreach ($agamas as $agama)
            <option value="{{ $agama->agama_id }}">{{ $agama->agama_name }}</option>
          @endforeach
        </select>

        <!-- error message untuk title -->
        @error('title')
            <div class="alert alert-danger mt-2">
                {{ $message }}
            </div>
        @enderror
    </div>
    <div class="form-group">
      <label class="font-weight-bold">Tempat Lahir</label>
      <input type="text" class="form-control @error('title') is-invalid @enderror" name="tempat_lahir" value="{{ old('tempatlahir') }}" >
      <!-- error message untuk title -->
      @error('title')
          <div class="alert alert-danger mt-2">
              {{ $message }}
          </div>
      @enderror
  </div>
  <div class="form-group">
    <label>Date:</label>
      <div class="input-group date" id="reservationdate" data-target-input="nearest">
          <input type="text" class="form-control datetimepicker-input @error('title') is-invalid @enderror"  data-target="#reservationdate" name="tanggal_lahir"/>
          <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
              <div class="input-group-text"><i class="fa fa-calendar"></i></div>
          </div>
      </div>
      @error('title')
      <div class="alert alert-danger mt-2">
          {{ $message }}
      </div>
  @enderror
  </div>
            </form> 
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-md btn-primary" onclick="save()">SIMPAN</button>
          <button type="button" class="btn btn-default float-right" data-dismiss="modal">Close</button>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>

   
  <script>
    $('.select2').select2()
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    });
     //Date picker
     $('#reservationdate').datetimepicker({
        format: 'L'
    });
    $("#modal-default").modal('show');

    function save(){
			$.ajax({
			    url : "{{ route('pegawai.store') }}",
			    type : "POST",
			    data : $('#form_value').serialize(),
			    dataType : 'json',
			    success: function(res){
							$("#modal-default").modal('hide');
              $('#example1').DataTable().ajax.reload(null, false);
						    Swal.fire({
							text: "Form has been successfully submitted!",
							icon: "success",
							buttonsStyling: !1,
							confirmButtonText: "Ok, got it!",
							customClass: {
								confirmButton: "btn btn-primary"
							}
							});
    }})};
  </script>        