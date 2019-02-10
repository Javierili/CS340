
--
-- Dumping data for table `bsg_planets`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (100000001,'Alex Hamilton','CS','WEST'),(100000002,'Safi ','BIO','WILSON'),
(100000003,'Ekatya Ivanov','MRKT','WFD'),(100000004,'Lee Yang','UND','WILSON'),(100000005,'Chris Marion','ME','HAW'),
(100000006,'Pavel ','ME','HAW'),(100000007,'Luis Voltre','MRKT','WEST'),(100000008,'Picon',NULL,'Queestown'),(20,'Scorpia',450000000,NULL,'Celeste'),(21,'Tauron',2500000000,'Tauron','Hypatia'),(22,'Virgon',4300000000,NULL,'Boskirk');
/*!40000 ALTER TABLE `bsg_planets` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `bsg_cert` DISABLE KEYS */;
INSERT INTO `professor` VALUES (100000001,'Julie Adams','CS','0','KELLY',NULL),(100000002,'Houssam Anand','ME','1','KELLY',NULL),
(100000003,'Yue Chen','CS','0','LINC',NULL),(100000004,'Eduardo Garcias','ECE','1',NULL),
(100000005,'Abby Cotilla','MRKT','1','AUST',NULL);
/*!40000 ALTER TABLE `bsg_cert` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `bsg_people` DISABLE KEYS */;
INSERT INTO `class` VALUES (10001,'Intro to C','CS',100000001,'LINC'),
(10002,'Intro to Marketing','MRKT',100000005,'AUST'),
(10003,'Electrical Fundamentals','ECE',100000004,'KELLY'),
(10004,'Anatomy','BIO',NULL,'KELLY'),
(10005,'Gaius','Baltar',3,NULL);
UNLOCK TABLES;


LOCK TABLES `students_classes` WRITE;
/*!40000 ALTER TABLE `bsg_cert_people` DISABLE KEYS */;
INSERT INTO `students_classes` VALUES (2,2),(4,2),(4,3),(2,4),(4,6),(1,7),(3,8),(3,9);
/*!40000 ALTER TABLE `bsg_cert_people` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `bsg_cert_people` DISABLE KEYS */;
INSERT INTO `building` VALUES (2,2),(4,2),(4,3),(2,4),(4,6),(1,7),(3,8),(3,9);
/*!40000 ALTER TABLE `bsg_cert_people` ENABLE KEYS */;
UNLOCK TABLES;