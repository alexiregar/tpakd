<?php
require_once "parser-php-version.php";
// panggil fungsi validasi xss dan injection
require_once('fungsi_validasi.php');

// definisikan koneksi ke database
$server = "localhost";
$username = "root";
$password = "";
$database = "u5449168_tpakd1";

$base_url = "http://localhost/tpakd.padanglawasutarakab.go.id/";

// Koneksi dan memilih database di server
mysql_connect($server,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Database tidak bisa dibuka");

// buat variabel untuk validasi dari file fungsi_validasi.php
$val = new SKPDLotimvalidasi;
?>
