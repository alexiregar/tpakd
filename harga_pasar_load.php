<?php
include './config/koneksi.php';
if(!isset($_GET['page'])){
?>
<table class="table table-striped">
    <tr>
        <th>#</th>
        <th>Nama Komoditas</th>
        <th>Satuan</th>
        <th>Harga Kemarin (Rp)</th>
        <th>Harga Hari Ini (Rp)</th>
    </tr>
    <?php 
    $id = '';

    if(isset($_GET['id'])){
        $id = $_GET['id'];
    }else{
        $pasar = mysql_query("SELECT * FROM pasar ORDER BY id_pasar DESC");
        $pas = mysql_fetch_array($pasar);
        
        if(count($pas) > 0){
            $id = $pas[0]['id_pasar'];
        }
    }
    $i = 0;
    $komoditas = mysql_query("SELECT * FROM komoditas ORDER BY id_komoditas DESC");
    while($k = mysql_fetch_array($komoditas)){
    $i++;

    $harga_hari_ini = ' -';
    $harga_kemarin = ' -';

    $harga_pasar = mysql_query("SELECT * FROM harga_pasar WHERE id_komoditas = '$k[id_komoditas]' && id_pasar = '$id'");
    while($hp = mysql_fetch_array($harga_pasar)){
        if($hp['tanggal'] == date('Y-m-d')){
            $harga_hari_ini = number_format($hp['harga'],0,'.','.');
        }
        if($hp['tanggal'] == date('Y-m-d', strtotime('-1 days'))){
            $harga_kemarin = number_format($hp['harga'],0,'.','.');
        }
    }
    ?>
    <tr>
        <td><?= $i ?></td>
        <td><a href="javascript:void(0)" class='checkgrafik' data-idpasar='<?= $id ?>' data-idkomoditas='<?= $k['id_komoditas'] ?>'><?= $k['nama_komoditas'] ?></a></td>
        <td><?= $k['satuan'] ?></td>
        <td>Rp<?= $harga_kemarin ?></td>
        <td>Rp<?= $harga_hari_ini ?></td>
    </tr>
    <?php 
    }
    ?>
</table>
<?php }else{ 
if(isset($_GET['id_pasar']) && isset($_GET['id_komoditas'])){
$date = date('Y-m-d', strtotime('-7 days'));
$get = mysql_query("SELECT * FROM harga_pasar WHERE id_pasar = '$_GET[id_pasar]' && id_komoditas = '$_GET[id_komoditas]' && tanggal >= $date");
while($hp = mysql_fetch_array($get)){
    //if($hp['tanggal'] >= $date){
        $tgl = date('d/m/Y', strtotime($hp['tanggal']));
        $data[$tgl] = $hp;
    //}
}

$k = mysql_query("SELECT nama_komoditas FROM komoditas WHERE id_komoditas = '$_GET[id_komoditas]'");
$komoditas = mysql_fetch_row($k);

$p = mysql_query("SELECT nama_pasar FROM pasar WHERE id_pasar = '$_GET[id_pasar]'");
$pasar = mysql_fetch_row($p);

?>
    <div>
        <h4>Harga <?= isset($komoditas) ? $komoditas[0] : '' ?> di Pasar <?= isset($pasar) ? $pasar[0] : '' ?></h4>
        <canvas id="myChart"></canvas>
    </div>
    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['<?= date('d/m/Y', strtotime('-6 days')) ?>', '<?= date('d/m/Y', strtotime('-5 days')) ?>', '<?= date('d/m/Y', strtotime('-4 days')) ?>', '<?= date('d/m/Y', strtotime('-3 days')) ?>', '<?= date('d/m/Y', strtotime('-2 days')) ?>', '<?= date('d/m/Y', strtotime('-1 days')) ?>', '<?= date('d/m/Y') ?>'],
                datasets: [{
                    label: '# Harga',
                    data: [
                            <?= isset($data[date('d/m/Y', strtotime('-6 days'))]['harga']) ? $data[date('d/m/Y', strtotime('-6 days'))]['harga'] : 0 ?>, 
                            <?= isset($data[date('d/m/Y', strtotime('-5 days'))]['harga']) ? $data[date('d/m/Y', strtotime('-5 days'))]['harga'] : 0 ?>, 
                            <?= isset($data[date('d/m/Y', strtotime('-4 days'))]['harga']) ? $data[date('d/m/Y', strtotime('-4 days'))]['harga'] : 0 ?>, 
                            <?= isset($data[date('d/m/Y', strtotime('-3 days'))]['harga']) ? $data[date('d/m/Y', strtotime('-3 days'))]['harga'] : 0 ?>,
                            <?= isset($data[date('d/m/Y', strtotime('-2 days'))]['harga']) ? $data[date('d/m/Y', strtotime('-2 days'))]['harga'] : 0 ?>, 
                            <?= isset($data[date('d/m/Y', strtotime('-1 days'))]['harga']) ? $data[date('d/m/Y', strtotime('-1 days'))]['harga'] : 0 ?>, 
                            <?= isset($data[date('d/m/Y')]['harga']) ? $data[date('d/m/Y')]['harga'] : 0 ?>
                        ],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
<?php }} ?>