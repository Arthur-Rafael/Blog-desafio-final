-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2019 at 11:41 AM
-- Server version: 5.7.27-0ubuntu0.19.04.1
-- PHP Version: 7.2.19-0ubuntu0.19.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `final` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `final`;

-- --------------------------------------------------------

--
-- Table structure for table `artigos`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `ID_POST` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO_POST` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CONTEUDO` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_POST`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artigos`
--

INSERT INTO `post` (`ID_POST`, `TITULO_POST`,) VALUES
(1, '40+ Ideias de Unhas Decoradas pra Todos os Estilos pra Você se Inspirar'),
(2, 'Achadinhos de Cozinha do Pré Amazon Prime Day 2022'),
(3, 'Ideas de Unhas Amendoadas Decoradas'),
(4,'Tudo o que a Amazon e o Amazon Prime oferecem e por quê vale muito a pena a assinatura'),
(5, 'Ideias autênticas de Fotos Tumblr Sozinha');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
