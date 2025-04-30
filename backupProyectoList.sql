-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for proyectolist
CREATE DATABASE IF NOT EXISTS `proyectolist` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `proyectolist`;

-- Dumping structure for table proyectolist.task
CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `due_day` date DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- Dumping data for table proyectolist.task: ~40 rows (approximately)
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
REPLACE INTO `task` (`id`, `description`, `due_day`, `completed`, `created_at`, `id_user`) VALUES
	(6, 'jnoinlknkl', '2025-04-04', 0, '2025-04-24 02:08:35', NULL),
	(7, 'bggkkbh', '2025-04-04', 0, '2025-04-24 02:09:49', NULL),
	(8, 'nuevo1', '2025-04-05', 0, '2025-04-24 02:10:41', NULL),
	(9, 'nuevo2', '2025-04-03', 0, '2025-04-24 02:12:23', NULL),
	(10, 'vdvdvdsv', '2025-04-03', 0, '2025-04-24 02:16:36', NULL),
	(11, 'gngfngfng', '2025-04-04', 0, '2025-04-24 02:27:22', NULL),
	(12, 'hvgfcgvhjkb', '2025-04-03', 0, '2025-04-24 02:29:30', NULL),
	(13, 'hvgfcgvhjkb', '2025-04-03', 0, '2025-04-24 02:30:26', NULL),
	(14, 'nuevo6', '2025-04-03', 0, '2025-04-24 02:34:13', NULL),
	(15, 'ngfngfn', '2025-04-04', 0, '2025-04-24 02:37:51', NULL),
	(16, 'vdvdsvdsds nuevo', '2025-04-04', 0, '2025-04-24 02:38:56', NULL),
	(17, 'vovo', '2025-04-13', 0, '2025-04-24 02:40:10', NULL),
	(18, 'vdvds', '2025-04-03', 0, '2025-04-24 02:40:47', NULL),
	(19, 'fdvdsvd', '2025-04-04', 0, '2025-04-24 02:47:26', NULL),
	(20, 'bdfbdfd', '2025-04-04', 0, '2025-04-24 02:50:36', NULL),
	(21, 'bdfbdfd', '2025-04-04', 0, '2025-04-24 02:51:20', NULL),
	(22, 'bdfbdfd', '2025-04-04', 0, '2025-04-24 02:51:59', NULL),
	(23, 'vdvdsdsvd', '2025-04-04', 0, '2025-04-24 02:52:06', NULL),
	(24, 'vdvdsdsvd', '2025-04-04', 0, '2025-04-24 02:55:03', NULL),
	(25, 'vdsvdds', '2025-04-18', 0, '2025-04-24 02:55:08', NULL),
	(26, 'vdsvdds', '2025-04-18', 0, '2025-04-24 02:55:21', NULL),
	(27, 'vddvdsb', '2025-04-04', 0, '2025-04-24 02:55:30', NULL),
	(28, 'vddvdsb', '2025-04-04', 0, '2025-04-24 02:56:33', NULL),
	(29, 'bsdbsd', '2025-04-03', 0, '2025-04-24 02:56:38', NULL),
	(30, 'bsdbsd', '2025-04-03', 0, '2025-04-24 02:57:27', NULL),
	(31, 'vdsvd', '2025-04-02', 0, '2025-04-24 02:57:32', NULL),
	(32, 'vdsvd', '2025-04-02', 0, '2025-04-24 03:00:47', NULL),
	(33, 'gdsdsgs', '2025-04-04', 0, '2025-04-24 03:00:58', NULL),
	(34, 'gdsdsgs', '2025-04-04', 0, '2025-04-24 03:03:23', NULL),
	(45, 'dvdsvdvdsvd', '2025-04-04', 0, '2025-04-24 03:34:33', NULL),
	(46, 'nueva 20202', '2025-04-04', 0, '2025-04-24 03:37:07', NULL),
	(50, 'hola nada', '2025-04-24', 1, '2025-04-24 03:41:41', 2),
	(60, 'bhbkbvkhvj', '2025-04-04', 1, '2025-04-24 05:44:51', 1),
	(61, 'huhuuh', '2025-04-24', 1, '2025-04-24 05:51:52', 1),
	(63, 'vdvdsvdsv', '2025-04-25', 0, '2025-04-24 07:09:28', 1),
	(64, 'jugar', '2015-12-15', 0, '2025-04-24 22:50:16', 1),
	(66, 'vvsdvdsv', '2025-04-17', 0, '2025-04-24 22:52:26', 1),
	(67, 'jojojo', '2025-04-28', 1, '2025-04-28 18:35:39', 1),
	(68, 'lolol', '2025-04-28', 0, '2025-04-28 18:56:12', 1),
	(70, '48484', '2025-04-30', 0, '2025-04-30 15:10:14', 2);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;

-- Dumping structure for table proyectolist.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table proyectolist.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'cristian2025', 'cristian@gmail.com', '123456', '2025-04-22 21:23:37', '2025-04-30 14:24:02'),
	(2, 'koko1', 'yo@gmail.com', '123456', '2025-04-23 00:13:01', '2025-04-23 00:13:01'),
	(6, 'koko15', 'cristiancocabjn@gmail.com', '1233456', '2025-04-23 02:57:01', '2025-04-23 02:57:01'),
	(8, 'koko', 'yoi@gmail.vom', 'plplplp', '2025-04-30 14:28:53', '2025-04-30 14:28:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
users