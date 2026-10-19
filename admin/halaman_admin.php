<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SPP ONLINE</title>
    <link rel="stylesheet" type="text/css" href="../src/style.css">
</head>

<body>

<?php
session_start();

// Cek apakah user sudah login
if (!isset($_SESSION['level']) || $_SESSION['level'] == "") {
    header("Location: ../index.php?pesan=gagal");
    exit;
}
?>

<header>
    <h1 class="judul">
        PEMBAYARAN SPP ONLINE SMK NEGERI 3 BANJARBARU
    </h1>
</header>

<div class="wrap">

    <!-- Menu -->
    <nav class="menu">
        <?php include "menu.php"; ?>
    </nav>

    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="widget">
            <h2>
                Selamat Datang,
                <?php echo htmlspecialchars($_SESSION['username']); ?>
            </h2>

            <p>
                Selamat datang di aplikasi Pembayaran SPP
                SMK Negeri 3 Banjarbaru.
            </p>

            <p><img src="../src/logo-sekolah.png" class="profile" class = "profile" alt="Logo Sekolah"></p>
        </div>
    </aside>

    <!-- Isi -->
    <div class="blog">
        <div class="conteudo">
            <?php include "buka_file.php"; ?>
        </div>
    </div>

</div>

</body>
</html>