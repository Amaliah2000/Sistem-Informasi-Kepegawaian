-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2013 at 11:30 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
  `id_absensi` int(10) NOT NULL auto_increment,
  `id_pegawai` varchar(10) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `status_masuk` enum('Y','N') NOT NULL default 'N',
  `status_keluar` enum('Y','N') NOT NULL default 'N',
  `ket` char(2) NOT NULL default 'NA',
  `terlambat` enum('Y','N') NOT NULL default 'N',
  PRIMARY KEY  (`id_absensi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_pegawai`, `tanggal_absen`, `jam_masuk`, `jam_keluar`, `status_masuk`, `status_keluar`, `ket`, `terlambat`) VALUES
(39, '0001', '2013-01-15', '03:28:26', '00:00:00', 'N', 'N', 'I', 'N'),
(37, '0001', '2013-01-16', '03:22:16', '03:22:26', 'Y', 'Y', 'M', 'Y'),
(40, '0001', '2013-01-14', '03:31:50', '00:00:00', 'N', 'N', 'S', 'N'),
(41, '0001', '2013-01-13', '03:32:39', '03:32:55', 'Y', 'Y', 'M', 'N'),
(42, '0001', '2013-01-12', '03:39:01', '03:39:15', 'Y', 'Y', 'M', 'N'),
(43, '0001', '2013-01-11', '03:53:54', '03:54:23', 'Y', 'Y', 'M', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `k_jabatan`
--

CREATE TABLE IF NOT EXISTS `cuti` (
  `id_pegawai` varchar(10) NOT NULL,
  `tanggal_pensiun` date NOT NULL,
    `keterangan_pensiun` text NOT NULL,
  PRIMARY KEY  (`id_pegawai`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_jabatan`
--

INSERT INTO `cuti` (`id_pegawai`, `tanggal_pensiun`, `keterangan_pensiun`) VALUES
('0001', '2053-01-15','Mencapai batasan kerja');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` varchar(10) NOT NULL,
  `nama_pegawai` varchar(40) NOT NULL,
  `biodata` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `jabatan` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY  (`id_pegawai`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `biodata`, `password`, `jabatan`, `status`) VALUES
('0001', 'Amaliah Safitri', 'Palembang, 11 Desember 2000', '12345', 'CEO', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE IF NOT EXISTS `cuti` (
  `id_cuti` int(4) NOT NULL auto_increment,
  `id_pegawai` varchar(10) NOT NULL,
  `tgl_cuti` date NOT NULL,
  `jenis_cuti` varchar(10) NOT NULL,
  `topik_pelatihan` varchar(100) NOT NULL,
  `keterangan_cuti` text NOT NULL,
  `hasil_pelatihan` int(10) NOT NULL,
  PRIMARY KEY  (`id_pelatihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pelatihan`
INSERT INTO `pelatihan` (`id_pelatihan`, `id_pegawai`, `tgl_pelatihan`, `topik_pelatihan`, `penyelenggara`, `hasil_pelatihan`) VALUES
(1, '0001', '2007 - 2010', 'SMA 1 Negeri Palembang', 'SMA 1 Negeri Palembang', 'SMA 1 Negeri Palembang');



-- --------------------------------------------------------
--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level_user` int(2) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `password`, `level_user`) VALUES
('admin', 'admin', 1),
('1234', '123456', 1),
('0001', '12345', 1);
