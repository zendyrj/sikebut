<div class="modal fade" id="modal-default">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Form Pegawai</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('pegawai.store') }}" method="POST" enctype="multipart/form-data"
                    id="form_value">
                    @csrf
                    <div class="form-group">
                        <label class="font-weight-bold">Pegawai</label>
                        <select name="pegawai_id" id="pegawai_id"
                            class="form-control select2bs4  @error('title') is-invalid @enderror">
                            <option value="">-- Pilih Pegawai --</option>

                            @foreach ($pegawais as $pegawai)
                                <option value="{{ $pegawai->pegawai_id }}">{{ $pegawai->pegawai_name }}</option>
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
                        <label class="font-weight-bold">Hari Cuti</label>
                        <input type="text" class="form-control @error('title') is-invalid @enderror" name="hari_cuti"
                            value="{{ old('hari_cuti') }}">
                        <!-- error message untuk title -->
                        @error('title')
                            <div class="alert alert-danger mt-2">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="font-weight-bold">Dari Tanggal</label>
                                <input type="date" class="form-control @error('title') is-invalid @enderror"
                                    name="tanggalmulai" value="{{ old('tanggalmulai') }}">
                                <!-- error message untuk title -->
                                @error('title')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="font-weight-bold">Sampai Tanggal</label>
                                <input type="date" class="form-control @error('title') is-invalid @enderror"
                                    name="tanggalakhir" value="{{ old('tanggalakhir') }}">
                                <!-- error message untuk title -->
                                @error('title')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold">Alasan Cuti</label>
                        <textarea name="alasan_cuti" id="alasan_cuti" cols="30" class="form-control" rows="4"></textarea>
                        <!-- error message untuk title -->
                        @error('title')
                            <div class="alert alert-danger mt-2">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold">Alamat Cuti</label>
                        <input type="text" class="form-control @error('title') is-invalid @enderror"
                            name="alamat_cuti" value="{{ old('alamat_cuti') }}">
                        <!-- error message untuk title -->
                        @error('title')
                            <div class="alert alert-danger mt-2">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold">Tanggal SK</label>
                        <input type="date" class="form-control @error('title') is-invalid @enderror"
                            name="tanggal_sk" value="{{ old('tanggal_sk') }}">
                        <!-- error message untuk title -->
                        @error('title')
                            <div class="alert alert-danger mt-2">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold">Nomor SK</label>
                        <input type="text" class="form-control @error('title') is-invalid @enderror" name="nomor_sk"
                            value="{{ old('nomor_sk') }}">
                        <!-- error message untuk title -->
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

    $("#modal-default").modal('show');

    function save() {
        $.ajax({
            url: "{{ route('cuti.store') }}",
            type: "POST",
            data: $('#form_value').serialize(),
            dataType: 'json',
            success: function(res) {
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
            }
        })
    };
</script>
