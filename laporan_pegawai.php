<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LAPORAN DATA PEGAWAI</title>
<link rel="stylesheet" href="css/print.css" type="text/css"  />
</head>
<style>
@media print {
input.noPrint { display: none; }
}
</style>
<body class="body">
<div id="wrapper">
<?php
include "config/koneksi.php";

include "config/fungsi_indotgl.php";
include "config/class_paging.php";
include "config/kode_auto.php";
include "config/fungsi_combobox.php";
include "config/fungsi_nip.php";
$tampil=mysqli_query($conn,"sELECT pensiun.tanggal_pensiun, pegawai.id_pegawai, pegawai.nama_pegawai, pegawai.biodata, pegawai.jabatan,pegawai.password, pegawai.status FROM pensiun
INNER JOIN pegawai ON pegawai.id_pegawai=pensiun.id_pegawai;");
	echo "<h2 class='head'>LAPORAN DATA PEGAWAI</h2>
	<table class='tabel'>
	<thead>
  <tr>
	<td>ID Pegawai</td>
	<td>Nama Pegawai</td>
    <td>Biodata</td>
	<td>Password</td>
	<td>Jabatan</td>
	<td>Status</td>
  <td>Tanggal Pensiun</td>
  </tr>
  </thead>";
  while($dt=mysqli_fetch_array($tampil)){
  echo "<tr>
    <td>$dt[id_pegawai]</td>
    <td>$dt[nama_pegawai]</td>
        <td>$dt[biodata]</td>
    <td>$dt[password]</td>
        <td>$dt[jabatan]</td>
    <td>$dt[status]</td>
    <td>$dt[tanggal_pensiun]</td>
  </tr>";
  }
echo "  
</table>

	";
	?>
	<div style="text-align:center;padding:20px;">
	<input class="noPrint" type="button" value="Cetak Halaman" onclick="window.print()">
	</div>
</div>
</body>
</html>
