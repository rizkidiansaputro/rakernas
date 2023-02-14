<html>
<head>
<title>Attendances Event Apps | PT. Pesonna Optima Jasa</title>
<meta name="author" content="RDS"/>

<link rel="stylesheet" type="text/css" href="../dist/dataTables.bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="../dist/css/bootstrap.min.css"/>

<script src="../dist/sweetalert-dev.js"></script>
    <link rel="stylesheet" href="../dist/sweetalert.css">

</head>
<body>
<?php
include "../conn.php";
            $query_event = mysqli_query($koneksi, "SELECT * FROM event WHERE id='1'");
            $data_event  = mysqli_fetch_array($query_event);
            $event = $data_event['nama_event'];
            $tgl = $data_event['tanggal'];
            $tgl_awal_raker = ("2022-03-28");
            $tgl_akhir_raker = ("2022-03-31");
            ?>
    <h3><center>DAFTAR HADIR PESERTA</center></h3>
<h3><center><?php echo $data_event['nama_event']; ?>, <?php echo $data_event['tanggal']; ?> </center> </h3>
<h3><center><?php echo $data_event['lokasi']; ?></center></h3>

<div class="col-lg-12" style="margin-top: 40px;">
<?php
			date_default_timezone_set('Asia/Jakarta');
            
			if(isset($_POST['kode'])){
                $query_kehadiran = mysqli_query($koneksi, "SELECT * FROM kehadiran");
                $data_kehadiran = mysqli_fetch_array($query_kehadiran);
                $tgl2 = date("Y-m-d");

        $sql = mysqli_query($koneksi, "SELECT * FROM karyawan WHERE nik='$_POST[kode]'");
            if(mysqli_num_rows($sql) == 1){

		$sql = mysqli_query($koneksi, "SELECT * FROM kehadiran WHERE nik='$_POST[kode]' AND event='$event' AND tanggal='$tgl2' ") Or die (mysqli_error($koneksi));
			if(mysqli_num_rows($sql) == 0){
				
				$kode = $_POST['kode'];
				  $acara= $event;
		          $status = "Hadir";
		          $tanggal = date("Y-m-d");
                  $waktu = date("H:i:s");
				  
				$insert = mysqli_query($koneksi, "INSERT INTO kehadiran (nik, tanggal, waktu, event, status) VALUES ('$kode', '$tanggal', '$waktu', '$acara', '$status')") or die (mysqli_error($koneksi));
				if($insert){
					echo '<script>sweetAlert({
	                                                   title: "SUCCESS", 
                                                        text: "Terimakasih sudah hadir di Event Rakernas PT PESONNA OPTIMA JASA Tahun 2022", 
                                                        type: "success",
														timer : 4000
                                                        });</script>';
                }else{
					echo '<script>sweetAlert({
	                                                   title: "Gagal!", 
                                                        text: "Ups, Anda sudah terdaftar hadir!", 
                                                        type: "error",
														timer : 2000
                                                        });</script>';
                    }
				
                    
                }else{
                    echo '<script>sweetAlert({
                                                         title: "INFORMATION", 
                                                          text: "Anda sudah terdaftar absen!", 
                                                          type: "info",
                                                          timer : 2000
                                                          });</script>';
                  }

            }else{
                echo '<script>sweetAlert({
                                                           title: "FAILED", 
                                                              text: "Mohon Maaf Anda tidak terdaftar sebagai peserta Rakernas PT PESONNA OPTIMA JASA Tahun 2022", 
                                                              type: "warning",
                                  timer : 4000
                                                              });</script>';
              }
			
   }
			
			?>
            
            <form method="POST" name="update" action="absensi.php">
<center><input style="width:500px; height:75px; font-size: 25px;" name="kode" class="form-control" placeholder="Masukan NIK lalu tekan Enter untuk absen" onchange="this.form.submit();" autofocus="on" autocomplete="off" required="required"/></center>
</form>
</div>
<div class="col-lg-12" style="margin-top: 40px;">
<a href="index-user.php" class="btn btn-md btn-danger" style="margin-bottom : 5px;"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a> 
<!-- <a href="absensi_exportxls.php" class="btn btn-md btn-success" style="margin-bottom : 5px;"> <span class="glyphicon glyphicon-file"></span> Export Excel</a> -->
<?php
   $query1="select kehadiran.*, karyawan.* from kehadiran, karyawan where kehadiran.nik=karyawan.nik AND kehadiran.status='Hadir' AND kehadiran.event='$event' AND kehadiran.tanggal BETWEEN '$tgl_awal_raker' AND '$tgl_akhir_raker' ORDER BY kehadiran.nik ASC";
                    $tampil=mysqli_query($koneksi, $query1) or die(mysqli_error());
                    ?>
                  <table id="example" class="table table-hover table-bordered">
                  <thead>
                      <tr>
                        <th><center>No <i class="fa fa-sort"></i></center></th>
                        <th><center>Tanggal <i class="fa fa-sort"></i></center></th>
                        <th><center>Jam <i class="fa fa-sort"></i></center></th>
                        <th><center>NIK <i class="fa fa-sort"></i></center></th>
						<th><center>Nama <i class="fa fa-sort"></i></center></th>
                        <th><center>Event <i class="fa fa-sort"></i></center></th>
                        <th><center>Status<i class="fa fa-sort"></i></center></th>
                      </tr>
                  </thead>
                     <?php 
                     $no=0;
                     while($data=mysqli_fetch_array($tampil))
                    { $no++; ?>
                    <tbody>
                    <tr>
                    <td><center><?php echo $no; ?></center></td>
                    <td><?php echo $data['tanggal'];?></td>
                    <td><?php echo $data['waktu'];?></td>
                    <td><?php echo $data['nik'];?></td>
					<td><?php echo $data['nama'];?></td>
                    <td><?php echo $data['event'];?></td>
                     <td><?php echo $data['status'];?></td>
                    </tr>
                 <?php   
              } 
              ?>
                   </tbody>
                   </table>  
  </div>
  <!-- <center><a href="total.php" class="btn btn-sm btn-warning"><span class="glyphicon glyphicon-list"></span> Kehadiran</a> <a href="index.php" class="btn btn-sm btn-primary"><span class="glyphicon glyphicon-chevron-left"></span> Kembali</a></center> -->
  
  <!-- Javascript Libs -->
            <script type="text/javascript" src="../dist/jquery-2.1.1.js"></script>
            <script type="text/javascript" src="../dist/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="../dist/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript" src="../dist/js/bootstrap.min.js"></script>
            
            
            <script>
        $(document).ready(function() {
				var dataTable = $('#lookup').DataTable( {
					"processing": true,
					"serverSide": true,
					"ajax":{
						url :"ajax-grid-data.php", // json datasource
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
</body>
</html>