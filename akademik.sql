-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2023 at 07:37 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` varchar(55) NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `quality` varchar(55) NOT NULL,
  `id_mhs` int(25) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `jurusan`, `quality`, `id_mhs`) VALUES
('LUBUK PANDAN', 'NO REASON', 'NO SALES', 1),
('SICINCIN', 'NO REASON', 'NO SALES', 1),
('SUNGAI ASAM', 'NO REASON', 'NO SALES', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` varchar(55) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `alamat` text,
  `mhs_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `mhs_id`) VALUES
('2X11 ENAM LINGKUNG', 'NOT RED AREA', '2X11 ENAM LINGKUNG', 1),
('2X11 KAYU TANAM', 'RED AREA', '2X11 KAYU TANAM\r\n', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
