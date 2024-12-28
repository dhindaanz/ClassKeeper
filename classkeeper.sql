-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2024 at 02:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classkeeper`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori_barang` varchar(20) NOT NULL,
  `jumlah_barang` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kategori_barang`, `jumlah_barang`, `deskripsi`) VALUES
('1111', 'Papan Tulis', 'Barang Furniture', '10', 'Papan Tulis Hitam Putih'),
('12345', 'Pel', 'Alat Kebersihan', '50', 'Pel adalah alat kebersihan'),
('13456', 'Sapu', 'Alat Kebersihan', '10', 'Sapu Lantai'),
('1414', 'Jam Dinding', 'Barang Hiasan', '10', 'Jam Dinding Bulat'),
('2222', 'Meja', 'Barang Furniture', '1000', 'Meja belajar'),
('3333', 'LCD', 'Barang Electronik', '100', 'LCD Dinding');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris_keluar`
--

CREATE TABLE `inventaris_keluar` (
  `id_keluar` char(15) NOT NULL,
  `id_masuk` char(15) NOT NULL,
  `jumlah` double NOT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `id_user` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventaris_keluar`
--

INSERT INTO `inventaris_keluar` (`id_keluar`, `id_masuk`, `jumlah`, `tanggal_keluar`, `id_user`) VALUES
('OUT0005', 'IN0001', 7, '2024-12-28', '123');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris_masuk`
--

CREATE TABLE `inventaris_masuk` (
  `id_masuk` char(15) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `jumlah` float NOT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `id_user` varchar(10) NOT NULL,
  `id_lokasi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventaris_masuk`
--

INSERT INTO `inventaris_masuk` (`id_masuk`, `id_barang`, `jumlah`, `tanggal_masuk`, `id_user`, `id_lokasi`) VALUES
('IN0004', '1111', 4, '2024-12-28', '123', 'GD002'),
('IN0004', '12345', 100, '2024-12-28', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` varchar(10) NOT NULL,
  `nama_lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`) VALUES
('G00011', 'Gudang'),
('GD001', 'Ruang Guru'),
('GD002', 'Kelas 1A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `kelas` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `jenis_kelamin`, `kelas`) VALUES
('123', 'admin', 'admin', 'Cewe', 'Perempuan', '-'),
('1234', 'asik', 'banget', 'ABOY', 'Laki - laki', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `inventaris_keluar`
--
ALTER TABLE `inventaris_keluar`
  ADD PRIMARY KEY (`id_keluar`);

--
-- Indexes for table `inventaris_masuk`
--
ALTER TABLE `inventaris_masuk`
  ADD PRIMARY KEY (`id_masuk`,`id_barang`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
