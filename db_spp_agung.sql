-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2026 pada 07.39
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp_agung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompentensi_keahlian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompentensi_keahlian`) VALUES
('K03', 'X RPL 2', 'Rekayasa Perangkat Lunak'),
('K04', 'XII RPL 2', 'Rekayasa Perangkat Lunak'),
('K06', 'XI RPL 2', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `no_bayar` int(11) DEFAULT NULL,
  `id_petugas` varchar(5) DEFAULT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `bulan_tagihan` varchar(12) DEFAULT NULL,
  `tahun_tagihan` int(4) DEFAULT NULL,
  `id_spp` varchar(5) DEFAULT NULL,
  `keterangan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `no_bayar`, `id_petugas`, `nisn`, `tgl_pembayaran`, `bulan_tagihan`, `tahun_tagihan`, `id_spp`, `keterangan`) VALUES
(10, 2147483647, 'A01', '4445', '2026-08-28', 'Juli', 2026, 'SPP08', 'LUNAS'),
(11, NULL, NULL, '4445', NULL, 'Agustus', 2026, 'SPP08', NULL),
(12, NULL, NULL, '4445', NULL, 'September', 2026, 'SPP08', NULL),
(13, NULL, NULL, '4445', NULL, 'Oktober', 2026, 'SPP08', NULL),
(14, NULL, NULL, '4445', NULL, 'Nopember', 2026, 'SPP08', NULL),
(15, NULL, NULL, '4445', NULL, 'Desember', 2026, 'SPP08', NULL),
(16, NULL, NULL, '4445', NULL, 'Januari', 2027, 'SPP08', NULL),
(17, NULL, NULL, '4445', NULL, 'Februari', 2027, 'SPP08', NULL),
(18, NULL, NULL, '4445', NULL, 'Maret', 2027, 'SPP08', NULL),
(19, NULL, NULL, '4445', NULL, 'April', 2027, 'SPP08', NULL),
(20, NULL, NULL, '4445', NULL, 'Mei', 2027, 'SPP08', NULL),
(21, NULL, NULL, '4445', NULL, 'Juni', 2027, 'SPP08', NULL),
(22, NULL, NULL, 'SIS001', NULL, 'Juli', 2026, 'SPP02', NULL),
(23, NULL, NULL, 'SIS001', NULL, 'Agustus', 2026, 'SPP02', NULL),
(24, NULL, NULL, 'SIS001', NULL, 'September', 2026, 'SPP02', NULL),
(25, NULL, NULL, 'SIS001', NULL, 'Oktober', 2026, 'SPP02', NULL),
(26, NULL, NULL, 'SIS001', NULL, 'Nopember', 2026, 'SPP02', NULL),
(27, NULL, NULL, 'SIS001', NULL, 'Desember', 2026, 'SPP02', NULL),
(28, NULL, NULL, 'SIS001', NULL, 'Januari', 2027, 'SPP02', NULL),
(29, NULL, NULL, 'SIS001', NULL, 'Februari', 2027, 'SPP02', NULL),
(30, NULL, NULL, 'SIS001', NULL, 'Maret', 2027, 'SPP02', NULL),
(31, NULL, NULL, 'SIS001', NULL, 'April', 2027, 'SPP02', NULL),
(32, NULL, NULL, 'SIS001', NULL, 'Mei', 2027, 'SPP02', NULL),
(33, NULL, NULL, 'SIS001', NULL, 'Juni', 2027, 'SPP02', NULL),
(34, 2147483647, 'A01', '09010', '2026-08-12', 'Juli', 2026, 'SPP02', 'LUNAS'),
(35, NULL, NULL, '09010', NULL, 'Agustus', 2026, 'SPP02', NULL),
(36, NULL, NULL, '09010', NULL, 'September', 2026, 'SPP02', NULL),
(37, NULL, NULL, '09010', NULL, 'Oktober', 2026, 'SPP02', NULL),
(38, NULL, NULL, '09010', NULL, 'Nopember', 2026, 'SPP02', NULL),
(39, NULL, NULL, '09010', NULL, 'Desember', 2026, 'SPP02', NULL),
(40, NULL, NULL, '09010', NULL, 'Januari', 2027, 'SPP02', NULL),
(41, NULL, NULL, '09010', NULL, 'Februari', 2027, 'SPP02', NULL),
(42, NULL, NULL, '09010', NULL, 'Maret', 2027, 'SPP02', NULL),
(43, NULL, NULL, '09010', NULL, 'April', 2027, 'SPP02', NULL),
(44, NULL, NULL, '09010', NULL, 'Mei', 2027, 'SPP02', NULL),
(45, NULL, NULL, '09010', NULL, 'Juni', 2027, 'SPP02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
('A01', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'agung', 'admin'),
('A02', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'ridho', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_spp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('09010', 'NIS002', 'Alpha', 'K04', 'Kotabaru', '8123456782212', 'SPP02'),
('4445', '4445', 'asa', 'K04', 'Bangkal', '811111111111', 'SPP08'),
('SIS001', 'NIS001', 'Kimmyy', 'K04', 'Banjabaru', '8212128990', 'SPP02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` varchar(5) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nominal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
('SPP01', 2020, 75008),
('SPP02', 2021, 78000),
('SPP08', 2026, 6700);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
