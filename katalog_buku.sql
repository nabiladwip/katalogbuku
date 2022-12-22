-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 05:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katalog_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `id_kategori_blog` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id_blog`, `id_kategori_blog`, `id_user`, `tanggal`, `judul`, `isi`) VALUES
(6, 13, 1118, '2022-10-09', 'Belajar html pemula', '<p>hai gaiss namaku bila</p>\r\n'),
(7, 8, 1117, '2022-10-10', 'Tutorial membuat Coding', '<p>hi gais</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_kategori_buku` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `id_penerbit` int(11) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `sinopsis` text NOT NULL,
  `cover` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori_buku`, `judul`, `pengarang`, `id_penerbit`, `tahun_terbit`, `sinopsis`, `cover`) VALUES
(1, 1, 'Belajar PHP mudah', 'Nabila Dwi Paramita', 9, 2018, '<p>Belajar PHP dengan mudah</p>\r\n', 'download.jpg'),
(3, 10, 'Buku Pintar Desain Grafis', 'Asep Efendhy', 1, 2020, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum ullamcorper gravida. Nulla sit amet nunc et dui gravida euismod. Ut consectetur elit eu suscipit tincidunt. Vivamus hendrerit commodo imperdiet. Fusce ut enim ullamcorper, interdum diam gravida, bibendum turpis. Sed vitae leo ut velit efficitur viverra a fringilla metus. Sed ut tincidunt massa</p>\r\n', 'desain.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_blog`
--

CREATE TABLE `kategori_blog` (
  `id_kategori_blog` int(11) NOT NULL,
  `kategori_blog` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_blog`
--

INSERT INTO `kategori_blog` (`id_kategori_blog`, `kategori_blog`) VALUES
(1, 'Tutorial'),
(6, 'Review'),
(7, 'Wawancara'),
(8, 'DIY'),
(10, 'Kumpulan Pertanyaan (FAQ)'),
(11, 'Rekomendasi Film'),
(12, 'Tips dasar PHP'),
(13, 'HTML');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id_kategori_buku` int(11) NOT NULL,
  `kategori_buku` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id_kategori_buku`, `kategori_buku`) VALUES
(1, 'Koding'),
(2, 'Komik'),
(4, 'Buku Jaringan'),
(9, 'Majalah'),
(10, 'Desain '),
(11, 'Novel'),
(12, 'Komunikasi'),
(13, 'Biografi'),
(18, 'Karya Ilmiah');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `isi`, `tanggal`) VALUES
(1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam condimentum ullamcorper gravida. Nulla sit amet nunc et dui gravida euismod. Ut consectetur elit eu suscipit tincidunt. Vivamus hendrerit commodo imperdiet. Fusce ut enim ullamcorper, interdum diam gravida, bibendum turpis. Sed vitae leo ut velit efficitur viverra a fringilla metus. Sed ut tincidunt massa', '2022-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` int(11) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `penerbit`, `alamat`) VALUES
(1, 'Sinar Jaya', 'Jl. Gajah Mahda nomor 12 Malang\r\n'),
(8, 'Petualang Jingga', 'Jl. Sudirmo no 67 Surabaya, Jawa Timur'),
(9, 'Pelita Kasih', 'Jl. Gamon nomor 90B, Jakarta Timur');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(11) NOT NULL,
  `tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `tag`) VALUES
(2, 'PHP'),
(3, 'SQL'),
(4, 'HTML'),
(5, 'Gambar'),
(6, 'Horor'),
(7, 'Romance'),
(8, 'Dewasa'),
(9, 'Anak-Anak');

-- --------------------------------------------------------

--
-- Table structure for table `tag_buku`
--

CREATE TABLE `tag_buku` (
  `id_tag_buku` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag_buku`
--

INSERT INTO `tag_buku` (`id_tag_buku`, `id_buku`, `id_tag`) VALUES
(3, 1, 2),
(9, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `level` varchar(150) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `username`, `password`, `level`, `foto`) VALUES
(1115, 'Rafa Maulana', 'rafamaulana@student.ub.ac.id', 'rafa', '202cb962ac59075b964b07152d234b70', 'Superadmin', 'rafa.jpg'),
(1116, 'Yose Fernando', 'yosefernando@gmail.com', 'yose', '202cb962ac59075b964b07152d234b70', 'Superadmin', 'yose.jpg'),
(1117, 'Putri Diana', 'putridiana@gmail.com', 'putri', '202cb962ac59075b964b07152d234b70', 'Superadmin', 'putri.jpg'),
(1118, 'Nabila Dwi Paramita', 'nabila@gmail.com', 'bila', '202cb962ac59075b964b07152d234b70', 'Superadmin', 'photo_2022-10-07_05-54-26.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`),
  ADD UNIQUE KEY `id_kategori_blog` (`id_kategori_blog`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD UNIQUE KEY `id_kategori_buku` (`id_kategori_buku`),
  ADD UNIQUE KEY `id_penerbit` (`id_penerbit`);

--
-- Indexes for table `kategori_blog`
--
ALTER TABLE `kategori_blog`
  ADD PRIMARY KEY (`id_kategori_blog`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id_kategori_buku`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tag_buku`
--
ALTER TABLE `tag_buku`
  ADD PRIMARY KEY (`id_tag_buku`),
  ADD UNIQUE KEY `id_buku` (`id_buku`),
  ADD UNIQUE KEY `id_tag` (`id_tag`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_blog`
--
ALTER TABLE `kategori_blog`
  MODIFY `id_kategori_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id_kategori_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tag_buku`
--
ALTER TABLE `tag_buku`
  MODIFY `id_tag_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`id_kategori_blog`) REFERENCES `kategori_blog` (`id_kategori_blog`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_3` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buku_ibfk_4` FOREIGN KEY (`id_kategori_buku`) REFERENCES `kategori_buku` (`id_kategori_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag_buku`
--
ALTER TABLE `tag_buku`
  ADD CONSTRAINT `tag_buku_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id_tag`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tag_buku_ibfk_3` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
