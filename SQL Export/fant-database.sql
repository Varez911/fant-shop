-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for rekweb-fant
CREATE DATABASE IF NOT EXISTS `rekweb-fant` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rekweb-fant`;

-- Dumping structure for table rekweb-fant.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(50) DEFAULT NULL,
  `harga_barang` int(11) DEFAULT NULL,
  `deskripsi_barang` text DEFAULT NULL,
  `stok_barang` int(11) DEFAULT NULL,
  `gambar_barang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table rekweb-fant.barang: ~7 rows (approximately)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_barang`, `deskripsi_barang`, `stok_barang`, `gambar_barang`) VALUES
	(1, 'Highnect Sweater', 240000, NULL, 150, 'img/products/Highneck_sweatshirt_dress_5.jpg'),
	(2, 'Denim Jacket Tracker', 230000, NULL, 75, 'img/products/JAKET_BULU_IMITASI_4.jpg'),
	(3, 'Batik Flanel Shirt', 340000, NULL, 200, 'img/products/KEMEJA_CROPPED_KOTAK-KOTAK_4.jpg'),
	(4, 'Summer Coat Jacket', 650000, NULL, 175, 'img/products/JAKET_LUAR_BERSABUK_3.jpg'),
	(5, 'Winter Coat Jacket', 550000, NULL, 255, 'img/products/KEMEJA_WATER_REPELLENT_3.jpg'),
	(6, 'Florida Sweet Sweater', 340000, NULL, 200, 'img/products/Florida_print_sweatshirt_5.jpg');
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- Dumping structure for table rekweb-fant.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id_cart` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `status` enum('Cart','Purchased') DEFAULT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `FK__barang` (`id_barang`),
  KEY `FK__user` (`id_pelanggan`),
  CONSTRAINT `FK__barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK__user` FOREIGN KEY (`id_pelanggan`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table rekweb-fant.cart: ~2 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id_cart`, `id_barang`, `id_pelanggan`, `status`) VALUES
	(1, 4, 3, 'Cart'),
	(2, 1, 3, 'Cart');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table rekweb-fant.transaksi
CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `FK_transaksi_user` (`id_pelanggan`),
  KEY `FK_transaksi_barang` (`id_barang`),
  CONSTRAINT `FK_transaksi_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transaksi_user` FOREIGN KEY (`id_pelanggan`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table rekweb-fant.transaksi: ~3 rows (approximately)
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_barang`, `jumlah_barang`, `total_harga`, `tgl_transaksi`) VALUES
	(1, 1, 1, 2, 500000, '2020-12-30'),
	(2, 3, 2, 4, 1500000, '2021-01-08'),
	(3, 5, 3, 1, 450000, '2021-01-04');
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;

-- Dumping structure for table rekweb-fant.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) DEFAULT NULL,
  `email_user` varchar(50) DEFAULT NULL,
  `password_user` varchar(50) DEFAULT NULL,
  `status` enum('admin','user') DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table rekweb-fant.user: ~7 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id_user`, `nama_user`, `email_user`, `password_user`, `status`) VALUES
	(1, 'admin', 'admin@fant.com', 'admin', 'admin'),
	(2, 'Vareeez', 'varez.yeyez@itenas.ac.id', 'Df-21_[]{}', 'user'),
	(3, 'Gilang', 'gilang.rama@gmail.com', 'Jkllu213_', 'user'),
	(4, 'Fannie', 'fannie@itenas.ac.id', 'attacksh22', 'user'),
	(5, 'Mamang', 'hafid.doneka@gmail.com', 'Asd22A', 'user'),
	(6, 'Varez', 'varez.yeyez@gmail.com', 'varezy22', 'admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
