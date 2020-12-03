<?php
include "config/koneksi.php";

include "config/fungsi_indotgl.php";
include "config/class_paging.php";
include "config/kode_auto.php";
include "config/fungsi_combobox.php";
include "config/fungsi_nip.php";

	if ($_SESSION['leveluser']=='3'){
		if($_GET['module']=="absensi"){
		include "modul/absensi/absensi.php";
		}
		else if($_GET['module']=="pegawai"){
		include "modul/pegawai/pegawai.php";
			}
	}
	
if ($_SESSION['leveluser']=='1'){
	if($_GET['module']=="absensi"){
	include "modul/absensi/absensi.php";
	}

	else if($_GET['module']=="pegawai"){
	include "modul/pegawai/pegawai.php";
	}

	else if($_GET['module']=="pelatihan"){
	include "modul/pelatihan/pelatihan.php";
	}
	else if($_GET['module']=="kjb"){
	include "modul/k_jabatan/k_jabatan.php";
	}
	else if($_GET['module']=="search"){
	include "modul/search/search.php";
	}
 }
 

?>