---
--- Example from assignment 0:
---

DROP TABLE IF EXISTS `bsg_planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bsg_planets` (`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(255) NOT NULL,
`population` bigint(20) DEFAULT NULL,
`language` varchar(255) DEFAULT NULL,
`capital` varchar(255) DEFAULT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `name` (`name`)) 
ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
