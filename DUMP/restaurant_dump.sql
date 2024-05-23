-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.36-2ubuntu3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carta`
--

DROP TABLE IF EXISTS `carta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_carta` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
INSERT INTO `carta` VALUES (1,'Esmorzar'),(2,'Dinar'),(3,'Sopar'),(4,'Coctels'),(5,'Postres'),(6,'Cafes'),(7,'Begudes'),(8,'Vins');
/*!40000 ALTER TABLE `carta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carta_horari_rel`
--

DROP TABLE IF EXISTS `carta_horari_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carta_horari_rel` (
  `carta_id` int NOT NULL,
  `horari_id` int NOT NULL,
  PRIMARY KEY (`carta_id`,`horari_id`),
  KEY `horari_id` (`horari_id`),
  CONSTRAINT `carta_horari_rel_ibfk_1` FOREIGN KEY (`carta_id`) REFERENCES `carta` (`id`),
  CONSTRAINT `carta_horari_rel_ibfk_2` FOREIGN KEY (`horari_id`) REFERENCES `horari` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta_horari_rel`
--

LOCK TABLES `carta_horari_rel` WRITE;
/*!40000 ALTER TABLE `carta_horari_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `carta_horari_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carta_inventari_rel`
--

DROP TABLE IF EXISTS `carta_inventari_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carta_inventari_rel` (
  `carta_id` int NOT NULL,
  `inventari_id` int NOT NULL,
  PRIMARY KEY (`carta_id`,`inventari_id`),
  KEY `inventari_id` (`inventari_id`),
  CONSTRAINT `carta_inventari_rel_ibfk_1` FOREIGN KEY (`carta_id`) REFERENCES `carta` (`id`),
  CONSTRAINT `carta_inventari_rel_ibfk_2` FOREIGN KEY (`inventari_id`) REFERENCES `inventari` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta_inventari_rel`
--

LOCK TABLES `carta_inventari_rel` WRITE;
/*!40000 ALTER TABLE `carta_inventari_rel` DISABLE KEYS */;
INSERT INTO `carta_inventari_rel` VALUES (1,1),(2,1),(3,1),(1,2),(2,2),(3,2),(1,3),(2,3),(3,3),(1,4),(2,4),(3,4),(1,5),(2,5),(3,5),(1,6),(2,6),(3,6),(1,7),(2,7),(3,7),(1,8),(2,8),(3,8),(2,9),(3,9),(2,10),(3,10),(2,11),(3,11),(2,12),(3,12),(2,13),(3,13),(2,14),(3,14),(2,15),(3,15),(2,16),(3,16),(2,17),(3,17),(2,18),(3,18),(2,19),(3,19),(2,20),(3,20),(2,21),(3,21),(2,22),(3,22),(2,23),(3,23),(2,24),(3,24),(2,25),(3,25),(2,26),(3,26),(2,27),(3,27),(2,28),(3,28),(2,29),(3,29),(2,30),(3,30),(2,31),(3,31),(2,32),(3,32),(2,33),(3,33),(2,34),(3,34),(2,35),(3,35),(2,36),(3,36),(2,37),(3,37),(2,38),(3,38),(2,39),(3,39),(2,40),(3,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(4,57),(4,58),(4,59),(4,60),(4,61),(4,62),(4,63),(4,64),(5,65),(5,66),(5,67),(5,68),(5,69),(5,70),(5,71),(5,72),(7,73),(7,74),(7,75),(7,76),(7,77),(8,77),(7,78),(8,78),(7,79),(7,80),(1,81),(6,81),(1,82),(6,82),(1,83),(6,83),(1,84),(6,84),(1,85),(6,85),(1,86),(6,86),(1,87),(6,87),(1,88),(6,88),(2,121),(3,121),(2,122),(3,122),(2,123),(3,123),(2,124),(3,124),(2,125),(3,125),(2,126),(3,126),(2,127),(3,127),(2,128),(3,128);
/*!40000 ALTER TABLE `carta_inventari_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_categoria` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Amanides'),(2,'Carns'),(3,'Marisc'),(4,'Pasta'),(5,'Pizza'),(6,'Kebab'),(7,'Entrants'),(8,'Coctels'),(9,'Postres'),(10,'Begudes'),(11,'Cafes'),(12,'Hamburgueses'),(13,'Torrades'),(14,'Entrepans Calents'),(15,'Entrepans Freds'),(16,'Plats combinats');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `dni` char(9) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `telefon` varchar(13) DEFAULT NULL,
  `adreca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('01020966H','Norman','+34 649280557','991-2991 Morbi St.'),('01341585O','Nola','+34 631398981','708-6166 Sem Rd.'),('02078887V','Ahmed','+34 612378395','557-9800 Cursus Avenue'),('02727727Q','Kalia','+34 976226278','Ap #112-1852 Arcu. Avenue'),('02727897G','Craig','+34 655024239','Ap #354-339 Convallis Avenue'),('03037337F','Harding','+34 630645359','Ap #604-1042 Libero Ave'),('03357905E','Gregory','+34 675538162','P.O. Box 101, 1783 Sit Av.'),('04538632M','Damon','+34 622651505','Ap #131-4383 Felis Street'),('04816467S','Mollie','+34 952635225','189-1874 Integer St.'),('05117351D','Scott','+34 628318658','Ap #139-2509 Mauris. Ave'),('06456511P','Ignatius','+34 977362215','P.O. Box 547, 5431 Vulputate Ave'),('06458825O','Gregory','+34 643904411','Ap #259-4614 Ac Avenue'),('06672177J','Jenette','+34 976456654','530-4874 Ultrices Road'),('06778953B','Jemima','+34 605615577','Ap #854-3958 Eleifend. Road'),('07439678M','Wynter','+34 650474516','5214 Pharetra. Rd.'),('08487121W','Yeo','+34 912558377','Ap #789-9452 Ut Street'),('09687548T','Germaine','+34 658787232','Ap #354-1877 Pellentesque Avenue'),('10198895E','Meredith','+34 961526716','715-3149 Sem St.'),('10682180G','Venus','+34 625641009','7779 Eget Rd.'),('10716170S','Sara','+34 621068464','514-4680 Ante Rd.'),('10849789D','Malik','+34 688512817','4153 Est. St.'),('11085445I','Yvette','+34 676506687','263-9965 Lacus. St.'),('11286161G','Erasmus','+34 914986328','8745 Nec, Rd.'),('11407436U','Lana','+34 962698313','928-5078 Mattis. Rd.'),('11501787T','Berk','+34 914777342','Ap #925-3760 Aliquet, St.'),('11768668T','Colleen','+34 635413065','4789 Nisl Road'),('12349242U','Amity','+34 643872891','Ap #602-1337 Urna Rd.'),('12589795L','Lana','+34 975231519','Ap #740-3872 Enim St.'),('13120475M','Nina','+34 686226794','191-6230 Arcu Av.'),('13672461S','Fuller','+34 956975384','Ap #882-4079 Risus Ave'),('13787713Y','Carlos','+34 691416945','160-5197 Nec Rd.'),('14111285R','Eric','+34 985371888','5112 Tempor Ave'),('14142634Z','Gavin','+34 618673536','954-1678 Sodales St.'),('14716443E','Vielka','+34 921621117','206-9629 Ac Road'),('14726168I','Alisa','+34 649611234','P.O. Box 132, 3919 Sed Ave'),('14824069G','Heidi','+34 623400761','9255 Sed Avenue'),('14877126M','Bernard','+34 638471721','Ap #955-9709 Varius Road'),('14998757S','Ryder','+34 910708754','P.O. Box 255, 5807 Augue, Street'),('15184503W','Zoe','+34 949022431','Ap #487-2016 Torquent St.'),('15528542B','Boris','+34 682225281','169-359 Est, Rd.'),('15652383G','Lareina','+34 976156366','597-7960 Nunc Street'),('16275641I','Nell','+34 973231653','890-468 Nullam Rd.'),('16387411T','Ora','+34 982448595','770-6945 At Ave'),('16435620M','Imani','+34 604728271','P.O. Box 692, 5994 Ac St.'),('16554723W','Deborah','+34 954214065','7471 Aliquam Rd.'),('17126467E','Ursa','+34 932102672','175-2861 Egestas Rd.'),('17660772K','Jasper','+34 938031368','4788 Vulputate Rd.'),('17756446J','John','+34 627116448','P.O. Box 538, 6896 Lorem, Ave'),('18152157Q','Norman','+34 658926663','526-8997 Blandit. Rd.'),('18622722H','Edward','+34 946304588','Ap #754-7908 Magna Street'),('18897518F','Graham','+34 911541741','240-3154 Non, Rd.'),('19287821G','Geoffrey','+34 685215355','P.O. Box 732, 5442 Integer Road'),('20057643D','Ruth','+34 962224787','3001 Tortor, Rd.'),('20194439E','Megan','+34 673314278','P.O. Box 861, 424 Justo Ave'),('20424359X','Keane','+34 982543055','2705 Massa. St.'),('20444494G','Shad','+34 601452242','5497 Ut Ave'),('21162808G','Marshall','+34 637733283','7489 Sed Rd.'),('21624443L','Nasim','+34 943687583','554-7705 Scelerisque Av.'),('21788505H','Camille','+34 965237299','818-4094 In Road'),('22263224T','Jesse','+34 976550727','374-7642 Etiam Av.'),('22446885N','Keegan','+34 975077144','P.O. Box 917, 8950 Libero Rd.'),('22478748T','Mollie','+34 650014866','709-1171 Non Avenue'),('22671652R','Francesca','+34 603529545','Ap #911-1827 Non Road'),('23361576J','Allistair','+34 635146491','Ap #349-8005 Molestie Av.'),('23534419I','Francesca','+34 984245722','786-7312 Sed Rd.'),('23711575I','Elliott','+34 612616199','652-8146 Donec Avenue'),('23808369D','Aquila','+34 652147579','Ap #914-8966 Fusce Rd.'),('24125376H','Logan','+34 948514468','8506 Vitae Rd.'),('26264221L','Jameson','+34 962737839','708-1465 Fermentum Rd.'),('26655464V','Lareina','+34 686126372','905-5699 Pede. St.'),('26982674I','Brody','+34 614701189','3640 Pretium Rd.'),('27236854M','Riley','+34 652914544','P.O. Box 519, 8077 Donec Avenue'),('27267034M','Amanda','+34 627760472','5554 Donec Street'),('27435570Y','Phillip','+34 916729277','Ap #152-6952 Vel Ave'),('27563216X','Cody','+34 666672450','Ap #741-7336 Malesuada Avenue'),('27651638R','Devin','+34 938862233','Ap #660-1081 Volutpat. St.'),('27656088Y','Lucian','+34 947948441','120-259 Molestie. St.'),('27694354I','Cody','+34 917219532','Ap #642-3109 Tincidunt. St.'),('27715855J','Shay','+34 662534242','9889 Ac Ave'),('28615291C','Ignatius','+34 948727437','Ap #962-9079 Phasellus Rd.'),('28618721M','Hanae','+34 928464738','Ap #614-6913 Pharetra Rd.'),('28858652Y','Erasmus','+34 941282867','P.O. Box 106, 5274 Ut, Avenue'),('29217784O','Lance','+34 936153337','907-556 Eleifend St.'),('30157438C','Janna','+34 958389177','Ap #326-2545 Fringilla. St.'),('30818515A','Gay','+34 690548253','P.O. Box 224, 922 Amet, Ave'),('30968055N','Logan','+34 942359735','Ap #465-1913 Rutrum Ave'),('31544528L','Daphne','+34 905478326','P.O. Box 514, 7958 Cursus Av.'),('31547161G','Dustin','+34 610510685','Ap #419-4744 Cursus. Av.'),('31663625K','Rinah','+34 960352458','Ap #614-5884 Sed Av.'),('32325842E','Hop','+34 689142976','P.O. Box 221, 6360 Sagittis Rd.'),('32789372C','Sade','+34 677623559','P.O. Box 431, 7896 Nec Street'),('32913752P','Kylee','+34 638338955','968-9771 Est Ave'),('32966012N','Haviva','+34 992434696','790-9969 Egestas. Street'),('33151555O','Cecilia','+34 921463263','4320 A, St.'),('33550713H','Kyra','+34 983266337','Ap #782-6572 Fusce St.'),('33622564N','Tamekah','+34 900586751','559-9970 Facilisis, Road'),('33838412I','Baker','+34 677481979','Ap #808-5557 Turpis Rd.'),('34312156P','Camden','+34 962758169','Ap #947-5153 Vestibulum Av.'),('34651113V','Marah','+34 632686321','978-7577 Integer Rd.'),('34711537H','Dolan','+34 918985343','Ap #864-3797 Cursus St.'),('35334248S','McKenzie','+34 673887240','147-1347 Nisi Rd.'),('35602161H','Carolyn','+34 621724742','892-7956 Nunc Road'),('35618539X','Christopher','+34 966428532','965-7942 Orci, Ave'),('35659119X','Kelly','+34 937807364','734-7813 Cras Road'),('35691177R','Ashton','+34 682161814','Ap #840-207 Eu Street'),('35946980T','Jamalia','+34 961742826','Ap #274-6386 Lorem Street'),('36423877W','Rae','+34 641702887','5300 Et St.'),('37059671Y','Emery','+34 688970096','Ap #370-7120 Sed Ave'),('37153443P','Chanda','+34 988228385','7331 Enim, Road'),('37379645O','Brody','+34 664712772','P.O. Box 173, 3353 Ligula. Av.'),('37784838R','Troy','+34 992283041','Ap #559-9515 Fringilla. St.'),('38261158U','Iliana','+34 649896690','853-9633 Ipsum Rd.'),('38323858H','Lynn','+34 679232540','753-1752 Nec Avenue'),('38367852T','Priscilla','+34 633826998','247-9506 Dui St.'),('38723408I','Uriah','+34 684052448','3907 Sed St.'),('39445563C','Farrah','+34 949856419','6277 Gravida. St.'),('39943567V','Miriam','+34 957467294','P.O. Box 570, 6453 Scelerisque St.'),('40545566S','April','+34 908678177','P.O. Box 109, 2209 Diam Avenue'),('40685526N','Malik','+34 972536287','Ap #233-6564 Risus Rd.'),('40861865M','Dillon','+34 976003257','P.O. Box 329, 5265 Fusce Av.'),('41089766F','Clayton','+34 988501371','P.O. Box 520, 8058 Tempus Avenue'),('41682454L','Elmo','+34 916641965','Ap #854-2222 Ipsum Street'),('41684914E','Madaline','+34 974202357','846-411 Euismod St.'),('41762219B','Natalie','+34 955841288','2506 Id Road'),('41852661L','Jin','+34 944876650','536-2494 Integer Rd.'),('42347392C','Joseph','+34 638455547','P.O. Box 591, 3071 Consequat Avenue'),('42572472S','Debra','+34 621565865','7891 At, Street'),('43361458C','Allen','+34 617361459','Ap #146-8477 Praesent Rd.'),('43408761H','Azalia','+34 643138443','442-4437 Sem Avenue'),('43484123O','Sophia','+34 637006151','6894 Dolor St.'),('43746254A','Maxwell','+34 937121568','Ap #239-9102 Diam. St.'),('44194373V','Abbot','+34 658200883','Ap #428-2136 Vehicula Rd.'),('44213776F','Althea','+34 666368558','Ap #187-8544 Non, St.'),('44383648F','Chadwick','+34 977754815','771-8277 Dis Rd.'),('44517526W','Zena','+34 685944280','8443 Nullam St.'),('45349188V','Coby','+34 626722653','8919 Metus. St.'),('45659518F','Oleg','+34 951975656','9319 Sed St.'),('45825752B','Dorothy','+34 668639862','740-9608 Interdum Rd.'),('46302183O','Brent','+34 905263750','Ap #861-2135 Non Road'),('46374446Z','Ryder','+34 618541784','683-7151 Elit, Av.'),('46760744E','Bert','+34 994924371','Ap #942-2739 Adipiscing Rd.'),('47138434V','Jermaine','+34 942346957','436-7104 Elementum, Street'),('47251156V','Xandra','+34 934053100','9032 Nunc Av.'),('47316221I','Arthur','+34 950362246','831-9335 Donec Av.'),('47602748B','Erich','+34 693281523','116-5932 Curabitur Street'),('47672458K','Abra','+34 651166514','Ap #690-1940 Vitae Street'),('48306453I','Russell','+34 905675436','637-1768 Molestie Av.'),('48366507Y','Shellie','+34 954515912','P.O. Box 960, 574 A, Ave'),('48429445Y','Rhoda','+34 976034785','P.O. Box 771, 8833 Congue Street'),('48465659P','Noah','+34 635142443','285-4203 Non Road'),('48868652C','Kimberly','+34 675645474','979-9299 Iaculis Av.'),('48907325L','Dolan','+34 998422717','290-8532 Donec Street'),('49431686A','Josiah','+34 958533968','Ap #185-8792 In Road'),('50513205L','Hanae','+34 942323225','6703 Augue Rd.'),('51185555O','Xanthus','+34 649614062','P.O. Box 491, 4759 Nec St.'),('51270757M','Francesca','+34 984663317','P.O. Box 669, 8654 Malesuada Ave'),('51324713B','Adrienne','+34 914494819','5727 Dolor St.'),('51542471T','Talon','+34 994757878','Ap #768-2663 Donec Avenue'),('52136600U','Cleo','+34 909169252','P.O. Box 814, 4463 Est, Ave'),('52352688R','Xanthus','+34 963287207','5706 Ac Street'),('52476150U','Jada','+34 921873537','963-6236 Non Road'),('52642932X','Tad','+34 614022273','336-3868 Posuere Av.'),('52841109T','Peter','+34 632184444','799-1947 Euismod St.'),('52898249Y','Adria','+34 928114838','1906 Dignissim Avenue'),('53748700M','Blake','+34 928946157','719-2384 Dapibus St.'),('53774407H','Jolie','+34 929146152','P.O. Box 820, 5136 Nec, Av.'),('53875884A','Athena','+34 956615525','226-7761 Maecenas Rd.'),('53887718V','Zachary','+34 633548013','814-8690 Tempor Rd.'),('54128351H','Kelly','+34 649737665','P.O. Box 631, 4868 Sed St.'),('54664061F','Quentin','+34 686667634','P.O. Box 124, 4324 Nec, Rd.'),('54978611E','Britanni','+34 617329886','317-4753 Pulvinar Avenue'),('55220061K','Hyacinth','+34 639367255','148-572 Consectetuer Av.'),('55465953N','Conan','+34 656225637','P.O. Box 141, 4095 Mollis Rd.'),('55658676Y','Raphael','+34 941174404','879-2730 Primis St.'),('55744876F','Gavin','+34 665551559','P.O. Box 480, 4862 Quis Rd.'),('55889863V','Ruth','+34 989858423','Ap #157-2878 Dignissim Ave'),('56363307T','Ocean','+34 668956368','Ap #945-8418 Ac Ave'),('56433801S','Josiah','+34 658142187','Ap #201-8523 Libero. Av.'),('57294588N','Kirby','+34 635135234','Ap #114-2221 Porttitor Avenue'),('57595615Y','Alan','+34 918818345','Ap #141-8706 Condimentum. Rd.'),('57871667D','Ignacia','+34 998020840','Ap #275-6016 Magna Street'),('58478084L','Herrod','+34 947566607','Ap #642-2094 Lectus Road'),('58920734S','Driscoll','+34 964648122','Ap #635-4568 Urna. St.'),('59138943L','Aladdin','+34 922013586','3861 Ac St.'),('59427156Z','Karly','+34 681504762','Ap #463-2860 Nam St.'),('59628168I','Rashad','+34 995843579','Ap #826-4689 Nulla Street'),('60156643Q','Brett','+34 683768162','145-2080 Vestibulum Av.'),('60609718O','Roth','+34 678141873','347-2786 Metus St.'),('61072232T','Keely','+34 945896847','9495 Cursus St.'),('61084606O','Matthew','+34 644614571','661-8621 Non Avenue'),('61114341O','Christen','+34 645828731','Ap #394-373 Ligula Road'),('61287586X','Phoebe','+34 996828543','883-7416 Eu Street'),('61458320W','Nero','+34 629171202','655-9903 Vivamus Ave'),('61757411S','Rana','+34 975568428','Ap #543-3443 Sed St.'),('61918737E','Lyle','+34 922603661','P.O. Box 841, 785 Aliquam St.'),('61964409Q','Dorian','+34 619799925','692-5878 Sed Av.'),('62408781L','Chadwick','+34 613434205','Ap #888-663 Ac Rd.'),('62716279R','Ferris','+34 943593762','653-4555 Sagittis. Avenue'),('62865796K','Fuller','+34 648070924','609-1801 Ante Ave'),('62866814P','Wyoming','+34 950324343','Ap #766-487 Proin Ave'),('63530885J','Herrod','+34 674694596','Ap #975-1157 Accumsan Rd.'),('63644938I','Lois','+34 963523186','Ap #153-3881 Faucibus Road'),('63752196C','Chase','+34 649478785','P.O. Box 949, 6224 Eu St.'),('63848366U','Nicholas','+34 964490117','Ap #302-525 Sem St.'),('63866437E','Bell','+34 994171553','702-8685 Ipsum. Av.'),('63886935V','Lila','+34 617752732','Ap #252-5758 Donec Ave'),('64141638S','Yen','+34 626221254','4942 Orci. St.'),('64163470T','Cathleen','+34 677724044','P.O. Box 139, 4599 Mauris Av.'),('65095345L','Ahmed','+34 667742248','981-1367 Montes, Rd.'),('65217233C','Shellie','+34 624161687','262-5345 Metus Street'),('65344366F','Nasim','+34 647321855','5184 Ut, St.'),('65917739I','Abel','+34 616784388','927-4750 Consequat Rd.'),('65993301G','Dane','+34 668511719','Ap #707-2579 Vehicula St.'),('67331439N','Yen','+34 632878323','Ap #177-9503 Dignissim. Av.'),('67482864P','Colorado','+34 647362436','854-5540 Erat Avenue'),('67812134C','Lana','+34 699887584','9009 Conubia Rd.'),('68306780J','Guy','+34 603659214','Ap #596-8307 Nonummy Rd.'),('68857859C','Hadley','+34 637737795','644-7476 In Av.'),('69049695Q','Ariel','+34 645126376','P.O. Box 714, 5077 Dolor Ave'),('69195426R','Amaya','+34 938157252','P.O. Box 349, 619 Aliquet, St.'),('70672046D','Phelan','+34 917874316','1048 Cum Rd.'),('70963757F','Mariko','+34 658247334','745-5006 Ligula. Road'),('71638818Y','Rhea','+34 960295880','602-4988 Metus. St.'),('71736135J','Jenna','+34 686344359','P.O. Box 788, 1760 Faucibus Road'),('71782828E','Vanna','+34 942751939','7018 Tempus Ave'),('72622033E','Leigh','+34 631277701','Ap #556-6739 Parturient St.'),('72926181S','Brynne','+34 912778835','Ap #704-1919 Non, Road'),('72942443S','Vincent','+34 614756548','Ap #385-7754 Gravida Road'),('73235221S','Armando','+34 617244554','Ap #331-5565 Nec St.'),('73237237V','Desiree','+34 651048656','512-942 Interdum. Rd.'),('73327471I','Arthur','+34 957644124','212-5436 Fringilla Avenue'),('73421768Z','Driscoll','+34 950612485','Ap #890-6906 Vitae, Street'),('73541130D','Jemima','+34 917132031','P.O. Box 755, 2151 Ipsum St.'),('73635513M','Colt','+34 911568893','P.O. Box 734, 4714 Accumsan Ave'),('74072650I','McKenzie','+34 936330470','P.O. Box 995, 2637 Non, Rd.'),('74339304T','Lamar','+34 913707481','Ap #531-7431 Per St.'),('74669514X','Deborah','+34 934870821','202-6908 Tellus Street'),('74739677B','Rinah','+34 684733710','201-9940 Neque. St.'),('76362265O','Lee','+34 647684707','Ap #119-6048 Odio. Av.'),('76486111P','Kenneth','+34 984262032','Ap #729-6969 Ornare Rd.'),('76848628B','Hamish','+34 942357333','Ap #944-1100 Magna. Ave'),('77338175H','Gillian','+34 966168468','526-7974 Nulla. Av.'),('77395517A','Ross','+34 682164158','P.O. Box 939, 247 Magna Avenue'),('77621368I','Kibo','+34 641680411','162-9026 A Road'),('77962234C','Samantha','+34 957710535','204-9040 Laoreet Rd.'),('78045849Y','Joshua','+34 922274655','P.O. Box 602, 4200 Diam. Street'),('78312659C','Erich','+34 962045769','P.O. Box 133, 9552 Cursus Road'),('78378184B','Colette','+34 974637657','6652 Ornare, St.'),('78438241Y','Quinn','+34 915186744','728-8376 Mauris, St.'),('78776712M','Salvador','+34 971375924','P.O. Box 697, 2097 Cursus. Avenue'),('79471085J','Helen','+34 626273133','371-3410 Per Ave'),('80364339O','Mark','+34 635177847','593-5525 Nunc Road'),('81227567M','Kyle','+34 941794450','Ap #905-224 Velit Av.'),('81234403G','Renee','+34 616973386','Ap #455-8335 Ut Street'),('81256886P','Oleg','+34 657236253','Ap #526-9431 Tempor, Street'),('82223881T','Mechelle','+34 986212814','677-9283 Taciti Avenue'),('82267274L','Hiroko','+34 912887551','773-856 Vitae, Ave'),('82856365E','Arsenio','+34 681744433','Ap #981-4057 Magna. Rd.'),('82881546U','Lionel','+34 938217613','6669 Aliquet St.'),('83122364G','Amanda','+34 652288503','214-3099 Lacinia Avenue'),('83852785E','Rhonda','+34 655752748','Ap #636-3480 Taciti Road'),('84077809B','Adena','+34 956863885','360-9535 Aliquam Rd.'),('84163151U','Vaughan','+34 652558793','715-5242 Aenean Street'),('84646465V','Russell','+34 620572341','199 Ante. St.'),('84696383P','Steel','+34 926933523','506-4163 Eleifend St.'),('84831172D','Bevis','+34 961910202','Ap #926-4539 Diam. Rd.'),('85296050C','Jada','+34 668481655','8188 Enim Av.'),('85699752O','Rebecca','+34 942412657','Ap #435-5212 Nibh St.'),('86003571Y','Martha','+34 977284842','228-6354 Vitae Rd.'),('86143440W','Nicholas','+34 622034858','Ap #305-7466 Sagittis Street'),('86766885Y','Leandra','+34 940414471','5673 Auctor Street'),('87207721T','Raphael','+34 995919354','926-1765 Fusce Rd.'),('87680077H','Elijah','+34 601621346','4238 Fermentum Rd.'),('87835441Y','Lenore','+34 984365618','Ap #295-6468 Id, Road'),('87856081D','Lewis','+34 604239945','Ap #701-7670 Tincidunt Street'),('87925743O','Martina','+34 615381788','P.O. Box 986, 5583 Nec, Street'),('88286654D','Sawyer','+34 612582262','865-4488 Viverra. St.'),('88438465E','Hadassah','+34 921641170','P.O. Box 794, 117 Auctor Avenue'),('88628328R','Kevyn','+34 940671337','772-3736 Senectus Road'),('89195121Q','Cally','+34 678070463','767-2860 Vivamus Street'),('90188153K','Ian','+34 623674860','Ap #936-7085 Eu, Rd.'),('91024341S','Abraham','+34 981420781','287-6157 Tellus Street'),('92582690C','Jasper','+34 671983666','110-758 Ac Street'),('92861823W','Cleo','+34 989636755','P.O. Box 138, 4793 Lobortis Ave'),('93673425S','Ethan','+34 956383013','P.O. Box 841, 6759 Et Rd.'),('94042119I','Chase','+34 989460717','Ap #172-6255 Id, Rd.'),('94196870T','Rose','+34 639116644','Ap #432-6847 Enim. St.'),('94543270Q','Merrill','+34 689862303','8594 In Rd.'),('94887591R','Raya','+34 625240616','Ap #264-3060 Sed St.'),('95233675W','Micah','+34 923079465','555-3679 Nisl Av.'),('96269462Y','Burke','+34 672184941','Ap #127-8229 Erat Road'),('96458414Z','Riley','+34 610914471','Ap #965-5261 Turpis Rd.'),('97361451K','Leroy','+34 933571432','Ap #571-699 Venenatis Rd.'),('97431457P','Joelle','+34 916528914','P.O. Box 767, 8999 Mi. Road'),('97471829M','Channing','+34 932366471','Ap #303-7194 Ultrices. Av.'),('98228247C','Simon','+34 665324112','447-7668 Vitae Rd.'),('98756774J','Hashim','+34 936512452','170-3106 Dis Street'),('98863285S','Celeste','+34 920707234','7528 Vehicula Avenue'),('99334522Q','Orson','+34 963260842','2487 Donec Av.'),('99711157V','Carly','+34 917780081','Ap #896-7716 Luctus Road');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comandes_domicili`
--

DROP TABLE IF EXISTS `comandes_domicili`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comandes_domicili` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adreca_entrega` varchar(255) DEFAULT NULL,
  `temps_estimat` time DEFAULT NULL,
  `valoracio_client` int DEFAULT NULL,
  `data_entrega` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `comandes_domicili_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tiquets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comandes_domicili`
--

LOCK TABLES `comandes_domicili` WRITE;
/*!40000 ALTER TABLE `comandes_domicili` DISABLE KEYS */;
INSERT INTO `comandes_domicili` VALUES (1,'\"Avinguda Meridiana 221\"','00:35:00',4,'2023-05-10 15:00:00'),(2,'\"Carrer de la Marina 10\"','01:05:00',3,'2023-05-11 18:00:00'),(3,'\"Travessera de Gracia 300\"','00:25:00',5,'2023-05-12 09:00:00'),(4,'\"Carrer del Clot 58\"','00:45:00',4,'2023-05-13 11:30:00'),(5,'\"Carrer de Sepulveda 129\"','01:10:00',3,'2023-05-14 12:30:00'),(6,'\"Avinguda Paral·lel 15\"','00:50:00',2,'2023-05-15 14:30:00'),(7,'\"Gran Via de les Corts Catalanes 900\"','01:30:00',1,'2023-05-16 16:30:00'),(8,'\"Carrer de la Diputacio 300\"','00:55:00',3,'2023-05-17 18:30:00'),(9,'\"Passeig de Sant Joan 150\"','00:40:00',5,'2023-05-18 08:30:00'),(10,'\"Carrer de Valencia 87\"','01:00:00',4,'2023-05-19 10:30:00'),(11,'\"Carrer de Roger de Lluria 54\"','00:35:00',3,'2023-05-20 12:30:00'),(12,'\"Carrer de Casanova 88\"','01:05:00',2,'2023-05-21 14:30:00');
/*!40000 ALTER TABLE `comandes_domicili` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detall_comandes`
--

DROP TABLE IF EXISTS `detall_comandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detall_comandes` (
  `id_tiquet` int NOT NULL,
  `id_producte` int NOT NULL,
  `quantitat_demanat` int DEFAULT NULL,
  `preu` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id_tiquet`,`id_producte`),
  KEY `id_producte` (`id_producte`),
  CONSTRAINT `detall_comandes_ibfk_1` FOREIGN KEY (`id_tiquet`) REFERENCES `tiquets` (`id`),
  CONSTRAINT `detall_comandes_ibfk_2` FOREIGN KEY (`id_producte`) REFERENCES `inventari` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detall_comandes`
--

LOCK TABLES `detall_comandes` WRITE;
/*!40000 ALTER TABLE `detall_comandes` DISABLE KEYS */;
INSERT INTO `detall_comandes` VALUES (1,1,2,25.00),(1,5,2,25.00),(2,7,1,11.50),(2,9,3,45.00),(2,10,1,18.50),(3,12,1,25.00),(3,13,2,34.00),(4,16,3,39.00),(5,25,3,30.00),(6,33,2,20.00),(7,41,4,20.00),(8,35,1,12.50),(8,38,2,26.00),(9,49,2,12.00),(9,50,2,14.00),(9,51,2,14.00),(10,53,1,8.00),(10,54,3,27.00),(11,56,2,13.00),(12,58,1,7.00),(12,59,1,7.00),(12,60,2,14.00),(13,61,1,7.50),(13,62,1,7.50),(14,63,1,8.50),(14,64,1,7.00),(15,65,2,11.00),(16,66,2,9.00),(17,67,3,15.00),(18,68,1,4.00),(18,69,2,11.00),(18,70,1,6.00),(19,71,2,10.00),(19,72,2,10.00),(20,73,2,2.00),(20,74,1,1.50),(21,75,3,6.00),(22,76,2,6.00),(23,77,1,4.00),(23,78,1,4.50),(24,79,1,1.50),(24,80,1,2.00),(24,81,1,1.00),(24,82,1,1.50),(25,83,1,1.50),(26,84,2,4.00),(26,85,1,2.50),(27,86,1,2.50),(27,87,1,3.00),(28,88,2,5.00),(28,89,1,3.50),(29,90,1,7.00),(29,91,2,11.00),(30,92,1,6.00);
/*!40000 ALTER TABLE `detall_comandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horari`
--

DROP TABLE IF EXISTS `horari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_horari` varchar(20) DEFAULT NULL,
  `hora_inici` time DEFAULT NULL,
  `hora_fi` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom_horari` (`nom_horari`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horari`
--

LOCK TABLES `horari` WRITE;
/*!40000 ALTER TABLE `horari` DISABLE KEYS */;
INSERT INTO `horari` VALUES (1,'matins','08:00:00','12:00:00'),(3,'migdia','12:00:00','16:00:00'),(5,'nit','20:00:00','01:00:00');
/*!40000 ALTER TABLE `horari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventari`
--

DROP TABLE IF EXISTS `inventari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_producte` varchar(50) DEFAULT NULL,
  `estoc` int DEFAULT NULL,
  `preu` decimal(4,2) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `inventari_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventari`
--

LOCK TABLES `inventari` WRITE;
/*!40000 ALTER TABLE `inventari` DISABLE KEYS */;
INSERT INTO `inventari` VALUES (1,'Ensalada Cesar',23,12.50,1),(2,'Ensalada Mixta',15,10.00,1),(3,'Ensalada Griega',20,11.50,1),(4,'Ensalada de Pollo',18,13.00,1),(5,'Ensalada de Atún',25,12.00,1),(6,'Ensalada Caprese',22,11.00,1),(7,'Ensalada de Quinoa',19,12.75,1),(8,'Ensalada Waldorf',17,13.50,1),(9,'Pollo Asado',30,15.00,2),(10,'Costillas de Cerdo',25,18.50,2),(11,'Chuletas de Cordero',15,20.00,2),(12,'Solomillo de Ternera',12,25.00,2),(13,'Filete de Cerdo',22,17.00,2),(14,'Albóndigas de Ternera',18,14.50,2),(15,'Entrecot de Buey',10,30.00,2),(16,'Pechuga de Pavo',20,13.00,2),(17,'Gambas al Ajillo',18,22.00,3),(18,'Mejillones al Vapor',22,19.50,3),(19,'Calamares a la Romana',20,17.00,3),(20,'Paella de Marisco',10,25.00,3),(21,'Pulpo a la Gallega',15,21.00,3),(22,'Arroz Negro',12,18.00,3),(23,'Cocktail de Mariscos',14,20.00,3),(24,'Lubina a la Sal',8,30.00,3),(25,'Espaguetis Carbonara',20,12.50,4),(26,'Macarrones con Queso',15,11.00,4),(27,'Lasaña Boloñesa',12,14.00,4),(28,'Fettuccine Alfredo',18,13.50,4),(29,'Raviolis de Espinacas',14,15.00,4),(30,'Penne all\'Arrabbiata',16,12.00,4),(31,'Tortellini de Carne',10,14.50,4),(32,'Canelones de Pollo',12,13.00,4),(33,'Pizza Margherita',30,10.00,5),(34,'Pizza Pepperoni',28,11.00,5),(35,'Pizza Cuatro Quesos',25,12.50,5),(36,'Pizza Hawaiana',22,11.50,5),(37,'Pizza Vegetariana',20,10.50,5),(38,'Pizza Barbacoa',18,13.00,5),(39,'Pizza de Atún',15,12.00,5),(40,'Pizza de Jamón',12,11.00,5),(41,'Kebab de Pollo',12,8.50,6),(42,'Kebab de Ternera',10,9.00,6),(43,'Kebab Vegetal',8,7.50,6),(44,'Durum de Pollo',14,8.50,6),(45,'Durum de Ternera',11,9.00,6),(46,'Kebab Mixto',9,9.50,6),(47,'Shawarma',13,10.00,6),(48,'Falafel',15,7.50,6),(49,'Patatas Bravas',25,6.00,7),(50,'Croquetas de Jamón',18,5.50,7),(51,'Calamares a la Romana',15,7.00,7),(52,'Empanadillas de Atún',20,6.50,7),(53,'Nachos con Queso',22,8.00,7),(54,'Palitos de Mozzarella',18,7.50,7),(55,'Mini Hamburguesas',12,9.00,7),(56,'Alitas de Pollo',16,6.50,7),(57,'Mojito',35,5.00,8),(58,'Margarita',30,6.00,8),(59,'Piña Colada',25,7.00,8),(60,'Tequila Sunrise',22,8.00,8),(61,'Daikiri de Fresa',28,7.50,8),(62,'Cosmopolitan',24,6.50,8),(63,'Manhattan',20,8.50,8),(64,'Martini',18,7.00,8),(65,'Tarta de Chocolate',20,5.50,9),(66,'Flan de Huevo',22,4.50,9),(67,'Tiramisu',18,5.00,9),(68,'Helado de Vainilla',25,4.00,9),(69,'Brownie',15,5.50,9),(70,'Panna Cotta',12,6.00,9),(71,'Cheesecake',10,5.00,9),(72,'Profiteroles',8,6.50,9),(73,'Agua Mineral',40,1.00,10),(74,'Refresco de Cola',38,1.50,10),(75,'Zumo de Naranja',35,2.00,10),(76,'Cerveza',45,3.00,10),(77,'Vino Tinto',25,4.00,10),(78,'Vino Blanco',20,4.50,10),(79,'Refresco de Limón',30,1.50,10),(80,'Tónica',22,2.00,10),(81,'Café Espresso',50,1.00,11),(82,'Café con Leche',45,1.50,11),(83,'Café Americano',30,1.50,11),(84,'Cappuccino',35,2.00,11),(85,'Café Mocha',28,2.50,11),(86,'Café Latte',32,2.50,11),(87,'Carajillo',20,3.00,11),(88,'Mocaccino',25,2.50,11),(89,'Hamburguesa Clásica',20,6.50,12),(90,'Hamburguesa BBQ',18,7.00,12),(91,'Hamburguesa de Pollo',15,5.50,12),(92,'Hamburguesa Vegana',12,8.00,12),(93,'Hamburguesa con Queso',14,7.00,12),(94,'Hamburguesa Doble',10,9.00,12),(95,'Hamburguesa de Pavo',8,6.00,12),(96,'Hamburguesa Picante',9,7.50,12),(97,'Tostada con Tomate',15,3.50,13),(98,'Tostada con Aguacate',12,4.50,13),(99,'Tostada con Jamón',10,5.00,13),(100,'Tostada con Mermelada',8,3.00,13),(101,'Tostada Francesa',11,4.00,13),(102,'Tostada con Huevo',13,4.50,13),(103,'Tostada con Mantequilla',9,3.50,13),(104,'Tostada con Queso',14,5.00,13),(105,'Bocadillo de Jamón Caliente',10,6.50,14),(106,'Bocadillo de Queso Fundido',8,6.00,14),(107,'Bocadillo de Pollo',12,7.50,14),(108,'Bocadillo de Lomo',14,8.00,14),(109,'Bocadillo de Tortilla',16,5.50,14),(110,'Bocadillo de Bacon',15,7.00,14),(111,'Bocadillo de Atún',18,6.50,14),(112,'Bocadillo de Pavo',20,7.50,14),(113,'Bocadillo de Atún',14,6.50,15),(114,'Bocadillo de Jamón y Queso',16,7.50,15),(115,'Bocadillo Vegetal',10,5.00,15),(116,'Bocadillo de Tortilla',12,5.50,15),(117,'Bocadillo de Huevo',14,6.00,15),(118,'Bocadillo de Ensalada',9,4.50,15),(119,'Bocadillo de Queso Fresco',13,5.50,15),(120,'Bocadillo de Tomate',11,4.00,15),(121,'Plato Combinado de Pollo',10,12.50,16),(122,'Plato Combinado de Ternera',12,14.50,16),(123,'Plato Combinado de Cerdo',15,13.00,16),(124,'Plato Combinado de Pescado',8,15.00,16),(125,'Plato Combinado de Ensalada',14,12.00,16),(126,'Plato Combinado de Vegetales',16,13.00,16),(127,'Plato Combinado de Patatas',12,13.50,16),(128,'Plato Combinado de Arroz',10,11.50,16);
/*!40000 ALTER TABLE `inventari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llista_negra`
--

DROP TABLE IF EXISTS `llista_negra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llista_negra` (
  `client_id` char(9) NOT NULL,
  `motiu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `llista_negra_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llista_negra`
--

LOCK TABLES `llista_negra` WRITE;
/*!40000 ALTER TABLE `llista_negra` DISABLE KEYS */;
INSERT INTO `llista_negra` VALUES ('01341585O','No assistencia a reserva pasada'),('14877126M','No assistencia a reserva pasada'),('15184503W','No assistencia a reserva pasada'),('16275641I','No assistencia a reserva pasada'),('17126467E','No assistencia a reserva pasada'),('23534419I','No assistencia a reserva pasada'),('24125376H','No assistencia a reserva pasada'),('26655464V','No assistencia a reserva pasada'),('27435570Y','No assistencia a reserva pasada'),('28618721M','No assistencia a reserva pasada'),('34651113V','No assistencia a reserva pasada'),('37059671Y','No assistencia a reserva pasada'),('48868652C','No assistencia a reserva pasada'),('52352688R','No assistencia a reserva pasada'),('54664061F','No assistencia a reserva pasada'),('59628168I','No assistencia a reserva pasada'),('60156643Q','No assistencia a reserva pasada'),('60609718O','No assistencia a reserva pasada'),('73421768Z','No assistencia a reserva pasada'),('76848628B','No assistencia a reserva pasada'),('78438241Y','No assistencia a reserva pasada'),('85699752O','No assistencia a reserva pasada'),('86143440W','No assistencia a reserva pasada'),('88286654D','No assistencia a reserva pasada'),('89195121Q','No assistencia a reserva pasada'),('94543270Q','No assistencia a reserva pasada'),('97471829M','No assistencia a reserva pasada'),('98228247C','No assistencia a reserva pasada'),('99334522Q','No assistencia a reserva pasada'),('99711157V','No assistencia a reserva pasada');
/*!40000 ALTER TABLE `llista_negra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `dni` char(9) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `cognom` varchar(30) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telefon` varchar(13) DEFAULT NULL,
  `adreca` varchar(255) DEFAULT NULL,
  `carrec` enum('Gerent','Cambrer','Neteja','Repartidor','Cuiner') DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES ('00340245Y','Richard','Ortiz','eget.ipsum.donec@outlook.cat','+34 687524287','Ap #610-6255 Luctus St.','Neteja'),('00928905B','Aurelia','Gomez','neque@gmail.es','+34 627847168','Ap #427-5646 Proin Ave','Cuiner'),('01270130U','Tarik','Aguilar','penatibus.et.magnis@gmail.com','+34 619483188','8210 Pharetra Rd.','Cambrer'),('03073511I','Lareina','Dominguez','accumsan.laoreet@gmail.es','+34 642940371','Ap #420-1082 Aenean Rd.','Cambrer'),('03539946S','Noble','Bravo','mi.felis@lasso.cat','+34 695083504','2600 Mauris St.','Cambrer'),('08609132Z','Amela','Aguilar','gravida.sagittis@lasso.cat','+34 653166585','Ap #593-3482 Quisque Rd.','Neteja'),('11939143G','Damon','Alvarez','eros.non@lasso.com','+34 609425837','Ap #661-990 Consequat, Avenue','Repartidor'),('12558929I','Perry','Hernandez','non.egestas.a@outlook.cat','+34 671486241','Ap #186-703 Ac Ave','Cuiner'),('13572168C','Wallace','Miguel','magna@lasso.cat','+34 656230266','964-6674 Magnis Street','Cuiner'),('15002720B','Dorian','Diaz','diam.proin.dolor@outlook.cat','+34 622166928','382-3629 Lorem Road','Neteja'),('15113912L','Desiree','Lozano','auctor.odio@outlook.es','+34 683865309','Ap #186-278 Mus. Avenue','Cambrer'),('15609775A','Brody','Prieto','fringilla.ornare.placerat@outlook.es','+34 600843632','141-6883 Neque. Road','Cambrer'),('17359967P','Orlando','Delgado','interdum.curabitur.dictum@outlook.cat','+34 666689462','3167 Ac Av.','Neteja'),('18651232A','Ciara','Marquez','id.ante@lasso.cat','+34 643967650','Ap #362-7592 Mauris Rd.','Neteja'),('19532297L','Brian','Caballero','erat.vitae@outlook.es','+34 663348029','P.O. Box 907, 2342 Consequat Road','Cambrer'),('20616157N','Jayme','Mora','orci.ut.semper@outlook.es','+34 634573837','255-7137 Sed St.','Gerent'),('21391233A','Tatyana','Herrero','amet.risus@gmail.es','+34 635411118','P.O. Box 449, 3018 Donec Avenue','Cuiner'),('21637647H','Elliott','Medina','blandit.at@gmail.com','+34 676557177','Ap #770-1112 Tellus Street','Neteja'),('21928157V','Jakeem','Herrera','posuere.cubilia@lasso.com','+34 697174333','P.O. Box 932, 7272 Mauris Av.','Neteja'),('23075487O','Ori','Campos','vel.convallis@lasso.cat','+34 631823373','Ap #218-6407 Auctor Ave','Neteja'),('24661688K','Leilani','Dominguez','lorem.vitae.odio@lasso.cat','+34 687123266','Ap #636-8562 Dictum Avenue','Neteja'),('24803099K','Dara','Miguel','lorem.lorem@lasso.cat','+34 606518868','868-586 Ornare Street','Gerent'),('26969542M','Wade','Torres','cum.sociis@gmail.es','+34 676262947','307-5345 Pellentesque Av.','Repartidor'),('29144138Z','Steel','Pastor','erat.in@gmail.com','+34 688918614','Ap #158-8525 Convallis Road','Gerent'),('29912435Y','Jack','Prieto','in.cursus@lasso.com','+34 643424903','Ap #889-3989 Eu Rd.','Cambrer'),('31222438J','Flavia','Vidal','dignissim@lasso.cat','+34 689975605','Ap #219-4174 Cursus Rd.','Gerent'),('33532173R','Vincent','Pascual','ornare.placerat@outlook.com','+34 601706752','Ap #894-2957 Mattis Rd.','Gerent'),('33627580V','Boris','Molina','aliquam.enim.nec@outlook.com','+34 687138690','8941 Id, Street','Cuiner'),('34194073G','Herrod','Santos','nulla.eu.neque@outlook.com','+34 696775137','Ap #421-7023 Magna Rd.','Gerent'),('34370381K','Dahlia','Hidalgo','neque.morbi@gmail.com','+34 651245326','636-5215 Consectetuer Road','Neteja'),('35370940Y','Arsenio','Moreno','turpis.vitae.purus@outlook.com','+34 658852503','362-6175 Id St.','Repartidor'),('35812446Q','Carson','Izquierdo','egestas@outlook.com','+34 638525414','259-9981 Lacus. St.','Gerent'),('36323981G','Willa','Vazquez','magnis.dis@gmail.es','+34 603353465','477 Vitae, Rd.','Neteja'),('37313820B','Nash','Garcia','dui.fusce@lasso.com','+34 614268562','P.O. Box 290, 2097 Adipiscing St.','Gerent'),('38555357C','Howard','Crespo','nisi.aenean@outlook.cat','+34 667144318','371-340 Erat St.','Neteja'),('40254897D','Zeph','Garcia','porta.elit.a@lasso.cat','+34 602327861','P.O. Box 545, 188 Dictum Road','Neteja'),('41631184I','Tamara','Blanco','leo.vivamus@lasso.com','+34 654644752','937-3281 Non Av.','Cambrer'),('43035645W','Jemima','Herrero','egestas.fusce.aliquet@lasso.es','+34 616457482','Ap #370-4983 Egestas. Rd.','Cuiner'),('44103966W','Ivana','Ruiz','pellentesque.ut.ipsum@outlook.es','+34 645807747','769-2605 Pharetra Av.','Cambrer'),('46312434F','Jorden','Vazquez','luctus.sit@outlook.com','+34 644451179','Ap #725-8375 At, Av.','Cambrer'),('46765450D','Anjolie','Castro','facilisis.facilisis@lasso.cat','+34 642966717','139-205 Non Rd.','Gerent'),('46916737C','Beau','Morales','dapibus@outlook.cat','+34 615626629','P.O. Box 666, 6943 Purus. Avenue','Cambrer'),('47266920P','Rhea','Serrano','pellentesque@outlook.cat','+34 697475284','3093 A Av.','Gerent'),('48682187J','Jamal','Garcia','nisl.arcu.iaculis@outlook.com','+34 678610631','416-6299 Facilisis Street','Gerent'),('48700088N','Melvin','Iba','donec.fringilla.donec@lasso.cat','+34 667573524','8324 Ullamcorper. Avenue','Cambrer'),('49507383K','Oscar','Cabrera','sed.eu.nibh@lasso.com','+34 654296625','993-7401 Egestas. Street','Gerent'),('49742419O','Cassidy','Carmona','auctor.quis.tristique@lasso.cat','+34 624143431','Ap #151-3387 Dui Avenue','Neteja'),('51368402Y','Christine','Gonzalez','mi@lasso.com','+34 668520582','Ap #461-2930 Facilisis Road','Neteja'),('52057863Z','Shafira','Andres','augue.porttitor.interdum@outlook.com','+34 667971250','Ap #814-6549 Et St.','Neteja'),('54203177G','Caesar','Muﾑoz','dui@lasso.cat','+34 660435514','796-4136 Elit Avenue','Neteja'),('55434131I','Devin','Gil','nulla.eget@lasso.cat','+34 621440876','987-1954 Purus St.','Repartidor'),('56649676X','Olivia','Marti','a.felis.ullamcorper@gmail.es','+34 665644063','2343 Eget Avenue','Cambrer'),('56730588N','Emily','Fernandez','non.ante.bibendum@lasso.com','+34 666071472','240-7443 Adipiscing Ave','Cambrer'),('57147681P','Tyler','Ramirez','amet.nulla@gmail.com','+34 634414449','Ap #631-681 Hendrerit Ave','Repartidor'),('58633109A','Vincent','Gutierrez','mollis.duis@gmail.com','+34 651845127','971-2663 Sagittis Ave','Cambrer'),('58894659E','Kyla','Redondo','eleifend.vitae@lasso.cat','+34 668131127','P.O. Box 453, 3311 Elit St.','Gerent'),('59745632D','Ursula','Nuñez','tellus.phasellus@gmail.es','+34 663123145','901-2088 Sed Rd.','Repartidor'),('60482206L','Hanna','Prieto','tellus.aenean.egestas@gmail.cat','+34 673688979','291-4444 Ante Av.','Cuiner'),('60922784W','Burke','Blanco','pede@lasso.es','+34 667035940','135-5284 Venenatis St.','Neteja'),('61543933L','Maxwell','Navarro','lacus@lasso.es','+34 635754140','866-2187 Sagittis Avenue','Neteja'),('61853145S','Baker','Medina','quisque.varius@outlook.cat','+34 632894756','1964 Congue. Rd.','Gerent'),('63192928L','Rhea','Leon','tortor@outlook.cat','+34 652815247','Ap #634-8426 Fusce St.','Cambrer'),('72084498W','Bryar','Marquez','dictum@lasso.es','+34 651452894','Ap #668-363 Dolor Ave','Repartidor'),('73419415A','Norman','Navarro','nec.ante.maecenas@lasso.cat','+34 678141658','P.O. Box 284, 1063 Consectetuer Street','Cuiner'),('73785806Z','Lewis','Reyes','cras.vehicula@gmail.cat','+34 641421365','Ap #490-1704 Cum Street','Repartidor'),('73997450T','Duncan','Ferrer','quisque.fringilla.euismod@outlook.com','+34 625769954','Ap #504-3025 Laoreet St.','Cuiner'),('74037166E','Lyle','Vidal','sapien@outlook.com','+34 622681787','P.O. Box 994, 7153 Elit St.','Cuiner'),('75309307B','Ignacia','Duran','et.rutrum@lasso.com','+34 617576228','P.O. Box 433, 5826 Vestibulum Avenue','Neteja'),('75909285X','Ima','Herrera','ullamcorper@outlook.com','+34 632907792','Ap #270-4348 At, Street','Cambrer'),('76082720O','Jaime','Rubio','posuere@lasso.cat','+34 641696631','Ap #224-5741 Et, St.','Repartidor'),('78312796L','Wayne','Mora','magnis.dis@gmail.com','+34 619472433','3714 Mattis Rd.','Repartidor'),('79609268M','Quin','Torres','lacinia.mattis.integer@gmail.es','+34 678217147','Ap #674-1950 Dapibus Street','Gerent'),('81925201C','Tatum','Martin','risus.at@outlook.com','+34 658072461','146-6488 Faucibus Avenue','Neteja'),('82242844C','Rigel','Pardo','et.netus.et@lasso.cat','+34 617496389','Ap #886-3638 Metus Street','Neteja'),('83635806W','Suki','Ortega','aliquet.vel.vulputate@gmail.es','+34 668364737','5224 Sagittis. Avenue','Neteja'),('83793169S','Yuli','Muñoz','tellus.nunc@gmail.com','+34 645334828','321-739 Justo. Street','Neteja'),('83976992V','Mufutau','Nieto','purus@gmail.cat','+34 684186040','Ap #676-2722 Et St.','Cuiner'),('84370592U','Michelle','Caballero','id.libero.donec@lasso.es','+34 663311238','Ap #552-1155 Tellus Rd.','Cambrer'),('85318490H','Harrison','Merino','tempor.lorem@gmail.cat','+34 648332484','Ap #770-6003 Tristique St.','Cuiner'),('85836179X','Jolene','Sanchez','nec@lasso.com','+34 629277200','P.O. Box 547, 6517 Pede, St.','Neteja'),('86838578O','Barry','Morales','convallis.est@lasso.com','+34 627940119','4590 Nec St.','Repartidor'),('87409963Z','Jerome','Santos','facilisis.facilisis@gmail.cat','+34 658623422','P.O. Box 696, 8267 Ac Avenue','Cuiner'),('87785975Z','Solomon','Moya','sit.amet.risus@gmail.cat','+34 681310893','4559 Porttitor Rd.','Cuiner'),('88309661A','Hedwig','Pardo','curabitur.massa.vestibulum@gmail.es','+34 648231265','P.O. Box 956, 2517 Ligula Street','Cuiner'),('88726885N','Thaddeus','Gonzalez','magna@lasso.es','+34 683848167','Ap #330-9129 Sed Road','Cambrer'),('89520302K','Halee','Gomez','vitae.sodales@gmail.es','+34 654379580','Ap #128-104 Consectetuer St.','Neteja'),('90181172Z','Bianca','Nuñez','tristique@gmail.es','+34 686276860','Ap #389-8651 Justo Ave','Neteja'),('90804186A','Nolan','Ramos','egestas.fusce@lasso.com','+34 629432800','934-3036 Orci St.','Cuiner'),('91153399R','Jenette','Rubio','eu.sem.pellentesque@gmail.com','+34 653236742','Ap #428-9500 Mauris Ave','Cuiner'),('91263754E','Mercedes','Pascual','etiam.bibendum@gmail.com','+34 689683636','Ap #595-7799 Ut Av.','Neteja'),('91325811O','Ishmael','Cano','velit.aliquam@outlook.cat','+34 642918314','Ap #768-3797 Quis Street','Repartidor'),('91541402M','Regina','Ortiz','euismod.mauris.eu@gmail.cat','+34 648053196','114-8136 At, Rd.','Neteja'),('91748871E','Patience','Serrano','vestibulum.mauris@gmail.es','+34 643413845','2125 Aliquam Rd.','Neteja'),('93569877V','Chadwick','Marquez','varius.orci@gmail.cat','+34 682565781','2029 Eu Avenue','Neteja'),('93675260A','Jayme','Fernandez','non.cursus@lasso.cat','+34 666983893','Ap #160-6713 Ante. Ave','Neteja'),('93753075G','Roanna','Saez','mauris.id@outlook.com','+34 620638273','875-5735 Congue Street','Neteja'),('94440543Y','Stacey','Torres','morbi.non@outlook.com','+34 664115695','567-7671 Et St.','Gerent'),('96523575F','Diana','Pascual','enim.nec.tempus@lasso.cat','+34 641823487','8515 Fermentum St.','Repartidor'),('96617381D','Zenia','Nuﾑez','tincidunt.orci.quis@outlook.es','+34 660378571','244-6350 Semper St.','Neteja'),('97399021G','Sade','ﾑez','varius.nam.porttitor@outlook.cat','+34 677314067','194-5212 Feugiat. Road','Cambrer');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserves`
--

DROP TABLE IF EXISTS `reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantitat_persones` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `client_id` char(9) DEFAULT NULL,
  `taula_id` int DEFAULT NULL,
  `assistencia` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `taula_id` (`taula_id`),
  CONSTRAINT `reserves_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`dni`),
  CONSTRAINT `reserves_ibfk_2` FOREIGN KEY (`taula_id`) REFERENCES `taules` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserves`
--

LOCK TABLES `reserves` WRITE;
/*!40000 ALTER TABLE `reserves` DISABLE KEYS */;
INSERT INTO `reserves` VALUES (1,2,'2024-05-20','12:30:00','59427156Z',1,'1'),(2,4,'2024-05-20','13:00:00','76362265O',2,'1'),(3,3,'2024-05-20','14:45:00','87835441Y',3,'1'),(4,4,'2024-05-20','15:15:00','42347392C',4,'1'),(5,5,'2024-05-20','16:00:00','02727727Q',5,'1'),(6,6,'2024-05-20','17:30:00','61072232T',6,'1'),(7,6,'2024-05-20','18:00:00','40861865M',7,'1'),(8,2,'2024-05-20','19:00:00','77962234C',8,'1'),(9,4,'2024-05-20','20:15:00','09687548T',9,'1'),(10,6,'2024-05-20','21:30:00','44517526W',10,'1'),(11,4,'2024-05-20','22:45:00','28615291C',11,'1'),(12,4,'2024-05-20','23:00:00','16554723W',12,'1'),(13,2,'2024-05-21','00:15:00','27435570Y',13,'0'),(14,2,'2024-05-21','00:30:00','97471829M',14,'0'),(15,8,'2024-05-21','01:00:00','78438241Y',15,'0'),(16,2,'2024-05-21','12:45:00','37059671Y',1,'0'),(17,4,'2024-05-21','13:30:00','99334522Q',2,'0'),(18,4,'2024-05-21','14:15:00','99711157V',3,'0'),(19,4,'2024-05-21','15:00:00','60156643Q',4,'0'),(20,6,'2024-05-21','16:30:00','17126467E',5,'0'),(21,8,'2024-05-21','17:45:00','23534419I',6,'0'),(22,6,'2024-05-21','18:15:00','60609718O',7,'0'),(23,2,'2024-05-21','19:45:00','88286654D',8,'0'),(24,4,'2024-05-21','20:00:00','28618721M',9,'0'),(25,6,'2024-05-21','21:15:00','94543270Q',10,'0'),(26,4,'2024-05-21','22:30:00','16275641I',11,'0'),(27,4,'2024-05-21','23:45:00','76848628B',12,'0'),(28,2,'2024-05-22','00:00:00','73421768Z',13,'0'),(29,2,'2024-05-22','00:45:00','24125376H',14,'0'),(30,8,'2024-05-22','01:00:00','89195121Q',15,'0'),(31,2,'2024-05-22','12:15:00','48868652C',1,'0'),(32,4,'2024-05-22','13:00:00','52352688R',2,'0'),(33,4,'2024-05-22','14:30:00','14877126M',3,'0'),(34,4,'2024-05-22','15:45:00','98228247C',4,'0'),(35,6,'2024-05-22','16:00:00','01341585O',5,'0'),(36,8,'2024-05-22','17:30:00','85699752O',6,'0'),(37,6,'2024-05-22','18:00:00','26655464V',7,'0'),(38,2,'2024-05-22','19:15:00','34651113V',8,'0'),(39,4,'2024-05-22','20:00:00','54664061F',9,'0'),(40,6,'2024-05-22','21:30:00','59628168I',10,'0'),(41,4,'2024-05-22','22:00:00','86143440W',11,'0'),(42,4,'2024-05-22','23:15:00','15184503W',12,'0'),(43,2,'2024-05-23','00:30:00','47251156V',13,'0'),(44,2,'2024-05-23','00:45:00','73635513M',14,'0'),(45,8,'2024-05-23','01:00:00','73237237V',15,'0'),(46,2,'2024-05-23','12:45:00','23711575I',1,'0'),(47,4,'2024-05-23','13:30:00','45349188V',2,'0'),(48,4,'2024-05-23','14:15:00','38367852T',3,'0'),(49,4,'2024-05-23','15:00:00','61084606O',4,'0'),(50,6,'2024-05-23','16:30:00','80364339O',5,'0'),(57,6,'2024-06-01','18:00:00','40861865M',7,'0'),(58,2,'2024-06-01','19:00:00','77962234C',8,'0'),(59,4,'2024-06-01','20:15:00','09687548T',9,'0'),(60,6,'2024-06-01','21:30:00','44517526W',10,'0'),(61,4,'2024-06-01','22:45:00','28615291C',11,'0'),(62,4,'2024-06-01','23:00:00','16554723W',12,'0'),(63,2,'2024-06-02','00:15:00','27435570Y',13,'0'),(64,2,'2024-06-02','00:30:00','97471829M',14,'0'),(65,8,'2024-06-02','01:00:00','78438241Y',15,'0'),(66,2,'2024-06-02','12:45:00','37059671Y',1,'0'),(67,4,'2024-06-02','13:30:00','99334522Q',2,'0'),(68,4,'2024-06-02','14:15:00','99711157V',3,'0'),(69,4,'2024-06-02','15:00:00','60156643Q',4,'0'),(70,6,'2024-06-02','16:30:00','17126467E',5,'0'),(71,8,'2024-06-02','17:45:00','23534419I',6,'0'),(72,6,'2024-06-02','18:15:00','60609718O',7,'0'),(73,2,'2024-06-02','19:45:00','88286654D',8,'0'),(74,4,'2024-06-02','20:00:00','28618721M',9,'0'),(75,6,'2024-06-02','21:15:00','94543270Q',10,'0'),(76,4,'2024-06-02','22:30:00','16275641I',11,'0'),(77,4,'2024-06-02','23:45:00','76848628B',12,'0'),(78,2,'2024-06-03','00:00:00','73421768Z',13,'0'),(79,2,'2024-06-03','00:45:00','24125376H',14,'0'),(80,8,'2024-06-03','01:00:00','89195121Q',15,'0'),(81,2,'2024-06-03','12:15:00','48868652C',1,'0'),(82,4,'2024-06-03','13:00:00','52352688R',2,'0'),(83,4,'2024-06-03','14:30:00','14877126M',3,'0'),(84,4,'2024-06-03','15:45:00','98228247C',4,'0'),(85,6,'2024-06-03','16:00:00','01341585O',5,'0'),(86,8,'2024-06-03','17:30:00','85699752O',6,'0'),(87,6,'2024-06-03','18:00:00','26655464V',7,'0'),(88,2,'2024-06-03','19:15:00','34651113V',8,'0'),(89,4,'2024-06-03','20:00:00','54664061F',9,'0'),(90,6,'2024-06-03','21:30:00','59628168I',10,'0'),(91,4,'2024-06-03','22:00:00','86143440W',11,'0'),(92,4,'2024-06-03','23:15:00','15184503W',12,'0'),(93,2,'2024-06-04','00:30:00','47251156V',13,'0'),(94,2,'2024-06-04','00:45:00','73635513M',14,'0'),(95,8,'2024-06-04','01:00:00','73237237V',15,'0'),(96,2,'2024-06-04','12:45:00','23711575I',1,'0'),(97,4,'2024-06-04','13:30:00','45349188V',2,'0'),(98,4,'2024-06-04','14:15:00','38367852T',3,'0'),(99,4,'2024-06-04','15:00:00','61084606O',4,'0'),(100,6,'2024-06-04','16:30:00','80364339O',5,'0');
/*!40000 ALTER TABLE `reserves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taules`
--

DROP TABLE IF EXISTS `taules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `capacitat` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taules`
--

LOCK TABLES `taules` WRITE;
/*!40000 ALTER TABLE `taules` DISABLE KEYS */;
INSERT INTO `taules` VALUES (1,2),(2,4),(3,4),(4,4),(5,6),(6,8),(7,6),(8,2),(9,4),(10,6),(11,4),(12,4),(13,2),(14,2),(15,8);
/*!40000 ALTER TABLE `taules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiquets`
--

DROP TABLE IF EXISTS `tiquets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiquets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` char(9) DEFAULT NULL,
  `treballador_id` char(9) DEFAULT NULL,
  `preu_total` decimal(10,2) DEFAULT NULL,
  `data_hora` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `treballador_id` (`treballador_id`),
  CONSTRAINT `tiquets_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`dni`),
  CONSTRAINT `tiquets_ibfk_2` FOREIGN KEY (`treballador_id`) REFERENCES `personal` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiquets`
--

LOCK TABLES `tiquets` WRITE;
/*!40000 ALTER TABLE `tiquets` DISABLE KEYS */;
INSERT INTO `tiquets` VALUES (1,'65095345L','78312796L',50.00,'2024-05-23 08:00:00'),(2,'21162808G','43035645W',75.00,'2024-05-23 09:30:00'),(3,'16387411T','19532297L',60.00,'2024-05-23 10:45:00'),(4,'64163470T','89520302K',45.00,'2024-05-23 11:15:00'),(5,'62716279R','33627580V',30.00,'2024-05-23 12:00:00'),(6,'77621368I','97399021G',25.00,'2024-05-23 12:30:00'),(7,'30968055N','46312434F',40.00,'2024-05-23 13:00:00'),(8,'74072650I','41631184I',55.00,'2024-05-23 13:30:00'),(9,'28858652Y','24803099K',70.00,'2024-05-23 14:00:00'),(10,'55658676Y','33627580V',35.00,'2024-05-23 14:30:00'),(11,'84077809B','97399021G',20.00,'2024-05-23 15:00:00'),(12,'59138943L','24803099K',65.00,'2024-05-23 15:30:00'),(13,'87925743O','41631184I',45.00,'2024-05-23 16:00:00'),(14,'27651638R','33627580V',30.00,'2024-05-23 16:30:00'),(15,'55889863V','33627580V',25.00,'2024-05-23 17:00:00'),(16,'83852785E','97399021G',40.00,'2024-05-23 17:30:00'),(17,'65217233C','41631184I',55.00,'2024-05-23 18:00:00'),(18,'46760744E','33627580V',70.00,'2024-05-23 18:30:00'),(19,'35691177R','33627580V',35.00,'2024-05-23 19:00:00'),(20,'07439678M','78312796L',30.00,'2024-05-23 19:30:00'),(21,'92861823W','43035645W',25.00,'2024-05-23 20:00:00'),(22,'11407436U','19532297L',40.00,'2024-05-23 20:30:00'),(23,'69049695Q','89520302K',60.00,'2024-05-23 21:00:00'),(24,'63848366U','24803099K',50.00,'2024-05-23 21:30:00'),(25,'63644938I','41631184I',45.00,'2024-05-23 22:00:00'),(26,'44383648F','33627580V',70.00,'2024-05-23 22:30:00'),(27,'16435620M','78312796L',35.00,'2024-05-23 23:00:00'),(28,'43746254A','43035645W',20.00,'2024-05-23 23:30:00'),(29,'22478748T','19532297L',25.00,'2024-05-24 00:00:00'),(30,'41762219B','89520302K',40.00,'2024-05-24 00:30:00');
/*!40000 ALTER TABLE `tiquets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 20:03:33
