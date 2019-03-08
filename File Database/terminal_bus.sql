-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 08:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terminal_bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id_bus` varchar(5) NOT NULL,
  `plat` varchar(12) NOT NULL,
  `kapasitas` int(3) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tahun_produksi` int(4) NOT NULL,
  `id_supir` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id_bus`, `plat`, `kapasitas`, `kelas`, `tahun_produksi`, `id_supir`) VALUES
('B0011', 'BE 2090 GI', 60, 'EKONOMI', 2012, 'S009'),
('B0014', 'BE 2902 QI', 60, 'EKONOMI', 2014, 'S006'),
('B0016', 'BE 5085 ZE', 60, 'EKSEKUTIF', 2015, 'S004'),
('B0017', 'BE 7604 AE', 60, 'EKSEKUTIF', 2016, 'S005'),
('B0018', 'BE 4579 AZ', 70, 'Eksekutif', 2016, 'S005'),
('B0019', 'BE 4212 Az', 60, 'Eksekutif', 2016, 'S001'),
('B0020', 'BE 234 As', 23, 'Eksekutif', 2016, 'S005'),
('b0024', 'ss 34 d', 34, 'Eksekutif', 2017, 'S007');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` varchar(5) NOT NULL,
  `hari_tgl` varchar(30) NOT NULL,
  `jam` time NOT NULL,
  `id_lintasan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari_tgl`, `jam`, `id_lintasan`) VALUES
('J1001', 'Senin, 16 April 2018', '08:36:00', 'C0001'),
('J1002', 'Senin, 16 April 2018', '14:30:00', 'C0002'),
('J2004', 'Selasa, 17 April 2018', '07:45:00', 'C0003'),
('J2007', 'Selasa, 17 April 2018', '13:00:00', 'C0004'),
('J3001', 'Rabu, 23 Mei 2018', '08:30:00', 'C0005'),
('J3002', 'Rabu, 23 Mei 2018', '13:15:00', 'C0006'),
('J4003', 'Kamis, 24 Mei 2018', '08:45:00', 'C0007'),
('J4004', 'Kamis, 24 Mei 2018', '14:00:00', 'C0008');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `id_kursi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`id_kursi`) VALUES
('A001'),
('A002'),
('A003'),
('A004'),
('A005'),
('A006'),
('A007'),
('A008'),
('A009'),
('A010'),
('A011'),
('A012'),
('A013'),
('A014'),
('A015'),
('A016'),
('A017'),
('A018'),
('A019'),
('A020'),
('A021'),
('A022'),
('A023'),
('A024'),
('A025'),
('A026'),
('A027'),
('A028'),
('A029'),
('A030'),
('A031'),
('A032'),
('A033'),
('A034'),
('A035'),
('A036'),
('A037'),
('A038'),
('A039'),
('A040'),
('A041'),
('A042'),
('A043'),
('A044'),
('A045'),
('A046'),
('A047'),
('A048'),
('A049'),
('A050'),
('A051'),
('A052'),
('A053'),
('A054'),
('A055'),
('A056'),
('A057'),
('A058'),
('A059'),
('A060'),
('B001'),
('B002'),
('B003'),
('B004'),
('B005'),
('B006'),
('B007'),
('B008'),
('B009'),
('B010'),
('B011'),
('B012'),
('B013'),
('B014'),
('B015'),
('B016'),
('B017'),
('B018'),
('B019'),
('B020'),
('B021'),
('B022'),
('B023'),
('B024'),
('B025'),
('B026'),
('B027'),
('B028'),
('B029'),
('B030'),
('B031'),
('B032'),
('B033'),
('B034'),
('B035'),
('B036'),
('B037'),
('B038'),
('B039'),
('B040'),
('B041'),
('B042'),
('B043'),
('B044'),
('B045'),
('B046'),
('B047'),
('B048'),
('B049'),
('B050'),
('B051'),
('B052'),
('B053'),
('B054'),
('B055'),
('B056'),
('B057'),
('B058'),
('B059'),
('B060'),
('C001'),
('C002'),
('C003'),
('C004'),
('C005'),
('C006'),
('C007'),
('C008'),
('C009'),
('C010'),
('C011'),
('C012'),
('C013'),
('C014'),
('C015'),
('C016'),
('C017'),
('C018'),
('C019'),
('C020'),
('C021'),
('C022'),
('C023'),
('C024'),
('C025'),
('C026'),
('C027'),
('C028'),
('C029'),
('C030'),
('C031'),
('C032'),
('C033'),
('C034'),
('C035'),
('C036'),
('C037'),
('C038'),
('C039'),
('C040'),
('C041'),
('C042'),
('C043'),
('C044'),
('C045'),
('C046'),
('C047'),
('C048'),
('C049'),
('C050'),
('C051'),
('C052'),
('C053'),
('C054'),
('C055'),
('C056'),
('C057'),
('C058'),
('C059'),
('C060'),
('D001'),
('D002'),
('D003'),
('D004'),
('D005'),
('D006'),
('D007'),
('D008'),
('D009'),
('D010'),
('D011'),
('D012'),
('D013'),
('D014'),
('D015'),
('D016'),
('D017'),
('D018'),
('D019'),
('D020'),
('D021'),
('D022'),
('D023'),
('D024'),
('D025'),
('D026'),
('D027'),
('D028'),
('D029'),
('D030'),
('D031'),
('D032'),
('D033'),
('D034'),
('D035'),
('D036'),
('D037'),
('D038'),
('D039'),
('D040'),
('D041'),
('D042'),
('D043'),
('D044'),
('D045'),
('D046'),
('D047'),
('D048'),
('D049'),
('D050'),
('D051'),
('D052'),
('D053'),
('D054'),
('D055'),
('D056'),
('D057'),
('D058'),
('D059'),
('D060'),
('E121'),
('E122'),
('E123'),
('E124'),
('E125'),
('E126');

-- --------------------------------------------------------

--
-- Table structure for table `lintasan`
--

CREATE TABLE `lintasan` (
  `id_lintasan` varchar(5) NOT NULL,
  `Id_Bus` varchar(5) NOT NULL,
  `id_rute` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lintasan`
