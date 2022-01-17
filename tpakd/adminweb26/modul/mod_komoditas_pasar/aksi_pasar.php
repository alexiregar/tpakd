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
  if ($module=='pasar' AND $act=='hapus'){
    mysqli_query($konek, "DELETE FROM pasar WHERE id_pasar = '$_GET[id]'");
    header("location:../../media.php?module=".$module);
  }

  // Input halaman statis
  elseif ($module=='pasar' AND $act=='input'){
      mysqli_query($konek, "INSERT INTO pasar (nama_pasar) VALUES ('$_POST[judul]')");
      header("location:../../media.php?module=".$module);
  }

  // Update halaman statis
  elseif ($module=='pasar' AND $act=='update'){
      mysqli_query($konek, "UPDATE pasar SET nama_pasar = '$_POST[judul]' WHERE id_pasar = '$_POST[id]'");
      header("location:../../media.php?module=".$module);
  }
}
?>
