@extends('layout.main')

@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Paperless</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-6">
                        <div class="card card-primary card-outline">
                            <div class="card-body box-profile">
                                <div class="text-center">
                                    <img class="profile-user-img img-fluid img-circle"
                                        src="{{ asset('uploads/pegawai').'/'.$pegawais->pegawai_nip }}.jpg" alt="User profile picture">
                                </div>
                                <h3 class="profile-username text-center">{{ $pegawais->pegawai_name }}</h3>
                                <p class=" text-center">{{ $pegawais->jabatan_name }}</p>
                                <ul class="list-group list-group-unbordered mb-3">
                                    <li class="list-group-item">
                                        <b>NIP</b> <a class="float-right">{{ $pegawais->pegawai_nip }}</a>
                                    </li>
                                    <li class="list-group-item">
                                        <b>Golongan Ruang</b> <a class="float-right">{{ $pegawais->golru_name.' ('.$pegawais->golru_code.')' }}</a>
                                    </li>
                                    <li class="list-group-item">
                                        <b>OPD</b> <a class="float-right">{{ $pegawais->opd_name }}</a>
                                    </li>
                                </ul>
                            </div>

                        </div>


                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">File Paperless</h3>
                                <div class="card-tools">
                                  <button type="button" class="btn btn-sm btn-success" onclick="add()">
                                    <i class="fas fa-upload"></i> Upload File
                                    </button>                   
                                  {{-- <button type="button" class="btn btn-tool" data-card-widget="remove">
                                  <i class="fas fa-times"></i>
                                  </button> --}}
                                  </div>
                            </div>

                            <div class="card-body">
                              <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Keterangan File</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                            </table>
                            </div>

                          </div>
                </div>
                <div class="col-6">
                    <div class="card card-primary">
                        <div class="card-header ">
                            <h3 class="card-title">Lihat Data</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <iframe id="lihat" src="" style="width: 100%; height: 710px;">

                            </iframe>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
</div>
<!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>

<script>
    $(document).ready(function () {
        var table = $('#example1').DataTable({
            processing: true,
            serverSide: true,
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": true,
            "responsive": true,
            ajax: "{{ url('/data-paperless/get-data').'/'.$pegawais->pegawai_id.'/' }}",
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex'
                },
                {
                    data: 'paperless_ket',
                    name: 'paperless_ket'
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: true,
                    searchable: true
                },
            ],
        });
    });

    function lihat_paperless(nama_file, pegawai_nip){
        $('#lihat').attr("src","{{ asset('uploads/paperless/') }}"+"/"+pegawai_nip+"/"+nama_file);
        // load();
    }
</script>

@endsection