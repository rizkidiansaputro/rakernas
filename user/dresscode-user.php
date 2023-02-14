<?php include "session-user.php"; ?>
<!DOCTYPE html>
<html>
 <?php include "../global-templates/head.php" ?>
  </head>
  <body class="hold-transition skin-green-light sidebar-mini">
    <div class="wrapper">

      <?php include "../global-templates/header.php"; ?>
      <!-- Left side column. contains the logo and sidebar -->
      <?php include "menu-user.php"; ?>

<?php include "../global-templates/waktu-session.php"; ?>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dresscode Tambahan
            <small>Attendances Event Apps</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="index-user.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active">Dresscode Tambahan</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Main row -->
          <div class="row">
            <!-- Left col -->
            <section class="col-lg-12 connectedSortable">

              <!-- TO DO List -->
              <div class="box box-primary">
                <div class="box-header">
                  <i class="ion ion-clipboard"></i>
                  <h3 class="box-title">Dresscode Tambahan</h3>
                  <div class="box-tools pull-right">
                  </div> 
                </div><!-- /.box-header -->
                
                <div class="box-body">
                <?php
             if(isset($_GET['aksi']) == 'delete'){
				$id = $_GET['id'];
				$cek = mysqli_query($koneksi, "SELECT * FROM karyawan WHERE nip='$id'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data tidak ditemukan.</div>';
				}else{
					$delete = mysqli_query($koneksi, "DELETE FROM karyawan WHERE nip='$id'");
					if($delete){
						echo '<div class="alert alert-primary alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data berhasil dihapus.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data gagal dihapus.</div>';
					}
				}
			}
			?>
                <!-- <form action='admin.php' method="POST">
          
	       <input type='text' class="form-control" style="margin-bottom: 4px;" name='qcari' placeholder='Cari berdasarkan User ID dan Username' required /> 
           <input type='submit' value='Cari Data' class="btn btn-sm btn-primary" /> <a href='admin.php' class="btn btn-sm btn-success" >Refresh</i></a>
          	</div>
            </form>-->
            <!-- <a href="karyawan_importxls.php" class="btn btn-sm btn-warning"><i class="fa fa-file"></i> Import Excel</a>  -->
            <!-- <a href="peserta_exportxls.php" class="btn btn-sm btn-success"><i class="fa fa-file"></i> Export Excel</a><br /><br /> -->
  
<!-- <table id="lookup" class="table table-bordered table-hover">   -->

<div>
  <h1>Dresscode Rakernas 2023</h1>
  <table class="center table-responsive table-hover table-bordered" style="width:80%; height:100%">
      <thead>
        <tr>
          <th width="1%" style="text-align:center;">No</th>
          <th width="30%" style="text-align:center;">Hari</th>
          <th width="70%" style="text-align:center;">Dresscode</th>
          <!-- <th width="15%" style="text-align:center;">Keterangan</th> -->
          <!-- <th width="12%" style="text-align:center;">Kontak</th> -->
        </tr>
      </thead>

      <tbody>
        <tr>
          <!-- <?php $no=0; $no++; ?> -->
          <td style="text-align:center;">1</td>
          <td>Selasa, 07 Februari 2023</td>
          <td style="text-align:center;"><br/><img src="../global-data/rundown-image/7 Feb, Pakain Hari Selasa.jpeg" style="width:250px; height:250px;"><br/></td>
          <!-- <td style="text-align:center;"><a href="https://goo.gl/maps/oGnaadUsVBNMLkhUA"><i class="fa fa-map"> Click go to Maps</i></a></td> -->
          <!-- <td>Membuat & menentukan Arah, Sasaran, serta tujuan Pelaksanaan Event</td> -->
          <!-- <td></td> -->
        </tr>
        <tr>
          <td style="text-align:center;">2</td>
          <td>Rabu, 08 Februari 2023</td>
          <td style="text-align:center;"><br/><img src="../global-data/rundown-image/8 Feb, Pakaian Hari Rabu.png" style="width:250px; height:250px;"><br/></td>
          <!-- <td style="text-align:center;"><a href="https://www.google.com/maps/place/Restoran+Kampung+Laut+Semarang/@-6.962044,110.3860703,15z/data=!4m5!3m4!1s0x0:0x34e7dea74586cb2c!8m2!3d-6.9620039!4d110.386065"><i class="fa fa-map"> Click go to Maps</i></a></td> -->
          <!-- <td>Memimpin dan mengkoordinasikan seluruh acara Rakernas</td> -->
          <!-- <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281293867494&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td> -->
        </tr>
        <tr>
          <td style="text-align:center;">3</td>
          <td>Kamis, 09 Februari 2023</td>
          <td style="text-align:center;"><br/><img src="../global-data/rundown-image/9 Feb, Pakaian Hari Kamis.png" style="width:250px; height:250px;"><br/></td>
          <!-- <td style="text-align:center;"><a href="https://goo.gl/maps/UtjLjVTzPBVaada87"><i class="fa fa-map"> Click go to Maps</i></a></td> -->
          <!-- <td>Memimpin dan mengkoordinasikan seluruh acara Rakernas</td> -->
          <!-- <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281293867494&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td> -->
        </tr>
      </tbody>
  </table>
