<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SI KEBUT</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="./assets/css/adminlte.min.css">
  <link rel="stylesheet" href="./plugins/toastr/toastr.min.css">
  <script src="./plugins/jquery/jquery.min.js"></script>
  {{-- <script src="./plugins/bootstrap/js/bootstrap.bundle.min.js"></script> --}}
  
  <link rel="stylesheet" href="./plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="./plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="./plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <script src="./assets/js/adminlte.js"></script>
  <script src="./plugins/chart.js/Chart.min.js"></script>
  <script src="./assets/js/pages/dashboard3.js"></script>
  <script src="./plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="./plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="./plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="./plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="./plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="./plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="./plugins/jszip/jszip.min.js"></script>
  <script src="./plugins/pdfmake/pdfmake.min.js"></script>
  <script src="./plugins/pdfmake/vfs_fonts.js"></script>
  <script src="./plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="./plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="./plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
  <script src="./plugins/sweetalert2/sweetalert2.min.js"></script>
  <script src="./plugins/toastr/toastr.min.js"></script>
  
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
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
      <img src="assets/img/logoweb.png" alt="AdminLTE Logo" class="brand-image " style="opacity: .8">
      <span class="brand-text font-weight-bold">SI KEBUT</span>
    </a>
    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="assets/img/avatar4.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><b>{{ Session::get('email') }}</b></a>
        </div>
      </div>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <li class="nav-item">
            <a href="{{ url('') }}" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>Dashboard</p>
            </a>
          </li>
         
          <li class="nav-header">Master</li>
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-folder-open"></i>
              <p>Paperless Pegawai</p>
            </a>
          </li>
          <li class="nav-header">Proses</li>
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-folder"></i>
              <p>Kenaikan Gaji Berkala</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-folder"></i>
              <p>Usul Cuti Pegawai</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-folder"></i>
              <p>Usul Pensiun</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-folder"></i>
              <p>Usul Tugas Belajar</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-folder"></i>
              <p>Usul Kenaikan Pangkat</p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-folder"></i>
              <p>Usul Kartu Suami/Istri</p>
            </a>
          </li>
          <li class="nav-header">Settings</li>
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-cog"></i>
              <p>Golongan Ruang</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
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
          <li class="nav-item">
            <a href="{{ url('data-pirt') }}" class="nav-link">
              <i class="nav-icon fas fa-cog"></i>
              <p>Golongan Ruang</p>
            </a>
          </li>
          <li class="nav-header">Akun</li>
          <li class="nav-item">
            <a href="./index3.html" class="nav-link">
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
