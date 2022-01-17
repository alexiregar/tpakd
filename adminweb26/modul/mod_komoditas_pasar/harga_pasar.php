<?php
session_start();
// Apabila user belum login
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])){
	echo "<script>alert('Untuk mengakses modul, Anda harus login dulu.'); window.location = '../../index.php'</script>";
}
// Apabila user sudah login dengan benar, maka terbentuklah session
else{
  $aksi = "modul/mod_komoditas_pasar/aksi_harga_pasar.php";

  // mengatasi variabel yang belum di definisikan (notice undefined index)
  $act = isset($_GET['act']) ? $_GET['act'] : '';  
?>
	<section class="content-header">
		<h1>Harga Pasar</h1>
		<ol class="breadcrumb">
            <li><a class="btn btn-warning btn-sm" href="?module=harga_pasar&act=tambahhargapasar"><i class="fa fa-plus"></i>Tambah Harga Pasar</a></li>
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
                        <th>Nama Pasar</th>
                        <th>Harga</th>
                        <th>Tanggal</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
					<?php
					$query  = "SELECT * FROM harga_pasar INNER JOIN komoditas ON harga_pasar.id_komoditas = komoditas.id_komoditas INNER JOIN pasar ON harga_pasar.id_pasar = pasar.id_pasar ORDER BY id DESC";
					$tampil = mysqli_query($konek, $query);
					$no=1;
					while ($r=mysqli_fetch_array($tampil)){  
						echo "<tr><td>$no</td>
							<td>$r[nama_komoditas]</td>
							<td>$r[nama_pasar]</td>
							<td>Rp $r[harga]</td>
							<td>$r[tanggal]</td>
							<td align=\"center\"><a href=\"?module=harga_pasar&act=edithargapasar&id=$r[id]\" title=\"Edit Data\"><i class=\"fa fa-pencil\"></i></a> &nbsp; 
							<a href=\"$aksi?module=harga_pasar&act=hapus&id=$r[id]\" onclick=\"return confirm('APAKAH ANDA YAKIN AKAN MENGHAPUS HALAMAN INI ?')\" title=\"Hapus Data\"><i class=\"fa fa-trash text-red\"></i></a></td>
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
	
	case "tambahhargapasar":
?>
			<div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">Tambah Harga Pasar</h3>
                </div><!-- /.box-header -->
                <form method="POST" action="<?php echo $aksi; ?>?module=harga_pasar&act=input" class="form-horizontal" enctype="multipart/form-data">
					<div class="box-body">
                    <div class="form-group">
							<label for="pasar" class="col-sm-2 control-label">Nama Pasar</label>
							<div class="col-sm-10">
                                <select name="pasar" class="form-control" required>
                                    <option value="">Pilih Pasar</option>
                                    <?php 
                                        $pasar = mysqli_query($konek, "SELECT * FROM pasar ORDER BY id_pasar DESC");
                                        while($p = mysqli_fetch_array($pasar)){
                                            echo "<option value='$p[id_pasar]'>$p[nama_pasar]</option>";
                                        }
                                    ?>
                                </select>
							</div>
						</div>
                        
						<div class="form-group">
							<label for="komoditas" class="col-sm-2 control-label">Nama Komoditas</label>
							<div class="col-sm-10">
                                <select name="komoditas" class="form-control" required>
                                    <option value="">Pilih Komoditas</option>
                                    <?php 
                                        $pasar = mysqli_query($konek, "SELECT * FROM komoditas ORDER BY id_komoditas DESC");
                                        while($p = mysqli_fetch_array($pasar)){
                                            echo "<option value='$p[id_komoditas]'>$p[nama_komoditas]</option>";
                                        }
                                    ?>
                                </select>
							</div>
						</div>
                        
                        <div class="form-group">
							<label for="judul" class="col-sm-2 control-label">Tanggal</label>
							<div class="col-sm-10">
								<input type="date" class="form-control" id="tanggal" name="tanggal" required/>
							</div>
						</div>
                        <div class="form-group">
							<label for="judul" class="col-sm-2 control-label">Harga</label>
							<div class="col-sm-10">
								<input type="number" class="form-control" id="harga" name="harga" required/>
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
	
	case "edithargapasar":
      $query = "SELECT * FROM harga_pasar WHERE id='$_GET[id]'";
      $hasil = mysqli_query($konek, $query);

      $r = mysqli_fetch_array($hasil);
?>
			<div class="box">
                <div class="box-header with-border">
                  <h3 class="box-title">Edit Komoditas</h3>
                </div><!-- /.box-header -->
                <form method="POST" action="<?php echo $aksi; ?>?module=harga_pasar&act=update" class="form-horizontal" enctype="multipart/form-data">
					<input type="hidden" name="id" value="<?php echo $r['id']; ?>" />
					<div class="box-body">
                        <div class="form-group">
							<label for="pasar" class="col-sm-2 control-label">Nama Pasar</label>
							<div class="col-sm-10">
                                <select name="pasar" class="form-control" required>
                                    <option value="">Pilih Pasar</option>
                                    <?php 
                                        $pasar = mysqli_query($konek, "SELECT * FROM pasar ORDER BY id_pasar DESC");
                                        while($p = mysqli_fetch_array($pasar)){
                                            $selected = '';
                                            if($p['id_pasar'] == $r['id_pasar']){
                                                $selected = 'selected';
                                            }
                                            echo "<option value='$p[id_pasar]' $selected>$p[nama_pasar]</option>";
                                        }
                                    ?>
                                </select>
							</div>
						</div>
                        <div class="form-group">
							<label for="komoditas" class="col-sm-2 control-label">Nama Komoditas</label>
							<div class="col-sm-10">
                                <select name="komoditas" class="form-control" required>
                                    <option value="">Pilih Komoditas</option>
                                    <?php 
                                        $pasar = mysqli_query($konek, "SELECT * FROM komoditas ORDER BY id_komoditas DESC");
                                        while($p = mysqli_fetch_array($pasar)){
                                            $selected = '';
                                            if($p['id_komoditas'] == $r['id_komoditas']){
                                                $selected = 'selected';
                                            }
                                            echo "<option value='$p[id_komoditas]' $selected>$p[nama_komoditas]</option>";
                                        }
                                    ?>
                                </select>
							</div>
						</div>
                        <div class="form-group">
							<label for="judul" class="col-sm-2 control-label">Tanggal</label>
							<div class="col-sm-10">
								<input type="date" class="form-control" value="<?= $r['tanggal'] ?>" id="tanggal" name="tanggal" required/>
							</div>
						</div>
                        <div class="form-group">
							<label for="judul" class="col-sm-2 control-label">Harga</label>
							<div class="col-sm-10">
								<input type="number" class="form-control" value="<?= $r['harga'] ?>" id="harga" name="harga" required/>
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