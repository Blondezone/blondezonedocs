-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: blondezone
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `desenvolvedores`
--

DROP TABLE IF EXISTS `desenvolvedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desenvolvedores` (
  `id_desenvolvedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `celular` varchar(100) NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id_desenvolvedor`),
  UNIQUE KEY `celular` (`celular`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `senha` (`senha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desenvolvedores`
--

LOCK TABLES `desenvolvedores` WRITE;
/*!40000 ALTER TABLE `desenvolvedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `desenvolvedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogadores`
--

DROP TABLE IF EXISTS `jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogadores` (
  `id_jogador` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `celular` varchar(100) NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id_jogador`),
  UNIQUE KEY `celular` (`celular`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `senha` (`senha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores`
--

LOCK TABLES `jogadores` WRITE;
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogadores_jogos`
--

DROP TABLE IF EXISTS `jogadores_jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogadores_jogos` (
  `id_jogadores_jogos` int(11) NOT NULL AUTO_INCREMENT,
  `id_jogador` int(11) DEFAULT NULL,
  `id_jogo` int(11) DEFAULT NULL,
  `tempo_jogado` time DEFAULT NULL,
  PRIMARY KEY (`id_jogadores_jogos`),
  KEY `id_jogador` (`id_jogador`),
  KEY `id_jogo` (`id_jogo`),
  CONSTRAINT `jogadores_jogos_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `jogadores` (`id_jogador`),
  CONSTRAINT `jogadores_jogos_ibfk_2` FOREIGN KEY (`id_jogo`) REFERENCES `jogos` (`id_jogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogadores_jogos`
--

LOCK TABLES `jogadores_jogos` WRITE;
/*!40000 ALTER TABLE `jogadores_jogos` DISABLE KEYS */;
/*!40000 ALTER TABLE `jogadores_jogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogos` (
  `id_jogo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `data_lancamento` date DEFAULT NULL,
  `id_desenvolvedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `id_desenvolvedor` (`id_desenvolvedor`),
  CONSTRAINT `jogos_ibfk_1` FOREIGN KEY (`id_desenvolvedor`) REFERENCES `desenvolvedores` (`id_desenvolvedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-29 11:14:12
