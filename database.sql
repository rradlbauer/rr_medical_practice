-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: med_practice
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3cao1fc43lo8uj606oifc7tsw` (`patient_id`),
  CONSTRAINT `FK3cao1fc43lo8uj606oifc7tsw` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (1,'Wien','Kärntnerstraße 123',1010,1),(3,'Biedermannsdorf','Hauptstraße 1',2362,1),(4,'Salzburg','Mirabellplatz 33',5020,2);
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (1,'Aspirin'),(2,'Ibuprofen'),(3,'Paracetamol'),(4,'Voltaren'),(5,'Thomapyrin'),(6,'Pantoprazol'),(7,'Omeprazol'),(8,'Simvastatin'),(9,'Atorvastatin'),(10,'Ramipril'),(11,'Bisoprolol'),(12,'Losartan'),(13,'Metformin'),(14,'Insulin'),(15,'L-Thyroxin'),(16,'Escitalopram'),(17,'Sertralin'),(18,'Citalopram'),(19,'Venlafaxin'),(20,'Mirtazapin'),(21,'Diazepam'),(22,'Lorazepam'),(23,'Zolpidem'),(24,'Trazodon'),(25,'Quetiapin'),(26,'Olanzapin'),(27,'Risperidon'),(28,'Aripiprazol'),(29,'Carbamazepin'),(30,'Valproinsäure'),(31,'Levetiracetam'),(32,'Lamotrigin'),(33,'Gabapentin'),(34,'Pregabalin'),(35,'Amoxicillin'),(36,'Azithromycin'),(37,'Clarithromycin'),(38,'Cefuroxim'),(39,'Ciprofloxacin'),(40,'Levofloxacin'),(41,'Doxycyclin'),(42,'Clindamycin'),(43,'Cotrimoxazol'),(44,'Metronidazol'),(45,'Fluconazol'),(46,'Aciclovir'),(47,'Valaciclovir'),(48,'Famciclovir'),(49,'Ganciclovir'),(50,'Oseltamivir'),(51,'Montelukast'),(52,'Fluticason'),(53,'Beclometason'),(54,'Salbutamol'),(55,'Formoterol'),(56,'Tiotropium'),(57,'Pseudoephedrin'),(58,'Chlorphenamin'),(59,'Fexofenadin'),(60,'Loratadin'),(61,'Cetirizin'),(62,'Desloratadin'),(63,'Ranitidin'),(64,'Domperidon'),(65,'Metoclopramid'),(66,'Lansoprazol'),(67,'Esomeprazol'),(68,'Pantoprazol'),(69,'Allopurinol'),(70,'Methotrexat'),(71,'Hydroxychloroquin'),(72,'Sulfasalazin'),(73,'Adalimumab'),(74,'Infliximab'),(75,'Etanercept'),(76,'Rituximab'),(77,'Methadon'),(78,'Buprenorphin'),(79,'Fentanyl'),(80,'Morphium'),(81,'Oxycodon'),(82,'Tramadol'),(83,'Diclofenac'),(84,'Meloxicam'),(85,'Naproxen'),(86,'Celecoxib'),(87,'Prednison'),(88,'Dexamethason'),(89,'Hydrocortison'),(90,'Fludrocortison'),(91,'Betamethason'),(92,'Levodopa'),(93,'Carbidopa'),(94,'Pramipexol'),(95,'Ropinirol'),(96,'Entacapon'),(97,'Levodopa/Carbidopa/Entacapon'),(98,'Amantadin'),(99,'Memantin'),(100,'Donepezil'),(101,'Aspirin'),(102,'Aspirin');
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anamnesis`
--

DROP TABLE IF EXISTS `anamnesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anamnesis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anamnesis`
--

