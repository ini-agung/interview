-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 12:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir-putra`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `sisa_stok` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_beli` varchar(50) NOT NULL,
  `harga_jual` varchar(50) NOT NULL,
  `kategori` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `img` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `deskripsi`, `stok_awal`, `sisa_stok`, `satuan`, `harga_beli`, `harga_jual`, `kategori`, `status`, `img`, `created_date`, `update_at`) VALUES
(1, 'MM-KP', 'Kopi', 'Ini adalah minuman kopi', 100, 50, 'pcs', '2000', '2500', 1, 1, 'default.jpg', '2022-05-11 03:34:04', '2022-05-12 08:33:02'),
(2, 'MM-TH', 'Teh', 'Ini adalah minuman teh', 100, 100, 'pcs', '3000', '3500', 1, 1, 'teh.jpg', '2022-05-11 03:34:04', '2022-05-11 07:02:05'),
(3, 'PP-PG', 'Pasta Gigi', 'Ini adalah Pasta gigi', 100, 100, 'pcs', '10000', '15000', 2, 1, 'pastagigi.jpg', '2022-05-11 03:36:52', '2022-05-11 07:02:05'),
(4, 'PP-SM', 'Sabun Mandi', 'Ini adalah sabun mandi', 100, 100, 'pcs', '5000', '7500', 2, 1, 'sabunmandi.jpg', '2022-05-11 03:36:52', '2022-05-11 07:02:05'),
(5, 'PP-SS', 'Sampo', 'Ini adalah sampo', 100, 100, 'pcs', '1500', '2000', 2, 1, 'sampo.jpg', '2022-05-11 03:38:01', '2022-05-11 07:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Konsumsi'),
(2, 'Pembersih'),
(3, 'Elektronik'),
(4, 'Alat Rumah Tangga');

-- --------------------------------------------------------

--
-- Table structure for table `level_user`
--

CREATE TABLE `level_user` (
  `id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level_user`
--

INSERT INTO `level_user` (`id`, `level`, `description`) VALUES
(1, 'Super Admin', 'User Level Super Admin'),
(2, 'Admin', 'User Level Admin'),
(3, 'Employee', 'User Level Employee'),
(4, 'General', 'User Level General');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `namaPembeli` int(11) NOT NULL,
  `hargaTotal` int(11) NOT NULL,
  `detail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `namaPembeli`, `hargaTotal`, `detail`) VALUES
(0, 23213, 3423324, '{\n  \"produk\": [\n    {\n      \"nama\" : \"asd\",\n      \"harga\" : 23333\n    },\n    {\n      \"nama\" : \"asd\",\n      \"harga\" : 23333\n    }\n  ]\n}');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `penanggung_jawab` varchar(50) NOT NULL,
  `telepon` int(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_barang`, `stok_awal`, `user_id`, `jumlah`, `total`, `created_date`) VALUES
(1, 'MM-KP', 100, 1703202201, 10, '25000', '2022-05-12 07:28:54'),
(2, 'MM-KP', 90, 1703202201, 20, '50000', '2022-05-12 07:29:11'),
(3, 'MM-KP', 70, 1703202201, 10, '25000', '2022-05-12 07:30:47'),
(4, 'MM-KP', 60, 1703202201, 10, '25000', '2022-05-12 08:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nik` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` tinyint(5) NOT NULL,
  `active` tinyint(3) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `img` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nik`, `username`, `fullname`, `password`, `email`, `level`, `active`, `telepon`, `img`, `created_date`) VALUES
(1, 1703202201, 'administrator', 'Saya Administrator', '$2y$10$lnZzRH77djJIuNjOhbf0A.yixAkEsDibmuZ0ARIFPSMvYLsWi6ba6', 'admin@admin.com', 1, 1, '082208220822', 'default.jpg', '2022-03-17 06:59:05'),
(2, 1703202202, 'user', 'Saya User', '$2y$10$lnZzRH77djJIuNjOhbf0A.yixAkEsDibmuZ0ARIFPSMvYLsWi6ba6', 'user@user.com', 1, 1, '082208220822', 'default.jpg', '2022-03-17 06:59:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_user`
--
ALTER TABLE `level_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `level_user`
--
ALTER TABLE `level_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
