-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 03, 2021 at 03:26 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exerciciolivros`
--

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
CREATE TABLE IF NOT EXISTS `autor` (
  `autorID` int NOT NULL AUTO_INCREMENT,
  `nome_autor` varchar(256) DEFAULT NULL,
  `genero` int DEFAULT NULL,
  `endereco` varchar(256) DEFAULT NULL,
  `data_de_nascimento` date DEFAULT NULL,
  `pais_de_origem` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`autorID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`autorID`, `nome_autor`, `genero`, `endereco`, `data_de_nascimento`, `pais_de_origem`) VALUES
(1, 'J. K. Rowling\r\n', 1, 'Fairmont Avenue, 3227', '1971-08-17', 'Inglattera\r\n'),
(2, 'Gillian Flynn\r\n', 2, 'Randall Drive, 2103\r\n', '2000-07-17', 'Estados Unidos\r\n'),
(3, 'Veríssimo\r\n', 3, 'Rocky Mount, 27801\r\n', '2016-01-03', 'Brasil\r\n'),
(4, 'Neil Gaiman\r\n', 1, 'Cut And Shoot, 77301\r\n', '2010-09-23', 'Inglattera\r\n'),
(5, 'Clive Baker\r\n', 2, 'Rose Avenue. 2496\r\n', '2006-06-28', 'Estados Unidos\r\n'),
(6, 'Rodrigo Polesso\r\n', 4, 'Wetzel Lane, 3788\r\n', '2001-02-17', 'Brasil\r\n'),
(7, 'Ruy Ohtake\r\n', 5, 'Bobcat Drive, 2710\r\n', '2016-01-03', 'Brasil\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `editora`
--

DROP TABLE IF EXISTS `editora`;
CREATE TABLE IF NOT EXISTS `editora` (
  `editoraID` int NOT NULL AUTO_INCREMENT,
  `editora` varchar(256) DEFAULT NULL,
  `telefone` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`editoraID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `editora`
--

INSERT INTO `editora` (`editoraID`, `editora`, `telefone`) VALUES
(1, 'Rocco\r\n\r\n', '202-555-0171\r\n202-555-0143\r\n'),
(2, 'Intriseca\r\n', '202-555-0187\r\n'),
(3, 'Lero-lero\r\n', '202-555-0154\r\n'),
(4, 'Editora Dark Sense\r\n', '202-555-0185\r\n'),
(5, 'Editora Gente\r\n', '202-555-0110\r\n'),
(6, 'Instituto Tomie Ohtake\r\n', '202-555-0134\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE IF NOT EXISTS `genero` (
  `generoID` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`generoID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genero`
--

INSERT INTO `genero` (`generoID`, `genero`) VALUES
(1, 'Fantasia\r\n'),
(2, 'Suspense\r\n'),
(3, 'Comédia'),
(4, 'Auto-Ajuda'),
(5, 'Ficção Científica');

-- --------------------------------------------------------

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `livrosID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) DEFAULT NULL,
  `autor` int DEFAULT NULL,
  `editora` int DEFAULT NULL,
  `data_de_publicacao` date NOT NULL,
  `numero_de_paginas` int DEFAULT NULL,
  `ja_comprei` bit(1) DEFAULT NULL,
  `valor` varchar(15) DEFAULT NULL,
  `data_de_compra` date NOT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`livrosID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `livros`
--

INSERT INTO `livros` (`livrosID`, `nome`, `autor`, `editora`, `data_de_publicacao`, `numero_de_paginas`, `ja_comprei`, `valor`, `data_de_compra`, `rating`) VALUES
(1, 'Harry Potter e a Pedra Filosofal\r\n', 1, 1, '2007-02-03', 368, b'1', 'R$ 20,90', '2005-02-03', 4),
(2, 'Harry Potter e o Prisioneiro de Azkaban\r\n', 1, 1, '2012-02-04', 598, b'1', 'R$ 18,79', '2005-02-04', 3),
(3, 'Harry Potter e a Ordem da Fênix\r\n', 1, 1, '2005-08-20', 798, b'0', 'R$ 50,36', '2022-01-04', 5),
(4, 'Harry Potter e a Câmara Secreta\r\n', 1, 1, '2019-01-25', 328, b'0', 'R$ 15,21', '2005-02-06', 2),
(5, 'Garota Exemplar\r\n', 2, 2, '2009-10-12', 128, b'0', 'R$ 60,23', '2005-02-07', 1),
(6, 'Diálogos Impossíveis\r\n', 3, 3, '2005-10-11', 208, b'0', 'R$ 10,00', '2003-02-08', 3),
(7, 'Harry Potter e o Prisioneiro de Azkaban\r\n', 4, 1, '2005-02-03', 368, b'1', 'R$ 20,90', '2005-02-03', 4),
(8, 'Arafat \r\n', 5, 4, '2020-02-03', 158, b'1', 'R$ 17,16', '2004-02-03', 3),
(9, 'Este não é mais um livro de dieta\r\n', 6, 5, '2012-02-04', 988, b'1', 'R$ 9,81', '2019-01-25', 5),
(10, 'Atenção Plena: Mindfulness\r\n', 7, 6, '2005-08-20', 122, b'0', 'R$ 20,55', '2022-12-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `ratingID` int NOT NULL AUTO_INCREMENT,
  `rating` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ratingID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`ratingID`, `rating`) VALUES
(1, 'Fraco'),
(2, 'Não gostei\r\n'),
(3, 'Gostei\r\n'),
(4, 'Muito Bom\r\n'),
(5, 'Maravilhoso\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
