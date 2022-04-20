-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 05:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourismlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `tourismlistplace`
--

CREATE TABLE `tourismlistplace` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `openDay` varchar(255) NOT NULL,
  `openTime` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourismlistplace`
--

INSERT INTO `tourismlistplace` (`id`, `title`, `description`, `openDay`, `openTime`, `price`, `location`, `img`, `img1`, `img2`, `img3`) VALUES
(9, 'Surabaya Submarine Monument', 'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410', 'Setiap Hari', '08.00 - 18.00', '5k', 'Jl Pemuda no 39, Embong Kaliasin, Kec. Genteng, Kota Surabaya, Jawa Timur', 'http://192.168.1.5/bab4v2/assets/images/atlantis.jpg', 'http://192.168.1.5/bab4v2/assets/images/atlantis2.jpg', 'http://192.168.1.5/bab4v2/assets/images/atlantis3.jpg', 'http://192.168.1.5/bab4v2/assets/images/atlantis4.jpg'),
(10, 'tugu pahlawan', 'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan (canalures) sebanyak 10 lengkungan, dan terbagi atas 11 ruas.', 'setiap hari', '08.00 - 18.00', '10k', 'Jl. Pahlawan, Alun-alun , Kec. Bubutan, Kota SBY, Jawa Timur 60174', 'http://192.168.1.5/bab4v2/assets/images/tugu.jpg', 'http://192.168.1.5/bab4v2/assets/images/tugu2.jpg', 'http://192.168.1.5/bab4v2/assets/images/tugu3.jpg', 'http://192.168.1.5/bab4v2/assets/images/tugu4.jpg'),
(12, '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tourismlistplace`
--
ALTER TABLE `tourismlistplace`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tourismlistplace`
--
ALTER TABLE `tourismlistplace`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
