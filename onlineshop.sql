-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 06:55 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` tinyint(2) NOT NULL,
  `username` varchar(35) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reset` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `username`, `fullname`, `password`, `level`, `email`, `reset`) VALUES
(1, 'admin', 'Administrator', '$2y$10$B4vizo7pBP04wiOm521HWObDBJgAZBLKhxrkkVHf3vZ8v8qOvFpDm', 1, 'jesigabriella@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_order`
--

CREATE TABLE `t_detail_order` (
  `id_order` varchar(10) NOT NULL,
  `id_item` int(7) NOT NULL,
  `qty` smallint(4) NOT NULL,
  `biaya` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_detail_order`
--

INSERT INTO `t_detail_order` (`id_order`, `id_item`, `qty`, `biaya`) VALUES
('1529509932', 7, 1, 50000),
('1529509932', 6, 1, 90000),
('1529549259', 8, 2, 1800000),
('1529556400', 7, 1, 950000),
('1529556400', 8, 1, 900000);

-- --------------------------------------------------------

--
-- Table structure for table `t_items`
--

CREATE TABLE `t_items` (
  `id_item` int(7) NOT NULL,
  `nama_item` varchar(255) NOT NULL,
  `harga` int(10) NOT NULL,
  `berat` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_items`
--

INSERT INTO `t_items` (`id_item`, `nama_item`, `harga`, `berat`, `status`, `gambar`, `deskripsi`) VALUES
(6, 'Classic', 800000, 500, 1, 'gambar1529551512.jpg', 'Black,Blue'),
(7, 'White Classy', 950000, 500, 1, 'gambar1529548563.jpg', 'White'),
(8, 'Superstar', 900000, 500, 1, 'gambar1529551585.jpg', 'Black,Yellow'),
(9, 'Adidas  Ultraboost', 1500000, 500, 1, 'gambar1529551109.jpg', 'Red,Black'),
(10, 'Adidas Primeknit', 1000000, 500, 1, 'gambar1529551179.jpg', 'Blue,Grey'),
(11, 'Pureboost', 1300000, 500, 1, 'gambar1529551274.jpg', 'Blue'),
(12, 'Clima', 1400000, 500, 1, 'gambar1529551344.jpg', 'Grey,White'),
(13, '80s CNY Shoes', 950000, 500, 1, 'gambar1529551462.jpg', 'Red,Green,Blue'),
(14, 'Adizero ', 1000000, 500, 1, 'gambar1529551642.jpg', 'Blue,Black,Red'),
(15, 'Powerphase', 2000000, 500, 1, 'gambar1529551708.jpg', 'Black,Red,Green'),
(16, 'Pinky ', 1300000, 500, 1, 'gambar1529551788.jpg', 'Pink,Red'),
(17, 'Purpley', 2000000, 500, 1, 'gambar1529552194.jpg', 'Purple,Pink,White'),
(18, 'PrimeKit', 1700000, 500, 1, 'gambar1529552418.jpg', 'Purple,White'),
(19, 'Pinky Simply', 1650000, 500, 1, 'gambar1529552454.jpg', 'Pink,Red,'),
(20, 'Light Blue', 1850000, 500, 1, 'gambar1529552493.jpg', 'Light Blue'),
(21, 'Greys', 2000000, 500, 1, 'gambar1529552529.jpg', 'Grey'),
(22, 'Rose Gold', 1750000, 500, 1, 'gambar1529552574.jpg', 'Rose Gold,Black'),
(23, 'Blue Ray', 1650000, 500, 1, 'gambar1529552618.jpg', 'Blue,Black'),
(24, 'Black Pink', 1550000, 500, 1, 'gambar1529552771.jpg', 'Back,Pink'),
(25, 'Toscas', 2100000, 500, 1, 'gambar1529552815.jpg', 'Green,Tosca');

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori`
--

CREATE TABLE `t_kategori` (
  `id_kategori` smallint(6) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `url` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `kategori`, `url`) VALUES
(4, 'Women''s', 'womens'),
(5, 'Men''s', 'mens');

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

CREATE TABLE `t_order` (
  `id_order` varchar(10) NOT NULL,
  `id_user` int(7) NOT NULL,
  `total` double NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `pos` int(5) NOT NULL,
  `kota` varchar(25) NOT NULL,
  `kurir` varchar(5) NOT NULL,
  `service` varchar(50) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `bts_bayar` date NOT NULL,
  `status` enum('belum','proses') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_order`
--

INSERT INTO `t_order` (`id_order`, `id_user`, `total`, `tujuan`, `pos`, `kota`, `kurir`, `service`, `tgl_pesan`, `bts_bayar`, `status`) VALUES
('1529509932', 1, 286000, 'jalan flamboyan raya, perumahan debang tamansari blok a nomor 32, medan tuntungan', 23294, 'Medan', 'pos', 'Express Next Day Barang(Express Next Day Barang)', '2018-06-20', '2018-06-20', 'belum'),
('1529549259', 1, 1825000, 'jalan flamboyan raya, perumahan debang tamansari blok a nomor 32, medan tuntungan', 98767, 'Lebak', 'jne', 'REG(Layanan Reguler)', '2018-06-21', '2018-06-24', 'proses'),
('1529556400', 5, 1898000, 'jalan flamboyan raya, perumahan debang tamansari blok a nomor 32, medan tuntungan', 98768, 'Bangka Tengah', 'jne', 'REG(Layanan Reguler)', '2018-06-21', '2018-06-24', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `t_rkategori`
--

CREATE TABLE `t_rkategori` (
  `id_item` int(7) NOT NULL,
  `id_kategori` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_rkategori`
--

INSERT INTO `t_rkategori` (`id_item`, `id_kategori`) VALUES
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `t_users`
--

CREATE TABLE `t_users` (
  `id_user` int(7) NOT NULL,
  `username` varchar(35) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `telp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `reset` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_users`
--

INSERT INTO `t_users` (`id_user`, `username`, `fullname`, `email`, `password`, `jk`, `telp`, `alamat`, `status`, `reset`) VALUES
(1, 'jesigabriella', 'jesi gabriella', 'jesigabriella@gmail.com', '$2y$10$OAMvlTUcPr49MyFOMANTUO1sNIlOqBIF4u8MJbpxUwzixn0VfByaK', 'P', '08117671122', 'medan indonesia', 1, ''),
(2, 'cynthiabernadetta', 'cynthia bernadetta', 'cynthiabernadetta@gmail.com', '$2y$10$4hFl6zOkQ2jb0p7pEZL6..s2RSUyw6RdQfaHrah2V9rB/A3PBOVMW', 'P', '08117671131', 'medan sumut', 2, ''),
(3, 'fanithrs', 'fani hutabarat', 'fanitheresa@gmail.com', '$2y$10$hfIF4YaBaRIznTGeJaNy8.BCPUsT1Hk57kwOcjeeyeyTN4OeYku/O', 'P', '08781271982', 'kdhcskclskc', 1, ''),
(4, 'jesie', 'destri silitonga', 'destri@gmail.com', '$2y$10$Yr.rEqLppDyA7TNXyQ8OUefc0WDKPdTKuWCKcQ4AX4vj5h0T6dvXm', 'P', '0297496423', 'sumut indonesia', 2, ''),
(5, 'melin', 'melin sbg', 'milindapandia@gmail.com', '$2y$10$mhWKg0UrDmtVN36NGM4kn.C0ROiJ1SrUkBuRJscjPLlyh4nvileN6', 'P', '098764646475', 'iymjckjkgjkjgkg', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `t_items`
--
ALTER TABLE `t_items`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `t_kategori`
--
ALTER TABLE `t_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id_admin` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_items`
--
ALTER TABLE `t_items`
  MODIFY `id_item` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `t_kategori`
--
ALTER TABLE `t_kategori`
  MODIFY `id_kategori` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id_user` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
