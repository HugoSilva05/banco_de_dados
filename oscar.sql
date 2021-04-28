-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 28, 2021 at 02:19 PM
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
-- Database: `oscar2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `oscar`
--

DROP TABLE IF EXISTS `oscar`;
CREATE TABLE IF NOT EXISTS `oscar` (
  `categoria` varchar(100) DEFAULT NULL,
  `vencedor` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `oscar`
--

INSERT INTO `oscar` (`categoria`, `vencedor`) VALUES
('Melhor Filme', 'Nomadland'),
('Melhor Atriz', 'Frances McDormand - Nomadland'),
('Melhor Atriz Coadjuvante', 'Yuh-Jung Youn – Minari: Em Busca da Felicidade'),
('Melhor Ator', 'Anthony Hopkins – Meu Pai'),
('Melhor Ator Coadjuvante', 'Daniel Kaluuya – Judas e o Messias Negro'),
('Melhor Direção', 'Chloé Zhao – Nomadland'),
('Melhor Figurino', 'A Voz Suprema do Blues – Ann Roth'),
('Melhor Maquiagem e Cabelo', 'A Voz Suprema do Blues'),
('Melhor Roteiro Adaptado', 'Meu Pai'),
('Melhor Roteiro Original', 'Bela Vingança'),
('Melhor Canção Original', 'Fight for You – Judas e o Messias Negro'),
('Melhor Trilha Sonora Original', 'Soul – Trent Reznor, Atticus Ross e Jon Batiste'),
('Melhor Fotografia', 'Mank'),
('Melhor Filme Internacional', 'Druk – Another Round'),
('Melhor Animação', 'Soul'),
('Melhor Curta de Animação', 'If anything happens I love you'),
('Melhor Curta-metragem em Live Action', 'Two distant strangers'),
('Melhor Documentário', 'My octopus teacher'),
('Melhor Documentário de Curta-metragem', 'Colette'),
('Melhor Som', 'O som do silêncio'),
('Melhores Efeitos visuais', 'Tenet'),
('Melhores Edição', 'O som do silêncio'),
('Melhor Design de Produção', 'Mank');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
