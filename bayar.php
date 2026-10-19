<!DOCTYPE html>
<html>
<head>
    <title>SPP ONLINE</title>
    <link rel="stylesheet" type="text/css" href="src/style.css">
</head>
<body>
    <br/>
    <br/>
    <header>
        <h1 class="judul">PEMBAYARAN SPP ONLINE SMK NEGERI 3 BANJARBARU</h1>
    </header>

    <div class="wrap">
        <div class="blog">
            <div class="conteudo">

                <!-- TOMBOL KEMBALI DITAMBAHKAN DI SINI -->
                <div style="margin-bottom: 20px;">
                    <a href="index.php" style="text-decoration: none; background-color: #f44336; color: white; padding: 8px 15px; border-radius: 5px; font-size: 14px; font-weight: bold;">
                        &laquo; Kembali ke Login
                    </a>
                </div>

                <h3>Transaksi Pembayaran SPP</h3>
                <form method="get" action="">
                    nisn: <input type="text" name="nisn" />
                    <input type="hidden" id="open" name="open" value="data_pembayaran"/>
                    <input type="submit" name="cari" value="Cari Siswa" />
                </form>

                <?php
                include_once "src/koneksi.php";
                if(isset($_GET['nisn']) && $_GET['nisn'] != ''){
                    $sqlSiswa = mysqli_query($koneksi, "SELECT * FROM kelas JOIN siswa ON kelas.id_kelas = siswa.id_kelas JOIN spp ON siswa.id_spp = spp.id_spp WHERE nisn='$_GET[nisn]'");
                    $data = mysqli_fetch_array($sqlSiswa);
                    
                    // Memastikan data ditemukan sebelum menampilkan tabel
                    if($data) {
                        $nisn = $data['nisn'];
                ?>

                <br>
                <h3>Biodata Siswa</h3>
                <table>
                    <tr>
                        <td>nisn</td>
                        <td>:</td>
                        <td><?php echo $data['nisn']; ?></td>
                    </tr>
                    <tr>
                        <td>Nama Siswa</td>
                        <td>:</td>
                        <td><?php echo $data['nama']; ?></td>
                    </tr>
                    <tr>
                        <td>Kelas</td>
                        <td>:</td>
                        <td><?php echo $data['nama_kelas']; ?></td>
                    </tr>
                </table>

                <br>
                <h3>Tagihan SPP Siswa</h3>
                <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
                    <tr>
                        <th>No</th>
                        <th>Bulan</th>
                        <th>Tahun</th>
                        <th>No. Bayar</th>
                        <th>Tgl. Bayar</th>
                        <th>Jumlah</th>
                        <th>Keterangan</th>
                    </tr>

                    <?php
                        $sql = mysqli_query($koneksi, "SELECT * FROM pembayaran JOIN spp ON pembayaran.id_spp = spp.id_spp WHERE nisn='$data[nisn]'");
                        $no = 1;
                        while($data_bayar = mysqli_fetch_array($sql)){
                            echo "<tr>
                                <td>$no</td>
                                <td>$data_bayar[bulan_tagihan]</td>
                                <td>$data_bayar[tahun_tagihan]</td>
                                <td>$data_bayar[no_bayar]</td>
                                <td>$data_bayar[tgl_pembayaran]</td>
                                <td>$data_bayar[nominal]</td>
                                <td>$data_bayar[keterangan]</td>
                            </tr>";
                            $no++;
                        }
                    ?>
                </table>

                <?php 
                    } else {
                        // Menampilkan pesan jika NISN tidak ditemukan
                        echo "<p style='color: red; margin-top: 20px;'>Data siswa dengan NISN tersebut tidak ditemukan.</p>";
                    }
                } 
                ?>

            </div>
        </div>
    </div>
</body>
</html>