</div>

<br/>
<br/>
<br/>
<br/>

<!-- <div  style="text-align:center">
 <p>
          <h4>Panitia Rakernas 2023</h4>
          <img src="../dist/img/id.png" id="rz" style="width:180px; height:60px">
           <h4>Panitia Rapat Kerja Nasional<br/>PT Pesonna Optima Jasa Tahun 2023</h4>
        </p>
</div>

<!-- <div class="scroller box-body"> -->
                  <!-- <php
                    // $query1="select kehadiran.*, peserta.* from kehadiran, peserta where kehadiran.nik=peserta.nip AND kehadiran.status='Hadir' AND kehadiran.tanggal BETWEEN '$tgl_awal_raker' AND '$tgl_akhir_raker' ORDER BY tanggal DESC, waktu DESC ";
                    $query1="select peserta.* from peserta ORDER BY sequence ASC";
                    $tampil=mysqli_query($koneksi, $query1) or die(mysqli_error());
                  ?> -->
<!-- <table id="example" class="table table-responsive table-hover table-bordered">  
	<thead bgcolor="eeeeee" align="center">
                    <tr>
                      <th colspan="3"><center>Data Pegawai</center></th>
                      <th colspan="2"><center>Kamar</center></th>
                    </tr>
      <tr>
       <th style="text-align:center">NIP</th>
	     <th style="text-align:center">Nama</th>
	     <th style="text-align:center">Jabatan</th>
       <th style="text-align:center">Type Kamar</th>
       <th style="text-align:center">Nomor Kamar</th>
      </tr>
    </thead>
                    <?php 
                     //$no=0;
                     while($data=mysqli_fetch_array($tampil))
                    { //$no++; ?>
    <tbody>
    <tr>
                    <td><center><?php echo $data['nip'];?></center></td>
                    <td><center><?php echo $data['nama'];?></center></td>
                    <td><center><?php echo $data['jabatan'];?></center></td>
                    <td><center><?php echo $data['type_kamar'];?> </center></td>
                    <td><center><?php echo $data['no_kamar'];?> </center></td>
                    </tr></div>
                 <?php   
              } 
                ?>
    </tbody>
  </table>   -->
                </div><!-- /.box-body -->
                <div class="box-footer clearfix no-border">
                  <!-- <a href="input-peserta-officer.php" class="btn btn-sm btn-default pull-right"><i class="fa fa-plus"></i> Tambah Peserta</a> -->
                  </div>
              </div><!-- /.box -->

            </section><!-- /.Left col -->
          </div><!-- /.row (main row) -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <?php include "../global-templates/footer.php"; ?>

      <?php include "../global-templates/sidecontrol.php"; ?>
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <!-- <div class="control-sidebar-bg"></div> -->
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
	  <!--<script type="text/javascript"> 

            $(function () {
                $("#lookup").dataTable({"lengthMenu":[25,50,75,100],"pageLength":25});
            });
  
   
        </script>-->
 <script>
        $(document).ready(function() {
				var dataTable = $('#lookup').DataTable( {
					"processing": true,
					"serverSide": true,
					"ajax":{
						// url :"ajax-data-peserta-officer.php", // json datasource
						url :"ajax-list-peserta-user.php", // json datasource
						type: "post",  // method  , by default get
						error: function(){  // error handling
							$(".lookup-error").html("");
							$("#lookup").append('<tbody class="employee-grid-error"><tr><th colspan="3">No data found in the server</th></tr></tbody>');
							$("#lookup_processing").css("display","none");
							
						}
					}
				} );
			} );
</script>

<!-- STYLE TABLE -->
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>

  </body>
</html>
