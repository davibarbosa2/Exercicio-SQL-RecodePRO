CREATE DATABASE  IF NOT EXISTS `fseletro` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `fseletro`;
-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: fseletro
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(100) NOT NULL,
  `quantidade_produto` int(100) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL,
  `endereço` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  PRIMARY KEY (`idpedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'lava loucas prata',3,899.00,2697.00,'Rua Das Avenças 446','21 984359008'),(2,'lava loucas preto',5,899.00,4495.00,'Av. das Américas 556','21 983249000'),(3,'maquina de lavar branca',2,1599.99,3198.00,'Rua Januario Freire 55','21 962748930'),(4,'maquina de lavar prata',1,1999.00,1999.00,'Dr. Paulo Alves 103','21 400289225'),(5,'microondas prata',4,799.00,3196.00,'Rua Dr. Mateus Rodrigues','21 943953593'),(6,'microondas branco',5,999.00,4995.00,'Rua Marechal Hermes 23','21 345974395 '),(7,'microondas preto',2,699.00,1398.00,'Travessa Dos Combatentes 62','21 983973830'),(8,'fogao brastemp preto',1,799.00,799.00,'Doutor Luccas Carlos 66','21 989545948'),(9,'fogao piacere branco',2,1599.99,3199.98,'Doutor Mano Brown 22','21 923486288'),(10,'geladeira brastemp frost free inverse 419 litros',6,999.99,5999.94,'Avenida Bk Lappa 777','21 777777777'),(11,'geladeira brastemp prata',2,2599.99,5199.98,'Avenida Genérica n1','21 434897385'),(12,'geladeira brastemp branca',10,1599.99,15999.90,'Rua Genérica N2','21 534756385');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'lavalouca','Lava-Louças Prata',1499.00,899.99,'imagens/lava-loucas-prata.jpeg'),(2,'lavalouca','Lava-Louças Preto',1499.00,899.99,'imagens/lava-loucas-preto.jpeg'),(3,'lavaroupas','Maquina de Lavar Branca',2499.00,1599.99,'imagens/maquina-de-lavar-branca.jpeg'),(4,'lavaroupas','Maquina de Lavar Prata',2499.00,1999.99,'imagens/maquina-de-lavar-prata.jpeg'),(5,'microondas','Microondas Prata',1499.00,799.99,'imagens/micoondas-prata.jpeg'),(6,'microondas','Microondas Branco',1499.00,999.99,'imagens/microondas-branco.jpeg'),(7,'microondas','Microondas Preto',1000.00,699.00,'imagens/microondas-preto.jpeg'),(8,'fogao','Fogão Brastemp Preto',1499.00,799.99,'imagens/fogao-brastemp-preto.jpeg'),(9,'fogao','Fogão Piacere Branco',2499.00,1599.99,'imagens/fogao-piacere-branco.jpeg'),(10,'geladeira','Geladeira Brastemp Frost Free Inverse 419',1499.00,999.99,'imagens/geladeira-brastemp-frost-free-inverse-419-litros-bry59ae-photo243349291-12-3c-18.jpeg'),(11,'geladeira','Geladeira Brastemp Prata',3499.00,2599.00,'imagens/geladeira-brastemp.jpeg'),(12,'geladiera','Geladeira Brastemp Branca',2499.00,1599.99,'imagens/brastemp-branca.png');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-23 21:07:03
