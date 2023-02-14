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
            Kepanitian
            <small>Attendances Event Apps</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="index-user.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active">Kepanitiaan</li>
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
                  <h3 class="box-title">Kepanitian</h3>
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
  <h1>Sambutan Ketua Panitia</h1>
  <!-- <h2><small style="color:lightblue">Rakernas 2023</small></h2> -->
  <!-- <p style="text-align:justify">Sesuai ketentuan Anggaran Dasar Perusahaan yang ditetapkan melalui Akta Notaris Nanda Fauz Iwan SH M.Kn No. 16 tanggal 19 November 2014, PT Pesonna Optima Jasa telah menyusun Rencana Kerja dan Anggaran Perusahaan (RKAP) Tahun 2023 yang memuat sasaran dan program kerja serta proyeksi keuangan dalam tahun 2023.</p></br>
  <p style="text-align:justify">Dengan telah disusunnya Rencana Kerja Anggaran Perusahaan (RKAP) tahun 2023, maka perlu dilakukan Rapat Kerja Nasional untuk menyamakan strategi agar target RKAP 2023 dapat terealisasi dengan baik. Dimana Langkah strategi tersebut merupakan breakdown dari target RKAP secara korporate ke masing-masing dari management & Perwakilan yang dituangkan dalam kontrak management.</p><br/>
  <p style="text-align:justify">Rapat kerja Nasional tersebut merupakan agenda rutin yang dilakukan PT Pesonna Optima Jasa untuk mengkonsolidasikan kekuatan internal yang ada agar target RKAP 2023 dapat dicapai dengan hasil maksimal.</p><br/>
  <p style="text-align:justify">Dari Hal tersebut diatas, maka perlu dibuat Panitia, Susunan Acara, Peserta Acara, dan Anggaran Biaya yang tertuang dalam proposal ini.  Adapun Pelaksanaan Rakernas tersebut akan dilaksanakan pada :</p><br/> -->
  <!-- // Kata Sambutan -->
  <p style="text-align:justify">Yth. Direktur Keuangan & Manajemen Risiko PT Pegadaian  selaku wakil Pemegang Saham  ( Bp Ferdian Timur S ).</p>
  <p style="text-align:justify">Yth. Komisaris PT POJ ( Bp Alfian Noor ).</p>
  <p style="text-align:justify">Yth. Direktur Utama PT POJ ( Agus Priyabodo ).</p>
  <p style="text-align:justify">Yth. Direktur POJ ( Yul Afian ).</p>
  <p style="text-align:justify">Yth. Komite Auidit ( Bp Nur Djunaedi ).</p>
  <p style="text-align:justify">Assalamualaikum Wr Wb.<br/>Om Suastiastu<br/>Namo Budayo<br/>Salam kebajikan</p><br/>
  <!-- <p>
    <table class="center table-responsive table-hover table-bordered" style="width:80%; height:100%; border:0px solid transparent;">
      <thead>
        <tr>
          <th>Hari/Tanggal</th>
          <th>: </th>
          <th> Senin – Jumat / 6-10 Februari 2023</th>
        </tr>
        <tr>
          <th>Jam</th>
          <th>: </th>
          <th> 19.00 wib s.d Selesai</th>
        </tr>
        <tr>
          <th>Tempat</th>
          <th>: </th>
          <th> Hotel Santika Semarang</th>
        </tr>
        <tr>
          <th>Acara</th>
          <th>: </th>
          <th> Rakernas PT POJ Tahun 2023</th>
        </tr>
        <tr>
          <th>Peserta</th>
          <th>: </th>
          <th> Management Kantor Pusat, Regional Manager, Area Manager & Marketing Eksekutif</th>
        </tr>
        
      </thead>

      <tbody>
        
      </tbody>
    </table>
  </p> -->
  <p style="text-align:justify">Marilah kita panjat puji syukur ke Tuhan Yang Maha Esa, atas berkatnya kita semua bisa mengikuti Acara Rapat Kerja Nasional PT POJ Tahun 2023 dalam kondisi sehat walafiat.</p><br/>
  <p style="text-align:justify">Bpk Ibu yang saya hormati, Tahun 2022 telah kita lewati  dengan baik, walaupun dalam kondisi pandemi perusahaan kita   mampu mencapai  Raihan kinerja yang lebih baik dibanding tahun 2021, Tahun 2023 ini kita ingin mencapai kinerja yang lebih baik lagi dibanding tahun 2022 sehingga tidak berlebihan tema rakernas tahun 2023 adalah <b><i>“Sustainable Growth and Become Stronger”</i></b>.</p><br/>
  <p style="text-align:justify">Bapak Ibu, Acara Rakernas diadakan untuk  melakukan evaluasi atas apa yang telah dicapai ditahun 2022 dan menjabarkan inisiatif strategi dan program kerja untuk mencapai target-target 2023 sehingga terbentuk  pemahaman yang sama untuk merealisasikannya.</p><br/>
  <p style="text-align:justify">Perlu juga dilaporkan bahwa Rakernas ini diikuti oleh seluruh pejabat POJ di Pusat dan Daerah sebanyak 51 Peserta yang teridiri dari Direksi, Ka SPI, General Manajer, Manajer, Asisten Manajer, Regional Manajer, Area Manajer dan Marketing Excekutif seluruh Indonesia. Sehingga dengan keikutsertaan bapak ibu diharapkan akan lebih memeberikan motivasi dalam mendukung program-program perusahaan.</p><br/>
  <p style="text-align:justify">Akhirnya  tanpa Kerjasama semua elemen acara ini tidak dapat terselenggara dengan baik, utk itu kami mengucapkan terimakasih kepada seluruh tim panitia yang telah menyiapkan acara ini jauh hari, , Hotel Santika  yang telah membantu dalam penyediaan tempat dan Bapak Direksi POJ atas arahan nya.</p><br/>
  <p style="text-align:justify">Kepada  Bpk Direktur Keuangan & Manajemen Risiko  PT Pegadaian Bp Ferdian Timur S  dan   Komisaris POJ , Bpk Alfian Noor  kami mengucapakan terimakasih atas kehadirannya.</p><br/>
  <p style="text-align:justify">Demikian sambutan saya selaku panitia, mohon maaf jika ada kata-kata dan pelayanan selama Rakernas ini yang kurang berkenan, akhir kata selamat melaksanakan Rakernas POJ tahun 2023.</p><br/>
  <br/>
  <p style="text-align:justify">Selamat Pagi.<br/>Wassalamualaikum Wr Wb.</p><br/>
