<?php
include "session-officer.php";
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=data-kehadiran-peserta-rakernas-2022.xls");
 
																  
											//	$sql = mysqli_query($koneksi, "SELECT * FROM t_inventoryitems WHERE f_partcode='$id'");
		
			?>
	  
 
	<h3>Data Kehadiran Peserta <br />
		<small>Rapat Kerja Nasional PT PESONNA OPTIMA JASA Tahun 2022</small>
	</h3>
	  
	<!-- <table>
	
			<tr>
			 <td width="0px">Plant :</td>  <td><?php //echo $plantname ?></td> 
			 <td width="0px">From : <?php //echo date("d-m-Y",strtotime($_GET['date1'])) ?></td>  
			 <td width="0px">Until : <?php //echo date("d-m-Y",strtotime($_GET['date2'])) ?></td> 
			 
		 </tr>
	</table>-->	
    <table>
	
			<tr>
			
			 <td width="0px">Tanggal : <?php echo date("d-m-Y") ?></td>  
			 
			 
		 </tr>
	</table>	
		 
		<table bordered="1">  
			<thead bgcolor="eeeeee" align="center">
			  <tr bgcolor="eeeeee" >
       <th>No</th>
       <th>Tanggal</th>
       <th>Jam</th>
       <th>NIK</th>
	     <th>Nama</th>
       <th>Event</th>
       <th>Status</th>
			  </tr>
			</thead>
			<tbody>
	 	
					
		</tbody>

		</div>
    </div>
</div>
   <?php
	//query menampilkan data
	$sql = mysqli_query($koneksi, "SELECT kehadiran.tanggal, kehadiran.waktu, kehadiran.nik, kehadiran.event, kehadiran.status, karyawan.nik, karyawan.nama FROM kehadiran, karyawan WHERE kehadiran.nik=karyawan.nik");
	$no = 1;
	while($rowshow = mysqli_fetch_assoc($sql)){
		echo '
		<tr>
			<td>'.$no.'</td>
			<td>'.$rowshow['tanggal'].'</td>
			<td>'.$rowshow['waktu'].'</td>
			<td>'.$rowshow['nik'].'</td>
			<td>'.$rowshow['nama'].'</td>
			<td>'.$rowshow['event'].'</td>
			<td>'.$rowshow['status'].'</td>
		</tr>
		';
		$no++;
	}			
					 ?>
  </table>   