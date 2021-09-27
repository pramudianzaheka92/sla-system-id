-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2021 pada 08.14
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sli_system`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `document`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `document` (
`id_history` int(11)
,`id_penerus` varchar(255)
,`loop` varchar(45)
,`remaks` text
,`date_created` varchar(81)
,`date_update` varchar(81)
,`id_document` int(11)
,`no_document` varchar(255)
,`debitur` varchar(45)
,`file_nk3` text
,`file_2` varchar(45)
,`no_skk` varchar(45)
,`status` varchar(45)
,`id_pengguna` varchar(45)
,`nama_pengguna` varchar(45)
,`posisi_pengguna` int(11)
,`nama_penerus` varchar(45)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_document`
--

CREATE TABLE `tb_document` (
  `id` int(11) NOT NULL,
  `id_pengguna` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debitur` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_nk3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_document` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `no_skk` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_document`
--

INSERT INTO `tb_document` (`id`, `id_pengguna`, `no_document`, `debitur`, `file_nk3`, `file_2`, `status`, `date_document`, `created_at`, `updated_at`, `no_skk`) VALUES
(3, '1001', 'OPK-001', 'Eka Pramudianzah', 'Modul_3D-_Merancang_Antarmuka_Pemakai.pdf', 'Modul_3D-_Merancang_Antarmuka_Pemakai1.pdf', '12', NULL, '2021-09-26 16:10:03', '2021-09-26 16:46:28', 'SKK-001'),
(4, '1002', 'OPK-002', 'Ramadhan', 'E-certificate_GA.pdf', NULL, '4', '2021-09-26', '2021-09-26 16:16:35', '2021-09-26 16:21:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_document_analyst`
--

CREATE TABLE `tb_document_analyst` (
  `id` int(11) NOT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `nama_debitur` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_group` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fasilitas1` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maximum1` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fasilitas2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maximum2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fasilitas3` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maximum3` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fasilitas4` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maximum4` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fasilitas5` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maximum5` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nk3_check` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_debitur_check` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pak_check` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fia_check` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipk_check` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_document_analyst`
--

INSERT INTO `tb_document_analyst` (`id`, `id_document`, `id_pengguna`, `nama_debitur`, `nama_group`, `fasilitas1`, `maximum1`, `fasilitas2`, `maximum2`, `fasilitas3`, `maximum3`, `fasilitas4`, `maximum4`, `fasilitas5`, `maximum5`, `nk3_check`, `data_debitur_check`, `pak_check`, `fia_check`, `ipk_check`, `created_at`, `updated_at`) VALUES
(3, 3, 1007, 'Eka Pramudianzah', 'Mandiri', 'fasilitas 1', 'maximum 1', 'Fasilitas 2', 'Maximum 2', 'Fasilitas 3', 'maximum 3', 'fasilitas 4', 'maximum 4', 'fasilitas 5', 'maximum 5', '1', '1', NULL, NULL, NULL, '2021-09-26 16:34:38', '2021-09-26 16:34:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_history_document`
--

CREATE TABLE `tb_history_document` (
  `id` int(11) NOT NULL,
  `id_document` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_pengguna` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_penerus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remaks` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `loop` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_history_document`
--

INSERT INTO `tb_history_document` (`id`, `id_document`, `id_pengguna`, `id_penerus`, `remaks`, `created_at`, `updated_at`, `loop`) VALUES
(32, '3', '1001', '1003', 'Upload File NK3', '2021-09-26 16:10:03', '2021-09-26 16:10:03', NULL),
(33, '3', '1003', '1004', 'Disetujui', '2021-09-26 16:13:37', '2021-09-26 16:13:37', NULL),
(34, '4', '1002', '1003', 'Upload File NK3', '2021-09-26 16:16:35', '2021-09-26 16:16:35', NULL),
(35, '3', '1003', '1005', 'Sudah sesuai', '2021-09-26 16:20:37', '2021-09-26 16:20:37', NULL),
(36, '4', '1003', '1004', 'Kelengkapan dokumen masih belum sesuai', '2021-09-26 16:21:16', '2021-09-26 16:21:16', NULL),
(37, '3', '1005', '1006', 'Kelengkapan dokumen sudah sesuai hanya tinggal di acc oleh pengelola dan analis', '2021-09-26 16:27:22', '2021-09-26 16:27:22', NULL),
(38, '3', '1006', '1007', 'Disetujui karena dokumen sudah lengkap', '2021-09-26 16:28:41', '2021-09-26 16:28:41', NULL),
(39, '3', '1007', '1006', 'Sudah Sangat Sesuai. Dokumen ini terdapat 2 kelengkapan diantaranya ada File NK3 dan Data Debitur', '2021-09-26 16:34:38', '2021-09-26 16:34:38', NULL),
(40, '3', '1006', '1005', NULL, '2021-09-26 16:35:31', '2021-09-26 16:35:31', NULL),
(41, '3', '1005', '1008', NULL, '2021-09-26 16:36:01', '2021-09-26 16:36:01', NULL),
(42, '3', '1008', '1003', '  Sudah sangat sesuai dan lengkap', '2021-09-26 16:44:38', '2021-09-26 16:44:38', NULL),
(43, '3', '1003', '1004', 'Sesuai', '2021-09-26 16:46:28', '2021-09-26 16:46:28', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level_user`
--

CREATE TABLE `tb_level_user` (
  `id` int(11) NOT NULL,
  `posisi` int(11) DEFAULT NULL,
  `nama_posisi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_level_user`
--

INSERT INTO `tb_level_user` (`id`, `posisi`, `nama_posisi`) VALUES
(1, 1, 'Admin'),
(2, 2, 'Sekkom'),
(3, 3, 'Seketaris'),
(4, 4, 'DGM / GM'),
(5, 5, 'Pemimpin Kelompok'),
(6, 6, 'Penglola'),
(7, 7, 'Analyst'),
(8, 8, 'Sekretaris Bisnis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id` int(11) NOT NULL,
  `npp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posisi` int(11) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id`, `npp`, `nama`, `posisi`, `tgl_lahir`, `password`) VALUES
(1, '1001', 'admin', 1, '2021-08-21', '55e8b0af8c4b85c8570218dc7b3f3d40'),
(3, '1002', 'Sekkom', 2, '2021-08-21', '55e8b0af8c4b85c8570218dc7b3f3d40'),
(4, '1003', 'Seketaris', 3, '2021-08-21', '55e8b0af8c4b85c8570218dc7b3f3d40'),
(6, '1004', 'DGM / GM', 4, '2021-08-21', '55e8b0af8c4b85c8570218dc7b3f3d40'),
(7, '1005', 'Pemimpin Kelompok', 5, '2021-08-21', '55e8b0af8c4b85c8570218dc7b3f3d40'),
(10, '1006', 'Penglola', 6, '2021-08-21', '55e8b0af8c4b85c8570218dc7b3f3d40'),
(11, '1007', 'Analyst', 7, '2021-08-21', '55e8b0af8c4b85c8570218dc7b3f3d40'),
(12, '1008', 'Bisnis', 8, '2021-08-21', '55e8b0af8c4b85c8570218dc7b3f3d40');

-- --------------------------------------------------------

--
-- Struktur untuk view `document`
--
DROP TABLE IF EXISTS `document`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `document`  AS SELECT `tb_history_document`.`id` AS `id_history`, `tb_history_document`.`id_penerus` AS `id_penerus`, `tb_history_document`.`loop` AS `loop`, `tb_history_document`.`remaks` AS `remaks`, date_format(`tb_history_document`.`created_at`,'%d %M %y %H:%i') AS `date_created`, date_format(`tb_history_document`.`updated_at`,'%d %M %y %H:%i') AS `date_update`, `tb_document`.`id` AS `id_document`, `tb_document`.`no_document` AS `no_document`, `tb_document`.`debitur` AS `debitur`, `tb_document`.`file_nk3` AS `file_nk3`, `tb_document`.`file_2` AS `file_2`, `tb_document`.`no_skk` AS `no_skk`, `tb_document`.`status` AS `status`, `tb_pengguna`.`npp` AS `id_pengguna`, `tb_pengguna`.`nama` AS `nama_pengguna`, `tb_pengguna`.`posisi` AS `posisi_pengguna`, `c`.`nama` AS `nama_penerus` FROM (((`tb_history_document` left join `tb_document` on(`tb_history_document`.`id_document` = `tb_document`.`id`)) left join `tb_pengguna` on(`tb_history_document`.`id_pengguna` = `tb_pengguna`.`npp`)) left join `tb_pengguna` `c` on(`tb_history_document`.`id_penerus` = `c`.`npp`)) ORDER BY `tb_history_document`.`updated_at` DESC ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_document`
--
ALTER TABLE `tb_document`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_document_analyst`
--
ALTER TABLE `tb_document_analyst`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_history_document`
--
ALTER TABLE `tb_history_document`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_level_user`
--
ALTER TABLE `tb_level_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_document`
--
ALTER TABLE `tb_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_document_analyst`
--
ALTER TABLE `tb_document_analyst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_history_document`
--
ALTER TABLE `tb_history_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tb_level_user`
--
ALTER TABLE `tb_level_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
