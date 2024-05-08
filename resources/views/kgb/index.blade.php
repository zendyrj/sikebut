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
                            <li class="breadcrumb-item active">kgb</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">

                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Data kgb</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-sm btn-success" onclick="add()">
                                        <i class="fas fa-plus"></i> Tambah Data
                                    </button>
                                    {{-- <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                    </button> --}}
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card-body -->
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
        $(document).ready(function() {
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
                ajax: "{{ url('/data-kgb/get-data') }}",
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'pegawai_name',
                        name: 'pegawai_name'
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


        function cetakSK(kgb_id) {
            event.preventDefault();
            $('#vmodal').load('{{ url('/kgb/view-sk/') }}' + '/' + kgb_id);
        }

        function add() {
            event.preventDefault();
            $('#vmodal').load('{{ route('kgb.create') }}');
        }


        function edit(kgb_id) {
            event.preventDefault();
            $("#vmodal").load("{{ url('kgb') }}/" + kgb_id + "/edit");
        }
    </script>
@endsection