--

INSERT INTO `lintasan` (`id_lintasan`, `Id_Bus`, `id_rute`) VALUES
('C0001', 'B0011', 'R0002'),
('C0002', 'B0011', 'R0006'),
('C0003', 'B0017', 'R0004'),
('C0004', 'B0017', 'R0007'),
('C0005', 'B0016', 'R0003'),
('C0006', 'B0016', 'R0005'),
('C0007', 'B0014', 'R0001'),
('C0008', 'B0014', 'R0008');

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `kode_user` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(18) NOT NULL,
  `email` varchar(40) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `HakAkses` enum('admin','penumpang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`kode_user`, `nama`, `username`, `password`, `email`, `no_telp`, `alamat`, `jenis_kelamin`, `HakAkses`) VALUES
(1, 'META YULanto', 'metayuliaa', 'metayulia', 'metayulia@gmail.com', '232', 'kemanaadadada', 'P', 'penumpang'),
(2, 'Niken Rama', 'nikenrama', 'nikenrama', 'nikon@gmail.com', '0812345677', 'jalan2', 'P', 'penumpang'),
(3, 'Mery Anggun', 'meryanggun', 'meryanggun', 'meryanggun@gmail.com', '082147483656', 'Jl. Pulau Seram No 190 Bandar Lampung', 'L', 'penumpang'),
(4, 'Bayu Saputra', 'bayusaputra', 'bayusaputra', 'bayusaputra@gmail.com', '085347483647', 'Jl. Dr. Sam Ratulangi No 509 Bandar Lampung', 'L', 'penumpang'),
(5, 'Reza Anugerah', 'rezaanugerah', 'rezaanugerah', 'rezaanugerah@gmail.com', '089647483647', 'Jl. Pahlawan No 189 Bandar Lampung', 'L', 'penumpang'),
(6, 'David Mulyadi', 'davidmulyadi', 'davidmulyadi', 'davidmulyadi@gmail.com', '087847483623', 'Jl. Adipura no 98 Bandar Lampung', 'L', 'penumpang'),
(7, 'Kristiawan', 'kristiawan', 'kristiawan', 'kristiawan@gmail.com', '085747483660', 'Jl.Urip Sumoharjo no 67 Bandar Lampung', 'L', 'penumpang'),
(8, 'Reva Febriani', 'revafebriani', 'revafebriani', 'revafebriani@gmail.com', '082247483643', 'Jl. Danau Toba No 49 Bandar Lampung', 'P', 'penumpang'),
(9, 'Wahyu Saputra', 'wahyusaputra', 'wahyusaputra', 'wahyusaputra@gmail.com', '082147483648', 'Jl. Sultan Agung No 197 Bandar Lampung', 'L', 'penumpang'),
(10, 'Geri Pamungkas', 'geripamungkas', 'geripamungkas', 'geripamungkas@gmail.com', '085847483647', 'Jl. Sultan Agung No 1107 Bandar Lampung', 'L', 'penumpang'),
(11, 'Seli Fitriani', 'selifitriani', 'selifitriani', 'selifitriani@gmail.com', '082147483640', 'Jl. Teuku Umar No 286 Bandar Lampung', 'L', 'penumpang'),
(12, 'Ahmad Zainudin', 'ahmadzainudin', 'ahmadzainudin', 'ahmadzainudin@gmail.com', '089647483625', 'Jl. Gatot Subroto No.134 Bandar Lampung', 'L', 'penumpang'),
(13, 'Rani Maharani', 'ranimaharani', 'ranimaharani', 'ranimaharani@gmail.com', '082147483643', 'Jl. Kusuma Bangsa No.89 Bandar Lampung', 'P', 'penumpang'),
(14, 'Rena Melia', 'renamulia', 'renamulia', 'renamulia@gmail.com', '082147483537', 'Jl. Arif Rahman Hakin Sukarame Bandar Lampung', 'P', 'penumpang'),
(15, 'Berta Mahendra', 'bertamahendra', 'bertamahendra', 'bertamahendra@gmail.com', '087747483690', 'Perum Korpri No.99 Sukarame Bandar Lampung', 'L', 'penumpang'),
(16, 'Fika Mareta', 'fikamareta', 'fikamareta', 'fikamareta@gmail.com', '089647483628', 'Jl. Perumahan Damai No.76 WayKandis Bandar Lampung', 'P', 'penumpang'),
(17, 'Deva Aprilio', 'devaaprilio', 'devaaprilio', 'devaaprilio@gmail.com', '082147483612', 'Jl. Raya Kecapi Kalianda Lampung Selatan', 'L', 'penumpang'),
(18, 'Anisa', 'anisa', 'anisa', 'anisa@gmail.com', '085647483648', 'Jl. Ratu Dibalau No.12 Tanjung Senang Bandar Lampung', 'P', 'penumpang'),
(19, 'Andika Martin', 'andikamartin', 'andikamartin', 'andikamartin@gmail.com', '087747483647', 'Jl. Kusuma Bangsa No.111 Bandar Lampung', 'L', 'penumpang'),
(20, 'Adi Firdaus', 'adifirdaus', 'adifirdaus', 'adifirdaus@gmail.com', '082247483623', 'Jl. Putri Dibalau Antasari Bandar Lampung', 'L', 'penumpang'),
(21, 'Dika Ramadani', 'dikaramadani', 'dikaramadani', 'dikaramadani@gmail.com', '082147483613', 'Jl. Gajah Mada No. 49 Bandar Lampung', 'L', 'penumpang'),
(22, 'Yuli Anisa', 'yulianisa', 'yulianisa', 'yulianisa@gmail.com', '085247483646', 'Jl. Bulau Bacan No.99 Pasar Tugu Bandar Lampung', 'P', 'penumpang'),
(23, 'aziz', 'aziz', 'aziz', 'aziz@gmail.com', '082282735334', 'Bandar Lampung', 'L', 'admin'),
(24, 'NULL', 'aziz', 'stak', 'stack', 'NULL', 'NULL', 'NULL', 'penumpang'),
(25, 'NULL', 'miftakhul', 'aziz', 'miftakhul@gmail.com', 'NULL', 'NULL', 'NULL', 'penumpang');

-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE `rute` (
  `id_rute` varchar(5) NOT NULL,
  `asal` varchar(20) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `jarak` varchar(10) NOT NULL,
  `waktu_tempuh` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute`
--

INSERT INTO `rute` (`id_rute`, `asal`, `tujuan`, `jarak`, `waktu_tempuh`) VALUES
('R0001', 'BANDAR LAMPUNG', 'LAMPUNG SELATAN', '51 KM', '1 JAM 45 MENIT'),
('R0002', 'BANDAR LAMPUNG', 'METRO', '33 KM', '1 JAM 14 MENIT'),
('R0003', 'BANDAR LAMPUNG', 'LAMPUNG BARAT', '220 KM', '5 JAM 18 MENIT'),
('R0004', 'BANDAR LAMPUNG', 'LAMPUNG TENGAH', '82 KM', '2 JAM 40 MENIT'),
('R0005', 'LAMPUNG BARAT', 'BANDAR LAMPUNG', '220 KM', '5 JAM 18 MENIT'),
('R0006', 'METRO', 'BANDAR LAMPUNG', '33 KM', '1 JAM 14 MENIT'),
('R0007', 'LAMPUNG TENGAH', 'BANDAR LAMPUNG', '82 KM', '2 JAM 40 MENIT'),
('R0008', ' LAMPUNG SELATAN', 'BANDAR LAMPUNG', '51 KM', '1 JAM 45 MENIT');

-- --------------------------------------------------------

--
-- Table structure for table `supir`
--

CREATE TABLE `supir` (
  `id_supir` varchar(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supir`
--

INSERT INTO `supir` (`id_supir`, `nama`, `alamat`, `no_telp`) VALUES
('S001', 'Doni Cahyo', 'Jl. Gatot Subroto No.14 Sumatera Selatan', '082147483647'),
('S002', 'Alfin Ramadhan', 'Jl. Imam Bonjol No. 234 Bandar Lampung', '082147483647'),
('S003', 'Dio Pambudi', 'Jl. Nusantara No.01 Sumatera Barat', '082147483647'),
('S004', 'Adi Sulastra', 'Jl. Airan Raya No. 32 Lampung Barat', '082147483647'),
('S005', 'Mahesa Pamungkas', 'Jl. Ratu Dibalau No.12 Tanjung Senang Bandar Lampung', '082147483647'),
('S006', 'Aziz Pranata', 'Jl. Kusuma Bangsa No.111 Bandar Lampung', '082147483647'),
('S007', 'Dika Wibowo', 'Jl. Putri Dibalau Antasari Bandar Lampung', '082147483647'),
('S008', 'Komang Haryadi', 'Jl. Gajah Mada No. 49 Sumatera Barat', '082147483647'),
('S009', 'Reza Adila', 'Jl. Bulau Bacan No.99 Pasar Tugu Bandar Lampung', '082147483647'),
('S010', 'Jore Ardiansyah', 'Jl. Airan Raya No. 78 Lampung Selatan', '082147483647');

-- --------------------------------------------------------

--
-- Table structure for table `table 8`
--

CREATE TABLE `table 8` (
  `COL 1` varchar(9) DEFAULT NULL,
  `COL 2` varchar(11) DEFAULT NULL,
  `COL 3` varchar(16) DEFAULT NULL,
  `COL 4` varchar(52) DEFAULT NULL,
  `COL 5` varchar(19) DEFAULT NULL,
  `COL 6` varchar(14) DEFAULT NULL,
  `COL 7` varchar(52) DEFAULT NULL,
  `COL 8` varchar(13) DEFAULT NULL,
  `COL 9` varchar(6) DEFAULT NULL,
  `COL 10` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 8`
--

INSERT INTO `table 8` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`) VALUES
('Bus', '', '', '', '', '', '', '', '', NULL),
('No', 'Id bus', 'Plat', 'Kapasitas', 'Kelas', 'Tgl Produksi', 'Id Rute', '', '', NULL),
('1', 'B0011', 'BE 2090 GI', '60', 'EKONOMI', '2012', 'R0001', '', '', NULL),
('2', 'B0012', 'BE 9210 YI', '60', 'EKONOMI', '2012', 'R0002', '', '', NULL),
('3', 'B0013', 'BE 5002 ZQ', '60', 'EKONOMI', '2013', 'R0002', '', '', NULL),
('4', 'B0014', 'BG 2902 QI', '60', 'EKONOMI', '2014', 'R0004', '', '', NULL),
('5', 'B0015', 'BG 2087 AG', '60', 'EKONOMI', '2015', 'R0005', '', '', NULL),
('6', 'B0016', 'BA 5085 ZE', '60', 'EKSEKUTIF', '2015', 'R0007', '', '', NULL),
('7', 'B0017', 'BA 7604 AE', '60', 'EKSEKUTIF', '2016', 'R0007', '', '', NULL),
('8', 'B0018', 'BD 5608 GY', '60', 'EKSEKUTIF', '2016', 'R0008', '', '', NULL),
('9', 'B0019', 'BD 4221 CG', '60', 'EKSEKUTIF', '2016', 'R0006', '', '', NULL),
('10', 'B0020', 'BD 3487 KG', '60', 'EKSEKUTIF', '2017', 'R0003', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('PENUMPANG', '', '', '', '', '', '', '', '', NULL),
('No', 'Kode User', 'Nama', 'Password', 'E-Mail', 'No Telp', 'Alamat', 'Jenis Kelamin', 'Id Bus', NULL),
('1', 'U001', 'Meta Yulia', 'PUmetaa1_', 'PUmetaa1_@gmail.com', '082317372821', 'Jl. Pahlawan No 31 Bandar Lampung', 'P', 'B0011', NULL),
('2', 'U002', 'Niken Rama', 'PUNikk_6', 'PUNikk_6@gmail.com', '085717372821', 'Jl. Teuku Umar No 198 Bandar Lampung', 'P', 'B0012', NULL),
('3', 'U003', 'Mery Anggun', 'PUMery-2', 'PUMery-2@gmail.com', '082217372829', 'Jl. Pulau Seram No 190 Bandar Lampung', 'P', 'B0018', NULL),
('4', 'U004', 'Bayu Saputra', 'PUBayu.4', 'PUBayu.4@gmail.com', '082317372889', 'Jl. Dr. Sam Ratulangi No 509 Bandar Lampung', 'L', 'B0015', NULL),
('5', 'U005', 'Reza Anugerah', 'PUReza_8', 'PUReza_8@gmail.com', '089917372861', 'Jl. Pahlawan No 189 Bandar Lampung', 'L', 'B0012', NULL),
('6', 'U006', 'David Mulyadi', 'PUDedi-21', 'PUDedi-21@gmail.com', '087717672828', 'Jl. Adipura no 98 Bandar Lampung', 'L', 'B0016', NULL),
('7', 'U007', 'Kristiawan', 'PUKris_7', 'PUKris_7@gmail.com', '085647372832', 'Jl.Urip Sumoharjo no 67 Bandar Lampung', 'L', 'B0017', NULL),
('8', 'U008', 'Reva Febriani', 'PURee-8', 'PURee-8@gmail.com', '082217372821', 'Jl. Danau Toba No 49 Bandar Lampung', 'P', 'B0014', NULL),
('9', 'U009', 'Wahyu Saputra', 'PUWahyu_0', 'PUWahyu_0@gmail.com', '089617372829', 'Jl. Sultan Agung No 197 Bandar Lampung', 'L', 'B0019', NULL),
('10', 'U010', 'Geri Pamungkas', 'PU_78q', 'PU_78q@gmail.com', '082117372890', 'Jl. Sultan Agung No 1107 Bandar Lampung', 'L', 'B0013', NULL),
('11', 'U011', 'Seli Fitriani', 'PU-sel2', 'PU-sel2@gmail.com', '082317372866', 'Jl. Teuku Umar No 286 Bandar Lampung', 'P', 'B0011', NULL),
('12', 'U012', 'Ahmad Zainudin', 'PU2232_', 'PU2232_@gmail.com', '082317372821', 'Jl. Gatot Subroto No.134 Bandar Lampung', 'L', 'B0018', NULL),
('13', 'U013', 'Rani Maharani', 'PU2817_', 'PU2817_@gmail.com', '082327372887', 'Jl. Kusuma Bangsa No.89 Bandar Lampung', 'P', 'B0020', NULL),
('14', 'U014', 'Rena Melia', 'PUrena-1', 'PUrena-1@gmail.com', '082237372567', 'Jl. Arif Rahman Hakin Sukarame Bandar Lampung', 'P', 'B0017', NULL),
('15', 'U015', 'Berta Mahendra', 'PUberta.5', 'PUberta.5@gmail.com', '082147375454', 'Perum Korpri No.99 Sukarame Bandar Lampung', 'L', 'B0015', NULL),
('16', 'U016', 'Fika Mareta', 'PUfikk_1', 'PUfikk_1@gmail.com', '085657372824', 'Jl. Perumahan Damai No.76 WayKandis Bandar Lampung', 'P', 'B0019', NULL),
('17', 'U017', 'Deva Aprilio', 'PU0601-_', 'PU0601-_@gmail.com', '082167372826', 'Jl. Raya Kecapi Kalianda Lampung Selatan', 'L', 'B0016', NULL),
('18', 'U018', 'Anisa ', 'PUnisa_', 'PUnisa_@gmail.com', '087777372889', 'Jl. Ratu Dibalau No.12 Tanjung Senang Bandar Lampung', 'P', 'B0020', NULL),
('19', 'U019', 'Andika Martin', 'PU2009_', 'PU2009_@gmail.com', '081287372812', 'Jl. Kusuma Bangsa No.111 Bandar Lampung', 'L', 'B0012', NULL),
('20', 'U020', 'Adi Firdaus', 'PUdaus-8', 'PUdaus-8@gmail.com', '082239737282', 'Jl. Putri Dibalau Antasari Bandar Lampung', 'L', 'B0011', NULL),
('21', 'U021', 'Dika Ramadani', 'PUadik.8', 'PUadik.8@gmail.com', '0856 73728210', 'Jl. Gajah Mada No. 49 Bandar Lampung', 'L', 'B0019', NULL),
('22', 'U022', 'Yuli Anisa', 'PUyuli_1', 'PUyuli_1@gmail.com', '08231173728211', 'Jl. Bulau Bacan No.99 Pasar Tugu Bandar Lampung', 'P', 'B0014', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('SUPIR', '', '', '', '', '', '', '', '', NULL),
('No', 'Id Supir', 'Nama', 'Alamat', 'No Telp', 'Id Bus', '', '', '', NULL),
('1', 'S001', 'Doni Cahyo', 'Jl. Gatot Subroto No.14 Sumatera Selatan', '082278764347', 'B0018', '', '', '', NULL),
('2', 'S002', 'Alfin Ramadhan', 'Jl. Imam Bonjol No. 234 Bandar Lampung', '085734245434', 'B0015', '', '', '', NULL),
('3', 'S003', 'Dio Pambudi', 'Jl. Nusantara No.01 Sumatera Barat', '089634676789', 'B0012', '', '', '', NULL),
('4', 'S004', 'Adi Sulastra', 'Jl. Airan Raya No. 32 Lampung Barat', '082198983208', 'B0016', '', '', '', NULL),
('5', 'S005', 'Mahesa Pamungkas', 'Jl. Ratu Dibalau No.12 Tanjung Senang Bandar Lampung', '085689890321', 'B0017', '', '', '', NULL),
('6', 'S006', 'Aziz Juliansyah', 'Jl. Kusuma Bangsa No.111 Bandar Lampung', '082334354356', 'B0014', '', '', '', NULL),
('7', 'S007', 'Dika Wibowo', 'Jl. Putri Dibalau Antasari Bandar Lampung', '089978780956', 'B0019', '', '', '', NULL),
('8', 'S008', 'Komang Haryadi', 'Jl. Gajah Mada No. 49 Sumatera Barat', '085657879700', 'B0013', '', '', '', NULL),
('9', 'S009', 'Reza Adila', 'Jl. Bulau Bacan No.99 Pasar Tugu Bandar Lampung', '089853230322', 'B0011', '', '', '', NULL),
('10', 'S010', 'Jore Ardiansyah', 'Jl. Airan Raya No. 78 Lampung Selatan', '089634254524', 'B0020', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('JADWAL', '', '', '', '', '', '', '', '', NULL),
('No', 'Id Jadwal', '\"Hari', ' tgl\"', 'Jam', 'Id Supir', 'Id Bus', 'Id Rute', '', ''),
('1', 'J1001', '\"Senin', ' 16 April 2018\"', '08:36:00', 'S001', 'B0011', 'R0002', '', ''),
('2', 'J1002', '\"Senin', ' 23 April 2018\"', '08:36:00', 'S009', 'B0018', 'R0002', '', ''),
('3', 'J1003', '\"Senin', ' 30 April 2018\"', '08:36:00', 'S003', 'B0020', 'R0006', '', ''),
('4', 'J2004', '\"Selasa', ' 17 April 2018\"', '07:45:00', 'S004', 'B0017', 'R0004', '', ''),
('5', 'J2005', '\"Selasa', ' 24 April 2018\"', '07:45:00', 'S009', 'B0015', 'R0005', '', ''),
('6', 'J2006', '\"Selasa', ' 01 Mei 2018\"', '07:45:00', 'S006', 'B0013', 'R0001', '', ''),
('7', 'J3007', '\"Rabu', ' 18 April 2018\"', '09:00:00', 'S002', 'B0016', 'R0007', '', ''),
('8', 'J3008', '\"Rabu', ' 02 April 2018\"', '09:00:00', 'S008', 'B0020', 'R0008', '', ''),
('9', 'J3009', '\"Kamis', ' 19 April 2018\"', '08:00:00', 'S003', 'B0012', 'R0005', '', ''),
('10', 'J3010', '\"Kamis', ' 26 April 2018\"', '08:30:00', 'S010', 'B0011', 'R0004', '', ''),
('11', 'J3011', '\"Jumat', ' 20 April 2018\"', '08:00:00', 'S005', 'B0019', 'R0003', '', ''),
('12', 'J3012', '\"Sabtu', ' 21 April 2018\"', '09:00:00', 'S007', 'B0014', 'R0001', '', ''),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('RUTE', '', '', '', '', '', '', '', '', NULL),
('No', 'Id Rute', 'Asal', 'Tujuan', 'Jarak', 'Waktu Tempuh', '', '', '', NULL),
('1', 'R0001', 'Bandar Lampung', 'Lampung Selatan', '51 KM', '1 jam 45 menit', '', '', '', NULL),
('2', 'R0002', 'Bandar Lampung', 'Palembang', '375 KM', '9 jam 43 menit', '', '', '', NULL),
('3', 'R0003', 'Bandar Lampung', 'Lampung Barat', '220 KM', '5 jam 18 menit', '', '', '', NULL),
('4', 'R0004', 'Bandar Lampung', 'Lampung Tengah', '82 KM', '2 jam 40 menit', '', '', '', NULL),
('5', 'R0005', 'Bandar Lampung', 'Lampung Timur', '92 KM', '2 jam 32 menit', '', '', '', NULL),
('6', 'R0006', 'Bandar Lampung', 'Prabumulih', '371 KM', '8 jam 21 menit', '', '', '', NULL),
('7', 'R0007', 'Bandar Lampung', 'Padang', '1091 KM', '22 jam 9 menit', '', '', '', NULL),
('8', 'R0008', 'Bandar Lampung', 'Lampung Barat', '220 KM', '5 jam 18 menit', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('Kursi', '', '', '', '', '', '', '', '', NULL),
('No', 'Nomor Kursi', 'Kapasitas', 'Kondisi', 'Id Bus', '', '', '', '', NULL),
('1', '001', '60 bangku', 'baik', 'B0012', '', '', '', '', NULL),
('2', '002', '61 bangku', 'baik', 'B0018', '', '', '', '', NULL),
('3', '003', '62 bangku', 'baik', 'B0015', '', '', '', '', NULL),
('4', '004', '63 bangku', 'baik', 'B0012', '', '', '', '', NULL),
('5', '005', '64 bangku', 'baik', 'B0016', '', '', '', '', NULL),
('6', '006', '65 bangku', 'baik', 'B0017', '', '', '', '', NULL),
('7', '007', '66 bangku', 'baik', 'B0014', '', '', '', '', NULL),
('8', '008', '67 bangku', 'baik', 'B0019', '', '', '', '', NULL),
('9', '009', '68 bangku', 'baik', 'B0013', '', '', '', '', NULL),
('10', '010', '69 bangku', 'baik', 'B0011', '', '', '', '', NULL),
('11', '011', '60 bangku', 'baik', 'B0018', '', '', '', '', NULL),
('12', '012', '60 bangku', 'baik', 'B0020', '', '', '', '', NULL),
('13', '013', '60 bangku', 'baik', 'B0017', '', '', '', '', NULL),
('14', '014', '60 bangku', 'baik', 'B0015', '', '', '', '', NULL),
('15', '015', '60 bangku', 'baik', 'B0019', '', '', '', '', NULL),
('16', '016', '60 bangku', 'baik', 'B0016', '', '', '', '', NULL),
('17', '017', '60 bangku', 'baik', 'B0020', '', '', '', '', NULL),
('18', '018', '60 bangku', 'baik', 'B0012', '', '', '', '', NULL),
('19', '019', '60 bangku', 'baik', 'B0011', '', '', '', '', NULL),
('20', '020', '60 bangku', 'baik', 'B0019', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('TIKET', '', '', '', '', '', '', '', '', NULL),
('No', 'Id Tiket', 'Id Jadwal', 'Id Rute', 'Id Bus', 'Id Kursi', 'Id User', '', '', NULL),
('1', 'T0001', 'J1001', 'R0001', 'B0014', '001', 'U001', '', '', NULL),
('2', 'T0002', 'J1002', 'R0002', 'B0018', '002', 'U002', '', '', NULL),
('3', 'T0003', 'J3008', 'R0002', 'B0015', '003', 'U003', '', '', NULL),
('4', 'T0004', 'J2004', 'R0004', 'B0012', '020', 'U004', '', '', NULL),
('5', 'T0005', 'J3009', 'R0005', 'B0016', '005', 'U005', '', '', NULL),
('6', 'T0006', 'J2006', 'R0007', 'B0017', '006', 'U006', '', '', NULL),
('7', 'T0007', 'J1003', 'R0007', 'B0014', '007', 'U007', '', '', NULL),
('8', 'T0008', 'J1001', 'R0008', 'B0019', '008', 'U008', '', '', NULL),
('9', 'T0009', 'J3009', 'R0006', 'B0013', '009', 'U009', '', '', NULL),
('10', 'T0010', 'J3010', 'R0003', 'B0011', '010', 'U010', '', '', NULL),
('11', 'T0011', 'J2005', 'R0006', 'B0018', '001', 'U011', '', '', NULL),
('12', 'T0012', 'J3012', 'R0004', 'B0020', '012', 'U012', '', '', NULL),
('13', 'T0013', 'J3011', 'R0005', 'B0017', '013', 'U013', '', '', NULL),
('14', 'T0014', 'J3008', 'R0001', 'B0015', '014', 'U014', '', '', NULL),
('15', 'T0015', 'J2004', 'R0007', 'B0019', '008', 'U015', '', '', NULL),
('16', 'T0016', 'J3007', 'R0008', 'B0016', '015', 'U016', '', '', NULL),
('17', 'T0017', 'J2005', 'R0005', 'B0014', '011', 'U017', '', '', NULL),
('18', 'T0018', 'J3012', 'R0004', 'B0012', '018', 'U018', '', '', NULL),
('19', 'T0019', 'J3011', 'R0003', 'B0011', '019', 'U019', '', '', NULL),
('20', 'T0020', 'J3010', 'R0001', 'B0018', '004', 'U020', '', '', NULL),
('21', 'T0021', 'J2006', 'R0008', 'B0015', '005', 'U021', '', '', NULL),
('22', 'T0022', 'J1003', 'R0003', 'B0014', '016', 'U022', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `id_tempat` varchar(5) NOT NULL,
  `id_kursi` varchar(5) NOT NULL,
  `id_bus` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempat`
--

INSERT INTO `tempat` (`id_tempat`, `id_kursi`, `id_bus`) VALUES
('P001', 'A001', 'B0011'),
('P002', 'A002', 'B0011'),
('P003', 'A003', 'B0011'),
('P004', 'A004', 'B0011'),
('P005', 'A005', 'B0011'),
('P006', 'A006', 'B0011'),
('P007', 'A007', 'B0011'),
('P008', 'A008', 'B0011'),
('P009', 'A009', 'B0011'),
('P010', 'A010', 'B0011'),
('P011', 'A011', 'B0011'),
('P012', 'A012', 'B0011'),
('P013', 'A013', 'B0011'),
('P014', 'A014', 'B0011'),
('P015', 'A015', 'B0011'),
('P016', 'A016', 'B0011'),
('P017', 'A017', 'B0011'),
('P018', 'A018', 'B0011'),
('P019', 'A019', 'B0011'),
('P020', 'A020', 'B0011'),
('P021', 'A021', 'B0011'),
('P022', 'A022', 'B0011'),
('P023', 'A023', 'B0011'),
('P024', 'A024', 'B0011'),
('P025', 'A025', 'B0011'),
('P026', 'A026', 'B0011'),
('P027', 'A027', 'B0011'),
('P028', 'A028', 'B0011'),
('P029', 'A029', 'B0011'),
('P030', 'A030', 'B0011'),
('P031', 'A031', 'B0011'),
('P032', 'A032', 'B0011'),
('P033', 'A033', 'B0011'),
('P034', 'A034', 'B0011'),
('P035', 'A035', 'B0011'),
('P036', 'A036', 'B0011'),
('P037', 'A037', 'B0011'),
('P038', 'A038', 'B0011'),
('P039', 'A039', 'B0011'),
('P040', 'A040', 'B0011'),
('P041', 'A041', 'B0011'),
('P042', 'A042', 'B0011'),
('P043', 'A043', 'B0011'),
('P044', 'A044', 'B0011'),
('P045', 'A045', 'B0011'),
('P046', 'A046', 'B0011'),
('P047', 'A047', 'B0011'),
('P048', 'A048', 'B0011'),
('P049', 'A049', 'B0011'),
('P050', 'A050', 'B0011'),
('P051', 'A051', 'B0011'),
('P052', 'A052', 'B0011'),
('P053', 'A053', 'B0011'),
('P054', 'A054', 'B0011'),
('P055', 'A055', 'B0011'),
('P056', 'A056', 'B0011'),
('P057', 'A057', 'B0011'),
('P058', 'A058', 'B0011'),
('P059', 'A059', 'B0011'),
('P060', 'A060', 'B0011'),
('P061', 'B001', 'B0017'),
('P062', 'B002', 'B0017'),
('P063', 'B003', 'B0017'),
('P064', 'B004', 'B0017'),
('P065', 'B005', 'B0017'),
('P066', 'B006', 'B0017'),
('P067', 'B007', 'B0017'),
('P068', 'B008', 'B0017'),
('P069', 'B009', 'B0017'),
('P070', 'B010', 'B0017'),
('P071', 'B011', 'B0017'),
('P072', 'B012', 'B0017'),
('P073', 'B013', 'B0017'),
('P074', 'B014', 'B0017'),
('P075', 'B015', 'B0017'),
('P076', 'B016', 'B0017'),
('P077', 'B017', 'B0017'),
('P078', 'B018', 'B0017'),
('P079', 'B019', 'B0017'),
('P080', 'B020', 'B0017'),
('P081', 'B021', 'B0017'),
('P082', 'B022', 'B0017'),
('P083', 'B023', 'B0017'),
('P084', 'B024', 'B0017'),
('P085', 'B025', 'B0017'),
('P086', 'B026', 'B0017'),
('P087', 'B027', 'B0017'),
('P088', 'B028', 'B0017'),
('P089', 'B029', 'B0017'),
('P090', 'B030', 'B0017'),
('P091', 'B031', 'B0017'),
('P092', 'B032', 'B0017'),
('P093', 'B033', 'B0017'),
('P094', 'B034', 'B0017'),
('P095', 'B035', 'B0017'),
('P096', 'B036', 'B0017'),
('P097', 'B037', 'B0017'),
('P098', 'B038', 'B0017'),
('P099', 'B039', 'B0017'),
('P100', 'B040', 'B0017'),
('P101', 'B041', 'B0017'),
('P102', 'B042', 'B0017'),
('P103', 'B043', 'B0017'),
('P104', 'B044', 'B0017'),
('P105', 'B045', 'B0017'),
('P106', 'B046', 'B0017'),
('P107', 'B047', 'B0017'),
('P108', 'B048', 'B0017'),
('P109', 'B049', 'B0017'),
('P110', 'B050', 'B0017'),
('P111', 'B051', 'B0017'),
('P112', 'B052', 'B0017'),
('P113', 'B053', 'B0017'),
('P114', 'B054', 'B0017'),
('P115', 'B055', 'B0017'),
('P116', 'B056', 'B0017'),
('P117', 'B057', 'B0017'),
('P118', 'B058', 'B0017'),
('P119', 'B059', 'B0017'),
('P120', 'B060', 'B0017'),
('P121', 'C001', 'B0016'),
('P122', 'C002', 'B0016'),
('P123', 'C003', 'B0016'),
('P124', 'C004', 'B0016'),
('P125', 'C005', 'B0016'),
('P126', 'C006', 'B0016'),
('P127', 'C007', 'B0016'),
('P128', 'C008', 'B0016'),
('P129', 'C009', 'B0016'),
('P130', 'C010', 'B0016'),
('P131', 'C011', 'B0016'),
('P132', 'C012', 'B0016'),
('P133', 'C013', 'B0016'),
('P134', 'C014', 'B0016'),
('P135', 'C015', 'B0016'),
('P136', 'C016', 'B0016'),
('P137', 'C017', 'B0016'),
('P138', 'C018', 'B0016'),
('P139', 'C019', 'B0016'),
('P140', 'C020', 'B0016'),
('P141', 'C021', 'B0016'),
('P142', 'C022', 'B0016'),
('P143', 'C023', 'B0016'),
('P144', 'C024', 'B0016'),
('P145', 'C025', 'B0016'),
('P146', 'C026', 'B0016'),
('P147', 'C027', 'B0016'),
('P148', 'C028', 'B0016'),
('P149', 'C029', 'B0016'),
('P150', 'C030', 'B0016'),
('P151', 'C031', 'B0016'),
('P152', 'C032', 'B0016'),
('P153', 'C033', 'B0016'),
('P154', 'C034', 'B0016'),
('P155', 'C035', 'B0016'),
('P156', 'C036', 'B0016'),
('P157', 'C037', 'B0016'),
('P158', 'C038', 'B0016'),
('P159', 'C039', 'B0016'),
('P160', 'C040', 'B0016'),
('P161', 'C041', 'B0016'),
('P162', 'C042', 'B0016'),
('P163', 'C043', 'B0016'),
('P164', 'C044', 'B0016'),
('P165', 'C045', 'B0016'),
('P166', 'C046', 'B0016'),
('P167', 'C047', 'B0016'),
('P168', 'C048', 'B0016'),
('P169', 'C049', 'B0016'),
('P170', 'C050', 'B0016'),
('P171', 'C051', 'B0016'),
('P172', 'C052', 'B0016'),
('P173', 'C053', 'B0016'),
('P174', 'C054', 'B0016'),
('P175', 'C055', 'B0016'),
('P176', 'C056', 'B0016'),
('P177', 'C057', 'B0016'),
('P178', 'C058', 'B0016'),
('P179', 'C059', 'B0016'),
('P180', 'C060', 'B0016'),
('P181', 'D001', 'B0014'),
('P182', 'D002', 'B0014'),
('P183', 'D003', 'B0014'),
('P184', 'D004', 'B0014'),
('P185', 'D005', 'B0014'),
('P186', 'D006', 'B0014'),
('P187', 'D007', 'B0014'),
('P188', 'D008', 'B0014'),
('P189', 'D009', 'B0014'),
('P190', 'D010', 'B0014'),
('P191', 'D011', 'B0014'),
('P192', 'D012', 'B0014'),
('P193', 'D013', 'B0014'),
('P194', 'D014', 'B0014'),
('P195', 'D015', 'B0014'),
('P196', 'D016', 'B0014'),
('P197', 'D017', 'B0014'),
('P198', 'D018', 'B0014'),
('P199', 'D019', 'B0014'),
('P200', 'D020', 'B0014'),
('P201', 'D021', 'B0014'),
('P202', 'D022', 'B0014'),
('P203', 'D023', 'B0014'),
('P204', 'D024', 'B0014'),
('P205', 'D025', 'B0014'),
('P206', 'D026', 'B0014'),
('P207', 'D027', 'B0014'),
('P208', 'D028', 'B0014'),
('P209', 'D029', 'B0014'),
('P210', 'D030', 'B0014'),
('P211', 'D031', 'B0014'),
('P212', 'D032', 'B0014'),
('P213', 'D033', 'B0014'),
('P214', 'D034', 'B0014'),
('P215', 'D035', 'B0014'),
('P216', 'D036', 'B0014'),
('P217', 'D037', 'B0014'),
('P218', 'D038', 'B0014'),
('P219', 'D039', 'B0014'),
('P220', 'D040', 'B0014'),
('P221', 'D041', 'B0014'),
('P222', 'D042', 'B0014'),
('P223', 'D043', 'B0014'),
('P224', 'D044', 'B0014'),
('P225', 'D045', 'B0014'),
('P226', 'D046', 'B0014'),
('P227', 'D047', 'B0014'),
('P228', 'D048', 'B0014'),
('P229', 'D049', 'B0014'),
('P230', 'D050', 'B0014'),
('P231', 'D051', 'B0014'),
('P232', 'D052', 'B0014'),
('P233', 'D053', 'B0014'),
('P234', 'D054', 'B0014'),
('P235', 'D055', 'B0014'),
('P236', 'D056', 'B0014'),
('P237', 'D057', 'B0014'),
('P238', 'D058', 'B0014'),
('P239', 'D059', 'B0014'),
('P240', 'D060', 'B0014'),
('P241', 'E121', 'B0018'),
('P242', 'E122', 'B0018'),
('P243', 'E123', 'B0018'),
('P244', 'E124', 'B0018'),
('P245', 'E125', 'B0018'),
('P246', 'E126', 'B0018');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(5) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `id_jadwal` varchar(5) NOT NULL,
  `kode_user` int(4) NOT NULL,
  `id_tempat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `tgl_pemesanan`, `id_jadwal`, `kode_user`, `id_tempat`) VALUES
(16, '2018-05-13', 'J4003', 2, 'P181'),
(17, '2018-05-13', 'J1001', 2, 'P003'),
(18, '2018-05-13', 'J1001', 1, 'P001'),
(19, '2018-05-13', 'J1001', 1, 'P002'),
(20, '2018-05-13', 'J1002', 2, 'P004'),
(21, '2018-05-16', 'J1001', 2, 'P006'),
(22, '2018-05-16', 'J1001', 2, 'P005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id_bus`),
  ADD KEY `id_supir` (`id_supir`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_lintasan` (`id_lintasan`);

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indexes for table `lintasan`
--
ALTER TABLE `lintasan`
  ADD PRIMARY KEY (`id_lintasan`),
  ADD KEY `Id_Bus` (`Id_Bus`),
  ADD KEY `id_rute` (`id_rute`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`kode_user`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`id_rute`);

--
-- Indexes for table `supir`
--
ALTER TABLE `supir`
  ADD UNIQUE KEY `id supir` (`id_supir`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`id_tempat`),
  ADD KEY `id_kursi` (`id_kursi`),
  ADD KEY `id_bus` (`id_bus`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_tempat` (`id_tempat`),
  ADD KEY `tiket_ibfk_6` (`kode_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `kode_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_2` FOREIGN KEY (`id_supir`) REFERENCES `supir` (`id_supir`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_lintasan`) REFERENCES `lintasan` (`id_lintasan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lintasan`
--
ALTER TABLE `lintasan`
  ADD CONSTRAINT `lintasan_ibfk_1` FOREIGN KEY (`Id_Bus`) REFERENCES `bus` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lintasan_ibfk_2` FOREIGN KEY (`id_rute`) REFERENCES `rute` (`id_rute`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tempat`
--
ALTER TABLE `tempat`
  ADD CONSTRAINT `tempat_ibfk_1` FOREIGN KEY (`id_kursi`) REFERENCES `kursi` (`id_kursi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tempat_ibfk_2` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`) ON UPDATE CASCADE;

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_4` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`),
  ADD CONSTRAINT `tiket_ibfk_5` FOREIGN KEY (`id_tempat`) REFERENCES `tempat` (`id_tempat`),
  ADD CONSTRAINT `tiket_ibfk_6` FOREIGN KEY (`kode_user`) REFERENCES `penumpang` (`kode_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
