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
  if ($module=='harga_pasar' AND $act=='hapus'){
    mysqli_query($konek, "DELETE FROM harga_pasar WHERE id = '$_GET[id]'");
    header("location:../../media.php?module=".$module);
  }

  // Input halaman statis
  elseif ($module=='harga_pasar' AND $act=='input'){
      mysqli_query($konek, "INSERT INTO harga_pasar (id_komoditas, id_pasar, harga, tanggal) VALUES ('$_POST[komoditas]', '$_POST[pasar]', '$_POST[harga]', '$_POST[tanggal]')");
      header("location:../../media.php?module=".$module);
  }

  // Update halaman statis
  elseif ($module=='harga_pasar' AND $act=='update'){
      mysqli_query($konek, "UPDATE harga_pasar SET id_komoditas = '$_POST[komoditas]', id_pasar = '$_POST[pasar]', harga = '$_POST[harga]', tanggal = '$_POST[tanggal]' WHERE id = '$_POST[id]'");
      header("location:../../media.php?module=".$module);
  }
}
?>
