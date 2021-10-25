-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: rcjbosstester.cz9c1zaqwcfn.us-west-2.rds.amazonaws.com    Database: rcjbosstester
-- ------------------------------------------------------
-- Server version	5.6.13-log

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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(50) NOT NULL,  
  `first_name` varchar(50) NOT NULL,
  `position` varchar(10) DEFAULT NULL,
  `team_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Anthony','Joel','C',1),(2,'Babb','Chris','G',1),(3,'Bass','Brandon','F',1),(4,'Bayless','Jerryd','G',1),(5,'Bogans','Keith','G/F',1),(6,'Bradley','Avery','G',1),(7,'Faverani','VÃ­tor','F/C',1),(8,'Green','Jeff','F',1),(9,'Humphries','Kris','F',1),(10,'Johnson','Chris','G/F',1),(11,'Olynyk','Kelly','F/C',1),(12,'Pressey','Phil','G',1),(13,'Rondo','Rajon','G',1),(14,'Sullinger','Jared','F',1),(15,'Wallace','Gerald','F',1),(16,'Anderson','Alan','G/F',2),(17,'Blatche','Andray','F/C',2),(18,'Collins','Jason','C',2),(19,'Garnett','Kevin','F/C',2),(20,'GutiÃ©rrez','Jorge','G',2),(21,'Johnson','Joe','G/F',2),(22,'Kirilenko','Andrei','F',2),(23,'Livingston','Shaun','G',2),(24,'Lopez','BrookÂ ','C',2),(25,'Pierce','Paul','F',2),(26,'Plumlee','Mason','F/C',2),(27,'Teletovic','Mirza','F',2),(28,'Teague','Marquis','G',2),(29,'Thornton','Marcus','G',2),(30,'Williams','Deron','G',2),(31,'Aldrich',' Cole','C',3),(32,'Anthony',' Carmelo','F',3),(33,'Bargnani',' AndreaÂ ','F/C',3),(34,'Brown',' Shannon','G',3),(35,'Chandler',' Tyson','C',3),(36,'Felton',' Raymond','G',3),(37,'Hardaway Jr.',' Tim','G',3),(38,'Martin',' KenyonÂ ','F',3),(39,'Murry',' Toure\'','G/F',3),(40,'Prigioni',' Pablo','G',3),(41,'Shumpert',' Iman','G/F',3),(42,'Smith',' J. R.','G',3),(43,'Stoudemire',' Amar\'e','F/C',3),(44,'Tyler',' Jeremy','F',3),(45,'Anderson',' James','G',4),(46,'Carter-Williams',' Michael','G',4),(47,'Davies',' Brandon','F',4),(48,'Moultrie',' Arnett','F',4),(49,'Mullens',' Byron','F/C',4),(50,'Noel',' NerlensÂ ','F/C',4),(51,'Nunnally',' James','F',4),(52,'Richardson',' JasonÂ ','G/F',4),(53,'Sims',' Henry','F/C',4),(54,'Thompson',' Hollis','G/F',4),(55,'Varnado',' Jarvis','F/C',4),(56,'Ware',' Casper','G',4),(57,'Williams',' Elliot','G',4),(58,'Wroten',' Tony','G',4),(59,'Young',' Thaddeus','F',4),(60,'Buycks','Dwight','G',5),(61,'de Colo','Nando','G',5),(62,'DeRozan','DeMar','G/F',5),(63,'Fields','Landry','G/F',5),(64,'Hansbrough','Tyler','F/C',5),(65,'Hayes','Chuck','F/C',5),(66,'Johnson','Amir','F/C',5),(67,'Lowry','Kyle','G',5),(68,'Novak','Steve','F',5),(69,'Patterson','Patrick','F/C',5),(70,'Ross','Terrence','G/F',5),(71,'Salmons','John','G/F',5),(72,'Stone','Julyan','G',5),(73,'Valanciunas','Jonas','C',5),(74,'VÃ¡squez','Greivis','G',5),(75,'Augustin','D.J.','G',6),(76,'Boozer','Carlos','F',6),(77,'Butler','Jimmy','G/F',6),(78,'Dunleavy','Mike','G/F',6),(79,'Fredette','Jimmer','G',6),(80,'Gibson','Taj','F/C',6),(81,'Hinrich','Kirk','G',6),(82,'Mohammed','Nazr','C',6),(83,'Murphy','Erik','F',6),(84,'Noah','Joakim','C',6),(85,'Rose','DerrickÂ ','G',6),(86,'Shengelia','Tornike','F',6),(87,'Snell','Tony','F',6),(88,'Bennett',' AnthonyÂ ','F',7),(89,'Curry',' Seth','G',7),(90,'Dellavedova',' Matthew','G',7),(91,'Deng',' Luol','F',7),(92,'Felix',' CarrickÂ ','G/F',7),(93,'Gee',' Alonzo','F',7),(94,'Hawes',' Spencer','C',7),(95,'Irving',' KyrieÂ ','G',7),(96,'Jack',' Jarrett','G',7),(97,'Karasev',' Sergey','G/F',7),(98,'Miles',' C. J.','G/F',7),(99,'Thompson',' Tristan','F',7),(100,'VarejÃ£o',' Anderson','F/C',7),(101,'Waiters',' Dion','G',7),(102,'Zeller',' Tyler','F/C',7),(103,'Billups','Chauncey','G',8),(104,'Bynum','Will','G',8),(105,'Caldwell-Pope','Kentavious','G',8),(106,'Datome','Luigi','F',8),(107,'Drummond','Andre','C',8),(108,'Harrellson','Josh','C',8),(109,'Jennings','Brandon','G',8),(110,'Jerebko','Jonas','F',8),(111,'Mitchell','Tony','F',8),(112,'Monroe','Greg','F/C',8),(113,'Singler','Kyle','G/F',8),(114,'Siva','Peyton','G',8),(115,'Smith','Josh','F',8),(116,'Stuckey','Rodney','G',8),(117,'Villanueva','Charlie','F',8),(118,'Allen','Lavoy','F/C',9),(119,'Butler','Rasual','G/F',9),(120,'Bynum','AndrewÂ ','C',9),(121,'Copeland','Chris','F',9),(122,'George','Paul','G/F',9),(123,'Hibbert','Roy','C',9),(124,'Hill','George','G',9),(125,'Hill','Solomon','F',9),(126,'Mahinmi','Ian','C',9),(127,'Scola','Luis','F',9),(128,'Sloan','Donald','G',9),(129,'Stephenson','Lance','G',9),(130,'Turner','Evan','G/F',9),(131,'Watson','C.J.','G',9),(132,'West','David','F',9),(133,'Adrien','Jeff','F',10),(134,'Antetokounmpo','Giannis','G/F',10),(135,'Delfino','CarlosÂ ','G/F',10),(136,'Henson','John','F/C',10),(137,'Ilyasova','Ersan','F',10),(138,'Knight','Brandon','G',10),(139,'Mayo','O.J.','G',10),(140,'Middleton','Khris','F',10),(141,'Pachulia','Zaza','F/C',10),(142,'Raduljica','Miroslav','C',10),(143,'Sanders','LarryÂ ','F/C',10),(144,'Sessions','Ramon','G',10),(145,'Stephens','D.J.','G/F',10),(146,'Udoh','Ekpe','F/C',10),(147,'Wolters','Nate','G',10),(148,'Antic','Pero','F/C',11),(149,'AyÃ³n','GustavoÂ ','F/C',11),(150,'Brand','Elton','F/C',11),(151,'Carroll','DeMarre','F',11),(152,'Horford','AlÂ ','F/C',11),(153,'Jenkins','JohnÂ ','G',11),(154,'Korver','Kyle','G/F',11),(155,'Mack','Shelvin','G',11),(156,'Martin','Cartier','G/F',11),(157,'Millsap','Paul','F',11),(158,'Muscala','Mike','F/C',11),(159,'SchrÃ¶der','Dennis','G',11),(160,'Scott','Mike','F',11),(161,'Teague','Jeff','G',11),(162,'Williams','Louis','G',11),(163,'Biyombo','Bismack','F/C',12),(164,'Douglas-Roberts','Chris','G/F',12),(165,'Haywood','BrendanÂ ','C',12),(166,'Henderson','Gerald','G/F',12),(167,'Jefferson','Al','F/C',12),(168,'Kidd-Gilchrist','Michael','F',12),(169,'McRoberts','Josh','F/C',12),(170,'Neal','Gary','G',12),(171,'Pargo','Jannero','G',12),(172,'Ridnour','Luke','G',12),(173,'Taylor','JefferyÂ ','G/F',12),(174,'Tolliver','Anthony','F',12),(175,'Walker','Kemba','G',12),(176,'White','D.J.','F',12),(177,'Zeller','Cody','F/C',12),(178,'Allen','Ray','G',13),(179,'Andersen','Chris','F/C',13),(180,'Battier','Shane','F',13),(181,'Beasley','Michael','F',13),(182,'Bosh','Chris','F/C',13),(183,'Chalmers','Mario','G',13),(184,'Cole','Norris','G',13),(185,'Douglas','Toney','G',13),(186,'Hamilton','Justin','C',13),(187,'Haslem','Udonis','F/C',13),(188,'James','LeBron','F',13),(189,'Jones','James','G/F',13),(190,'Lewis','Rashard','F',13),(191,'Oden','Greg','C',13),(192,'Wade','Dwyane','G',13),(193,'Afflalo','Arron','G/F',14),(194,'Dedmon','Dewayne','C',14),(195,'Harkless','Maurice','F',14),(196,'Harris','Tobias','F',14),(197,'Lamb','Doron','G',14),(198,'Maxiell','Jason','F',14),(199,'Moore','E\'Twaun','G',14),(200,'Nelson','Jameer','G',14),(201,'Nicholson','Andrew','F',14),(202,'O\'Quinn','Kyle','F',14),(203,'Oladipo','Victor','G',14),(204,'Price','Ronnie','G',14),(205,'Vucevic','Nikola','C',14),(206,'Ariza','Trevor','G/F',15),(207,'Beal','Bradley','G',15),(208,'Booker','Trevor','F',15),(209,'Gooden','Drew','F/C',15),(210,'Gortat','Marcin','C',15),(211,'Harrington','Al','F',15),(212,'Miller','Andre','G',15),(213,'NenÃªÂ ','','F/C',15),(214,'Porter','Otto','F',15),(215,'Rice','Glen','G/F',15),(216,'SÃ©raphin','Kevin','F/C',15),(217,'Singleton','Chris','F',15),(218,'Temple','Garrett','G',15),(219,'Wall','John','G',15),(220,'Webster','Martell','G/F',15),(221,'Blair','DeJuan','F/C',21),(222,'CalderÃ³n','JosÃ©','G',21),(223,'Carter','Vince','G/F',21),(224,'Crowder','Jae','F',21),(225,'Dalembert','Samuel','C',21),(226,'Ellington','Wayne','G',21),(227,'Ellis','Monta','G',21),(228,'Harris','Devin','G',21),(229,'James','Bernard','C',21),(230,'Larkin','Shane','G',21),(231,'Ledo','Ricky','G',21),(232,'Marion','Shawn','F',21),(233,'Mekel','Gal','G',21),(234,'Nowitzki','Dirk','F',21),(235,'Wright','Brandan','F/C',21),(236,'Asik','Ã–mer','C',22),(237,'Beverley','Patrick','G',22),(238,'Canaan','Isaiah','G',22),(239,'Casspi','Omri','F',22),(240,'Covington','Robert','F',22),(241,'Daniels','Troy','G',22),(242,'GarcÃ­a','Francisco','G/F',22),(243,'Hamilton','Jordan','G/F',22),(244,'Harden','James','G',22),(245,'Howard','Dwight','C',22),(246,'Jones','Terrence','F',22),(247,'Lin','Jeremy','G',22),(248,'Motiejunas','Donatas','F/C',22),(249,'Parsons','Chandler','F',22),(250,'Smith','Greg','F/C',22),(251,'Allen','Tony','G/F',23),(252,'Calathes','Nick','G',23),(253,'Conley','Mike','G',23),(254,'Davis','Ed','F',23),(255,'Franklin','Jamaal','G',23),(256,'Gasol','Marc','C',23),(257,'Johnson','James','F',23),(258,'Koufos','Kosta','C',23),(259,'Lee','Courtney','G/F',23),(260,'Leuer','Jon','F',23),(261,'Miller','Mike','G/F',23),(262,'Pondexter','QuincyÂ ','G/F',23),(263,'Prince','Tayshaun','F',23),(264,'Randolph','Zach','F',23),(265,'Udrih','Beno','G',23),(266,'AjinÃ§a','Alexis','C',24),(267,'Aminu','Al-Farouq','F',24),(268,'Anderson','RyanÂ ','F',24),(269,'Babbitt','Luke','F',24),(270,'Davis','Anthony','F/C',24),(271,'Evans','Tyreke','G/F',24),(272,'Gordon','Eric','G',24),(273,'Holiday','JrueÂ ','G',24),(274,'Miller','Darius','F',24),(275,'Morrow','Anthony','G',24),(276,'Rivers','Austin','G',24),(277,'Roberts','Brian','G',24),(278,'Smith','Jason','F/C',24),(279,'Stiemsma','Greg','C',24),(280,'Withey','Jeff','C',24),(281,'Ayres','Jeff','F/C',25),(282,'Baynes','Aron','F/C',25),(283,'Belinelli','Marco','G',25),(284,'Bonner','Matt','F/C',25),(285,'Daye','Austin','F',25),(286,'Diaw','Boris','F/C',25),(287,'Duncan','Tim','F/C',25),(288,'GinÃ³bili','Manu','G',25),(289,'Green','Danny','G/F',25),(290,'Joseph','Cory','G',25),(291,'Leonard','Kawhi','G/F',25),(292,'Mills','Patty','G',25),(293,'Parker','Tony','G',25),(294,'Splitter','Tiago','C',25),(295,'Arthur',' Darrell','F',26),(296,'Brooks',' Aaron','G',26),(297,'Chandler',' Wilson','F',26),(298,'Faried',' Kenneth','F',26),(299,'Fournier',' Evan','G',26),(300,'Foye',' Randy','G',26),(301,'Gallinari',' DaniloÂ ','F',26),(302,'Hickson',' JJ','F/C',26),(303,'Lawson',' Ty','G',26),(304,'McGee',' JaValeÂ ','C',26),(305,'Miller',' Quincy','F',26),(306,'Mozgov',' Timofey','C',26),(307,'Randolph',' Anthony','F/C',26),(308,'Robinson',' NateÂ ','G',26),(309,'VeselÃ½',' Jan','F',26),(310,'Barea','JosÃ© Juan','G',27),(311,'Brewer','Corey','G/F',27),(312,'Budinger','Chase','F',27),(313,'Cunningham','Dante','F',27),(314,'Dieng','Gorgui','C',27),(315,'Hummel','Robbie','G/F',27),(316,'Love','Kevin','F/C',27),(317,'Martin','Kevin','G',27),(318,'Mbah a Moute','Luc','F',27),(319,'Muhammad','Shabazz','G/F',27),(320,'Pekovic','Nikola','C',27),(321,'Price','A.J.','G',27),(322,'Rubio','Ricky','G',27),(323,'Shved','Alexey','G',27),(324,'Turiaf','Ronny','C',27),(325,'Aldridge','LaMarcus','F/C',29),(326,'Barton','Will','G',29),(327,'Batum','Nicolas','G/F',29),(328,'Claver','VÃ­ctor','F',29),(329,'Crabbe','Allen','G',29),(330,'Freeland','Joel','F/C',29),(331,'Leonard','Meyers','C',29),(332,'Lillard','Damian','G',29),(333,'Lopez','Robin','C',29),(334,'Matthews','Wesley','G/F',29),(335,'McCollum','C.J.','G',29),(336,'Robinson','Thomas','F',29),(337,'Watson','Earl','G',29),(338,'Williams','Mo','G',29),(339,'Wright','Dorell','F',29),(340,'Adams','Steven','C',28),(341,'Butler','Caron','F',28),(342,'Collison','Nick','F/C',28),(343,'Durant','Kevin','F',28),(344,'Fisher','Derek','G',28),(345,'Ibaka','Serge','F/C',28),(346,'Jackson','Reggie','G',28),(347,'Jones','Perry','F',28),(348,'Lamb','Jeremy','G/F',28),(349,'Perkins','KendrickÂ ','C',28),(350,'Roberson','AndrÃ©','G/F',28),(351,'Sefolosha','ThaboÂ ','G/F',28),(352,'Shakur','Mustafa','G',28),(353,'Thabeet','Hasheem','C',28),(354,'Westbrook','Russell','G',28),(355,'BiedrinÅ¡','Andris','C',30),(356,'Burke','Trey','G',30),(357,'Burks','Alec','G',30),(358,'Clark','Ian','G',30),(359,'Evans','Jeremy','F',30),(360,'Favors','Derrick','F/C',30),(361,'Garrett','Diante','G',30),(362,'Gobert','Rudy','C',30),(363,'Hayward','Gordon','G/F',30),(364,'Jefferson','Richard','F',30),(365,'Kanter','Enes','C',30),(366,'Lucas III','John','G',30),(367,'Rush','Brandon','G/F',30),(368,'Thomas','Malcolm','F',30),(369,'Williams','Marvin','F',30),(370,'Barnes','Harrison','F',16),(371,'Blake','Steve','G',16),(372,'Bogut','Andrew','C',16),(373,'Crawford','Jordan','G',16),(374,'Curry','Stephen','G',16),(375,'Ezeli','FestusÂ ','C',16),(376,'Green','Draymond','F',16),(377,'Iguodala','Andre','G/F',16),(378,'Kuzmic','Ognjen','C',16),(379,'Lee','David','F/C',16),(380,'Nedovic','Nemanja','G',16),(381,'O\'Neal','Jermaine','C',16),(382,'Speights','Marreese','F/C',16),(383,'Thompson','Klay','G/F',16),(384,'Barnes','Matt','F',17),(385,'Bullock','Reggie','G/F',17),(386,'Collison','Darren','G',17),(387,'Crawford','Jamal','G',17),(388,'Davis','Glen','F',17),(389,'Dudley','Jared','G/F',17),(390,'Granger','Danny','F',17),(391,'Green','Willie','G',17),(392,'Griffin','Blake','F',17),(393,'Hollins','Ryan','C',17),(394,'Jordan','DeAndre','C',17),(395,'Paul','Chris','G',17),(396,'Redick','J.J.Â ','G',17),(397,'TÃ¼rkoglu','Hedo','F',17),(398,'Bazemore','Kent','G',18),(399,'Brooks','MarShon','G',18),(400,'Bryant','Kobe','G',18),(401,'Farmar','Jordan','G',18),(402,'Gasol','Pau','F/C',18),(403,'Henry','Xavier','G',18),(404,'Hill','Jordan','F/C',18),(405,'Johnson','Wesley','G/F',18),(406,'Kaman','Chris','C',18),(407,'Kelly','Ryan','F',18),(408,'Marshall','Kendall','G',18),(409,'Meeks','Jodie','G',18),(410,'Nash','Steve','G',18),(411,'Sacre','Robert','C',18),(412,'Young','Nick','G/F',18),(413,'Barbosa','LeandroÂ ','G',19),(414,'Bledsoe','Eric','G',19),(415,'Christmas','Dionte','G',19),(416,'Dragic','Goran','G',19),(417,'Frye','Channing','F/C',19),(418,'Goodwin','Archie','G',19),(419,'Green','Gerald','G/F',19),(420,'Len','Alex','C',19),(421,'Morris','Marcus','F',19),(422,'Morris','Markieff','F',19),(423,'Okafor','EmekaÂ ','F/C',19),(424,'Plumlee','Miles','F/C',19),(425,'Randolph','Shavlik','F',19),(426,'Smith','Ish','G',19),(427,'Tucker','P.J.','F',19),(428,'Acy','Quincy','F',20),(429,'Cousins','DeMarcus','C',20),(430,'Evans','Reggie','F',20),(431,'Gay','Rudy','F',20),(432,'Gray','Aaron','C',20),(433,'Landry','Carl','F',20),(434,'McCallum','Ray','G',20),(435,'McLemore','Ben','G',20),(436,'Outlaw','Travis','F',20),(437,'Terry','Jason','G',20),(438,'Thomas','Isaiah','G',20),(439,'Thompson','Jason','F/C',20),(440,'White','Royce','F',20),(441,'Williams','Derrick','F',20);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `conference` varchar(10) DEFAULT NULL,
  `division` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Boston','Celtics','Eastern','Atlantic'),(2,'Brooklyn','Nets','Eastern','Atlantic'),(3,'New York','Knicks','Eastern','Atlantic'),(4,'Philadelphia','76ers','Eastern','Atlantic'),(5,'Toronto','Raptors','Eastern','Atlantic'),(6,'Chicago','Bulls','Eastern','Central'),(7,'Cleveland','Cavaliers','Eastern','Central'),(8,'Detroit','Pistons','Eastern','Central'),(9,'Indiana','Pacers','Eastern','Central'),(10,'Milwaukee','Bucks','Eastern','Central'),(11,'Atlanta','Hawks','Eastern','Southeast'),(12,'Charlotte','Bobcats','Eastern','Southeast'),(13,'Miami','Heat','Eastern','Southeast'),(14,'Orlando','Magic','Eastern','Southeast'),(15,'Washington','Wizards','Eastern','Southeast'),(16,'Golden State','Warriors','Western','Pacific'),(17,'Los Angeles','Clippers','Western','Pacific'),(18,'Los Angeles','Lakers','Western','Pacific'),(19,'Phoenix','Suns','Western','Pacific'),(20,'Sacramento','Kings','Western','Pacific'),(21,'Dallas','Mavericks','Western','Southwest'),(22,'Houston','Rockets','Western','Southwest'),(23,'Memphis','Grizzlies','Western','Southwest'),(24,'New Orleans','Pelicans','Western','Southwest'),(25,'San Antonio','Spurs','Western','Southwest'),(26,'Denver','Nuggets','Western','Northwest'),(27,'Minnesota','Timberwolves','Western','Northwest'),(28,'Oklahoma City','Thunder','Western','Northwest'),(29,'Portland','Trail Blazers','Western','Northwest'),(30,'Utah','Jazz','Western','Northwest');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-27 13:25:45