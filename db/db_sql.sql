-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.44 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dbspeakout
CREATE DATABASE IF NOT EXISTS `dbspeakout` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbspeakout`;

-- Dumping structure for table dbspeakout.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `kodejurusan` varchar(8) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `onview` int(1) DEFAULT NULL,
  `tglentry` datetime DEFAULT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `tglupdate` datetime DEFAULT NULL,
  `userupdate` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dbspeakout.jurusan: ~10 rows (approximately)
INSERT INTO `jurusan` (`kodejurusan`, `nama`, `onview`, `tglentry`, `userid`, `tglupdate`, `userupdate`) VALUES
	('JURU0001', 'SIJA', 1, '2025-04-23 14:27:27', 'admin', '2025-04-23 14:27:27', 'admin'),
	('JURU0002', 'TEK ', 1, '2025-04-23 14:27:37', 'admin', '2025-04-23 14:27:37', 'admin'),
	('JURU0003', 'TME', 1, '2025-04-23 14:27:46', 'admin', '2025-04-23 14:27:46', 'admin'),
	('JURU0004', 'TKR', 1, '2025-04-23 14:27:53', 'admin', '2025-04-23 14:27:53', 'admin'),
	('JURU0005', 'TFLM', 1, '2025-04-23 14:27:59', 'admin', '2025-04-23 14:27:59', 'admin'),
	('JURU0006', 'TITL', 1, '2025-04-23 14:28:06', 'admin', '2025-04-23 14:28:06', 'admin'),
	('JURU0007', 'KJIJ', 1, '2025-04-23 14:28:13', 'admin', '2025-04-23 14:28:13', 'admin'),
	('JURU0008', 'KGS', 1, '2025-04-23 14:28:39', 'admin', '2025-04-23 14:28:39', 'admin'),
	('JURU0009', 'jurusan kita', 0, '2025-04-24 09:45:26', 'admin', '2025-04-24 09:45:42', 'admin'),
	('JURU0010', 'TIA', 0, '2025-04-28 11:32:28', 'admin', '2025-04-28 11:32:41', 'admin');

-- Dumping structure for table dbspeakout.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `kodesiswa` varchar(8) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `masasekolah` int(1) DEFAULT NULL,
  `kelas` int(1) DEFAULT NULL,
  `kodejurusan` varchar(8) DEFAULT NULL,
  `indeks` int(1) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `notelp` varchar(12) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `tglentry` datetime DEFAULT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `tglupdate` datetime DEFAULT NULL,
  `userupdate` varchar(200) DEFAULT NULL,
  `onview` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table dbspeakout.siswa: ~12 rows (approximately)
INSERT INTO `siswa` (`kodesiswa`, `nama`, `nis`, `nisn`, `masasekolah`, `kelas`, `kodejurusan`, `indeks`, `alamat`, `notelp`, `tgllahir`, `tglentry`, `userid`, `tglupdate`, `userupdate`, `onview`) VALUES
	('SISW0001', 'Adelia Putri', '23100101', '0045217651', 3, 10, 'JURU0001', 1, 'Jl. Mawar No. 15, Jakarta', '85712345678', '2007-04-12', '2025-04-23 14:35:02', 'admin', '2025-04-23 20:16:33', 'admin', 1),
	('SISW0002', 'Dharma Wijaya', '23100102', '0045217652', 4, 10, 'JURU0007', 2, 'Jl. Merpati No. 20, Bandung', '85723456789', '2007-04-11', '2025-04-23 14:36:09', 'admin', '2025-04-23 20:17:57', 'admin', 1),
	('SISW0003', 'Nadia Ramadhan', '22110101', '0045217653', 3, 11, 'JURU0005', 3, 'Jl. Anggrek No. 7, Yogyakarta	', '85734567890', '2006-06-15', '2025-04-23 14:40:53', 'admin', '2025-04-23 20:18:37', 'admin', 1),
	('SISW0004', 'Rafi Alfarez', '22110102', '0045217654', 4, 11, 'JURU0006', 4, 'Jl. Cempaka No. 42, Surabaya', '85745678901', '2006-01-11', '2025-04-23 14:42:33', 'admin', '2025-04-23 20:18:51', 'admin', 1),
	('SISW0005', 'Mega Puspitasar', '21120101', '0045217655', 3, 12, 'JURU0003', 1, '	Jl. Teratai No. 10, Medan', '85756789012', '2005-06-21', '2025-04-23 14:44:58', 'admin', '2025-04-23 20:18:22', 'admin', 1),
	('SISW0006', 'Ilham Saputra', '21120102', '0045217656', 4, 12, 'JURU0004', 2, '	Jl. Nusa Indah No. 6, Malang', '85767890123', '2005-06-03', '2025-04-23 14:46:15', 'admin', '2025-04-23 20:18:10', 'admin', 1),
	('SISW0007', '	Ayu Lestari', '20130101', '0045217657', 4, 13, 'JURU0002', 3, 'Jl. Melati No. 9, Padang', '85778901234', '2004-12-01', '2025-04-23 14:47:39', 'admin', '2025-04-23 20:16:23', 'admin', 1),
	('SISW0008', 'Rendy Oktavian', '20130102', '0045217658', 4, 13, 'JURU0008', 4, 'Jl. Dahlia No. 13, Makassar', '85789012345', '2004-09-08', '2025-04-23 14:48:42', 'admin', '2025-04-23 20:19:08', 'admin', 1),
	('SISW0009', 'Amanda Chyntalista', '210021', '0120921', 3, 12, 'JURU0008', 1, 'jl. kebon jati', '088080808080', '2007-07-12', '2025-04-24 07:22:43', 'admin', '2025-04-24 07:22:43', 'admin', 1),
	('SISW0010', 'User Test Siswa', '000000', '000000', 4, 13, 'JURU0001', 2, 'XIII SIJA 2', '081234567890', '2005-12-31', '2025-04-24 08:04:05', 'admin', '2025-04-24 08:04:05', 'admin', 1),
	('SISW0011', 'Rafaeldhdhhdhd', '210293481', '12930129485`', 4, 12, 'JURU0001', 2, 'JL ', '0808080', '2025-04-24', '2025-04-24 09:43:42', 'admin', '2025-04-24 09:44:09', 'admin', 1),
	('SISW0012', 'Haykal', '0192381293810', '232193198', 3, 13, 'JURU0001', 2, 'kertosari', '842713831312', '2025-04-14', '2025-04-28 11:30:57', 'admin', '2025-04-28 11:30:57', 'admin', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
