-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2017 at 12:08 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `compiler_java`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `user_admin` varchar(225) NOT NULL,
  `nama_admin` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `user_admin`, `nama_admin`, `password`) VALUES
(1, 'rahmalia', 'rahmalia', 'rahmalia'),
(2, 'reliyanto', 'reliyanto', 'reliyanto');

-- --------------------------------------------------------

--
-- Table structure for table `soal_java`
--

CREATE TABLE `soal_java` (
  `id_soal` int(11) NOT NULL,
  `judul_soal` varchar(225) NOT NULL,
  `soal` text NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_java`
--

INSERT INTO `soal_java` (`id_soal`, `judul_soal`, `soal`, `jawaban`) VALUES
(1, 'Soal luas lingkaran', '<p> tentukan luas lingkaran dengan r = 4 cm</p>', 'mmm'),
(2, 'soal luas persegi panjang', '<p>tentukan tentukan luas dengan ketenp=2, l=2</p>', '4cm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `no_mahasiswa` varchar(225) NOT NULL,
  `user_id` varchar(225) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `nilai_praktikan` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `no_mahasiswa`, `user_id`, `user_name`, `password`, `nilai_praktikan`) VALUES
(2, '0103', 'syahputriaaa', 'syahputri', 'syahputri', 10),
(3, '0104', 'sherli', 'sherli', 'sherli', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_jawaban_java`
--

CREATE TABLE `user_jawaban_java` (
  `id_soal` int(11) NOT NULL,
  `user_id` varchar(225) DEFAULT NULL,
  `jawaban_user` varchar(225) DEFAULT NULL,
  `hasil_compile` varchar(225) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_jawaban_java`
--

INSERT INTO `user_jawaban_java` (`id_soal`, `user_id`, `jawaban_user`, `hasil_compile`, `status`) VALUES
(1, 'syahputri', NULL, NULL, NULL),
(2, 'syahputri', 'public class Main {\n    public static void main (String [] args) {\n           \n           int panjang =2;\n           int lebar =2;\n           \n           int Luas ;\n           \n           \n           Luas = panjang *', '4cm\n', 'Jawaban Anda Benar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `soal_java`
--
ALTER TABLE `soal_java`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_jawaban_java`
--
ALTER TABLE `user_jawaban_java`
  ADD PRIMARY KEY (`id_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `soal_java`
--
ALTER TABLE `soal_java`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_jawaban_java`
--
ALTER TABLE `user_jawaban_java`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_jawaban_java`
--
ALTER TABLE `user_jawaban_java`
  ADD CONSTRAINT `user_jawaban_java_ibfk_1` FOREIGN KEY (`id_soal`) REFERENCES `soal_java` (`id_soal`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
