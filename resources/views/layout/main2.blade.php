<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SI KEBUT</title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="{{ asset('plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/adminlte.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/toastr/toastr.min.css') }}">

    <link rel="stylesheet" href="{{ asset('plugins/daterangepicker/daterangepicker.css') }}">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="{{ asset('plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="{{ asset('plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css') }}">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet"
        href="{{ asset('plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') }}">
    <!-- Select2 -->
    <link rel="stylesheet" href="{{ asset('plugins/select2/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
    <script src="{{ asset('plugins/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- Select2 -->
    <script src="{{ asset('plugins/select2/js/select2.full.min.js') }}"></script>
    <!-- Bootstrap4 Duallistbox -->
    <script src="{{ asset('plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js') }}"></script>
    <!-- InputMask -->
    <script src="{{ asset('plugins/moment/moment.min.js') }}"></script>
    <script src="{{ asset('plugins/inputmask/jquery.inputmask.min.js') }}"></script>
    <!-- date-range-picker -->
    <script src="{{ asset('plugins/daterangepicker/daterangepicker.js') }}"></script>
    <!-- bootstrap color picker -->
    <script src="{{ asset('plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js') }}"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="{{ asset('plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <!-- Bootstrap Switch -->
    <script src="{{ asset('plugins/bootstrap-switch/js/bootstrap-switch.min.js') }}"></script>
    <!-- BS-Stepper -->
    <script src="{{ asset('plugins/bs-stepper/js/bs-stepper.min.js') }}"></script>
    <!-- dropzonejs -->
    <script src="{{ asset('plugins/dropzone/min/dropzone.min.js') }}"></script>

    <link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
    <script src="{{ asset('assets/js/adminlte.js') }}"></script>
    <script src="{{ asset('plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/jszip/jszip.min.js') }}"></script>
    <script src="{{ asset('plugins/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ asset('plugins/pdfmake/vfs_fonts.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
    <script src="{{ asset('plugins/sweetalert2/sweetalert2.min.js') }}"></script>
    <script src="{{ asset('plugins/toastr/toastr.min.js') }}"></script>

</head>

<body class="hold-transition sidebar-mini">
    <div id="vmodal">

    </div>
    <div class="wrapper">
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i
                            class="fas fa-bars"></i></a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>

            </ul>
        </nav>
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <a href="{{ url('') }}" class="brand-link">
                <img src="{{ asset('login/images/logo.png') }}" alt="AdminLTE Logo" class="brand-image "
                    style="opacity: 1">
                <span class="brand-text font-weight-bold">SI KEBUT</span>
            </a>
            <div class="sidebar">
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="{{ asset('assets/img/avatar3.png') }}" class="img-circle elevation-2"
                            alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block"><b>{{ Session::get('email') }}</b></a>
                    </div>
                </div>
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">

                        <li class="nav-item">
                            <a href="{{ url('') }}" class="nav-link">
                                <i class="nav-icon fas fa-home"></i>
                                <p>Dashboard</p>
                            </a>
                        </li>

                        <li class="nav-header">Master</li>
                        <li class="nav-item">
                            <a href="{{ route('pegawai.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-folder-open"></i>
                                <p>Pegawai</p>
                            </a>
                        </li>
                        <li class="nav-header">Proses</li>
                        <li class="nav-item">
                            <a href="{{ route('kgb.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-folder"></i>
                                <p>Kenaikan Gaji Berkala</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('cuti.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-folder"></i>
                                <p>Usul Cuti Pegawai</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('pensiun.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-folder"></i>
                                <p>Usul Pensiun</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('tugasbelajar.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-folder"></i>
                                <p>Usul Tugas Belajar</p>
                            </a>
                        </li>
                        {{-- <li class="nav-item">
            <a href="{{ url('pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-folder"></i>
              <p>Usul Kenaikan Pangkat</p>
            </a>
          </li> --}}

                        <li class="nav-item">
                            <a href="{{ route('kariskarsu.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-folder"></i>
                                <p>Usul Kartu Suami/Istri</p>
                            </a>
                        </li>
                        <li class="nav-header">Settings</li>
                        <li class="nav-item">
                            <a href="{{ route('golru.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-cog"></i>
                                <p>Golongan Ruang</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('jabatan.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-cog"></i>
                                <p>Jabatan</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('opd.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-cog"></i>
                                <p>OPD</p>
                            </a>
                        </li>
                        <li class="nav-header">Akun</li>
                        <li class="nav-item">
                            <a href="{{ asset('index3.html') }}" class="nav-link">
                                <i class="nav-icon fas fa-key"></i>
                                <p>Ganti Password</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('signout') }}" class="nav-link">
                                <i class="nav-icon fas fa-arrow-left"></i>
                                <p>Logout</p>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        @yield('container')
        <aside class="control-sidebar control-sidebar-dark">
            <footer class="main-footer">
                <strong>Copyright &copy; 2023 DPMPTSP.</strong>
                All rights reserved.
            </footer>
    </div>
    <script>
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000
        });
    </script>
</body>

</html>
