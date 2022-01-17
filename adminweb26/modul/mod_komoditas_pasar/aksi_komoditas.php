<?php
session_start();
// Apabila user belum login
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<script>alert('Untuk mengakses modul, Anda harus login dulu.'); window.location = '../../index.php'</script>";
}
// Apabila user sudah login dengan benar, maka terbentuklah session
else{
  include "../../../config/koneksiadmin.php";
  include "../../../config/library.php";
  include "../../../config/fungsi_seo.php";
  include "../../../config/fungsi_thumb.php";

  $module = $_GET['module'];
  $act    = $_GET['act'];

  // Hapus halaman statis
  if ($module=='komoditas' AND $act=='hapus'){
    mysqli_query($konek, "DELETE FROM komoditas WHERE id_komoditas = '$_GET[id]'");
    header("location:../../media.php?module=".$module);
  }

  // Input halaman statis
  elseif ($module=='komoditas' AND $act=='input'){
      mysqli_query($konek, "INSERT INTO komoditas (nama_komoditas, satuan) VALUES ('$_POST[judul]', '$_POST[satuan]')");
      header("location:../../media.php?module=".$module);
  }

  // Update halaman statis
  elseif ($module=='komoditas' AND $act=='update'){
      mysqli_query($konek, "UPDATE komoditas SET nama_komoditas = '$_POST[judul]', satuan = '$_POST[satuan]' WHERE id_komoditas = '$_POST[id]'");
      header("location:../../media.php?module=".$module);
  }
}
?>
