--
-- Dumping data for all tables
--

LOCK TABLES `buildings` WRITE;
-- /*!40000 ALTER TABLE `bsg_cert_people` DISABLE KEYS */;
INSERT INTO `buildings` VALUES ('AUST',5),('LINC',10),('KELLY',3),('HAW',15),('WFD',15),
('WEST',15),('WILSON',15);
UNLOCK TABLES;

LOCK TABLES `student` WRITE;
INSERT INTO `student` VALUES (100000001,'Alex Hamilton','CS','WEST'),(100000002,'Safi ','BIO','WILSON'),
(100000003,'Ekatya Ivanov','MRKT','WFD'),(100000004,'Lee Yang','UND','WILSON'),
(100000005,'Chris Marion','ME','HAW'),
(100000006,'Pavel ','ME','HAW'),(100000007,'Luis Voltre','MRKT','WEST');
UNLOCK TABLES;


LOCK TABLES `professor` WRITE;
INSERT INTO `professor` VALUES (100000001,'Julie Adams','CS','0','KELLY',NULL),
(100000002,'Houssam Anand','ME','1','KELLY',NULL),
(100000003,'Yue Chen','CS','0','LINC',NULL),(100000004,'Eduardo Garcias','ECE','1','KELLY',NULL),
(100000005,'Abby Cotilla','MRKT','1','AUST',NULL);
UNLOCK TABLES;


LOCK TABLES `class` WRITE;
INSERT INTO `class` VALUES (10001,'Intro to C','CS',100000001,'LINC'),
(10002,'Intro to Marketing','MRKT',100000005,'AUST'),
(10003,'Electrical Fundamentals','ECE',100000004,'KELLY'),
(10004,'Anatomy','BIO',NULL,'KELLY'),
(10005,'Business Writing','MRKT',NULL,'AUST');
UNLOCK TABLES;


LOCK TABLES `students_classes` WRITE;
INSERT INTO `students_classes` VALUES (100000001,10001),(100000002,10004),(100000003,10005),
(100000003,10002),(100000007,10002);
UNLOCK TABLES;