</div>

<br/>
<br/>

<div>
  <h1>Susunan Kepanitian</h1>
  <table class="center table-responsive table-hover table-bordered" style="width:80%; height:100%">
      <thead>
        <tr>
          <th width="1%" style="text-align:center;">No</th>
          <th width="10%" style="text-align:center;">Kepanitian</th>
          <th width="12%" style="text-align:center;">Nama</th>
          <!-- <th width="33%" style="text-align:center;">Jobdesk</th> -->
          <th width="12%" style="text-align:center;">Kontak</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <!-- <?php $no=0; $no++; ?> -->
          <td style="text-align:center;">1</td>
          <td>Stering Comitee</td>
          <td>Direksi</td>
          <!-- <td>Membuat & menentukan Arah, Sasaran, serta tujuan Pelaksanaan Event</td> -->
          <td></td>
        </tr>
        <tr>
          <td style="text-align:center;">2</td>
          <td>Ketua</td>
          <td>I Wayan Sukerata</td>
          <!-- <td>Memimpin dan mengkoordinasikan seluruh acara Rakernas</td> -->
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281293867494&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td rowspan="3" style="text-align:center;">3</td>
          <td  rowspan="3">Kesekretariatan</td>
          <td>Sariffudin</td>
          <!-- <td  rowspan="3">Membuat SK Pembentukan Tim,Membuat Undangan Peserta & tamu Raker, Membuat Kontrak Management dan absensi acara per hari</td> -->
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6285710858940&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Andri Prayogo</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6285311756611&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Zulfikar Rizki</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281585048294&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td style="text-align:center;">4</td>
          <td>Bendara</td>
          <td>Juniarto P. Sinaga</td>
          <!-- <td>Membuat Anggaran Raker dan Pengelolaan biaya raker sesuai dengan peruntukannya</td> -->
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6282250233467&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td rowspan="2" style="text-align:center;">5</td>
          <td  rowspan="2">Notulen</td>
          <td>Syamsul Jauhari</td>
          <!-- <td  rowspan="2">Mengumpulkan materi pembicara, Share issue ke perwakilan dan membuat Notulen</td> -->
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281286076848&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Nurhadi</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281222201032&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td rowspan="5" style="text-align:center;">6</td>
          <td  rowspan="5">Seksi Acara</td>
          <td>Lucia Retna Widarti</td>
          <!-- <td  rowspan="5">Membuat Susunan Acara & Teknis Acara, Mempersiapkan Materi Acara dan penentuan peserta acara</td> -->
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=628111774461&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Uus Yuswandhika</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281703217154&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Ricky Mardianto</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281317744593&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Hana Ragil Ayu Asmara</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281222206742&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Rd. Eka</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6289698283389&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td rowspan="5" style="text-align:center;">7</td>
          <td  rowspan="5">Seksi Akomodasi, Perlengkapan & Transportasi</td>
          <td>Dodik Sugeng Haryadi</td>
          <!-- <td  rowspan="5">Mempersiapkan Hotel Untuk kegiatan Rakernas, Mempersiapkan perlengkapan dan akomodasi acara rakernas</td> -->
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6282135014949&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Antonius Eka W.</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6282249519927&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Ari Wiguna</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6289528295900&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Doddy Kurnia P</td>
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6285697579538&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
        <tr>
          <td>Agustinus Tomi A</td>
          <!-- <td style="text-align:center;">01<br/><a href="https://api.whatsapp.com/send?phone=628&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td> -->
          <td style="text-align:center;"><a href="https://api.whatsapp.com/send?phone=6281225878151&text=Rakernas-2023%"><i class="fa fa-whatsapp"></i> Hubungi via whatsapp</a></td>
        </tr>
      </tbody>
  </table>
</div>

<br/>
<br/>
<br/>
<br/>

<div  style="text-align:center">
<p>
          <h4>Panitia Rakernas 2023</h4>
          <img src="../dist/img/id.png" id="rz" style="width:180px; height:60px">
          <!-- <h4>Panitia Rapat Kerja Nasional<br/>PT Pesonna Optima Jasa Tahun 2023</h4> -->
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
