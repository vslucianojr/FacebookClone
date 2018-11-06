CREATE DATABASE  IF NOT EXISTS `facebook` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `facebook`;
-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: facebook
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `RespostaPostagemGrupo`
--

DROP TABLE IF EXISTS `RespostaPostagemGrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RespostaPostagemGrupo` (
  `RespostaUsuarioGrupo` int(11) NOT NULL AUTO_INCREMENT,
  `PostagensGrupo_idPostagem` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `RespostaUsuarioGrupo_RespostaUsuarioGrupo` int(11) NOT NULL,
  PRIMARY KEY (`RespostaUsuarioGrupo`,`PostagensGrupo_idPostagem`,`Usuario_idUsuario`),
  KEY `fk_RespostaUsuarioGrupo_PostagensGrupo1_idx` (`PostagensGrupo_idPostagem`),
  KEY `fk_RespostaUsuarioGrupo_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_RespostaUsuarioGrupo_RespostaUsuarioGrupo1_idx` (`RespostaUsuarioGrupo_RespostaUsuarioGrupo`),
  CONSTRAINT `fk_RespostaUsuarioGrupo_PostagensGrupo1` FOREIGN KEY (`PostagensGrupo_idPostagem`) REFERENCES `PostagensGrupo` (`idPostagem`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_RespostaUsuarioGrupo_RespostaUsuarioGrupo1` FOREIGN KEY (`RespostaUsuarioGrupo_RespostaUsuarioGrupo`) REFERENCES `RespostaPostagemGrupo` (`RespostaUsuarioGrupo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_RespostaUsuarioGrupo_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RespostaPostagemGrupo`
--

LOCK TABLES `RespostaPostagemGrupo` WRITE;
/*!40000 ALTER TABLE `RespostaPostagemGrupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `RespostaPostagemGrupo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-02 15:00:02
