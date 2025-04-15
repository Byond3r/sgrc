-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-sgrc.alwaysdata.net
-- Generation Time: Sep 18, 2024 at 03:09 PM
-- Server version: 10.6.18-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--Database: `sgrc_brodetsgrcmono12`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie_plat`
--

CREATE TABLE `categorie_plat` (
  `id_cat` int(11) NOT NULL,
  `nom_cat` varchar(30) NOT NULL,
  `ordre_affichage_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorie_plat`
--

INSERT INTO `categorie_plat` (`id_cat`, `nom_cat`, `ordre_affichage_cat`) VALUES
(1, 'cuisine', 2),
(2, 'bar', 1),
(3, 'sommelier', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ligne_ticket`
--

CREATE TABLE `ligne_ticket` (
  `id_ligne_ticket` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `id_plat` int(11) NOT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `Etat` enum('En saisie','Demande','En cours','Pret','Servi') DEFAULT 'En saisie'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ligne_ticket`
--

INSERT INTO `ligne_ticket` (`id_ligne_ticket`, `id_ticket`, `id_plat`, `commentaire`, `Etat`) VALUES
(22408, 51, 106, NULL, 'Servi'),
(22409, 51, 106, NULL, 'Servi'),
(22410, 51, 107, NULL, 'En cours'),
(22411, 51, 107, NULL, 'En cours'),
(22412, 51, 108, 'pas de fruit de mer', 'En saisie'),
(22413, 51, 108, NULL, 'En saisie'),
(22414, 51, 109, 'pas de fraise', 'En saisie'),
(22415, 51, 109, NULL, 'En saisie'),
(22416, 51, 86, NULL, 'Servi'),
(22417, 51, 87, NULL, 'Servi'),
(22418, 51, 25, NULL, 'Servi'),
(22419, 51, 30, NULL, 'En cours'),
(22420, 51, 30, NULL, 'En cours'),
(22421, 53, 106, NULL, 'Servi'),
(22422, 53, 106, NULL, 'Servi'),
(22423, 53, 106, NULL, 'Servi'),
(22424, 53, 106, NULL, 'Servi'),
(22425, 53, 106, NULL, 'Servi'),
(22426, 53, 107, 'Pas de sesame', 'Servi'),
(22427, 53, 107, NULL, 'Servi'),
(22428, 53, 107, NULL, 'Servi'),
(22429, 53, 107, NULL, 'Servi'),
(22430, 53, 107, NULL, 'Servi'),
(22431, 53, 108, 'Sans sel', 'En saisie'),
(22432, 53, 108, NULL, 'En saisie'),
(22433, 53, 108, NULL, 'En saisie'),
(22434, 53, 108, NULL, 'En saisie'),
(22435, 53, 108, NULL, 'En saisie'),
(22436, 53, 109, NULL, 'En saisie'),
(22437, 53, 109, NULL, 'En saisie'),
(22438, 53, 109, NULL, 'En saisie'),
(22439, 53, 109, NULL, 'En saisie'),
(22440, 53, 109, NULL, 'En saisie'),
(22441, 53, 86, NULL, 'Servi'),
(22442, 53, 86, NULL, 'Servi'),
(22443, 53, 86, NULL, 'Servi'),
(22444, 53, 86, NULL, 'Servi'),
(22445, 53, 86, NULL, 'Servi'),
(22446, 53, 25, NULL, 'En cours'),
(22447, 53, 22, NULL, 'En saisie'),
(22448, 53, 22, NULL, 'En saisie'),
(22449, 53, 22, NULL, 'En saisie'),
(22450, 53, 23, NULL, 'En saisie'),
(22451, 53, 23, NULL, 'En saisie'),
(22452, 54, 106, NULL, 'En cours'),
(22453, 54, 106, NULL, 'En cours'),
(22454, 54, 107, NULL, 'En saisie'),
(22455, 54, 107, NULL, 'En saisie'),
(22456, 54, 108, NULL, 'En saisie'),
(22457, 54, 108, NULL, 'En saisie'),
(22458, 54, 109, NULL, 'En saisie'),
(22459, 54, 109, NULL, 'En saisie'),
(22460, 55, 106, NULL, 'Servi'),
(22461, 55, 106, NULL, 'Servi'),
(22465, 55, 108, NULL, 'En saisie'),
(22466, 55, 109, NULL, 'En saisie'),
(22467, 55, 109, NULL, 'En saisie'),
(22468, 55, 106, NULL, 'Servi'),
(22720, 55, 107, NULL, 'Servi'),
(22721, 55, 107, NULL, 'Servi'),
(22722, 55, 25, NULL, 'Servi'),
(22723, 55, 108, NULL, 'En saisie'),
(22724, 55, 108, NULL, 'En saisie'),
(22725, 57, 106, NULL, 'En saisie'),
(22726, 57, 107, NULL, 'En saisie'),
(22728, 57, 109, NULL, 'En saisie'),
(22729, 57, 110, NULL, 'En saisie'),
(22730, 57, 108, NULL, 'En saisie'),
(22731, 60, 106, 'sans sauce', 'Servi'),
(22732, 60, 106, 'sans sauce', 'Servi'),
(22733, 60, 106, NULL, 'Servi'),
(22734, 60, 106, NULL, 'Servi'),
(22735, 60, 106, NULL, 'Servi'),
(22736, 60, 107, NULL, 'En cours'),
(22737, 60, 107, NULL, 'En cours'),
(22738, 60, 107, NULL, 'En cours'),
(22739, 60, 107, NULL, 'En cours'),
(22740, 60, 107, NULL, 'En cours'),
(22741, 60, 108, NULL, 'En saisie'),
(22742, 60, 108, NULL, 'En saisie'),
(22743, 60, 108, NULL, 'En saisie'),
(22744, 60, 108, NULL, 'En saisie'),
(22745, 60, 108, NULL, 'En saisie'),
(22746, 60, 109, NULL, 'En saisie'),
(22747, 60, 109, NULL, 'En saisie'),
(22748, 60, 109, NULL, 'En saisie'),
(22749, 60, 109, NULL, 'En saisie'),
(22750, 60, 109, NULL, 'En saisie'),
(22751, 60, 25, NULL, 'Servi'),
(22752, 60, 25, NULL, 'Servi'),
(22753, 61, 106, 'Sans fruit sec', 'Servi'),
(22754, 61, 106, 'Sans fruit sec', 'Servi'),
(22755, 61, 106, NULL, 'Servi'),
(22756, 61, 106, NULL, 'Servi'),
(22757, 61, 107, NULL, 'Servi'),
(22758, 61, 107, NULL, 'Servi'),
(22759, 61, 107, NULL, 'Servi'),
(22760, 61, 107, NULL, 'Servi'),
(22761, 61, 108, NULL, 'Servi'),
(22762, 61, 108, NULL, 'Servi'),
(22763, 61, 108, NULL, 'Servi'),
(22764, 61, 108, NULL, 'Servi'),
(22765, 62, 33, NULL, 'Servi'),
(22766, 63, 25, NULL, 'Servi'),
(22767, 62, 106, NULL, 'Servi'),
(22768, 62, 106, NULL, 'Servi'),
(22769, 62, 106, NULL, 'Servi'),
(22770, 62, 106, NULL, 'Servi'),
(22771, 62, 107, NULL, 'Servi'),
(22772, 62, 107, NULL, 'Servi'),
(22773, 62, 107, NULL, 'Servi'),
(22774, 62, 107, NULL, 'Servi'),
(22775, 62, 108, NULL, 'Servi'),
(22776, 62, 108, NULL, 'Servi'),
(22777, 62, 108, NULL, 'Servi'),
(22778, 62, 108, NULL, 'Servi'),
(22779, 62, 109, NULL, 'Servi'),
(22780, 62, 109, NULL, 'Servi'),
(22781, 62, 109, NULL, 'Servi'),
(22782, 62, 109, NULL, 'Servi'),
(22783, 63, 86, NULL, 'Servi'),
(22784, 62, 97, NULL, 'Servi'),
(22785, 62, 97, NULL, 'Servi'),
(22789, 62, 25, NULL, 'Servi'),
(22790, 63, 97, NULL, 'Servi'),
(22794, 62, 26, NULL, 'Servi'),
(22795, 63, 106, NULL, 'Servi'),
(22796, 63, 106, NULL, 'Servi'),
(22797, 63, 106, NULL, 'Servi'),
(22798, 61, 86, NULL, 'Servi'),
(22799, 61, 86, NULL, 'Servi'),
(22800, 61, 86, NULL, 'Servi'),
(22801, 61, 86, NULL, 'Servi'),
(22802, 63, 107, NULL, 'Servi'),
(22803, 63, 107, NULL, 'Servi'),
(22804, 63, 107, NULL, 'Servi'),
(22805, 63, 108, NULL, 'Servi'),
(22806, 63, 108, NULL, 'Servi'),
(22807, 63, 108, NULL, 'Servi'),
(22808, 63, 109, NULL, 'Servi'),
(22809, 63, 109, NULL, 'Servi'),
(22811, 64, 108, NULL, 'Servi'),
(22812, 64, 25, NULL, 'Servi'),
(22813, 64, 25, NULL, 'Servi'),
(22814, 64, 17, NULL, 'Servi'),
(22815, 64, 106, NULL, 'Servi'),
(22816, 64, 106, NULL, 'Servi'),
(22817, 64, 106, NULL, 'Servi'),
(22818, 62, 109, NULL, 'Servi'),
(22819, 62, 109, NULL, 'Servi'),
(22820, 62, 109, NULL, 'Servi'),
(22821, 62, 109, NULL, 'Servi'),
(22822, 67, 95, NULL, 'En cours'),
(22823, 67, 95, NULL, 'En cours'),
(22824, 67, 95, NULL, 'En cours'),
(22825, 67, 95, NULL, 'En cours'),
(22826, 67, 95, NULL, 'En cours'),
(22827, 67, 95, NULL, 'En cours'),
(22828, 67, 95, NULL, 'En cours'),
(22829, 68, 106, NULL, 'Servi'),
(22830, 68, 106, NULL, 'Servi'),
(22831, 68, 106, NULL, 'Servi'),
(22832, 68, 106, NULL, 'Servi'),
(22833, 69, 106, NULL, 'Servi'),
(22834, 66, 106, NULL, 'Servi'),
(22835, 66, 106, NULL, 'Servi'),
(22836, 66, 106, NULL, 'Servi'),
(22837, 66, 107, NULL, 'Servi'),
(22838, 66, 107, NULL, 'Servi'),
(22839, 66, 107, NULL, 'Servi'),
(22840, 66, 108, NULL, 'Servi'),
(22841, 66, 108, NULL, 'Servi'),
(22842, 66, 108, NULL, 'Servi'),
(22843, 66, 109, NULL, 'Servi'),
(22844, 66, 109, NULL, 'Servi'),
(22845, 66, 109, NULL, 'Servi'),
(22846, 66, 25, NULL, 'Servi'),
(22847, 66, 25, NULL, 'Servi'),
(22848, 66, 25, NULL, 'Servi'),
(22849, 65, 18, NULL, 'En saisie'),
(22850, 65, 18, NULL, 'En saisie'),
(22851, 65, 18, NULL, 'En saisie'),
(22852, 65, 18, NULL, 'En saisie'),
(22882, 70, 106, NULL, 'Servi'),
(22883, 70, 106, NULL, 'Servi'),
(22884, 70, 106, NULL, 'Servi'),
(22891, 72, 108, NULL, 'Servi'),
(22892, 72, 108, NULL, 'Servi'),
(22893, 72, 108, NULL, 'Servi'),
(22894, 72, 109, NULL, 'Servi'),
(22895, 72, 109, NULL, 'Servi'),
(22896, 72, 109, NULL, 'Servi'),
(22897, 72, 97, NULL, 'Servi'),
(22898, 72, 97, NULL, 'Servi'),
(22899, 72, 97, NULL, 'Servi'),
(22902, 73, 107, 'Sans fruit sec', 'Servi'),
(22903, 73, 107, 'Sans fruit sec', 'Servi'),
(22904, 74, 109, NULL, 'Servi'),
(22905, 74, 109, NULL, 'Servi'),
(22906, 74, 106, NULL, 'Servi'),
(22907, 74, 106, NULL, 'Servi'),
(22908, 74, 106, NULL, 'Servi'),
(22909, 74, 107, NULL, 'Servi'),
(22910, 74, 107, NULL, 'Servi'),
(22911, 74, 107, NULL, 'Servi'),
(22912, 74, 108, 'pas de betrave', 'Servi'),
(22913, 74, 108, NULL, 'Servi'),
(22914, 74, 108, NULL, 'Servi'),
(22917, 74, 25, NULL, 'Servi'),
(22918, 74, 97, NULL, 'Servi'),
(22919, 74, 25, NULL, 'Servi'),
(22920, 76, 108, 'sans sel', 'Servi'),
(22922, 76, 87, 'sans glacon', 'Servi'),
(22930, 78, 86, NULL, 'Servi'),
(22931, 78, 86, NULL, 'Servi'),
(22933, 78, 109, NULL, 'Servi'),
(22956, 78, 107, NULL, 'En saisie'),
(22957, 78, 107, NULL, 'En saisie'),
(22958, 78, 107, NULL, 'En saisie'),
(22959, 78, 107, NULL, 'En saisie'),
(22960, 75, 108, 'pas piquant', 'Servi'),
(22961, 75, 108, 'pas piquant', 'Servi'),
(22962, 75, 108, NULL, 'Servi'),
(22963, 75, 108, NULL, 'Servi'),
(22965, 75, 18, NULL, 'Servi'),
(22966, 75, 106, NULL, 'Servi'),
(22967, 75, 106, NULL, 'Servi'),
(22968, 75, 95, NULL, 'Servi'),
(22969, 75, 95, NULL, 'Servi'),
(22970, 75, 95, NULL, 'Servi'),
(22971, 75, 95, NULL, 'Servi'),
(23030, 80, 106, 'Sans fruit sec', 'Servi'),
(23031, 80, 106, NULL, 'Servi'),
(23032, 80, 106, NULL, 'Servi'),
(23033, 83, 106, NULL, 'Pret'),
(23034, 83, 106, NULL, 'Pret'),
(23035, 83, 107, NULL, 'Pret'),
(23036, 83, 107, NULL, 'Pret'),
(23037, 80, 107, 'Avec supplément en sauce', 'Servi'),
(23038, 80, 107, NULL, 'Servi'),
(23039, 80, 107, NULL, 'Servi'),
(23040, 83, 108, NULL, 'Pret'),
(23041, 83, 108, NULL, 'Pret'),
(23042, 83, 109, NULL, 'Pret'),
(23043, 83, 109, NULL, 'Pret'),
(23044, 83, 97, NULL, 'Pret'),
(23045, 83, 97, NULL, 'Pret'),
(23052, 80, 106, NULL, 'Servi'),
(23053, 80, 106, NULL, 'Servi'),
(23054, 80, 106, NULL, 'Servi'),
(23055, 80, 106, NULL, 'Servi'),
(23056, 80, 106, NULL, 'Servi'),
(23057, 80, 108, 'sans viande', 'Servi'),
(23058, 80, 108, NULL, 'Servi'),
(23059, 80, 108, NULL, 'Servi'),
(23060, 81, 107, NULL, 'Servi'),
(23061, 81, 107, NULL, 'Servi'),
(23062, 81, 107, NULL, 'Servi'),
(23063, 81, 107, NULL, 'Servi'),
(23064, 81, 107, NULL, 'Servi'),
(23065, 81, 107, NULL, 'Servi'),
(23066, 81, 107, NULL, 'Servi'),
(23067, 81, 108, NULL, 'Servi'),
(23068, 81, 108, NULL, 'Servi'),
(23069, 81, 108, NULL, 'Servi'),
(23070, 81, 108, NULL, 'Servi'),
(23071, 81, 108, NULL, 'Servi'),
(23072, 81, 108, NULL, 'Servi'),
(23073, 81, 108, NULL, 'Servi'),
(23074, 81, 101, NULL, 'Servi'),
(23075, 81, 101, NULL, 'Servi'),
(23076, 81, 101, NULL, 'Servi'),
(23077, 81, 101, NULL, 'Servi'),
(23078, 81, 101, NULL, 'Servi'),
(23079, 81, 101, NULL, 'Servi'),
(23080, 81, 101, NULL, 'Servi'),
(23081, 81, 109, NULL, 'Servi'),
(23082, 81, 109, NULL, 'Servi'),
(23083, 81, 109, NULL, 'Servi'),
(23084, 81, 109, NULL, 'Servi'),
(23085, 81, 109, NULL, 'Servi'),
(23086, 81, 109, NULL, 'Servi'),
(23087, 81, 109, NULL, 'Servi'),
(23088, 81, 20, NULL, 'Servi'),
(23089, 81, 20, NULL, 'Servi'),
(23090, 81, 20, NULL, 'Servi'),
(23091, 81, 20, NULL, 'Servi'),
(23092, 81, 20, NULL, 'Servi'),
(23093, 81, 20, NULL, 'Servi'),
(23094, 81, 20, NULL, 'Servi'),
(23095, 81, 23, NULL, 'Servi'),
(23096, 81, 23, NULL, 'Servi'),
(23097, 81, 23, NULL, 'Servi'),
(23098, 81, 23, NULL, 'Servi'),
(23099, 81, 23, NULL, 'Servi'),
(23100, 81, 23, NULL, 'Servi'),
(23101, 81, 23, NULL, 'Servi'),
(23102, 81, 17, NULL, 'Servi'),
(23103, 81, 17, NULL, 'Servi'),
(23104, 81, 17, NULL, 'Servi'),
(23105, 81, 17, NULL, 'Servi'),
(23106, 81, 17, NULL, 'Servi'),
(23107, 81, 17, NULL, 'Servi'),
(23108, 81, 17, NULL, 'Servi'),
(23109, 81, 104, NULL, 'Servi'),
(23110, 81, 104, NULL, 'Servi'),
(23111, 81, 104, NULL, 'Servi'),
(23112, 81, 104, NULL, 'Servi'),
(23113, 81, 104, NULL, 'Servi'),
(23114, 81, 104, NULL, 'Servi'),
(23115, 81, 104, NULL, 'Servi'),
(23116, 81, 19, NULL, 'Servi'),
(23117, 81, 19, NULL, 'Servi'),
(23118, 81, 19, NULL, 'Servi'),
(23119, 81, 19, NULL, 'Servi'),
(23120, 81, 19, NULL, 'Servi'),
(23121, 81, 19, NULL, 'Servi'),
(23122, 81, 19, NULL, 'Servi'),
(23123, 80, 109, 'sans fruit sec', 'Servi'),
(23124, 80, 109, NULL, 'Servi'),
(23125, 80, 109, NULL, 'Servi'),
(23133, 82, 106, NULL, 'Pret'),
(23134, 88, 106, NULL, 'En saisie'),
(23135, 88, 106, NULL, 'En saisie'),
(23136, 88, 106, NULL, 'En saisie'),
(23137, 88, 106, NULL, 'En saisie'),
(23138, 88, 106, NULL, 'En saisie'),
(23139, 89, 106, NULL, 'Servi'),
(23140, 89, 106, NULL, 'Servi'),
(23141, 89, 106, NULL, 'Servi'),
(23142, 89, 106, NULL, 'Servi'),
(23143, 89, 106, NULL, 'Servi'),
(23144, 82, 106, NULL, 'Pret'),
(23145, 82, 108, NULL, 'Pret'),
(23146, 82, 109, NULL, 'Pret'),
(23147, 85, 106, NULL, 'Pret'),
(23148, 85, 106, NULL, 'Pret'),
(23149, 85, 107, NULL, 'Pret'),
(23150, 85, 107, NULL, 'Pret'),
(23151, 90, 106, NULL, 'Pret'),
(23152, 90, 106, NULL, 'Pret'),
(23153, 90, 106, NULL, 'Pret'),
(23154, 90, 106, NULL, 'Pret'),
(23155, 87, 107, NULL, 'Pret'),
(23156, 91, 109, NULL, 'Pret'),
(23157, 92, 108, NULL, 'Pret'),
(23158, 89, 107, NULL, 'Pret'),
(23159, 89, 107, NULL, 'Pret'),
(23160, 89, 107, NULL, 'Pret'),
(23161, 89, 107, NULL, 'Pret'),
(23162, 89, 107, NULL, 'Pret'),
(23163, 89, 108, NULL, 'En saisie'),
(23164, 89, 108, NULL, 'En saisie'),
(23165, 89, 108, NULL, 'En saisie'),
(23166, 89, 108, NULL, 'En saisie'),
(23167, 89, 108, NULL, 'En saisie'),
(23168, 89, 109, NULL, 'En saisie'),
(23169, 89, 109, NULL, 'En saisie'),
(23170, 89, 109, NULL, 'En saisie'),
(23171, 89, 109, NULL, 'En saisie'),
(23172, 89, 109, NULL, 'En saisie'),
(23173, 94, 106, NULL, 'Pret'),
(23198, 98, 106, NULL, 'Pret'),
(23199, 98, 107, NULL, 'Pret'),
(23200, 98, 108, NULL, 'Pret'),
(23201, 98, 109, NULL, 'Pret'),
(23202, 98, 97, NULL, 'Pret'),
(23205, 100, 101, NULL, 'Servi'),
(23206, 100, 101, NULL, 'Servi'),
(23207, 100, 97, NULL, 'Servi'),
(23208, 100, 97, NULL, 'Servi'),
(23209, 100, 25, NULL, 'Servi'),
(23210, 100, 106, NULL, 'Servi'),
(23211, 100, 106, NULL, 'Servi'),
(23212, 100, 107, NULL, 'Servi'),
(23213, 100, 107, NULL, 'Servi'),
(23214, 100, 108, NULL, 'Servi'),
(23215, 100, 108, NULL, 'Servi'),
(23216, 100, 109, NULL, 'Servi'),
(23217, 100, 109, NULL, 'Servi'),
(23218, 93, 96, NULL, 'Servi'),
(23219, 93, 96, NULL, 'Servi'),
(23220, 93, 96, NULL, 'Servi'),
(23221, 101, 106, NULL, 'En cours'),
(23222, 101, 106, NULL, 'En saisie'),
(23223, 101, 107, NULL, 'En saisie'),
(23224, 101, 109, NULL, 'En saisie'),
(23225, 99, 107, NULL, 'Servi'),
(23226, 99, 107, NULL, 'Servi'),
(23227, 99, 106, NULL, 'Servi'),
(23228, 99, 106, NULL, 'Servi'),
(23229, 99, 108, NULL, 'Servi'),
(23230, 99, 108, NULL, 'Servi'),
(23231, 99, 109, NULL, 'Servi'),
(23232, 99, 109, NULL, 'Servi'),
(23233, 102, 107, NULL, 'Servi'),
(23234, 102, 107, NULL, 'Servi'),
(23235, 102, 108, NULL, 'Servi'),
(23236, 102, 108, NULL, 'Servi');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nom_menu` varchar(50) NOT NULL DEFAULT 'nom du menu',
  `PU` float NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `date_menu` date DEFAULT NULL,
  `vu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `PU`, `description`, `date_menu`, `vu`) VALUES
(60, 'menu du jour de test', 15, 'menu', '2024-04-04', 0),
(61, 'Menu de test du 28 05 24', 15, 'Menu de test', '2024-05-28', 0),
(62, 'menu du jour', 12, 'menu de test', '2024-06-04', 0),
(63, 'Menu du 4 septembre', 10, 'menu de test', '2024-09-04', 0),
(64, 'menu du 11/09/2024', 20, 'menu de test', '2024-09-11', 0),
(65, 'test', 10, 'test', '2024-09-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_contient_plat`
--

CREATE TABLE `menu_contient_plat` (
  `id_menu` int(11) NOT NULL,
  `id_plat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_contient_plat`
--

INSERT INTO `menu_contient_plat` (`id_menu`, `id_plat`) VALUES
(60, 9),
(60, 10),
(60, 11),
(60, 12),
(60, 13),
(60, 14),
(60, 15),
(60, 16),
(60, 17),
(60, 18),
(60, 19),
(60, 20),
(60, 21),
(60, 22),
(60, 23),
(60, 24),
(60, 25),
(60, 26),
(60, 27),
(60, 28),
(60, 30),
(60, 31),
(60, 32),
(60, 33),
(60, 34),
(60, 35),
(60, 36),
(60, 37),
(60, 68),
(60, 86),
(60, 87),
(60, 92),
(60, 93),
(60, 94),
(60, 95),
(60, 96),
(60, 97),
(60, 98),
(60, 99),
(60, 100),
(60, 101),
(60, 102),
(60, 103),
(60, 104),
(60, 105),
(60, 106),
(60, 107),
(60, 108),
(60, 109),
(61, 9),
(61, 10),
(61, 11),
(61, 12),
(61, 13),
(61, 14),
(61, 15),
(61, 16),
(61, 17),
(61, 18),
(61, 19),
(61, 20),
(61, 21),
(61, 22),
(61, 23),
(61, 24),
(61, 25),
(61, 26),
(61, 27),
(61, 28),
(61, 30),
(61, 31),
(61, 32),
(61, 33),
(61, 34),
(61, 35),
(61, 36),
(61, 37),
(61, 68),
(61, 86),
(61, 87),
(61, 92),
(61, 93),
(61, 94),
(61, 95),
(61, 96),
(61, 97),
(61, 98),
(61, 99),
(61, 100),
(61, 101),
(61, 102),
(61, 103),
(61, 104),
(61, 105),
(61, 106),
(61, 107),
(61, 108),
(61, 109),
(62, 9),
(62, 10),
(62, 11),
(62, 12),
(62, 13),
(62, 14),
(62, 15),
(62, 16),
(62, 17),
(62, 18),
(62, 19),
(62, 20),
(62, 21),
(62, 22),
(62, 23),
(62, 24),
(62, 25),
(62, 26),
(62, 27),
(62, 28),
(62, 30),
(62, 31),
(62, 32),
(62, 33),
(62, 34),
(62, 35),
(62, 36),
(62, 37),
(62, 68),
(62, 86),
(62, 87),
(62, 92),
(62, 93),
(62, 94),
(62, 95),
(62, 96),
(62, 97),
(62, 98),
(62, 99),
(62, 100),
(62, 101),
(62, 102),
(62, 103),
(62, 104),
(62, 105),
(62, 106),
(62, 107),
(62, 108),
(62, 109),
(62, 110),
(63, 9),
(63, 10),
(63, 11),
(63, 12),
(63, 13),
(63, 14),
(63, 15),
(63, 16),
(63, 17),
(63, 18),
(63, 19),
(63, 20),
(63, 21),
(63, 22),
(63, 23),
(63, 24),
(63, 25),
(63, 26),
(63, 27),
(63, 28),
(63, 30),
(63, 31),
(63, 32),
(63, 33),
(63, 34),
(63, 35),
(63, 36),
(63, 37),
(63, 68),
(63, 86),
(63, 87),
(63, 92),
(63, 93),
(63, 94),
(63, 95),
(63, 96),
(63, 97),
(63, 98),
(63, 99),
(63, 100),
(63, 101),
(63, 102),
(63, 103),
(63, 104),
(63, 105),
(63, 106),
(63, 107),
(63, 108),
(63, 109),
(64, 9),
(64, 10),
(64, 11),
(64, 12),
(64, 13),
(64, 14),
(64, 15),
(64, 16),
(64, 17),
(64, 18),
(64, 19),
(64, 20),
(64, 21),
(64, 22),
(64, 23),
(64, 24),
(64, 25),
(64, 26),
(64, 27),
(64, 28),
(64, 30),
(64, 31),
(64, 32),
(64, 33),
(64, 34),
(64, 35),
(64, 36),
(64, 37),
(64, 68),
(64, 86),
(64, 87),
(64, 92),
(64, 93),
(64, 94),
(64, 95),
(64, 96),
(64, 97),
(64, 98),
(64, 99),
(64, 100),
(64, 101),
(64, 102),
(64, 103),
(64, 104),
(64, 105),
(64, 106),
(64, 107),
(64, 108),
(64, 109),
(65, 9),
(65, 10),
(65, 11),
(65, 12),
(65, 13),
(65, 14),
(65, 15),
(65, 16),
(65, 17),
(65, 18),
(65, 19),
(65, 20),
(65, 21),
(65, 22),
(65, 23),
(65, 24),
(65, 25),
(65, 26),
(65, 27),
(65, 28),
(65, 30),
(65, 31),
(65, 32),
(65, 33),
(65, 34),
(65, 35),
(65, 36),
(65, 37),
(65, 68),
(65, 86),
(65, 87),
(65, 92),
(65, 93),
(65, 94),
(65, 95),
(65, 96),
(65, 97),
(65, 98),
(65, 99),
(65, 100),
(65, 101),
(65, 102),
(65, 103),
(65, 104),
(65, 105),
(65, 106),
(65, 107),
(65, 108),
(65, 109);

-- --------------------------------------------------------

--
-- Table structure for table `plat`
--

CREATE TABLE `plat` (
  `id_plat` int(11) NOT NULL,
  `nom_plat` varchar(50) NOT NULL DEFAULT 'nom du plat',
  `description` text NOT NULL,
  `type_plat` varchar(10) NOT NULL DEFAULT 'entplades',
  `PU_carte` float(11,2) NOT NULL DEFAULT 0.00,
  `id_sous_cat` int(11) DEFAULT 1,
  `vu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plat`
--

INSERT INTO `plat` (`id_plat`, `nom_plat`, `description`, `type_plat`, `PU_carte`, `id_sous_cat`, `vu`) VALUES
(9, 'AOC Côtes du Rhône BLANC 75cl', 'domaine Guigal', 'boisson', 18.00, 9, 0),
(10, 'AOC Côtes du Rhône 1/2   BLANC 37.5cl', 'domaine Guigal', 'boisson', 11.50, 9, 0),
(11, 'AOC Chablis 1/2 BLANC 37.5cl', 'domaine Jean Paul et Benoit  Droin 2018', 'boisson', 15.50, 9, 0),
(12, 'AOC Chablis BLANC 75cl', 'domaine Jean Paul et Benoit  Droin 2019', 'boisson', 26.50, 9, 0),
(13, 'AOC Macon villages BLANC 75cl', 'domaine de Naisse 2020', 'boisson', 13.00, 9, 0),
(14, 'AOC Alsace Riesling  BLANC 75cl', 'domaine  Ostertag', 'boisson', 22.00, 9, 0),
(15, 'AOC Coteaux d\'AIx en Provence BLANC', 'Les beates', 'boisson', 18.50, 9, 0),
(16, 'IGP Cotes de gascogne Tariquet BLANC 75cl', '1eres grives (moelleux) 2017', 'boisson', 15.50, 9, 0),
(17, 'cote de provence BLANC 75cl', 'sainte roseline', 'boisson', 20.00, 9, 0),
(18, 'AOC Côtes du Rhône ROUGE 37.5cl', 'le temps est venu', 'boisson', 9.50, 11, 0),
(19, 'AOC Cotes de provence ROSE 75cl', 'domaine Barbeiranne', 'boisson', 15.50, 10, 0),
(20, 'AOC CrÃ©ment de bourgogne 75cl', 'cave de lugny', 'boisson', 19.50, 13, 0),
(21, 'mousseux brut 75cl', 'champs Elysées', 'boisson', 16.50, 13, 0),
(22, 'AOC Macon villages verre', 'domaine de Naisse', 'boisson', 3.50, 12, 0),
(23, 'AOC corbieres 2018 verre', 'chateau etang des colombes', 'boisson', 3.50, 12, 0),
(24, 'Café de PARIS verre', 'rouge', 'boisson', 2.50, 12, 0),
(25, 'Evian 100cl', 'evian  1l', 'boisson', 2.50, 16, 0),
(26, 'badoit 100cl', 'badoit 1L', 'boisson', 2.50, 16, 0),
(27, 'AOC cotes du rhone ROUGE 75cl ', 'domaine Guigal', 'boisson', 17.00, 11, 0),
(28, 'AOC cotes du rhone 1/2 ROUGE 37.5cl', 'domaine Guigal 2018', 'boisson', 11.50, 11, 0),
(30, 'café', 'café', 'boisson', 1.50, 8, 0),
(31, 'IGP Mediterrannée ROUGE 75cl', '2018 collines de laure', 'boisson', 19.00, 11, 0),
(32, 'AOC bourgogne ROUGE 75cl', 'domaine antonin 2018', 'boisson', 22.00, 11, 0),
(33, 'AOC coteaux bourguignon ROUGE 75cl', 'gachot monot', 'boisson', 20.50, 11, 0),
(34, 'AOC haut Medoc ROUGE 75cl', 'l\'instant', 'boisson', 24.00, 11, 0),
(35, 'AOC Medoc ROUGE 75cl', 'chateau poitevin 2012', 'boisson', 24.50, 11, 0),
(36, 'AOC saumur Champigny ROUGE 75CL', 'domaine la porte saint jean 2017', 'boisson', 24.50, 11, 0),
(37, 'thé', 'thé', 'boisson', 1.50, 8, 0),
(68, 'AOC Côtes du Rhône 75cl', 'il fait soif', 'boisson', 20.50, 11, 0),
(86, 'cocktail sans alcool du jour', 'cocktail sans alcool du jour', 'boisson', 3.50, 6, 0),
(87, 'cocktail avec alcool du jour', 'cocktail avec alcool du jour', 'boisson', 5.00, 7, 0),
(92, 'Kir (Pêche)', '', 'boisson', 3.50, 7, 0),
(93, 'Kir (Cassis)', '', 'boisson', 3.50, 7, 0),
(94, 'infusion', 'infusion au choix', 'boisson', 1.50, 8, 0),
(95, 'Digestif', 'digestif divers', 'boisson', 4.00, 17, 0),
(96, 'Chocolat chaud', 'boisson cacaotée chaude', 'boisson', 2.00, 8, 0),
(97, 'jus de fruit', 'jus de fruit au choix', 'boisson', 2.50, 5, 0),
(98, 'kir royal hors champagne', 'kir à base de vin à bulle hors champagne', 'boisson', 4.00, 7, 0),
(99, 'kir royal champagne', 'kir royal au champagne', 'boisson', 6.00, 7, 0),
(100, 'WISKY SCOTCH', 'WISKY SCOTCH', 'boisson', 5.00, 18, 0),
(101, 'Apéritif divers', 'Apéritif divers', 'boisson', 3.50, 18, 0),
(102, 'coupe de champagne', 'coupe de champagne', 'boisson', 6.00, 12, 0),
(103, 'Champagne ROSE 75cl', 'Champagne ROSE', 'boisson', 30.00, 13, 0),
(104, 'coupe Champagne ROSE', 'coupe de champagne rosé', 'boisson', 7.00, 12, 0),
(105, 'Champagne 75cl', 'champagne standard', 'boisson', 24.00, 13, 0),
(106, 'mise en bouche du jour', 'mise en bouche du jour', 'plat', 0.00, 1, 0),
(107, 'entrée du jour', 'entrée du jour', 'plat', 0.00, 2, 0),
(108, 'plat du jour', 'plat du jour', 'plat', 0.00, 3, 0),
(109, 'dessert du jour', 'dessert du jour', 'plat', 0.00, 4, 0),
(110, 'blanquette', 'veaux', 'plat', 0.00, 3, 1),
(111, 'Gâteau au fraise et vanille ', 'Gâteau au fraise avec de la vanille ', 'plat', 45.00, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sgr_table`
--

CREATE TABLE `sgr_table` (
  `id_table` int(11) NOT NULL,
  `numero_table` int(11) NOT NULL,
  `type_table` varchar(10) NOT NULL,
  `id_serveur` int(11) DEFAULT NULL,
  `vu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sgr_table`
--

INSERT INTO `sgr_table` (`id_table`, `numero_table`, `type_table`, `id_serveur`, `vu`) VALUES
(1, 1, 'Carrée', NULL, 0),
(2, 2, 'Carrée', NULL, 0),
(3, 3, 'Carrée', NULL, 0),
(4, 4, 'Carrée', NULL, 0),
(5, 5, 'Carrée', NULL, 0),
(6, 6, 'Carrée', NULL, 0),
(7, 7, 'Carrée', NULL, 0),
(8, 8, 'Carrée', NULL, 0),
(9, 9, 'Carrée', NULL, 0),
(10, 10, 'Carrée', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sous_categorie`
--

CREATE TABLE `sous_categorie` (
  `id_sous_cat` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `nom_sous_cat` varchar(30) NOT NULL,
  `ordre_aff_sous_cat` int(11) NOT NULL,
  `couleur` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sous_categorie`
--

INSERT INTO `sous_categorie` (`id_sous_cat`, `id_cat`, `nom_sous_cat`, `ordre_aff_sous_cat`, `couleur`) VALUES
(1, 1, 'mise en bouche', 1, '#54b6a5'),
(2, 1, 'entrée', 2, '#bf4a48'),
(3, 1, 'plat principal', 3, '#3a8274'),
(4, 1, 'dessert', 4, '#714e71'),
(5, 2, 'soft', 6, '#ff6260'),
(6, 2, 'cocktail sans alcool', 3, '#54b6a5'),
(7, 2, 'cocktail avec alcool', 5, '#f25f5c'),
(8, 2, 'boisson chaude', 1, '#714e71'),
(9, 3, 'vin blanc', 3, '#65dcc7'),
(10, 3, 'vin rosé', 2, '#ffb2fd'),
(11, 3, 'vin rouge', 1, '#bf4a48'),
(12, 3, 'vin au verre', 4, '#379bff '),
(13, 3, 'vin à bulles', 5, '#b47eb3'),
(16, 2, 'eaux minerales', 7, '#379bff '),
(17, 2, 'Digestif', 2, '#65dcc7'),
(18, 2, 'Apéritif', 4, '#3a8274');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL,
  `id_table` int(11) NOT NULL,
  `nb_couvert` int(11) NOT NULL,
  `statut` varchar(11) NOT NULL,
  `commentaire` varchar(255) NOT NULL,
  `ordre` int(11) NOT NULL,
  `date_c` datetime DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `id_table`, `nb_couvert`, `statut`, `commentaire`, `ordre`, `date_c`, `id_user`) VALUES
(51, 1, 2, 'PAY', '', 0, NULL, 2),
(52, 2, 3, 'PAY', '', 0, NULL, 2),
(53, 1, 5, 'PAY', '', 0, NULL, 2),
(54, 4, 2, 'PAY', '', 0, NULL, 2),
(55, 4, 2, 'PAY', '', 0, NULL, 2),
(56, 2, 4, 'PAY', '', 0, NULL, 2),
(57, 1, 1, 'PAY', '', 0, NULL, 2),
(58, 4, 0, 'PAY', '', 0, NULL, 2),
(59, 3, 0, 'PAY', '', 0, NULL, 2),
(60, 1, 5, 'PAY', '', 0, NULL, 2),
(61, 1, 4, 'PAY', '', 0, NULL, 2),
(62, 5, 4, 'PAY', '', 0, NULL, 2),
(63, 4, 3, 'PAY', '', 0, NULL, 2),
(64, 2, 4, 'PAY', '', 0, NULL, 2),
(65, 3, 3, 'PAY', '', 0, NULL, 2),
(66, 4, 3, 'PAY', '', 0, NULL, 2),
(67, 2, 7, 'PAY', '', 0, NULL, 2),
(68, 2, 10, 'PAY', '', 0, NULL, 2),
(69, 1, 1, 'PAY', '', 0, NULL, 2),
(70, 3, 3, 'PAY', '', 0, NULL, 2),
(71, 2, 5, 'PAY', '', 0, NULL, 2),
(72, 3, 3, 'PAY', '', 0, NULL, 2),
(73, 1, 3, 'PAY', '', 0, NULL, 2),
(74, 4, 3, 'PAY', '', 0, NULL, 2),
(75, 3, 4, 'PAY', '', 0, NULL, 2),
(76, 6, 4, 'PAY', '', 0, NULL, 2),
(77, 4, 0, 'PAY', '', 0, NULL, 2),
(78, 5, 4, 'PAY', '', 0, NULL, 2),
(79, 1, 0, 'PAY', '', 0, NULL, 2),
(80, 1, 3, 'PAY', '', 0, NULL, 2),
(81, 6, 7, 'PAY', '', 0, NULL, 2),
(82, 5, 1, 'PAY', '', 0, NULL, 2),
(83, 4, 2, 'PAY', '', 0, NULL, 2),
(84, 1, 2, 'PAY', '', 0, NULL, 2),
(85, 2, 2, 'PAY', '', 0, NULL, 2),
(86, 10, 1, 'PAY', '', 0, NULL, 2),
(87, 3, 1, 'PAY', '', 0, NULL, 2),
(88, 10, 5, 'PAY', '', 0, NULL, 2),
(89, 10, 5, 'PAY', '', 0, NULL, 2),
(90, 1, 4, 'PAY', '', 0, NULL, 2),
(91, 6, 1, 'PAY', '', 0, NULL, 2),
(92, 7, 1, 'PAY', '', 0, NULL, 2),
(93, 3, 3, 'PAY', '', 0, NULL, 2),
(94, 4, 1, 'PAY', '', 0, NULL, 2),
(95, 2, 5, 'PAY', '', 0, NULL, 2),
(96, 6, 3, 'PAY', '', 0, NULL, 2),
(97, 1, 1, 'PAY', '', 0, NULL, 2),
(98, 4, 1, 'PAY', '', 0, NULL, 2),
(99, 2, 2, 'PAY', '', 0, NULL, 2),
(100, 1, 2, 'PAY', '', 0, NULL, 2),
(101, 4, 1, 'PAY', '', 0, NULL, 2),
(102, 4, 2, 'PAY', '', 0, NULL, 2),
(103, 5, 0, 'PAY', '', 0, NULL, 2),
(104, 7, 0, 'PAY', '', 0, NULL, 2),
(105, 8, 0, 'PAY', '', 0, NULL, 2),
(106, 9, 0, 'PAY', '', 0, NULL, 2),
(107, 10, 0, 'PAY', '', 0, NULL, 2),
(108, 2, 0, 'CRE', '', 0, NULL, 2),
(109, 4, 0, 'CRE', '', 0, NULL, 2),
(110, 6, 0, 'CRE', '', 0, NULL, 2),
(111, 8, 0, 'CRE', '', 0, NULL, 2),
(112, 7, 12, 'SAI', '', 0, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `login`, `role`, `mdp`, `image`) VALUES
(1, 'admin', 'admin', '$2y$10$U1la.CrMEVNq9gpWg2.bX.5ysh6lOrRjLSINSTpAHVeGz8TBkIxCy', 'profil-1.jpg'),
(2, 'service', 'service', '$2y$10$V9tCXmdvvknXmXio/7dY2uL201Q1gBP6H/sLZil3XeRvMvjYRHuSi', 'profil-2.jpg'),
(3, 'cuisine', 'cuisine', '$2y$10$gPvZ6Z6OPZoGK/LeCz8mTudPOkAAstZ6PoXN0A9rm.pLr/9mBeNwy', 'profil-3.jpg'),
(4, 'bar', 'bar', '$2y$10$jVKHuMHlSjY/zNEh7Fl5xecJU8uNWIKpevvgqi28HFZ5wEZoAp4Pm', 'profil-4.jpg'),
(5, 'caisse', 'caisse', '$2y$10$ke0VnU6GZyOeHvd9wLlxhe9hgz8Mg1/q7RzMPWCiknyLUoU1WCGRK', 'profil-5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie_plat`
--
ALTER TABLE `categorie_plat`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `ligne_ticket`
--
ALTER TABLE `ligne_ticket`
  ADD PRIMARY KEY (`id_ligne_ticket`),
  ADD KEY `id_ticket` (`id_ticket`),
  ADD KEY `id_plat` (`id_plat`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_contient_plat`
--
ALTER TABLE `menu_contient_plat`
  ADD PRIMARY KEY (`id_menu`,`id_plat`),
  ADD KEY `id_plat` (`id_plat`);

--
-- Indexes for table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`id_plat`),
  ADD KEY `fk_plat_souscat` (`id_sous_cat`);

--
-- Indexes for table `sgr_table`
--
ALTER TABLE `sgr_table`
  ADD PRIMARY KEY (`id_table`),
  ADD KEY `sgr_table_ibfk_1` (`id_serveur`);

--
-- Indexes for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD PRIMARY KEY (`id_sous_cat`),
  ADD KEY `fk_souscat_cat` (`id_cat`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `ticket_ibfk_1` (`id_table`),
  ADD KEY `itcket_ibfk_2` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie_plat`
--
ALTER TABLE `categorie_plat`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ligne_ticket`
--
ALTER TABLE `ligne_ticket`
  MODIFY `id_ligne_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23237;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `plat`
--
ALTER TABLE `plat`
  MODIFY `id_plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `sgr_table`
--
ALTER TABLE `sgr_table`
  MODIFY `id_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  MODIFY `id_sous_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ligne_ticket`
--
ALTER TABLE `ligne_ticket`
  ADD CONSTRAINT `ligne_ticket_ibfk_1` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ligne_ticket_ibfk_2` FOREIGN KEY (`id_plat`) REFERENCES `plat` (`id_plat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_contient_plat`
--
ALTER TABLE `menu_contient_plat`
  ADD CONSTRAINT `menu_contient_plat_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `menu_contient_plat_ibfk_2` FOREIGN KEY (`id_plat`) REFERENCES `plat` (`id_plat`);

--
-- Constraints for table `plat`
--
ALTER TABLE `plat`
  ADD CONSTRAINT `fk_plat_souscat` FOREIGN KEY (`id_sous_cat`) REFERENCES `sous_categorie` (`id_sous_cat`);

--
-- Constraints for table `sgr_table`
--
ALTER TABLE `sgr_table`
  ADD CONSTRAINT `sgr_table_ibfk_1` FOREIGN KEY (`id_serveur`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD CONSTRAINT `fk_souscat_cat` FOREIGN KEY (`id_cat`) REFERENCES `categorie_plat` (`id_cat`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `itcket_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_table`) REFERENCES `sgr_table` (`id_table`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