LOCK TABLES `anamnesis` WRITE;
/*!40000 ALTER TABLE `anamnesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `anamnesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `diagnosisDate` date DEFAULT NULL,
  `diagnosis_code` varchar(255) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo4yfyx3dse3535ly5rh9efebx` (`diagnosis_code`),
  KEY `FK7gcdpb8csnfsi9voax5q9gixg` (`patient_id`),
  CONSTRAINT `FK7gcdpb8csnfsi9voax5q9gixg` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FKo4yfyx3dse3535ly5rh9efebx` FOREIGN KEY (`diagnosis_code`) REFERENCES `diagnosiscode` (`icd10`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis`
--

LOCK TABLES `diagnosis` WRITE;
/*!40000 ALTER TABLE `diagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosiscode`
--

DROP TABLE IF EXISTS `diagnosiscode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosiscode` (
  `icd10` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`icd10`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosiscode`
--

LOCK TABLES `diagnosiscode` WRITE;
/*!40000 ALTER TABLE `diagnosiscode` DISABLE KEYS */;
INSERT INTO `diagnosiscode` VALUES ('A000','Cholera due to Vibrio cholerae 01, biovar cholerae'),('A001','Cholera due to Vibrio cholerae 01, biovar eltor'),('A009','Cholera, unspecified'),('A0100','Typhoid fever, unspecified'),('A0101','Typhoid meningitis'),('A0102','Typhoid fever with heart involvement'),('A0103','Typhoid pneumonia'),('A0104','Typhoid arthritis'),('A0105','Typhoid osteomyelitis'),('A0109','Typhoid fever with other complications'),('A011','Paratyphoid fever A'),('A012','Paratyphoid fever B'),('A013','Paratyphoid fever C'),('A014','Paratyphoid fever, unspecified'),('A020','Salmonella enteritis'),('A021','Salmonella sepsis'),('A0220','Localized salmonella infection, unspecified'),('A0221','Salmonella meningitis'),('A0222','Salmonella pneumonia'),('A0223','Salmonella arthritis'),('A0224','Salmonella osteomyelitis'),('A0225','Salmonella pyelonephritis'),('A0229','Salmonella with other localized infection'),('A028','Other specified salmonella infections'),('A029','Salmonella infection, unspecified'),('A030','Shigellosis due to Shigella dysenteriae'),('A031','Shigellosis due to Shigella flexneri'),('A032','Shigellosis due to Shigella boydii'),('A033','Shigellosis due to Shigella sonnei'),('A038','Other shigellosis'),('A039','Shigellosis, unspecified'),('A040','Enteropathogenic Escherichia coli infection'),('A041','Enterotoxigenic Escherichia coli infection'),('A042','Enteroinvasive Escherichia coli infection'),('A043','Enterohemorrhagic Escherichia coli infection'),('A044','Other intestinal Escherichia coli infections'),('A045','Campylobacter enteritis'),('A046','Enteritis due to Yersinia enterocolitica'),('A047','Enterocolitis due to Clostridium difficile'),('A0471','Enterocolitis due to Clostridium difficile, recurrent'),('A0472','Enterocolitis d/t Clostridium difficile, not spcf as recur'),('A048','Other specified bacterial intestinal infections'),('A049','Bacterial intestinal infection, unspecified'),('A050','Foodborne staphylococcal intoxication'),('A051','Botulism food poisoning'),('A052','Foodborne Clostridium perfringens intoxication'),('A053','Foodborne Vibrio parahaemolyticus intoxication'),('G251','Drug-induced tremor'),('G252','Other specified forms of tremor'),('G253','Myoclonus'),('G254','Drug-induced chorea'),('G255','Other chorea'),('G2561','Drug induced tics'),('G2569','Other tics of organic origin'),('G2570','Drug induced movement disorder, unspecified'),('G2571','Drug induced akathisia'),('G2579','Other drug induced movement disorders'),('G2581','Restless legs syndrome'),('G2582','Stiff-man syndrome'),('G2583','Benign shuddering attacks'),('G2589','Other specified extrapyramidal and movement disorders'),('G259','Extrapyramidal and movement disorder, unspecified');
/*!40000 ALTER TABLE `diagnosiscode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance` (
  `id` varchar(255) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES ('AUVA','Allgemeine Unfallversicherungsanstalt'),('BVAEV','Versicherungsanstalt öffentlich Bediensteter, Eisenbahnen und Bergbau'),('ÖGK','Österreichische Gesundheitskasse'),('PVA','Pensionsversicherungsanstalt (der Angestellten und Arbeiter) '),('SVS','Sozialversicherungsanstalt der Selbständigen');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medication` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtrd5maia0hyh8umr5psq06gyp` (`agent_id`),
  CONSTRAINT `FKcncmplh2pg3d05yu5royl0ryn` FOREIGN KEY (`id`) REFERENCES `treatment` (`id`),
  CONSTRAINT `FKtrd5maia0hyh8umr5psq06gyp` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `birth` date DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `svnr` bigint(20) NOT NULL,
  `insurance_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK42mjd38kr1sowctjn4wk8n3ol` (`insurance_name`),
  CONSTRAINT `FK42mjd38kr1sowctjn4wk8n3ol` FOREIGN KEY (`insurance_name`) REFERENCES `insurance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'2023-04-05','m','Max Mustermann','+43 1 2345678',1234050423,'AUVA'),(2,'2001-01-01','f','Susi Süß','+43 664 1234567',1234010101,'ÖGK'),(3,'1996-04-30','f','Erika Ehrlich','+43 677 234123',1234300496,'SVS');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physicaltherapy`
--

DROP TABLE IF EXISTS `physicaltherapy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `physicaltherapy` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK82rei6bda85ln9imogfcblyue` FOREIGN KEY (`id`) REFERENCES `treatment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physicaltherapy`
--

LOCK TABLES `physicaltherapy` WRITE;
/*!40000 ALTER TABLE `physicaltherapy` DISABLE KEYS */;
/*!40000 ALTER TABLE `physicaltherapy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` datetime DEFAULT NULL,
  `cause` int(11) DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK22aib6e0ixto1jhty9hvi76j3` (`patient_id`),
  CONSTRAINT `FK22aib6e0ixto1jhty9hvi76j3` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptom`
--

DROP TABLE IF EXISTS `symptom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onset` date DEFAULT NULL,
  `symptom_id` int(11) DEFAULT NULL,
  `anamnesis_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfpbeai8ream94xme6cgh01b8t` (`symptom_id`),
  KEY `FKgmf96o2qqg897py8kgrdcabn8` (`anamnesis_id`),
  CONSTRAINT `FKfpbeai8ream94xme6cgh01b8t` FOREIGN KEY (`symptom_id`) REFERENCES `symptomcode` (`id`),
  CONSTRAINT `FKgmf96o2qqg897py8kgrdcabn8` FOREIGN KEY (`anamnesis_id`) REFERENCES `anamnesis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptom`
--

LOCK TABLES `symptom` WRITE;
/*!40000 ALTER TABLE `symptom` DISABLE KEYS */;
/*!40000 ALTER TABLE `symptom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptomcode`
--

DROP TABLE IF EXISTS `symptomcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptomcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptomcode`
--

LOCK TABLES `symptomcode` WRITE;
/*!40000 ALTER TABLE `symptomcode` DISABLE KEYS */;
INSERT INTO `symptomcode` VALUES (1,'Albträume'),(2,'Anaphylaktischer Schock'),(3,'Ataxie'),(4,'Augenringe'),(5,'Augenschmerzen'),(6,'Ausfluss'),(7,'Bauchschmerzen'),(8,'Blähungen'),(9,'Blut im Stuhl'),(10,'Blut im Urin'),(11,'Bluterguss (Hämatom)'),(12,'Brüchige Fingernägel'),(13,'Durchfall'),(14,'Erbrechen'),(15,'Fersenschmerzen'),(16,'Fieber'),(17,'Gelenkschmerzen'),(18,'Geschwollene Augen'),(19,'Geschwollene Lymphknoten'),(20,'Haarausfall'),(21,'Halsschmerzen'),(22,'Hautausschlag'),(23,'Herzschmerzen'),(24,'Hitzewallungen'),(25,'Hodenschmerzen'),(26,'Hüftschmerzen'),(27,'Innere Unruhe'),(28,'Kieferklemme'),(29,'Kiefersperre'),(30,'Konzentrationsschwäche'),(31,'Kopfschmerzen'),(32,'Kreislaufprobleme'),(33,'Kribbeln'),(34,'Libidoverlust (Frigidität)'),(35,'Magenschmerzen'),(36,'Müdigkeit'),(37,'Mundgeruch'),(38,'Muskelkater'),(39,'Muskelschmerzen'),(40,'Nachtschweiß'),(41,'Nackenschmerzen'),(42,'Nasenbluten'),(43,'Nierenschmerzen'),(44,'Ödem'),(45,'Ohrenschmerzen'),(46,'Prellung'),(47,'Regelschmerzen'),(48,'Rückenschmerzen'),(49,'Scheidentrockenheit'),(50,'Schlafstörungen'),(51,'Schluckauf'),(52,'Schnupfen'),(53,'Schulterschmerzen'),(54,'Schwindel'),(55,'Sehstörungen'),(56,'Seitenstechen'),(57,'Sodbrennen'),(58,'Starkes Schwitzen'),(59,'Stimmungsschwankungen'),(60,'Stress'),(61,'Synkope (Ohnmacht)'),(62,'Tinnitus'),(63,'Tremor (Zittern)'),(64,'Verstopfung (Obstipation)'),(65,'Völlegefühl'),(66,'Wadenkrampf'),(67,'Zahnbelag'),(68,'Zähneknirschen im Schlaf'),(69,'Zahnfleischbluten'),(70,'Zahnschmerzen'),(71,'Blutung'),(72,'Hitzewallungen'),(73,'Schwitzen'),(74,'Gewichtszunahme'),(75,'Schlafstörungen'),(76,'Haarausfall'),(77,'Übelkeit'),(78,'Brustschmerzen'),(79,'Gelenkschmerzen'),(80,'Herzrasen'),(81,'Bluthochdruck'),(82,'Ausfluss'),(83,'Kopfschmerzen'),(84,'Müdigkeit'),(85,'Stimmungsschwankungen'),(86,'Durchfall'),(87,'Schmerzen'),(88,'Wassereinlagerungen'),(89,'Zungenbelag');
/*!40000 ALTER TABLE `symptomcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beginOfTreatment` date DEFAULT NULL,
  `endOfTreatment` date DEFAULT NULL,
  `diagnosis_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKddt4u42jk0oxlpcd5ry6f0gst` (`diagnosis_id`),
  KEY `FKksawx3hel8rl2rttwpx9o6thf` (`patient_id`),
  CONSTRAINT `FKddt4u42jk0oxlpcd5ry6f0gst` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis` (`id`),
  CONSTRAINT `FKksawx3hel8rl2rttwpx9o6thf` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `anamnesis_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5absf4djxidfq2ajmklsaf7ai` (`anamnesis_id`),
  KEY `FKkiuh4qcfnf1j5dfgdxkc9o6sh` (`patient_id`),
  CONSTRAINT `FK5absf4djxidfq2ajmklsaf7ai` FOREIGN KEY (`anamnesis_id`) REFERENCES `anamnesis` (`id`),
  CONSTRAINT `FKkiuh4qcfnf1j5dfgdxkc9o6sh` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-07 20:32:19
