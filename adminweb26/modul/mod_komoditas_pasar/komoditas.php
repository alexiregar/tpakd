<?php
session_start();
// Apabila user belum login
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<script>alert('Untuk mengakses modul, Anda harus login dulu.'); window.location = '../../index.php'</script>";
}
// Apabila user sudah login dengan benar, maka terbentuklah session
else{
  $aksi = "modul/mod_komoditas_pasar/aksi_komoditas.php";

  // mengatasi variabel yang belum di definisikan (notice undefined index)
  $act = isset($_GET['act']) ? $_GET['act'] : '';  
?>
	<section class="content-header">
		<h1>Komoditas</h1>
		<ol class="breadcrumb">
            <li><a class="btn btn-warning btn-sm" href="?module=komoditas&act=tambahkomoditas"><i class="fa fa-plus"></i>Tambah Komoditas</a></li>
        </ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
<?php

  switch($act){
    // Tampil Halaman Statis
    default:
?>
              <div class="box">
                <div class="box-body">
                  <table id="dataagenda" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama Komoditas</th>
                        <th>Satuan</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
					<?php
					$query  = "SELECT * FROM komoditas ORDER BY id_komoditas DESC";
					$tampil = mysqli_query($konek, $query);
					$no=1;
					while ($r=mysqli_fetch_array($tampil)){  
						echo "<tr><td>$no</td>
							<td>$r[nama_komoditas]</td>
							<td>$r[satuan]</td>
							<td align=\"center\"><a href=\"?module=komoditas&act=editkomotidas&id=$r[id_komoditas]\" title=\"Edit Data\"><i class=\"fa fa-pencil\"></i></a> &nbsp; 
							<a href=\"$aksi?module=komoditas&act=hapus&id=$r[id_komoditas]\" onclick=\"return confirm('APAKAH ANDA YAKIN AKAN MENGHAPUS HALAMAN INI ?')\" title=\"Hapus Data\"><i class=\"fa fa-trash text-red\"></i></a></td>
							</tr>";
						$no++;
					}
					?>
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
				<div class="box-footer">
                </div><!-- /.box-footer -->
              </div><!-- /.box -->
<?php
	break;
	
	case "tambahkomoditas":
?>
			<div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">Tambah Komoditas</h3>
                </div><!-- /.box-header -->
                <form method="POST" action="<?php echo $aksi; ?>?module=komoditas&act=input" class="form-horizontal" enctype="multipart/form-data">
					<div class="box-body">
						<div class="form-group">
							<label for="judul" class="col-sm-2 control-label">Nama Komoditas</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="judul" name="judul" required/>
							</div>
						</div>
						<div class="form-group">
							<label for="satuan" class="col-sm-2 control-label">Satuan</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="satuan" name="satuan" required/>
							</div>
						</div>
					</div><!-- /.box-body -->
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">Simpan</button> <button type="button" onclick="self.history.back()" class="btn">Batal</button>
					</div><!-- /.box-footer -->
				</form>
            </div><!-- /.box -->
<?php
	break;
	
	case "editkomotidas":
      $query = "SELECT * FROM komoditas WHERE id_komoditas='$_GET[id]'";
      $hasil = mysqli_query($konek, $query);

      $r = mysqli_fetch_array($hasil);
?>
			<div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">Edit Komoditas</h3>
                </div><!-- /.box-header -->
                <form method="POST" action="<?php echo $aksi; ?>?module=komoditas&act=update" class="form-horizontal" enctype="multipart/form-data">
					<input type="hidden" name="id" value="<?php echo $r['id_komoditas']; ?>" />
					<div class="box-body">
						<div class="form-group">
							<label for="judul" class="col-sm-2 control-label">Nama Komoditas</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="judul" name="judul" value="<?php echo $r['nama_komoditas']; ?>" />
							</div>
						</div>
						<div class="form-group">
							<label for="satuan" class="col-sm-2 control-label">Satuan</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="satuan" name="satuan" value="<?php echo $r['satuan']; ?>" />
							</div>
						</div>
					</div><!-- /.box-body -->
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">Update</button> <button type="button" onclick="self.history.back()" class="btn">Batal</button>
					</div><!-- /.box-footer -->
				</form>
              </div><!-- /.box -->
<?php
	break;
  }
?>
            </div><!-- /.col -->
		</div><!-- /.row -->
	</section><!-- /.section -->
<?php
}
?>