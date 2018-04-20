CREATE DATABASE  IF NOT EXISTS `MCU_VISUALIZATION` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `MCU_VISUALIZATION`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: databaseproject.cwoxgifwds2r.us-east-1.rds.amazonaws.com    Database: MCU_VISUALIZATION
-- ------------------------------------------------------
-- Server version	5.6.39-log

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
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `character_id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `species` varchar(255) DEFAULT NULL,
  `first_movie_appearance` int(11) NOT NULL,
  `image_link` text,
  PRIMARY KEY (`character_id`),
  KEY `fk_characters_first_movie_appearance_idx` (`first_movie_appearance`),
  CONSTRAINT `fk_characters_first_movie_appearance` FOREIGN KEY (`first_movie_appearance`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'Iron Man','Anthony Edward Stark','M','Human',1,'../static/img/logo/avengers/iron man.png'),(2,'Pepper Potts','Virginia Potts','F','Human',1,'../static/img/logo/other char/pepper potts.png'),(3,'Iron Monger','Obadiah Stane','M','Human',1,'../static/img/logo/other char/IronMan_Monger.png'),(4,'War Machine','James Rhodes','M','Human',1,'../static/img/logo/characters/war-machine.png'),(5,'Nick Fury','Nicholas Joseph Fury','M','Human',1,'../static/img/logo/other char/nick fury.png'),(6,'Howard Stark','Howard Anthony Walter Stark','M','Human',1,'../static/img/logo/other char/howard stark.png'),(7,'Happy Hogan','Harold Joseph Hogan','M','Human',1,'../static/img/logo/other char/happy hogan.png'),(8,'Agent Coulson','Phillip J Coulson','M','Human',1,'../static/img/logo/other char/agent coulson.png'),(9,'Hulk','Bruce Banner','M','Human',2,'../static/img/logo/avengers/hulk.png'),(10,'Elizabeth Ross','Elizabeth Ross','F','Human',2,'../static/img/logo/other char/betty ross.png'),(11,'Abomination','Emil Blonsky','M','Human',2,'../static/img/logo/other char/abomination.png'),(12,'General Ross','Thaddeus E. Ross','M','Human',2,'../static/img/logo/other char/red hulk.png'),(13,'Black Widow','Natasha Romanoff','F','Human',3,'../static/img/logo/other char/black-widow.png'),(14,'Whiplash','Ivan Vanko','M','Human',3,'../static/img/logo/other char/whiplash.png'),(15,'Justin Hammer','Justin Hammer','M','Human',3,'../static/img/logo/other char/justin hammer.png'),(16,'Thor','Thor Odinson','M','Asgardian',4,'../static/img/logo/characters/thor.png'),(17,'Jane Foster','Jane Foster','F','Human',4,'../static/img/logo/other char/jane foster.png'),(18,'Loki','Loki Laufeyson','M','Frost Giant',4,'../static/img/logo/other char/loki.png'),(19,'Hawkeye','Clinton Francis Barton','M','Human',4,'../static/img/logo/other char/hawkeye.png'),(20,'Odin','Odin Borson','M','Asgardian',4,'../static/img/logo/other char/odin.png'),(21,'Erik Selvig','Erik Selvig','M','Human',4,'../static/img/logo/other char/erik_selvig.png'),(22,'Darcy Lewis','Darcy Lewis','F','Human',4,'../static/img/logo/other char/darcy_lewis.png'),(23,'Laufey','Laufey','M','Frost Giant',4,'../static/img/logo/other char/laufey.png'),(24,'Heimdall','Heimdall','M','Asgardian',4,'../static/img/logo/other char/heimdall.png'),(25,'Volstagg the Valiant','Volstagg','M','Asgardian',4,'../static/img/logo/other char/volstagg.png'),(26,'Hogun the Grim','Hogun','M','Asgardian',4,'../static/img/logo/other char/hogun.png'),(27,'Fandral the Dashing','Fandral','M','Asgardian',4,'../static/img/logo/other char/fandral.png'),(28,'Lady Sif','Sif','F','Asgardian',4,'../static/img/logo/other char/sif.png'),(29,'Frigga','Frigga','F','Asgardian',4,'../static/img/logo/other char/frigga.png'),(30,'Agent Sitwell','Jasper Sitwell','M','Human',4,'../static/img/logo/other char/sitwell.png'),(31,'Captain America','Steve Grant Rogers','M','Human',5,'../static/img/logo/avengers/captain america.png'),(32,'Peggy Carter','Margaret Elizabeth Carter','F','Human',5,'../static/img/logo/other char/peggy.png'),(33,'Winter Soldier','Bucky Barnes','M','Human',5,'../static/img/logo/characters/winter-soldier.png'),(34,'Colonel Chester Phillips','Chester Phillips','M','Human',5,'../static/img/logo/other char/chester.png'),(35,'Red Skull','Johann Schmidt','M','Human',5,'../static/img/logo/other char/red skull.png'),(36,'Dr. Abraham Erskine','Abraham Erskine','M','Human',5,NULL),(37,'Dr. Arnim Zola','Arnim Zola','M','Human',5,'../static/img/logo/other char/Arnim_Zola.png'),(38,'Dum Dum Dugan','Timothy Aloysius Cadwallader Dugan','M','Human',5,'../static/img/logo/other char/dum_dum.png'),(39,'Private Gabe Jones','Gabriel Jones','M','Human',5,NULL),(40,'Private Jim Morita','James Morita','M','Human',5,'../static/img/logo/other char/Jim_Morita.png'),(41,'Limey','James Montgomery Falsworth','M','Human',5,'../static/img/logo/other char/James_Falsworth.png'),(42,'Jacques Dernier','Jacques Dernier','M','Human',5,'../static/img/logo/other char/dernier.png'),(43,'Agent Hill','Maria Hill','F','Human',6,'../static/img/logo/other char/hill.png'),(44,'The Other','The Other','M','Human',6,NULL),(45,'Thanos','Thanos','M','Titan',6,'../static/img/logo/characters/thanos.png'),(46,'Mandarin','Aldrich Killian','M','Human',7,'../static/img/logo/other char/Aldrich_Killian.png'),(47,'Maya Hansen','Maya Hansen','F','Human',7,'../static/img/logo/other char/maya.png'),(48,'Mandarin','Trevor Slattery','M','Human',7,'../static/img/logo/other char/mandarin.png'),(49,'Eric Savin','Eric Savin','M','Human',7,'../static/img/logo/other char/Eric_Savin.png'),(50,'President of the United States','Matthew Ellis','M','Human',7,'../static/img/logo/other char/president.png'),(51,'Malekith','Malekith','M','Dark Elf',8,'../static/img/logo/other char/Malekith.png'),(52,'Kurse','Algrim','M','Dark Elf',8,'../static/img/logo/other char/kurse.png'),(53,'The Collector','Taneleer Tivan','M','The First',8,'../static/img/logo/other char/tivan.png'),(54,'Carina','Carina','F','Krylorian',8,'../static/img/logo/other char/carina.png'),(55,'Alexander Pierce','Alexander Goodwin Pierce','M','Human',9,'../static/img/logo/other char/alex pierce.png'),(56,'Falcon','Samuel Thomas Wilson','M','Human',9,'../static/img/logo/characters/falcon.png'),(57,'Crossbones','Brock Rumlow','M','Human',9,'../static/img/logo/other char/crossbones.png'),(58,'Agent 13','Sharon Carter','F','Human',9,'../static/img/logo/other char/agent 13.png'),(59,'Scarlet Witch','Wanda Maximoff','F','Human',9,'../static/img/logo/characters/scarlet witch.png'),(60,'Quicksilver','Pietro Maximoff','M','Human',9,'../static/img/logo/characters/quicksilver.png'),(61,'Baron von Strucker','Wolfgang von Strucker','M','Human',9,'../static/img/logo/other char/strucker.png'),(62,'Star-Lord','Peter Jason Quill','M','Human/Celestial',10,'../static/img/logo/characters/star-lord.png'),(63,'Gamora','Gamora','F','Zehoberei',10,'../static/img/logo/characters/gamora.png'),(64,'Drax the Destroyer','Drax','M','Unknown',10,'../static/img/logo/characters/drax.png'),(65,'Groot','Groot','M','Flora Colossus',10,'../static/img/logo/characters/groot.png'),(66,'Rocket Raccoon','Subject: 89P13','M','Halfworlder',10,'../static/img/logo/characters/rocket-raccoon.png'),(67,'Ronan the Accuser','Ronan','M','Kree',10,'../static/img/logo/other char/Ronan.png'),(68,'Yondu Udonta','Yondu Udonta','M','Centaurian',10,'../static/img/logo/other char/yondu.png'),(69,'Nebula','Nebula','F','Luphomoid',10,'../static/img/logo/characters/nebula.png'),(70,'Korath the Pursuer','Korath','M','Kree',10,'../static/img/logo/other char/korath.png'),(71,'Rhomann Dey','Rhomann Dey','M','Xandarian',10,'../static/img/logo/other char/rhomann_dey.png'),(72,'Nova Prime Irani Rael','Irani Rael','F','Xandarian',10,'../static/img/logo/other char/nova-prime.png'),(73,'Meredith Quill','Meredith Quill','F','Human',10,'../static/img/logo/other char/quill.png'),(74,'Kraglin Obfonteri','Kraglin Obfonteri','M','Xandarian',10,'../static/img/logo/other char/kraglin.png'),(75,'Garthan Saal','Garthan Saal','M','Xandarian',10,'../static/img/logo/other char/saal.png'),(76,'Howard the Duck','Howard','M','Duckworldian',10,'../static/img/logo/other char/duck.png'),(77,'Vision','Vision','M','Android',11,'../static/img/logo/characters/vision.png'),(78,'Dr. Helen Cho','Helen Cho','F','Human',11,'../static/img/logo/other char/helen cho..png'),(79,'Ultron','Ultron','M','Android',11,'../static/img/logo/characters/ultron.png'),(80,'Ulysses Klaue','Ulysses Klaue','M','Human',11,'../static/img/logo/other char/ulysses klaue.png'),(81,'Ant-Man','Scott Edward Harris Lang','M','Human',12,'../static/img/logo/characters/ant-man.png'),(82,'Doctor Hank Pym','Henry Jonathan Pym','M','Human',12,'../static/img/logo/other char/hank-pym.png'),(83,'Wasp','Hope Van Dyne','F','Human',12,'../static/img/logo/other char/wasp.png'),(84,'Yellowjacket','Darren Cross','M','Human',12,'../static/img/logo/other char/yellow-jacket.png'),(85,'Jim Paxton','Jim Paxton','M','Human',12,NULL),(86,'Luis','Luis','M','Human',12,NULL),(87,'Dave','Dave','M','Human',12,NULL),(88,'Kurt Wagner','Kurt Wagner','M','Human',12,'../static/img/logo/other char/Kurt_Wagner.png'),(89,'Black Panther','T\'Challa','M','Human',13,'../static/img/logo/characters/black-panther.png'),(90,'Baron Zemo (Colonel Helmut Zemo)','Helmut Zemo','M','Human',13,'../static/img/logo/other char/zemo.png'),(91,'Spider-Man','Peter Benjamin Parker','M','Human',13,'../static/img/logo/characters/spider-man.png'),(92,'Agent Ross','Everett K. Ross','M','Human',13,'../static/img/logo/other char/ross.png'),(93,'King T\'Chaka','T\'Chaka','M','Human',13,'../static/img/logo/other char/king.png'),(94,'Aunt May','May Parker','F','Human',13,'../static/img/logo/other char/aunt may.png'),(95,'Doctor Strange','Stephen Vincent Strange','M','Human',14,'../static/img/logo/avengers/doctor strange.png'),(96,'Karl Mordo','Karl Mordo','M','Human',14,'../static/img/logo/other char/mordo.png'),(97,'Christine Palmer','Christine Palmer','F','Human',14,'../static/img/logo/other char/christine.png'),(98,'Wong','Wong','M','Human',14,'../static/img/logo/other char/wong.png'),(99,'Kaecilius','Kaecilius','M','Mindless One',14,'../static/img/logo/other char/kaecilius.png'),(100,'Ancient One','Ancient One','F','Human',14,'../static/img/logo/other char/ancient_one.png'),(101,'Dormammu','Dormammu','M','Faltine',14,'../static/img/logo/other char/dormammu.png'),(102,'Mantis','Mantis','F','Unknown',15,'../static/img/logo/other char/mantis.png'),(103,'Ego','Ego','M','Celestial',15,'../static/img/logo/other char/ego.png'),(104,'Ayesha','Ayesha','F','Sovereign',15,'../static/img/logo/other char/ayesha.png'),(105,'Taserface','Taserface','M','Stark',15,'../static/img/logo/other char/taserface.png'),(106,'Grandmaster','En Dwi Gast','M','The First',15,'../static/img/logo/other char/grandmaster.png'),(107,'Vulture','Adrian Toomes','M','Human',16,'../static/img/logo/other char/vulture.png'),(108,'Michelle Jones','Michelle Jones','F','Human',16,'../static/img/logo/other char/michelle_jones.png'),(109,'Ned Leeds','Edward Leeds','M','Human',16,'../static/img/logo/other char/ned_leeds.png'),(110,'Liz Toomes','Elizabeth Toomes','F','Human',16,'../static/img/logo/other char/liz_toomes.png'),(111,'Flash Thompson','Eugene Thompson','M','Human',16,'../static/img/logo/other char/flash .png'),(112,'Shocker','Herman Schultz','M','Human',16,'../static/img/logo/other char/shocker.png'),(113,'Hela','Hela Odinsdottir','F','Asgardian',17,'../static/img/logo/characters/hela.png'),(114,'Valkyrie','Valkyrie','F','Asgardian',17,'../static/img/logo/characters/valkyrie.png'),(115,'Executioner','Skurge','M','Asgardian',17,'../static/img/logo/other char/skurge.png'),(116,'Korg','Korg','M','Kronan',17,'../static/img/logo/characters/korg.png'),(117,'Surtur','Surtur','M','Fire Demon',17,'../static/img/logo/other char/sutur.png'),(118,'Miek','Miek','M','Sakaaran',17,'../static/img/logo/characters/miek.png'),(119,'Erik Killmonger','N\'Jadaka','M','Human',18,'../static/img/logo/other char/killmonger.png'),(120,'Malice(Nakia)','Nakia','F','Human',18,'../static/img/logo/other char/nakia.png'),(121,'Shuri','Shuri','F','Human',18,'../static/img/logo/other char/shuri.png'),(122,'Okoye','Okoye','F','Human',18,'../static/img/logo/other char/okoye.png'),(123,'Ramonda','Ramonda','F','Human',18,'../static/img/logo/other char/ramonda.png'),(124,'Zuri','Zuri','M','Human',18,'../static/img/logo/other char/zuri.png'),(125,'M\'Baku','M\'Baku','M','Human',18,'../static/img/logo/other char/mbaku.png'),(126,'W\'Kabi','W\'Kabi','M','Human',18,'../static/img/logo/other char/wkabi.png');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Kidnapping of Tony Stark','The Kidnapping of Tony Stark was a successful attempt by the Ten Rings to abduct Tony Stark, who was in Afghanistan for the test launch of the new Jericho missile.'),(2,'Improving the Suit','Tony ends Stark Industries\' weapon manufacture and works on improving his suit and arc reactor.'),(3,'Battle of Gulmira','The Battle of Gulmira was an open confrontation between Iron Man and the Ten Rings.'),(4,'Duel of Los Angeles','Following Obadaiah Stane\'s betrayal, The Duel of Los Angeles, dubbed the \"Incident at Stark Industries\" by S.H.I.E.L.D. and the general press, was a confrontation between Tony Stark and Obadiah Stane.'),(5,'I am Iron Man','Tony decides to reveal his identity to the public during a press conference.'),(6,'Meeting Nick Fury','Nick Fury speaks with Tony about other the existence of other superheroes and the Avengers initiative.'),(7,'Becoming Hulk','Bruce Banner decides to use a prototype Super Soldier Serum on himself, resulting in his transformation into the Hulk, wreaking havoc on those around him.'),(8,'Chase of Bruce Banner','The Chase of Bruce Banner, also known as the Bruce Banner Manhunt, was an organized search issued by the United States Army for scientist Bruce Banner, who transformed into the Hulk following the Bio-Tech Force Enhancement Project. The search was spearheaded by Thaddeus Ross, who was determined to dissect the Hulk and weaponize the transformation process.'),(9,'Return to America','Banner returns the America in order to get his research and reunites with Betty Ross.'),(10,'Battle at Culver University','After retrieving his research, Banner is forced to swallow it as soldiers surround him, eventually pressuring him into transforming into the Hulk.'),(11,'Seeking a Cure','Bruce and Betty meet up with the mysterious Dr. Blue, who had formulated an antidote.'),(12,'Duel of Harlem','The Hulk and The Abomination face off in the streets of Harlem.'),(13,'Making Pepper CEO','Pepper Potts is appointed to be the CEO of Stark Industries.'),(14,'Duel of Monaco','The Duel of Monaco was a failed attempt by Ivan Vanko to kill Tony Stark and avenge the death of his father Anton, who had been accused of espionage by Stark\'s father Howard.'),(15,'Tony\'s Birthday Party','Knowing that the arc reactor was killing him, Tony became extremely inebriated and out of control at his party, resulting in Rhodey deciding to take one of his older suits and fighting him.'),(16,'Battle at Stark Expo','The Battle at Stark Expo, dubbed the Stark Expo Incident by Stark Industries CEO Pepper Potts, was the second and final confrontation between Iron Man and Whiplash.'),(17,'Attack on Jotunheim','The Attack on Jotunheim was a failed attempt undertaken by Thor to attack Laufey after Frost Giants broke into Odin\'s Vault and tried to steal the Casket of Ancient Winters.'),(18,'Battle of Puente Antiguo','The Battle of Puente Antiguo was an open confrontation that pitted S.H.I.E.L.D., Thor, Sif, and the Warriors Three against the Destroyer.'),(19,'Destruction of the Bifrost Bridge','Upon Thor\'s return to Asgard, he must put a stop to Loki\'s madness and save Jotunheim from destruction.'),(20,'Project Rebirth','Project: Rebirth, also called Operation: Rebirth, Weapons Plus, the Bio-Tech Force Enhancement Program, and the Erskine Program, was a highly-classified United States government project, the goal of which was the creation of Super-Soldiers to be deployed in the war against the Axis Powers. Administered by the United States Army\'s Infantry Weapons Development Program, their first and only success was a man named Steve Rogers, who would go on to become the special operator and superhero known as Captain America.'),(21,'Liberation of Allied Prisoners of War','The Liberation of Allied Prisoners of War was the first war action of Steve Rogers, also known as Captain America, who infiltrated the weapons facility run by HYDRA behind the German lines. He successfully liberated four hundred soldiers, becoming a war hero as a result. He also confronted his greatest enemy, Johann Schmidt, the infamous Red Skull, for the first time. The battle took place during World War II.'),(22,'Attack on HYDRA Headquarters','The Attack on HYDRA Headquarters was a battle between HYDRA and the Western Allies at HYDRA Headquarters.'),(23,'Battle in the Valkyrie','The Battle in the Valkyrie was the final battle that Captain America participated in during World War II, where he battled and defeated Red Skull.'),(24,'Reawakening','Captain America is reintroduced to the world 70 years later.'),(25,'Destruction of Project P.E.G.A.S.U.S.','The Destruction of Project P.E.G.A.S.U.S. was the battle that had started the Chitauri Invasion. The outcome of the battle was the complete destruction of almost all the work done in the Project P.E.G.A.S.U.S. facility and Hawkeye, Erik Selvig, and other S.H.I.E.L.D. agents falling under Loki\'s mind control.'),(26,'Skirmish in Germany','The Skirmish in Germany was an attempt made by the demigod Loki, with Hawkeye under his thrall, to steal Iridium in Germany in order to stabilize the Tesseract. His plan quickly developed into a brief battle after the Avengers intervened.'),(27,'Attack on the Helicarrier','The Attack on the Helicarrier was a successful attempt by Loki to escape from the Helicarrier and continue carrying out his plan to subjugate Earth.'),(28,'Battle of New York','The Battle of New York, locally known as \"The Incident\", was a major battle between the Avengers and Loki with his borrowed Chitauri army in Manhattan, New York City. It was, according to Loki\'s plan, the first battle in Loki\'s war to subjugate Earth, but the actions of the Avengers neutralized the threat of the Chitauri before they could continue the invasion. The Avengers, who had been gathered by S.H.I.E.L.D., were inspired to fight by Phil Coulson\'s death at Loki\'s hands and also by a motivational speech by Nick Fury. This battle was the climax of the Chitauri Invasion and ended the Avengers\' war with Loki and the Chitauri.'),(29,'Destruction of Tony Stark\'s Mansion','The Destruction of Tony Stark\'s Mansion was a semi-successful assassination attempt committed by Eric Savin on Aldrich Killian\'s orders. While Stark\'s home was destroyed and the world became convinced the billionaire was dead, Stark survived the attack and set out to uncover the true identity of the Mandarin.'),(30,'Battle of Rose Hill','The Battle of Rose Hill was an attempt by Eric Savin and Ellen Brandt to kill Tony Stark.'),(31,'Kidnapping of President Ellis','The Kidnapping of President Ellis was an attack on Air Force One and an attempt by Eric Savin, who was acting on Aldrich Killian\'s orders, to abduct President Matthew Ellis. '),(32,'Battle on the Norco','The Battle on the Norco was a confrontation that pitted Iron Man and War Machine, who infiltrated the impounded tanker Roxxon Norco in an attempt to rescue Pepper Potts and Matthew Ellis, against Aldrich Killian.'),(33,'Battle of Vanaheim','The Battle of Vanaheim was an open confrontation betwen the Marauders and the combined forces of the Asgardians and the Vanir and the final battle of the Marauders\' War.'),(34,'Sacking of Asgard','The Sacking of Asgard was a full-scale assault against Asgard by the Dark Elves during the Second Dark Elf Conflict.'),(35,'Second Battle of Svartalfheim','The Second Battle of Svartalfheim was an event that took place during the Second Dark Elf Conflict. Part of a plan orchestrated by Thor to defeat Malekith, the battle took place on Svartalfheim.'),(36,'Battle of Greenwich','The Battle of Greenwich was the final battle of the Second Dark Elf Conflict. Taking place on Earth at the Old Royal Naval College in the Greenwich borough of London, the engagement was fought by Thor and his human allies against Malekith and his cohorts.'),(37,'Hijacking and Retaking of the Lemurian Star','The Hijacking and Retaking of the Lemurian Star was an event that marked the beginning of the HYDRA Uprising.'),(38,'Battle of Washington, D.C.','The Battle of Washington, D.C. was a clash between Captain America and the brainwashed Winter Soldier during the HYDRA Uprising. After Arnim Zola revealed that HYDRA was active for the past seven decades, Captain America and Black Widow recruited Sam Wilson to fight alongside them as the Falcon.'),(39,'Battle at the Triskelion','The Battle at the Triskelion, also referred as the Fall of S.H.I.E.L.D., was the first open battle between HYDRA and S.H.I.E.L.D., and a major event during the HYDRA Uprising. After HYDRA, thought dormant since the end of World War II in Europe, was revealed to be active inside of S.H.I.E.L.D., Nick Fury faked his death following an assassination attempt and recruited Captain America, Black Widow and Falcon to fight against the resurgent terrorist group. The Winter Soldier fought alongside his HYDRA captors while he was brainwashed.'),(40,'Battle of Morag','The Battle of Morag was the first battle in the Quest for the Orb.'),(41,'Escape from the Kyln','The Escape from the Kyln was a prison break organized by the combined forces of Star-Lord, Rocket Raccoon, Groot, Gamora, and Drax.'),(42,'Skirmish on Knowhere','The Skirmish in Knowhere was an event caused by Drax the Destroyer during the Quest for the Orb. Taking place on Knowhere, the event was triggered when Drax, having traveled to Knowhere with the Guardians of the Galaxy in order to give the Orb to Taneleer Tivan, sent out a message to Ronan the Accuser in order to draw out and kill the Kree.'),(43,'Battle of Xandar','The Battle of Xandar was an open confrontation that pitted the combined forces of the Guardians of the Galaxy, Yondu Udonta\'s Ravager clan and the Nova Corps against Ronan the Accuser.'),(44,'Attack on the HYDRA Research Base','The Attack on the HYDRA Research Base was a confrontation between the Avengers and Wolfgang von Strucker\'s HYDRA cell and the final battle of the War on HYDRA.'),(45,'Attack on Avengers Tower','The Attack on Avengers Tower was the first confrontation between the Avengers and the artificial intelligence Ultron.'),(46,'Duel of Johannesburg','The Duel of Johannesburg was an open confrontation between Iron Man and Hulk, who had been manipulated by Scarlet Witch. '),(47,'Battle of Seoul','The Battle of Seoul was a major battle between the Avengers and Ultron with his sentries in Seoul, South Korea.'),(48,'Battle of Sokovia','The Battle of Sokovia was a major battle between the Avengers and Ultron in Novi Grad, Sokovia. Convinced that humanity was the greatest threat to peace on Earth, Ultron planned to commit global genocide by creating a device that would lift a section of Novi Grad skyward and cause it to recreate a meteoric impact when it crashed into the Earth. The Avengers\' actions, however, resulted in the threat being neutralized and the Ultron Offensive being brought an end.'),(49,'Breaking Into Pym\'s Residence','Scott Lang breaks into the Pym Residence and steals the Ant-Man Suit.'),(50,'Duel at New Avengers Facility','The Duel at New Avengers Facility was a confrontation between Ant-Man and Falcon.'),(51,'Infiltration into Pym Technologies Headquarters','The Infiltration into Pym Technologies Headquarters was an attempt by Scott Lang to prevent Darren Cross from selling the Yellowjacket Suit to HYDRA.'),(52,'Duel at Maggie Lang\'s House','The Duel at Maggie Lang\'s House was an open confrontation between Scott Lang and Darren Cross that took place following the Infiltration into Pym Technologies Headquarters.'),(53,'Attack on the IFID Headquarters','The Attack on the IFID Headquarters, also known as the Lagos Catastrophe, was an open confrontation between the Avengers and former HYDRA agent Brock Rumlow in Lagos, Nigeria.'),(54,'Bombing of the Vienna International Centre','The Bombing of the Vienna International Centre was a terrorist attack orchestrated by Helmut Zemo in his quest to divide and destroy the Avengers.'),(55,'Clash of the Avengers','The Clash of the Avengers was the first open confrontation between the two factions that once made up the Avengers.'),(56,'Battle at the HYDRA Siberian Facility','The Battle of the HYDRA Siberian Facility was an open confrontation that pitted Captain America and the Winter Soldier against Iron Man.'),(57,'Battle at the New York Sanctum','The Battle at the New York Sanctum was the first confrontation between Doctor Strange and Kaecilius after the latter destroyed the London Sanctum in an attempt to summon Dormammu.'),(58,'Duel on the Astral Plane','The Duel on the Astral Plane was a confrontation between Doctor Strange and the Zealot Lucian in the Astral Dimension.'),(59,'Battle of the Mirror Dimension','The Battle of the Mirror Dimension was an open conflict that pitted Doctor Strange, Karl Mordo and the Ancient One against Kaecilius and his Zealots inside the Mirror Dimension.'),(60,'Battle at the Hong Kong Sanctum','The Battle at the Hong Kong Sanctum was a battle that pitted the Masters of the Mystic Arts against Kaecilius and his Zealots. Having attacked the London and New York sanctums and killed the Ancient One, Kaecilius initiated the final phase of his plan to merge Earth with the Dark Dimension. His efforts were thwarted when Doctor Strange used the Eye of Agamotto to reverse time and prevent the final sanctum from being destroyed.'),(61,'Skirmish in the Dark Dimension','The Skirmish in the Dark Dimension was the first and final confrontation between Doctor Strange and Dormammu.'),(62,'Battle on Sovereign','The Battle on Sovereign was an open confrontation between the Guardians of the Galaxy, who had been hired by the Sovereign\'s High Priestess Ayesha, and the Abilisk.'),(63,'Skirmish with the Sovereign','The Skirmish with the Sovereign was an open confrontation between the Guardians of the Galaxy and the Sovereign fleet.'),(64,'Attack on Berhert','The Attack on Berhert was an attempt by Yondu Udonta\'s faction of Ravagers, who were under orders from Ayesha, to find and kill the Guardians of the Galaxy.'),(65,'Escape from the Eclector','The Escape from the Eclector was an escape attempt and attack orchestrated by Yondu Udonta in order to exact retribution against the Ravagers who mutinied against him and took Rocket Raccoon and Groot prisoner.'),(66,'Battle on Ego\'s Planet','The Battle on Ego\'s Planet was a three-sided conflict between the Guardians of the Galaxy, the Sovereign, and Ego.'),(67,'Rescue at the Washington Monument','The Rescue at the Washington Monument, dubbed the Attack at the Washington Monument by the media, was an attempt by Spider-Man to save both his classmates and his teacher from a damaged elevator in the Washington Monument.'),(68,'Skirmish on the Staten Island Ferry','The Skirmish on the Staten Island Ferry was a conflict between Spider-Man, Vulture, Mac Gargan, and Iron Man that began when the web-slinger attempted to hijack an illegal arms deal between Gargan and Shocker.'),(69,'Hijacking of the Stark Cargo Plane','The Hijacking of the Stark Cargo Plane was an attempt by Vulture to take control of a transport aircraft and steal several advanced weapons from the Department of Damage Control.'),(70,'Duel at Coney Island','The Duel at Coney Island was the third confrontation between Spider-Man and Vulture that took place after the hijacked cargo plane they were fighting on crashed.'),(71,'Escape from Muspelheim','The Escape from Muspelheim was a successful escape attempt orchestrated by Thor after extracting information about Ragnarok from the fire demon Surtur.'),(72,'Siege of Asgard','The Siege of Asgard was a successful attempt by the Asgardian goddess Hela to invade Asgard.'),(73,'Duel in the Sakaaran Arena','The Duel in the Sakaaran Arena was a gladiatorial fight between Thor and Hulk.'),(74,'Duel in the Asgardian Palace','The Duel in the Asgardian Palace was an open confrontation between Thor and Hela.'),(75,'Battle of the Rainbow Bridge','The Battle of the Rainbow Bridge was an open conflict that pitted the combined forces of the Revengers, Loki, Heimdall, Skurge, and the Sakaaran Rebels against Hela and her army.'),(76,'Destruction of Asgard','The Destruction of Asgard was an attempt by the fire demon Surtur to initiate the doomsday prophecy known as Ragnarok.'),(77,'Incoronation of T\'Challa','The Incoronation of T\'Challa was a duel called upon by M\'Baku of the Jabari Tribe in an attempt to challenge T\'Challa for the title of King of Wakanda.'),(78,'Incoronation of Erik Killmonger','The Incoronation of Erik Killmonger was a duel called upon by Erik Killmonger in an attempt to challenge T\'Challa for the title of King of Wakanda.'),(79,'Battle of Mount Bashenga','The Battle of Mount Bashenga was a confrontation between the combined forces of the Golden Tribe, the Dora Milaje, and the Jabari Tribe and the combined forces of Erik Killmonger and the Border Tribe.'),(80,'Duel in the Great Mound','The Duel in the Great Mound was a open confrontation between Black Panther and Erik Killmonger.');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_characters`
--

DROP TABLE IF EXISTS `events_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_characters` (
  `character_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `description` text,
  PRIMARY KEY (`character_id`,`event_id`),
  KEY `fk_events_characters_2_idx` (`event_id`),
  CONSTRAINT `fk_events_characters_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`character_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_events_characters_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_characters`
--

LOCK TABLES `events_characters` WRITE;
/*!40000 ALTER TABLE `events_characters` DISABLE KEYS */;
INSERT INTO `events_characters` VALUES (1,1,'Tony Stark is kidnapped by the Ten Rings; forced to build missiles; secretly builds his Mark I Iron Man suit; uses suit to escape.'),(1,2,'Tony work on improving his suit.'),(1,3,'Tony sees the situation in Gulmira on TV and flies there in his Mark III armor.'),(1,4,'Tony is betrayed by Obadiah and has a fight with Iron Monger which he ultimately wins.'),(1,5,'Tony announces that he is Iron Man to the world.'),(1,6,'Tony meets Nick Fury.'),(1,13,'Tony appoints Pepper as the new CEO of Stark Industries.'),(1,14,'Tony is attacked by Vanko during the Monaco Grand Prix. Upon getting his armor on'),(1,15,'Seeing this as possibly his last birthday party'),(1,16,'Fights all of Vanko\'s drones and defeats Whiplash with the help of War Machine. Saves Pepper Potts and shares a first kiss with her.'),(1,26,'Iron Manhelps to capture Loki and later battles Thor before Captain America intervenes.'),(1,27,'Iron Man is forced to keep the helicarrier afloat with his suit.'),(1,28,'Iron Man fights in the battle and helps to defeat Loki and the Chitauri. He redirects the nuke sent to New York through the portal to destroy the home of the Chitauri.'),(1,29,'Tony\'s mansion is attacked by Eric Savin'),(1,30,'Tony is stuck in Rose Hill'),(1,31,'Tony flies on board Air Force One to stop Eric Savin'),(1,32,'Iron Man faces off with Aldrich Killian to save the president and Pepper and summons his Iron Legion to fight the Extremis soldiers. Following the battle'),(1,44,'Attacks the HYDRA base with the Avengers. Is shown a vision by Scarlet Witch of a Chitauri invasion.'),(1,45,'Organizes a party at Avengers Tower'),(1,46,'Activates his Hulkbuster armor to stand up to the Hulk. Eventually knocks the Hulk out.'),(1,48,'Defends the world from he Ultron Offensive.'),(1,55,'Attempts to stop Captain America\'s faction.'),(1,56,'Fights with Captin America and Bucky out of anger'),(1,68,'Helps to put the ferry back together after it had been cut in half.'),(2,2,'Pepper helps Tony with his arc reactor and decides to preserve the old arc reactor.'),(2,4,'Pepper discovers the Iron Monger suit and helps Tony defeat him by overloading the reactor.'),(2,13,'Pepper is appointed as the new CEO of Stark Industries.'),(2,14,'Pepper Potts throws Tony his Mark V armor after Happy hits Vanko with his car.'),(2,16,'Is saved by Iron Man in the brink of time and resigns as CEO of Stark Industries before kissing Tony for the first time.'),(2,29,'Pepper is protected by Tony when he send his armor to protect her first before taking it back to counterattack.'),(2,32,'Pepper was taken as hostage and infected with Extremis; she helps Tony defeat Aldrich.'),(3,2,'Obadiah Stane objects to Tony ending weapon manufacturing at Stark Industries.'),(3,4,'Obadiah betrays Tony'),(4,1,'Rhodey picks Tony up after his escape from the Ten Rings.'),(4,3,'Rhodey calls off the fighter jets after finding out that Tony was inside the armor and provides a government cover up.'),(4,15,'Rhodey become increasingly concerned with Tony\'s behavior until he eventually puts on Tony\'s Mark II suit and subdues him before flying off and delivering the armor to the United States Armed Forces.'),(4,16,'Rhodey leads the drone presentation'),(4,32,'War Machine assists Iron Man in saving the president.'),(4,45,'At the party and defends when Ultron attacks.'),(4,48,'Helped with evacuating citizens of Sokovia as well as fighting off aerial drones.'),(4,55,'Attempts to stop Captain America\'s faction. Becomes a casualty during the escape.'),(5,6,'Nick Fury introduces himself to Tony.'),(5,24,'Nick Fury breaks the news to Steve that he\'s been asleep for 70 years.'),(5,25,'Nick Fury witnesses Loki\'s arrival on Earth and attempts to escape with the Tesseract.'),(5,27,'Nick Fury faces off with Loki\'s brainwashed soldier on the bridge.'),(5,28,'Nick Fury sends the Avengers off to New York. He eventually fails to stop the council from sending a nuke to the city.'),(5,39,'Confronts Pierce and shoots him when he attempts to retaliate.'),(5,48,'Helped by evacuating citizens of Sokovia.'),(6,20,'Howard Stark receives a sample of Steve\'s blood and ultimately successfully recreate the Serum.'),(6,21,'Howard Stark helps Steve airdrop behind enemy lines in his plane.'),(7,2,'Happy assists Tony'),(7,14,'Happy hits Vanko with his car in order to buy time for Tony while he got suited up.'),(8,2,'Agent Coulson meets Tony at a party.'),(8,4,'Agent Coulson goes with Pepper to discover the Iron Monger.'),(8,5,'Agent Coulson provides Tony with a fabricated story to use (which was ultimately ignored).'),(8,27,'Agent Coulson attempts to stop Loki from escaping but is killed.'),(9,7,'Bruce Banner tries his own Super Soldier Serum and transforms into the Hulk'),(9,8,'Banner is traumatized that he hurt Betty and decides to go on the run. After a period of running'),(9,9,'Banner return to America and sneaks into his laboratory to retrieve his research. He then gets found by Betty Ross.'),(9,10,'Banner becomes the Hulk'),(9,11,'Banner and Betty go to visit Dr. Blue and test his antidote which proves successful. Banner then objects to the doctor keeping his blood samples'),(9,12,'When Blonsky transforms into the Abomination'),(9,27,'Bruce becomes agitated from the divisions within the team and the explosion caused by Hawkeye'),(9,28,'Hulk helps the Avengers in defending against the Chitauri and defeating Loki.'),(9,44,'Attacks the HYDRA base with the Avengers.'),(9,45,'At the party and defends when Ultron attacks.'),(9,46,'Goes on a rampage in Johannesburg until stopped by Iron Man\'s Hulkbuster armor.'),(9,48,'Defends the world from he Ultron Offensive.'),(9,73,'Duels Thor in the Sakaaran Arena as the champion.'),(9,75,'Battles the forces of Hela on the Bifrost Bridge.'),(9,76,'Watches the destruction of Asgard by Surtur.'),(10,7,'Betty Ross is hospitalized by the Hulk after Bruce Banner\'s transformation.'),(10,9,'Betty noticed Banner at the pizzeria and chased him down'),(10,10,'Betty attempted to calm the Hulk down'),(10,11,'Betty and Banner go to visit Dr. Blue and test his antidote. She is captured along with Banner.'),(10,12,'Betty has her goodbyes with Banner before the fight'),(11,8,'Blonsky is part of the force sent to track down the Hulk.'),(11,10,'Blonsky attempted to face down the Hulk'),(11,11,'Blonsky subdues Banner after he was tranquilized by General Ross\' snipers.'),(11,12,'Blonsky forces the doctor to inject Banner\'s blood into him along with more Gamma Radiation. This results in the Abomination'),(12,7,'Thaddeus Ross has his arm crushed by the Hulk.'),(12,8,'Thaddeus Ross wanted Banner to unleash the Hulk so that the Army could experiment on it. Upon being rejected'),(12,10,'General Ross orders the attack on the Hulk'),(12,12,'General Ross orders his men to lower their weapons after the duel'),(13,26,'Black Widow helps to successfully capture Loki.'),(13,27,'Black Widow faces off with Hawkeye during the battle.'),(13,28,'Black Widow fights with the Avengers against the Chitauri and helps to close the portal.'),(13,37,'Black Widow had her own mission aboard the ship to find out about Project Insight.'),(13,38,'Natasha helps Steve in his fight against the Winter Soldier.'),(13,39,'Black Widow disguises herself and protects the World Security Council from Alexander Pierce.'),(13,44,'Attacks the HYDRA base with the Avengers.'),(13,45,'At the party and defends when Ultron attacks.'),(13,47,'Helps to steal the Cradle from Ultron'),(13,48,'Defends the world from he Ultron Offensive.'),(13,53,'Black Widow took part in the operation.'),(13,54,'Black Widow was in attendance at the ceremony.'),(13,55,'Attempts to stop Captain America\'s faction'),(14,14,'Vanko'),(14,16,'Vanko takes control of the drones and wreaks havoc at the expo attempting to take out Iron Man. Is eventually defeated and self destructs.'),(15,14,'Justin Hammer breaks Vanko out of prison and puts him to work building a line of combat suits to rival Stark Industries.'),(15,16,'Justin Hammer presents his new drones at the expo'),(16,17,'Thor decides to attack the Frost Giants in revenge.'),(16,18,'Thor reunites with the Asgardians and has a battle with The Destroyer sent by Loki'),(16,19,'Thor returns to Asgard in order to put a stop to Loki\'s madness. He has a fight with Loki in an attempt to stop him from destroying Jotunheim with the Bifrost Bridge'),(16,26,'Thor comes to Earth and grabs Loki from his captors before getting into fight with Iron Man.'),(16,27,'Thor tries to subdue the Hulk during the attack.'),(16,28,'Thor helps the Avengers in defending against the Chitauri and defeating Loki.'),(16,33,'Arrives and defeats the Kronan Marauder with a single hit'),(16,34,'Thor arrives to see his mother murdered'),(16,35,'Thor lures the dark elves to Svartalfheim'),(16,36,'Thor faces off with Malekith and defeats him.'),(16,44,'Attacks the HYDRA base with the Avengers.'),(16,45,'At the party and defends when Ultron attacks.'),(16,48,'Defends the world from he Ultron Offensive.'),(16,71,'Takes out Surtur and escapes Muspelheim.'),(16,73,'Duels Hulk in the Sakaaran Arena for his freedom.'),(16,74,'Duels Hela in the Asgardian Palace'),(16,75,'Battles the forces of Hela on the Bifrost Bridge.'),(16,76,'Watches the destruction of Asgard by Surtur.'),(17,18,'Jane helped evacuate the people of Puente Antiguo.'),(17,34,'Jane is taken to Asgard as the host of the Aether which attracts the dark elves to the Asgard.'),(17,35,'Was used to lure the dark elves. Malekith absorbs the Aether from her and leaves her with Thor.'),(17,36,'Helps Thor with fighting the dark elves.'),(18,17,'Loki accompanied Thor to attack the Frost Giants'),(18,18,'Loki sent the Destroyer to Earth with orders to kill Thor.'),(18,19,'Loki kills Laufey and attempts to destroy Jotunheim with the Bifrost Bridge'),(18,25,'Loki arrives on Earth and takes control of Clint Barton and Erik Selvig'),(18,26,'Loki attempts to steal some Iridium to stabilize the Tesseract'),(18,27,'Loki escapes the helicarrier.'),(18,28,'Loki begins the Chitauri invasion but is eventually defeated by the Avengers.'),(18,35,'Loki saves Thor from Kurse and kills Kurse'),(18,75,'Battles the forces of Hela on the Bifrost Bridge.'),(18,76,'Initiates Ragnarok by putting Surtur\'s crown in the Eternal Flame.'),(19,25,'Hawkeye is put under Loki\'s control.'),(19,26,'Hawkeye helps Loki steal the Iridium and leaves before enemies arrive.'),(19,27,'Hawkeye helps Loki escape the helicarrier but gets knocked out by Black Widow.'),(19,28,'Hawkeye has his mind reverted by Black Widow and joins the Avengers in stopping the invasion.'),(19,44,'Attacks the HYDRA base with the Avengers.'),(19,45,'At the party and defends when Ultron attacks.'),(19,47,'Helps to steal the Cradle from Ultron.'),(19,48,'Defends the world from he Ultron Offensive.'),(19,55,'Attempts to help get to the Quinjet. Ends up captured.'),(20,17,'Odin saves the group of Asgardians before they were killed and attempted to negotiate a truce with Laufey before escaping.'),(20,19,'Odin has ben in his Odinsleep and is saved from Laufey by Loki'),(21,18,'Erik helped evacuate the people of Puente Antiguo.'),(21,25,'Erik Selvig is put under Loki\'s control.'),(21,28,'Erik Selvig recovers and helps to close the portal allowing the Chitauri to invade.'),(21,36,'Helps Thor with fighting the dark elves.'),(22,18,'Darcy helped evacuate the people of Puente Antiguo.'),(22,36,'Helps Thor with fighting the dark elves.'),(23,17,'Laufey attacked the Asgardians in retailiation and refused to forgive their offense.'),(23,19,'Laufey attempted to assassinate Odin while in his Odinsleep'),(24,17,'Heimdall opened the Bifrost Bridge for them to travel to Jotunheim'),(24,19,'Heimdall was injured by Loki and taken to care by the Warriors Three and Lady Sif.'),(24,75,'Battles the forces of Hela on the Bifrost Bridge.'),(25,17,'Volstagg accompanied Thor and had his arm frozen upon contact with a Frost Giant.'),(25,18,'Volstagg helped Thor in the fight against the Destroyer.'),(25,33,'Fights the Marauders until the Kronan marauder arrives.'),(25,72,'Murdered by Hela.'),(26,17,'Hogun accompanied Thor to attack the Frost Giants.'),(26,18,'Hogun helped Thor in the fight against the Destroyer.'),(26,33,'Fights the Marauders until the Kronan marauder arrives.'),(26,72,'Puts up a fight with the Asgardian army'),(27,17,'Fandral accompanied Thor to attack the Frost Giants.'),(27,18,'Fandral helped Thor in the fight against the Destroyer.'),(27,33,'Fights the Marauders until the Kronan marauder arrives.'),(27,72,'Murdered by Hela.'),(28,17,'Lady Sif accompanied Thor to attack the Frost Giants.'),(28,18,'Lady Sif helped Thor in the fight against the Destroyer.'),(28,33,'Fights the Marauders until the Kronan marauder arrives.'),(29,34,'Frigga tricks Malekith and Kurse with a holographic Jane'),(30,38,'Agent Sitwell is killed by the Winter Soldier.'),(31,20,'Steve Rogers was chosen to become a Super Soldier with the Super Soldier Serum and the test was successful.'),(31,21,'Steve hears of Bucky being captured'),(31,22,'Captian America attacks the HYDRA Headquarters with the Howling Commandos.'),(31,23,'Captain America shares a kiss with Peggy Carter while they chase down the Valkyrie in a car'),(31,24,'Captain America is found and freed from ice 70 years later.'),(31,26,'Captain America faces off with Loki and successfully capture him. He later stops the fight between Thor and Iron Man.'),(31,28,'Captain America helps in defending against the Chitauri and defeating Loki.'),(31,37,'Captain America saved the hostages on the ship and took out the mercenaries.'),(31,38,'Steve fights with the Winter Soldier until he knocks of his mask and recognizes him as Bucky.'),(31,39,'Captain America infiltrates the Triskelion and stops HYDRA\'s plot.'),(31,44,'Attacks the HYDRA base with the Avengers.'),(31,45,'At the party and defends when Ultron attacks.'),(31,47,'Helps to steal the Cradle from Ultron.'),(31,48,'Defends the world from he Ultron Offensive.'),(31,53,'Captain America leads the operation to prevent Crossbones from stealing a bio-weapon.'),(31,55,'Attempts to get to the Quinjet and succeeds with the help of Black Widow.'),(31,56,'Fights with Iron Man to backup Bucky.'),(32,20,'In hopes of recovering the serum'),(32,21,'Peggy decides to help Steve with saving the captured soldiers.'),(32,22,'Peggy assists in breaking into the HYDRA Headquarters.'),(32,23,'Peggy Carter helps Captain America chase the Valyrie before take off and shares a kiss with him. She is heartbroken as Steve goes down with the Valkyrie.'),(33,21,'Bucky was saved by Steve while strapped to a table.'),(33,22,'Bucky is assumed dead after falling out of a train into a valley far below.'),(33,38,'The Winter Soldier fights with Natasha and Steve until Steve knocks off his mask'),(33,39,'The Winter Soldier tries to protect the helicarriers and faces off with Captain America. Is eventually saved from drowning by Steve.'),(33,55,'Attempts to get to the Quinjet and succeeds with the help of Black Widow.'),(33,56,'Fights with Iron Man out of self defence.'),(34,21,'Phillips initially refused to save the troops captured by Johann Schmidt. After Steve\'s return'),(35,21,'Johann Schmidt activated the self destruct of his base and during the escape'),(35,22,'Red Skull attempts to escape the base in the Valkyrie.'),(35,23,'Red Skull battles Captain America onboard the Valkyrie and is ultimately launched into a portal by the Tesseract.'),(36,20,'Abraham Erskine selected Steve Rogers to be given the Super Soldier Serum'),(37,21,'Arnim Zola helped Red Skull to escape from the base.'),(38,21,'Dum Dum Dugan was saved by Steve and hijacked a HYDRA Mini Tank during the fight.'),(38,22,'Dum Dum Dugan assists in attacking the HYDRA Headquarters.'),(39,21,'Gabe was saved by Captain America and hijacked a HYDRA Mini Tank during the fight.'),(39,22,'Gabe assists in attacking the HYDRA Headquarters.'),(40,21,'Jim was saved by Captain America.'),(40,22,'Jim Morita assists in attacking the HYDRA Headquarters.'),(41,21,'Limey was saved by Captain America and hijacked a HYDRA Mini Tank during the fight.'),(41,22,'Limey assists in attacking the HYDRA Headquarters.'),(42,21,'Jacques was saved by Captain America'),(42,22,'Jacques assists in attacking the HYDRA Headquarters.'),(43,25,'Agent Hill chases Loki but gets trapped by debris'),(43,27,'Agent Hill faces off with Loki\'s brainwashed soldiers on the bridge.'),(43,39,'Maria Hill helps Captain America in infiltrating the Triskelion.'),(43,45,'At the party and defends when Ultron attacks.'),(43,48,'Helped with evacuating citizens of Sokovia.'),(46,32,'Aldrich Killian battles Iron Man and the Iron Legion'),(47,29,'Maya attemps to warn Pepper and Tony before the attack'),(49,29,'Eric Savin is in one of the helicopters firing missiles at the mansion.'),(49,30,'Eric attempts to hunt down Tony but fails to get the files on Extremis from him.'),(49,31,'Eric Savin sneaks on board Air Force One in the Iron Patriot armor'),(50,32,'Aldrich planned on pubicly killing the president until he was saved by War Machine.'),(51,34,'Malekith invades Asgard and orders the killing of Frigga upon realizing she\'d deceived them.'),(51,35,'Malekith absorbs the Aether from Jane and leaves.'),(51,36,'Helps Thor with fighting the dark elves.'),(52,34,'Kurse allow himself to be captured and disables the shield to Asgard and murders Frigga.'),(52,35,'Kurse overpowers Thor'),(55,39,'Reveals himself as the head of HYDRA and attempts to make sure the their plan succeeds'),(56,38,'Sam helps Steve with taking out the mercenaries attacking them.'),(56,39,'Falcon helps Captain America in infiltrating and attacking the Triskelion.'),(56,50,'Falcon attempted to stop Ant-Man from trespassing but fails.'),(56,53,'Falcon takes part in the operation.'),(56,55,'Attempts to help get to the Quinjet. Ends up captured.'),(57,37,'Brock helped Captain America secure the ship.'),(57,38,'Brock Rumlow arrives after the Winter Soldier leaves and arrests Steve'),(57,39,'Brock attempts to stop Captain America\'s team and faces off with Falcon before being hospitalized by debris.'),(57,53,'Crossbones attempts to steal a bio-weapon but is stopped by the Avengers.'),(58,39,'Sharon helps the team in infiltrating the Triskelion.'),(59,44,'Plants a vision in Iron Man\'s head of a Chitauri Invasion.'),(59,46,'Manipulates the Hulk into going on a rampage.'),(59,47,'Defects from Ultron to join the Avengers after discovering his plan to destroy humanity.'),(59,48,'Defends the world from he Ultron Offensive.'),(59,53,'Scarlet Witch took part in the operation and inadvertently destroyed a building'),(59,55,'Attempts to help get to the Quinjet. End up captured.'),(60,44,'Defends against the Avengers but ultimately allows the base to fall.'),(60,47,'Defects from Ultron to join the Avengers after discovering his plan to destroy humanity.'),(60,48,'Defends the world from he Ultron Offensive.'),(61,44,'Is captured by Captain America.'),(62,40,'Star Lord steals the Orb and escapes the planet.'),(62,41,'Plans and executes a prison escape from the Kyln.'),(62,42,'Peter is involved in the aerial chase attempting to escape.'),(62,43,'Peter defends Xandar and defeats Ronan with the Infinity Stone.'),(62,62,'Defeats the Abilisk with the other Guardians.'),(62,63,'Escapes the Sovereigns after Rocket steals a battery.'),(62,66,'Fights against Ego.'),(63,41,'Executes a prison escape from the Kyln.'),(63,42,'Gamora is involved in the aerial chase attempting to escape.'),(63,43,'Gamora defends Xandar and defeats Ronan with the Infinity Stone.'),(63,62,'Defeats the Abilisk with the other Guardians.'),(63,63,'Escapes the Sovereigns after Rocket steals a battery.'),(63,66,'Fights against Ego.'),(64,41,'Executes a prison escape from the Kyln.'),(64,42,'Drax issues a challenge Ronan and bring him to Knowhere. He is easily defeated.'),(64,43,'Drax defends Xandar and defeats Ronan with the Infinity Stone.'),(64,62,'Defeats the Abilisk with the other Guardians.'),(64,63,'Escapes the Sovereigns after Rocket steals a battery.'),(64,66,'Fights against Ego.'),(65,41,'Executes a prison escape from the Kyln.'),(65,62,'Defeats the Abilisk with the other Guardians.'),(65,63,'Escapes the Sovereigns after Rocket steals a battery.'),(65,64,'Is captured by the Ravagers.'),(65,65,'Escapes the Ravagers\' capture with Yondu and Rocket.'),(65,66,'Fights against Ego.'),(66,41,'Plans and executes a prison escape from the Kyln.'),(66,42,'Rocket is involved in the aerial chase attempting to escape.'),(66,43,'Rocket defends Xandar and defeats Ronan with the Infinity Stone.'),(66,62,'Defeats the Abilisk with the other Guardians.'),(66,63,'Escapes the Sovereigns afterstealing a battery.'),(66,64,'Lays traps to defend against the Ravagers but ends up captured.'),(66,65,'Escapes the Ravagers\' capture with Yondu and Groot.'),(66,66,'Fights against Ego.'),(67,42,'Ronan responds to Drax\'s challenge and defeats him easily. He proceeds to obtain the Orb.'),(67,43,'Ronan attacks Xandar and is defeated by the Guardians.'),(68,43,'Yondu and his Ravagers help defend against Ronan.'),(68,64,'Captures Rocket'),(68,65,'Escapes the Ravagers\' capture with Rocket and Groot.'),(68,66,'Sacrifices himself to save Peter.'),(69,42,'Nebula accompanies Ronan to Knowhere and attacks the team.'),(69,43,'Nebula fails to stop the Guardians from taking down the Dark Aster.'),(69,64,'Shoots off Udonta\'s Arrow Controller after his crew begins rebelling.'),(69,66,'Fights against Ego.'),(71,43,'Rhomann Dey is part of the Xandarian defence.'),(74,43,'Kraglin defends Xandar along with the Ravagers.'),(74,65,'Helps Rocket'),(75,43,'Garthan Saal is part of the Xandarian defence and is killed during the battle.'),(77,48,'Defends the world from he Ultron Offensive. Ultimately puts an end to Ultron.'),(77,55,'Attempts to stop Captain America\'s faction.'),(78,45,'At the party and hides when Ultron attacks.'),(78,47,'Has her mind freed by Scarlet Witch and is saved by Captain America.'),(79,45,'Becomes self-aware and attacks the Avengers after seeing humans as the ultimate threat.'),(79,47,'Has the Cradle stolen from him'),(79,48,'Attempts to crash the city of Sokovia into the Earth in an attempt to cause human extinction. Defeated by te Avengers and ultimately destroyed by the Vision.'),(81,49,'Scott breaks into the Pym Residence and steals the Ant-Man suit from a highly protected vault.'),(81,50,'Ant-Man broke into the New Avengers Facility after a fight with Falcon and stole the Signal Decoy.'),(81,51,'Leads the break in to Pym Technologies. Is captured by Darren Cross.'),(81,52,'Faces off with Yellowjacket'),(81,55,'Attempts to help get to the Quinjet. Ends up captured.'),(82,51,'Assists in the break in to Pym Technologies.'),(83,51,'Assists in the break in to Pym Technologies.'),(84,51,'Captures Ant-Man during his attempt to steal the Yellowjacket suit.'),(84,52,'Faces off with Ant-Man'),(86,51,'Assists in the break in to Pym Technologies.'),(87,51,'Assists in the break in to Pym Technologies.'),(88,51,'Assists in the break in to Pym Technologies.'),(89,54,'Prince T\'Challa attempted to evacuate the room but failed to save his father.'),(89,55,'Attempts to stop Captain America\'s faction.'),(89,56,'Followed Tony to the island'),(89,77,'During his coronation'),(89,78,'Takes Erik Killmonger\'s challenge'),(89,79,'Returns to bring the fight to Killmonger.'),(89,80,'Faces off with Killmonger in the Vibranium Mines'),(90,56,'Reveals the murderer of Tony\'s parents to be Bucky'),(91,55,'Attempts to stop Captain America\'s faction.'),(91,67,'Saves his classmates.'),(91,68,'Interrupts the weapon deal'),(91,69,'Defeats Shocker and pursues Vulture.'),(91,70,'Faces off with Vulture and defeats him.'),(92,79,'Takes out the ships delivering Wakandan weapons.'),(93,54,'King T\'Chaka is killed by the explosion.'),(95,57,'Battles with Kaecilius.'),(95,58,'Battles with Lucian with his astral form while his body was being operated on.'),(95,59,'Traps everyone in the Mirror Dimension.'),(95,60,'Arrives and battles Kaecilius and his zealots.'),(95,61,'Traps Dormammu in a time loop which forces the entity to give up.'),(96,59,'Is trapped in the Mirror World and is shocked to find out the Ancient One\'s connection to the Dark Dimension.'),(96,60,'Arrives and battles Kaecilius and his zealots.'),(98,60,'Prepares to defend the sanctum from Kaecilius'),(99,57,'Battles wth Doctor Strange.'),(99,59,'Battles and pursues Doctor Strange and Karl Mordo. And kills the Ancient One.'),(99,60,'Destroys the Hong Kong Sanctum.'),(100,59,'Reveals her connection to the Dark Dimension and is killed by Kaecilius.'),(101,61,'Agrees to leave Earth alone to be released from the time loop.'),(102,66,'Fights against Ego.'),(103,66,'Attempts to use Peter to continue his galactic conquest but is destroyed by the Guardians.'),(104,63,'Orders the Sovereigns to give chase after they realize Rocket had stolen some batteries.'),(105,64,'Calls out Yondu for getting soft and tries to be the new captain.'),(105,65,'Is killed by Yondu during their escape.'),(107,68,'Attacks Spider-man after having his weapon deal interrupted. Malfunctioning weapon slices the ferry in half.'),(107,69,'Attempts to hijack a Stark Cargo Plane.'),(107,70,'Faces off with Spider-man and is defeated.'),(108,67,'Witnessed Spider-man saving her classmates.'),(109,67,'Was carrying the Chitauri energy core that caused the explosion'),(109,69,'Helps Spider-man pursue Vulture.'),(110,67,'Saved by Spider-man.'),(112,69,'Is defeated by Spider-man.'),(113,72,'Murders Hogun'),(113,74,'Duels Thor in the Asgardian Palace'),(113,75,'Attempts to get the Bifrost Sword and prevent the Asgardians from leaving.'),(113,76,'Attempts to stop Surtur from destroying Asgard but fails.'),(114,75,'Battles the forces of Hela on the Bifrost Bridge.'),(114,76,'Watches the destruction of Asgard by Surtur.'),(115,72,'Recruited by Hela.'),(115,75,'Betrays Hela to protect the Asgardians and is murdured by her.'),(116,75,'Battles the forces of Hela on the Bifrost Bridge.'),(116,76,'Watches the destruction of Asgard by Surtur.'),(117,71,'Fights and loses to Thor.'),(117,76,'Destroys Asgard'),(118,75,'Battles the forces of Hela on the Bifrost Bridge.'),(119,78,'Challenges T\'Challa and defeats him and murders Zuri for his father.'),(119,80,'Faces off with Black Panther and is defeated. Chooses to die rather than be in bondage.'),(120,77,'Witnesses the coronation of T\'Challa.'),(120,78,'Watches in horror as T\'Challa is defeated.'),(120,79,'Fights against Killmonger.'),(121,77,'Witnesses the coronation of T\'Challa.'),(121,78,'Watches in horror as T\'Challa is defeated.'),(121,79,'Fights against Killmonger.'),(122,77,'Witnesses the coronation of T\'Challa.'),(122,78,'Watches in horror as T\'Challa is defeated.'),(122,79,'Refuses to adhere to tribal laws when she can\'t look past Killmonger\'s actions anymore and turns against him.'),(124,77,'Witnesses the coronation of T\'Challa.'),(124,78,'Is murdered by Erik Killmonger after his victory over T\'Challa.'),(125,77,'Challenges T\'Challa\'s coronation but loses the duel.'),(125,79,'Joins the fight later to aid T\'Challa.'),(126,79,'Fights with Killmonger.');
/*!40000 ALTER TABLE `events_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `release_date` date DEFAULT NULL,
  `box_office` varchar(20) DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `image_link` text,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Iron Man (Movie)','Jon Favreau','A billionaire industrialist and genius inventor, Tony Stark, is conducting weapons tests overseas, but terrorists kidnap him to force him to build a devastating weapon. Instead, he builds an armored suit and upends his captors. Returning to America, Stark refines the suit and uses it to combat crime and terrorism.','2008-04-30','$585.2 million',7.9,'../static/css/posters/iron_man.jpg'),(2,'The Incredible Hulk','Louis Leterrier','Scientist Bruce Banner desperately seeks a cure for the gamma radiation that contaminated his cells and turned him into The Hulk. Cut off from his true love Betty Ross and forced to hide from his nemesis, Gen. Thunderbolt Ross, Banner soon comes face-to-face with a new threat: a supremely powerful enemy known as The Abomination.','2008-06-13','$263.4 million',6.8,'../static/css/posters/the_incredible_hulk.jpg'),(3,'Iron Man 2','Jon Favreau','With the world now aware that he is Iron Man, billionaire inventor Tony Stark faces pressure from all sides to share his technology with the military. He is reluctant to divulge the secrets of his armored suit, fearing the information will fall into the wrong hands. With Pepper Potts and \"Rhodey\" Rhodes by his side, Tony must forge new alliances and confront a powerful new enemy.','2010-04-28','$623.9 million',7.0,'../static/css/posters/iron_man_2.jpg'),(4,'Thor (Movie)','Kenneth Branagh','As the son of Odin, king of the Norse gods, Thor will soon inherit the throne of Asgard from his aging father. However, on the day that he is to be crowned, Thor reacts with brutality when the gods\' enemies, the Frost Giants, enter the palace in violation of their treaty. As punishment, Odin banishes Thor to Earth. While Loki, Thor\'s brother, plots mischief in Asgard, Thor, now stripped of his powers, faces his greatest threat.','2011-04-21','$449.3 million',7.0,'../static/css/posters/thor.jpg'),(5,'Captain America: The First Avenger','Joe Johnston','In Marvel\'s Captain America: The First Avenger, Steve Rogers wants to do his part and join America\'s armed forces, but the military rejects him because of his small stature. Finally, Steve gets his chance when he is accepted into an experimental program that turns him into a supersoldier called Captain America. Joining forces with Bucky Barnes and Peggy Carter, Captain America leads the fight against the Nazi organization, HYDRA.','2011-07-22','$370.6 million',6.9,'../static/css/posters/captain_america_the_first_avenger.jpg'),(6,'The Avengers','Joss Whedon','When Thor\'s evil brother, Loki, gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury, director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. Joining Fury\'s \"dream team\" are Iron Man, Captain America, the Hulk, Thor, the Black Widow and Hawkeye.','2012-04-25','$1.519 billion',8.1,'../static/css/posters/the_avengers.jpg'),(7,'Iron Man 3','Shane Black','Tony Stark finds himself facing his most powerful enemy yet when he embarks on a harrowing quest to find those responsible for destroying his private world. Along the way, he discovers the answer to the question that has secretly haunted him: \"Does the man make the suit or does the suit make the man?','2013-04-24','$1.215 billion',7.2,'../static/css/posters/iron_man_3.jpg'),(8,'Thor: The Dark World','Alan Taylor','Exploring Thor\'s relationship with the Asgardian All-Father Odin, as well as Earthbound companion Jane Foster, Thor: The Dark World follows the God of Thunder to The Nine Realms beyond Asgard and Earth. And as his evil adoptive brother, Loki, returns for Asgardian justice, a new threat rises. Also rejoining Thor are his fellow Asgardians, Lady Sif, gatekeeper Heimdall, and Warriors Three, as they encounter mythical Norse creatures among the evildoers.','2013-10-30','$644.6 million',7.0,'../static/css/posters/thor_dark_world.jpg'),(9,'Captain America: The Winter Soldier','Russo Brothers','Two years after the Battle of New York, Captain America lives quietly in Washington, D.C., still struggling to adapt to the modern society. In hopes of fitting in, Captain America becomes an agent of S.H.I.E.L.D., as well as a close friend of Black Widow and a new hero, Falcon. However, when a shadowy enemy from within the chief offices of S.H.I.E.L.D. (with whom Nick Fury initially agrees) starts creating countless weapons of mass destruction to seemingly protect the world - but really wants to destroy it and rebuild it, Captain America and his colleagues must team up to stop him. But things get more complicated when Steve\'s thought deceased best friend Bucky is revealed to be alive and a villain like no other - the Winter Soldier.','2014-03-26','$714.4 million',7.8,'../static/css/posters/captain_america_the_winter_soldier.jpg'),(10,'Guardians of the Galaxy (Movie)','James Gunn','Marvel?s Guardians of the Galaxy expands the Marvel Cinematic Universe into the cosmos, where brash adventurer Peter Quill finds himself the object of an unrelenting bounty hunt after stealing a mysterious orb coveted by Ronan, a powerful villain with ambitions that threaten the entire universe. To evade the ever-persistent Ronan, Quill is forced into an uneasy truce with a quartet of disparate misfits ? Rocket, a gun-toting raccoon; Groot, a humanoid tree; the deadly and enigmatic Gamora; and the rage/revenge-driven Drax the Destroyer. But when Peter discovers the true power of the orb and the menace it poses to the cosmos, he must do his best to rally his ragtag rivals for a last, desperate stand ? with the galaxy?s fate in the balance.','2014-07-31','$773.3 million',8.1,'../static/css/posters/guardians_of_galaxy.jpg'),(11,'Avengers: Age of Ultron','Joss Whedon','When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth?s Mightiest Heroes, including Iron Man, Captain America, Thor, Hulk, Black Widow, and Hawkeye, along with support from Nick Fury and Maria Hill are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to the Avengers to stop him from enacting his terrible plans, and soon uneasy alliances and unexpected action pave the way for an epic and unique global adventure.[1]','2015-04-22','$1.405 billion',7.4,'../static/css/posters/avengers_age_of_ultron.jpg'),(12,'Ant-Man (Movie)','Peyton Reed','Armed with the astonishing ability to shrink in scale but increase in strength, master thief Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man Suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.','2015-07-14','$519.4 million',7.3,'../static/css/posters/ant_man.jpg'),(13,'Captain America: Civil War','Russo Brothers','Marvel?s Captain America: Civil War finds Steve Rogers leading the newly formed team of Avengers in their continued efforts to safeguard humanity. But after another incident involving the Avengers results in collateral damage, political pressure mounts to install a system of accountability, headed by a governing body to oversee and direct the team. The new status quo fractures the Avengers, resulting in two camps?one led by Steve Rogers and his desire for the Avengers to remain free to defend humanity without government interference, and the other following Tony Stark?s surprising decision to support government oversight and accountability.','2016-04-27','$1.153 billion',7.8,'../static/css/posters/civil_war.jpg'),(14,'Doctor Strange (Movie)','Scott Derrickson','From Marvel comes Doctor Strange, the story of the world-famous neurosurgeon Dr. Stephen Strange whose life changes forever after a horrific car accident robs him of the use of his hands. When traditional medicine fails him, he is forced to look for healing, and hope, in an unlikely place - a mysterious enclave known as Kamar-Taj. He quickly learns that this is not just a center for healing but also the front line of a battle against unseen dark forces bent on destroying our reality. Before long Strange -- armed with newly acquired magical powers - is forced to to choose whether to return to his life of fortune and status or leave it all behind to defend the world as the most powerful sorcerer in existence.','2016-10-25','$677.7 million',7.5,'../static/css/posters/doctor_strange.jpg'),(15,'Guardians of the Galaxy Vol. 2','James Gunn','Set to the backdrop of \'Awesome Mixtape #2\', Marvel\'s Guardians of the Galaxy Vol. 2 continues the team\'s adventures as they traverse the outer reaches of the cosmos. The Guardians must fight to keep their newfound family together as they unravel the mysteries of Peter Quill\'s true parentage. Old foes become new allies and fan-favorite characters from the classic comics will come to our heroes\' aid as the Marvel Cinematic Universe continues to expand.','2017-04-25','$863.8 million',7.7,'../static/css/posters/guardians_of_the_galaxy_vol_2.jpg'),(16,'Spider-Man: Homecoming','Jon Watts','A young Peter Parker/Spider-Man, who made his sensational debut in Captain America: Civil War, begins to navigate his newfound identity as the web-slinging superhero in Spider-Man: Homecoming. Thrilled by his experience with the Avengers, Peter returns home, where he lives with his Aunt May, under the watchful eye of his new mentor Tony Stark. Peter tries to fall back into his normal daily routine ? distracted by thoughts of proving himself to be more than just your friendly neighborhood Spider-Man ? but when the Vulture (Michael Keaton) emerges as a new villain, everything that Peter holds most important will be threatened.','2017-07-05','$880.2 million',7.5,'../static/css/posters/spider_man_homecoming.jpg'),(17,'Thor: Ragnarok','Taika Waititi','Thor\'s world is about to explode in Marvel\'s Thor: Ragnarok. His devious brother, Loki, has taken over Asgard, the powerful Hela has emerged to steal the throne for herself and Thor is imprisoned on the other side of the universe. To escape captivity and save his home from imminent destruction, Thor must first win a deadly alien contest by defeating his former ally and fellow Avenger... The Incredible Hulk!','2017-10-24','$854.0 million',7.9,'../static/css/posters/thor_ragnarok.jpg'),(18,'Black Panther (Movie)','Ryan Coogler','After the events of Captain America: Civil War, King T\'Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country\'s new leader. However, T\'Challa soon finds that he is challenged for the throne from factions within his own country. When two foes conspire to destroy Wakanda, the hero known as Black Panther must team up with C.I.A. agent Everett K. Ross and members of the Dora Milaje, Wakandan special forces, to prevent Wakanda from being dragged into a world war.','2018-02-16','$1.299 billion',7.8,'../static/css/posters/black_panther.jpg');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_characters`
--

DROP TABLE IF EXISTS `movies_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_characters` (
  `character_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`character_id`,`movie_id`),
  KEY `fk_movies_characters_2_idx` (`movie_id`),
  CONSTRAINT `fk_movies_characters_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`character_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_characters_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_characters`
--

LOCK TABLES `movies_characters` WRITE;
/*!40000 ALTER TABLE `movies_characters` DISABLE KEYS */;
INSERT INTO `movies_characters` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,2),(10,2),(11,2),(12,2),(1,3),(2,3),(4,3),(5,3),(6,3),(7,3),(8,3),(13,3),(14,3),(15,3),(5,4),(8,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(5,5),(6,5),(31,5),(32,5),(33,5),(34,5),(35,5),(36,5),(37,5),(38,5),(39,5),(40,5),(41,5),(42,5),(1,6),(2,6),(4,6),(5,6),(8,6),(9,6),(13,6),(16,6),(18,6),(19,6),(21,6),(31,6),(43,6),(44,6),(45,6),(1,7),(2,7),(4,7),(7,7),(46,7),(47,7),(48,7),(49,7),(50,7),(16,8),(17,8),(18,8),(20,8),(21,8),(22,8),(24,8),(25,8),(26,8),(27,8),(28,8),(29,8),(51,8),(52,8),(53,8),(54,8),(5,9),(13,9),(30,9),(31,9),(32,9),(33,9),(37,9),(43,9),(55,9),(56,9),(57,9),(58,9),(59,9),(60,9),(61,9),(44,10),(45,10),(53,10),(54,10),(62,10),(63,10),(64,10),(65,10),(66,10),(67,10),(68,10),(69,10),(70,10),(71,10),(72,10),(73,10),(74,10),(75,10),(76,10),(1,11),(4,11),(5,11),(9,11),(13,11),(16,11),(19,11),(21,11),(24,11),(31,11),(32,11),(43,11),(45,11),(56,11),(59,11),(60,11),(61,11),(77,11),(78,11),(79,11),(80,11),(6,12),(31,12),(32,12),(33,12),(56,12),(81,12),(82,12),(83,12),(84,12),(85,12),(86,12),(87,12),(88,12),(1,13),(4,13),(6,13),(12,13),(13,13),(19,13),(31,13),(33,13),(56,13),(57,13),(58,13),(59,13),(77,13),(81,13),(89,13),(90,13),(91,13),(92,13),(93,13),(94,13),(16,14),(95,14),(96,14),(97,14),(98,14),(99,14),(100,14),(101,14),(62,15),(63,15),(64,15),(65,15),(66,15),(68,15),(69,15),(73,15),(74,15),(76,15),(102,15),(103,15),(104,15),(105,15),(106,15),(1,16),(2,16),(7,16),(31,16),(91,16),(94,16),(107,16),(108,16),(109,16),(110,16),(111,16),(112,16),(9,17),(16,17),(18,17),(24,17),(25,17),(26,17),(27,17),(95,17),(106,17),(113,17),(114,17),(115,17),(116,17),(117,17),(118,17),(33,18),(80,18),(89,18),(92,18),(119,18),(120,18),(121,18),(122,18),(123,18),(124,18),(125,18),(126,18);
/*!40000 ALTER TABLE `movies_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_events`
--

DROP TABLE IF EXISTS `movies_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_events` (
  `events_id` int(11) NOT NULL,
  `movies_id` int(11) NOT NULL,
  PRIMARY KEY (`events_id`,`movies_id`),
  KEY `fk_movies_events_2_idx` (`movies_id`),
  CONSTRAINT `fk_movies_events_1` FOREIGN KEY (`events_id`) REFERENCES `events` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_events_2` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_events`
--

LOCK TABLES `movies_events` WRITE;
/*!40000 ALTER TABLE `movies_events` DISABLE KEYS */;
INSERT INTO `movies_events` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,3),(14,3),(15,3),(16,3),(17,4),(18,4),(19,4),(20,5),(21,5),(22,5),(23,5),(24,5),(25,6),(26,6),(27,6),(28,6),(29,7),(30,7),(31,7),(32,7),(33,8),(34,8),(35,8),(36,8),(37,9),(38,9),(39,9),(40,10),(41,10),(42,10),(43,10),(44,11),(45,11),(46,11),(47,11),(48,11),(49,12),(50,12),(51,12),(52,12),(53,13),(54,13),(55,13),(56,13),(57,14),(58,14),(59,14),(60,14),(61,14),(62,15),(63,15),(64,15),(65,15),(66,15),(67,16),(68,16),(69,16),(70,16),(71,17),(72,17),(73,17),(74,17),(75,17),(76,17),(77,18),(78,18),(79,18),(80,18);
/*!40000 ALTER TABLE `movies_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_organizations_characters`
--

DROP TABLE IF EXISTS `movies_organizations_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_organizations_characters` (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `character_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`relation_id`),
  KEY `fk_movies_organizations_characters_1_idx` (`organization_id`),
  KEY `fk_movies_organizations_characters_2_idx` (`movie_id`),
  KEY `fk_movies_organizations_characters_3_idx` (`character_id`),
  CONSTRAINT `fk_movies_organizations_characters_1` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`organization_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_organizations_characters_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_organizations_characters_3` FOREIGN KEY (`character_id`) REFERENCES `characters` (`character_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_organizations_characters`
--

LOCK TABLES `movies_organizations_characters` WRITE;
/*!40000 ALTER TABLE `movies_organizations_characters` DISABLE KEYS */;
INSERT INTO `movies_organizations_characters` VALUES (1,1,1,1,'Owner'),(2,1,1,2,'Assistant to the CEO'),(3,1,1,3,'CEO'),(4,1,1,7,'Head of Security'),(5,2,1,NULL,''),(6,3,1,8,'Level 8'),(7,3,1,5,'Level 10'),(8,4,1,4,'USAF Colonel'),(9,4,2,12,'USAF Lieutenant General'),(10,4,2,11,'BAF Captain'),(11,1,3,2,'CEO'),(12,1,3,1,'Owner'),(13,1,3,7,'Head of Security'),(14,1,3,13,'Assistant to Tony Stark'),(15,4,3,4,'USAF Colonel'),(16,3,3,5,'Level 10'),(17,3,3,8,'Level 8'),(18,3,3,13,'Specialist'),(19,5,3,15,'CEO'),(20,6,4,16,''),(21,6,4,18,''),(22,6,4,20,''),(23,6,4,29,''),(24,12,4,25,''),(25,12,4,26,''),(26,12,4,27,''),(27,3,4,19,'Specialist'),(28,3,4,8,'Level 8'),(29,3,4,30,'Level 7'),(30,3,4,5,'Level 10'),(31,12,4,28,''),(32,7,5,31,'Leader'),(33,4,5,32,'SSR Agent'),(34,7,5,33,''),(35,4,5,34,''),(36,8,5,35,'Obergruppenfuhrer'),(37,8,5,37,'Doctor'),(38,7,5,38,''),(39,7,5,39,''),(40,7,5,40,''),(41,7,5,41,''),(42,7,5,42,''),(43,1,5,6,'Founder'),(44,3,5,5,'Level 10'),(45,1,6,1,'Owner'),(46,9,6,1,''),(47,1,6,2,'Chairman'),(48,3,6,5,'Level 10'),(49,9,6,31,''),(50,9,6,9,''),(51,9,6,16,''),(52,9,6,13,''),(53,9,6,19,''),(54,3,6,8,'Level 8'),(55,3,6,43,'Level 9'),(56,3,6,13,'Specialist Avenger'),(57,3,6,19,'Specialist Avenger'),(58,3,6,31,'Specialist Avenger'),(59,1,7,1,'Owner'),(60,1,7,2,'Chairman'),(61,4,7,4,'USAF Colonel'),(62,10,7,46,'CEO'),(63,10,7,47,'Doctor'),(64,1,7,7,'Head of Security'),(65,10,7,49,''),(66,6,8,16,''),(67,6,8,18,''),(68,6,8,20,''),(69,25,8,51,'Leader'),(70,12,8,28,''),(71,12,8,27,''),(72,12,8,25,''),(73,12,8,26,''),(74,6,8,29,''),(75,25,8,52,''),(76,3,9,31,'Specialist Avenger'),(77,3,9,5,'Level 10'),(78,3,9,13,'Specialist Avenger'),(79,3,9,55,'Undersecretary'),(80,8,9,55,'Leader'),(81,8,9,33,''),(82,8,9,57,''),(83,3,9,43,'Level 9'),(84,3,9,57,'Agent'),(85,3,9,58,'Specialist'),(86,3,9,32,'Founder'),(87,8,9,37,'Doctor'),(88,8,9,59,''),(89,8,9,60,''),(90,8,9,61,'Leader'),(91,13,10,62,''),(92,13,10,63,''),(93,13,10,64,''),(94,13,10,65,''),(95,13,10,66,''),(96,15,10,68,'Leader'),(97,14,10,71,''),(98,14,10,72,'Nova Prime'),(99,15,10,74,''),(100,14,10,75,''),(101,9,11,1,''),(102,9,11,16,''),(103,9,11,9,''),(104,9,11,31,''),(105,9,11,13,''),(106,9,11,19,''),(107,9,11,4,''),(108,9,11,59,''),(109,9,11,60,''),(110,8,11,59,''),(111,8,11,60,''),(112,9,11,77,''),(113,3,11,43,'Level 9'),(114,9,11,56,''),(115,3,11,32,'Founder'),(116,8,11,61,'Leader'),(117,3,11,5,'Level 10'),(118,26,12,81,'Leader'),(119,3,12,82,'Consultant'),(120,16,12,82,'Founder'),(121,16,12,83,'Chairwoman'),(122,16,12,84,'CEO'),(123,26,12,86,''),(124,26,12,87,'Getaway Driver'),(125,26,12,88,'Hacker'),(126,9,12,56,''),(127,3,12,32,'Founder'),(128,3,12,6,'Founder'),(129,9,13,31,''),(130,1,13,1,'Owner'),(131,9,13,13,''),(132,9,13,56,''),(133,9,13,4,''),(134,9,13,77,''),(135,24,13,89,'Prince'),(136,9,13,59,''),(137,3,13,58,'Specialist'),(138,17,13,91,''),(139,4,13,12,''),(140,4,13,92,'CIA Agent'),(141,24,13,93,'King'),(142,1,13,6,'Founder'),(143,18,13,31,''),(144,17,13,1,''),(145,17,13,13,''),(146,18,13,33,''),(147,18,13,56,''),(148,17,13,4,''),(149,17,13,77,''),(150,17,13,89,''),(151,18,13,59,''),(152,18,13,81,''),(153,19,14,95,''),(154,19,14,96,''),(155,19,14,98,'Master'),(156,20,14,99,'Leader'),(157,19,14,100,'Master'),(158,13,15,62,''),(159,13,15,63,''),(160,13,15,64,''),(161,13,15,65,''),(162,13,15,66,''),(163,13,15,102,''),(164,15,15,68,'Leader'),(165,13,15,68,''),(166,13,15,69,''),(167,15,15,74,'Leader'),(168,21,15,104,'Leader'),(169,15,15,105,'Leader'),(170,9,16,91,''),(171,22,16,107,'Leader'),(172,1,16,1,'Owner'),(173,1,16,7,'Head of Security'),(174,1,16,2,'Chairman'),(175,22,16,112,''),(176,9,16,31,''),(177,6,17,16,''),(178,6,17,18,''),(179,6,17,113,''),(180,12,17,25,''),(181,12,17,26,''),(182,12,17,27,''),(183,19,17,95,'Master'),(184,11,17,116,'Leader'),(185,11,17,118,''),(186,24,18,89,'King'),(187,24,18,119,'King'),(188,24,18,120,''),(189,24,18,121,'Princess'),(190,24,18,122,'General of Dora Milaje'),(191,24,18,123,''),(192,24,18,124,'Elder'),(193,3,18,92,'CIA Agent'),(194,24,18,125,'Leader of Jabari Tribe'),(195,24,18,126,'Leader of Border Tribe'),(196,1,1,6,'Founder');
/*!40000 ALTER TABLE `movies_organizations_characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `organization_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `image_link` text,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'Stark Industries','Stark Industries is a multinational industrial company owned by Tony Stark, and is the largest tech conglomerate in the world. Founded in 1939 by Howard Stark, the elder Stark ran the company from its inception up until his death in 1991, after which Obadiah Stane was appointed interim CEO. with Tony Stark officially assuming the position shortly after at the age of 21. Under Stark\'s control, the company flourished financially for nearly two decades; however, when Stark discovered that Stane was selling their weapons to terrorist groups around the world, he shut down their lucrative weapons division. In 2010, Stark appointed Pepper Potts as the company\'s CEO after realizing that he was dying from palladium poisoning, a position Stark allowed Potts to maintain after he engineered his own recovery.','../static/img/org/stark_industries.jpg'),(2,'Ten Rings','The Ten Rings is a terrorist organization dedicated to destroying world peace by any means necessary. It is believed to be led by a mysterious man known as the Mandarin. When they attacked and abducted Tony Stark in Afghanistan, Stark secretly made a powerful suit of armor to escape, which gave him the superhero alias, Iron Man.','../static/img/org/ten_rings.png'),(3,'S.H.I.E.L.D','The Strategic Homeland Intervention, Enforcement and Logistics Division, better known by its acronym S.H.I.E.L.D., is a United States extra-governmental military counter-terrorism and intelligence agency, tasked with maintaining global security. Founded in the wake of the Allied victory over the Axis powers and HYDRA in World War II, S.H.I.E.L.D. was organized to protect the United States, and later the entire world, from all possible threats. With its advanced weapons and extraordinary agents, S.H.I.E.L.D. was maybe the greatest military power on Earth. Run by Nick Fury and the World Security Council in the modern age, S.H.I.E.L.D. had to deal with the significant rise in enhanced individuals, dangerous advanced technology, and alien contact. But all the problems S.H.I.E.L.D. had to solve eventually led to the formation of the Avengers, a response team that was recruited to save the world during the alien invasion of Earth in 2012. The agency became publicly known after the Battle of New York, partially because of the Rising Tide website. In 2014, through the actions of Captain America, the world became aware of the fact that S.H.I.E.L.D. was infiltrated and largely controlled by the terrorist organization HYDRA. After the battle in which S.H.I.E.L.D.\'s primary headquarters, the Triskelion, was heavily damaged, all of S.H.I.E.L.D.\'s classified files were dumped on the Internet, and the agency was disavowed by its commanding governments and labeled a terrorist organization. Many S.H.I.E.L.D. officials were taken into custody and subjected to rigorous questioning. However, despite the massive manhunt on S.H.I.E.L.D.\'s agents, a few operatives scattered across the world in most secret bases remained loyal to their oath, saving the most necessary paraphernalia for future use. But the team most responsible for the survival of S.H.I.E.L.D. was the team of Agent Phil Coulson, who valiantly led his teammates against the forces of HYDRA led by the traitors John Garrett and Grant Ward, winning the battle in which Garrett\'s plan ultimately failed. After that battle, Nick Fury appointed Phil Coulson the new director of S.H.I.E.L.D. and tasked him with rebuilding the agency from scratch.','../static/img/org/shield.png'),(4,'Military','All government military forces.','../static/img/org/military.jpg'),(5,'Hammer Industries','Hammer Industries is a weapons manufacturer company led by Justin Hammer.','../static/img/org/hammer.jpg'),(6,'Asgardian Royal Family','The Asgardian Royal Family is a group of Asgardians, formed by late King Buri of Asgard. The current king of Asgard is King Thor.','../static/img/org/asgard.jpg'),(7,'Howling Commandos','The Howling Commandos were a World War II elite combat unit of the Western Allies originally led by Captain America.','../static/img/org/commandos.jpg'),(8,'HYDRA','HYDRA is an authoritarian terrorist-criminal-paramilitary organization bent on world domination. It was founded in ancient times, formerly as a cult centered around the fanatical worship of Hive, a powerful Inhuman that was exiled to the planet Maveth by ancient Inhumans. Ever since his banishment, the cult had been determined to bring him back to Earth to commence a planetary takeover. Over the centuries, the cult evolved, taking many forms, with its most recent incarnation coming into existence shortly after the rise of Nazism in Germany under the leadership of Johann Schmidt as the scientific branch of the Nazi Schutzstaffel. During this time, the cult took on the name HYDRA, which soon became the organization\'s most colloquial label. During World War II, Schmidt separated HYDRA from Nazi Germany to start his own conquest of the world, and it was during or before this time when HYDRA seemingly abandoned the cult\'s original beliefs. Converting from occultism, to draconian anti-freedom principles, HYDRA became an organization with a hell-bent nature that is dedicated to this newfound political doctrine.','../static/img/org/hydra.png'),(9,'Avengers','The Avengers, also known as the Heroes of New York, were a team of extraordinary individuals, either with superpowers or other special characteristics. Its purpose is to protect world stability from inner or extraterrestrial threats, and to work with the peaceful interests of the whole world rather than a specific country or organization.','../static/img/org/avengers.png'),(10,'A.I.M','Advanced Idea Mechanics, better known by its acronym A.I.M., was a scientific research and development agency founded by Aldrich Killian and funded by the United States government.','../static/img/org/aim.png'),(11,'Sakaraan Rebelliion','The Sakaaran Rebellion was a rebellion organized by the gladiators in the Contest of Champions to overthrow the Grandmaster.','../static/img/org/sakaraan.png'),(12,'Warriors Three and Lady Sif','The Warriors Three were a team of elite Asgardian warriors, comprised of some of the best warriors of Asgard.','../static/img/org/warrior_3.png'),(13,'Guardians of the Galaxy','The Guardians of the Galaxy is a band of former intergalactic outlaws, who have teamed together to protect the Galaxy from planetary threats. They managed to save the planet of Xandar from the Kree warlord Ronan and have been recognized under the Nova Empire. An undetermined time after, they defeated the Abilisk, attracted the unwelcome attentions of Ayesha and her Sovereign race, and defeated the Celestial Ego.','../static/img/org/guardians.png'),(14,'Nova Corps','The Nova Corps is the intergalactic military and police force of the Nova Empire, led by an individual holding the rank of Nova Prime.','../static/img/org/nova.jpg'),(15,'Ravagers','The Ravagers are an interstellar crime syndicate comprising of thieves, smugglers, criminals, bandits, mercenaries, bounty-hunters and pirates. There are nearly one hundred factions of Ravagers around the Galaxy. Each faction of the Ravagers has a captain of its own, leading their operations.','../static/img/org/ravagers.png'),(16,'Pym Technologies','Pym Technologies was a technology and scientific research company which specializes in nanotechnology and human enhancements, as well as molecular and atomic studies.','../static/img/org/pym.png'),(17,'Iron Man Faction','Team Iron Man was comprised of the superhumans who were for the Sokovian Accords.','../static/img/org/iron_man_faction.png'),(18,'Captain America Faction','Team Captain America was comprised of the superhumans who were against the Sokovian Accords.','../static/img/org/captain.png'),(19,'Masters of the Mystic Arts','The Masters of the Mystic Arts are an order of sorcerers who are committed to protecting the Earth from mystical threats.','../static/img/org/mystic_arts.png'),(20,'Zealots','The Zealots were a separatist faction of the Masters of the Mystic Arts led by Kaecilius.','../static/img/org/zealots.png'),(21,'Sovereign','The Sovereign are a highly advanced, genetically engineered galactic race who live on the collective of planets of the same name.','../static/img/org/sovereign.png'),(22,'Adrian Toomes\' Crew','Adrian Toomes\' Crew, formerly known as Bestman Salvage, was a cleanup crew that held a contract to salvage any incidents occurring in New York City. Following the Battle of New York, the crew were replaced by the Department of Damage Control, causing Toomes, still in possession of Chitauri technology from their initial clean-up, to commission a specialized exo-suit created for him. Over the next few years, Toomes used the suit to steal artifacts collected by Damage Control from Avengers battles, which he had the Tinkerer modify. The crew then sold weapons made from Chitauri, Dark Elf, S.H.I.E.L.D., Ultron and HYDRA technology and sold them to buyers on the black market.','../static/img/org/adrian_crew.png'),(23,'Revengers','The Revengers were a team assembled by Thor to escape Sakaar and defeat Hela.','../static/img/org/revengers.jpeg'),(24,'Wakandan Tribes','The Tribes of Wakanda are the factions that make up the country of Wakanda.','../static/img/org/wakanda.jpg'),(25,'Dark Elves','The Dark Elves (known as Svartálfar by the Ancient Norse, Älfeneel or Harudheeniksel by the Dark Elves themselves) are the oldest known species in existence, hailing from the obscure realm of Svartalfheim. They are mortal enemies of the Asgardians. Some members of their race have been shown to have the fortitude to wield the power of an Infinity Stone. They are now presumed to be critically endangered as a species or even extinct.','../static/img/org/dark_elves.jpg'),(26,'Scott Lang\'s Crew','Scott Lang\'s heist crew.','../static/img/org/scottlang_crew.png');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(2) DEFAULT '0',
  `registered_date` date DEFAULT NULL,
  `confirmed` tinyint(2) NOT NULL DEFAULT '0',
  `confirmed_date` date DEFAULT NULL,
  `pw_token` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (0,'admin','mcu.visualization@gmail.com','$5$rounds=535000$pX9yeiqnuw1fqEfW$6rD7vYv5aLRa4G3hgL.QQ4d7eYT/0HWUvPUQONqqgu9',1,'2018-04-09',1,'2018-04-09',NULL,NULL),(5,'cs3200','chen.daniel@husky.neu.edu','$5$rounds=535000$gi1INK3Bb1UgQ9Dq$8wJaPX0qzaA6Cjhy3yFvvVygiycP/h0MpYETo1C6qXA',0,'2018-04-11',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'MCU_VISUALIZATION'
--

--
-- Dumping routines for database 'MCU_VISUALIZATION'
--
/*!50003 DROP PROCEDURE IF EXISTS `all_movie_titles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `all_movie_titles`()
BEGIN

SELECT title, movie_id
FROM movies
ORDER BY movie_id ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `characters_events_connections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `characters_events_connections`(
  IN mov_id INT
)
BEGIN

SELECT characters.alias,
		events.title
FROM events_characters
	INNER JOIN events on events_characters.event_id = events.event_id
	INNER JOIN characters on events_characters.character_id = characters.character_id
    INNER JOIN movies_events on events_characters.event_id = movies_events.events_id
WHERE movies_events.movies_id = mov_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `character_page` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `character_page`()
BEGIN

SELECT *
FROM characters
ORDER BY character_id ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `char_in_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `char_in_movie`(
  IN mov_id INT
)
BEGIN

  SELECT characters.character_id,
			characters.alias,
            characters.name,
            characters.gender,
            characters.species,
            characters.first_movie_appearance,
            characters.image_link
    FROM movies_characters LEFT JOIN characters on movies_characters.character_id = characters.character_id 
    WHERE movies_characters.movie_id = mov_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `char_movie_connections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `char_movie_connections`(
  IN mov_id INT
)
BEGIN

SELECT characters.alias,
		movies.title
FROM movies_characters 
	INNER JOIN movies on movies_characters.movie_id = movies.movie_id
	INNER JOIN characters on movies_characters.character_id = characters.character_id
WHERE movies_characters.movie_id = mov_id AND movies_characters.character_id NOT IN (SELECT character_id FROM movies_organizations_characters WHERE movie_id = mov_id);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `char_org_connections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `char_org_connections`(
  IN mov_id INT
)
BEGIN

 SELECT characters.alias,
			organizations.name
    FROM movies_organizations_characters 
			INNER JOIN organizations on movies_organizations_characters.organization_id = organizations.organization_id 
			INNER JOIN movies on movies_organizations_characters.movie_id = movies.movie_id 
            INNER JOIN characters  on  movies_organizations_characters.character_id = characters.character_id
    WHERE movies_organizations_characters.movie_id = mov_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eventDes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `eventDes`(char_id INT)
BEGIN
SELECT description FROM events_characters WHERE character_id = char_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `events_in_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `events_in_movie`(
	IN mov_id INT
)
BEGIN
	SELECT events.event_id,
			events.title,
            events.description
	FROM movies_events LEFT JOIN events on movies_events.events_id = events.event_id
    WHERE movies_events.movies_id = mov_id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `events_movie_connections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `events_movie_connections`(
  IN mov_id INT
)
BEGIN

SELECT events.title,
		movies.title
FROM movies_events
	INNER JOIN movies on movies_events.movies_id = movies.movie_id
	INNER JOIN events on movies_events.events_id = events.event_id
WHERE movies_events.movies_id = mov_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `events_page` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `events_page`()
BEGIN

SELECT *
FROM events
ORDER BY event_id ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movie_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `movie_info`(
	IN mov_id INT
)
BEGIN
	
    SELECT *
    FROM movies
    WHERE movie_id = mov_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `movie_page` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `movie_page`()
BEGIN

SELECT *
FROM movies
ORDER BY movie_id ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `org_in_movie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `org_in_movie`(
	IN mov_id INT
)
BEGIN
	SELECT organizations.organization_id,
			organizations.name,
            organizations.description,
            organizations.image_link
	FROM movies_organizations_characters LEFT JOIN organizations on movies_organizations_characters.organization_id = organizations.organization_id
    WHERE movies_organizations_characters.movie_id = mov_id
    GROUP BY organizations.name;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `org_in_movie_img` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `org_in_movie_img`(movie_id INT)
BEGIN
SELECT DISTINCT ORG.organization_id, ORG.name, ORG.image_link FROM organizations ORG
JOIN (SELECT * FROM movies_organizations_characters MO WHERE MO.movie_id = movie_id) MOS
ON MOS.organization_id = ORG.organization_id;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `org_movie_connections` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `org_movie_connections`(
  IN mov_id INT
)
BEGIN

    SELECT organizations.name,
			movies.title
    FROM movies_organizations_characters INNER JOIN organizations on movies_organizations_characters.organization_id = organizations.organization_id INNER JOIN movies on movies_organizations_characters.movie_id = movies.movie_id
    WHERE movies_organizations_characters.movie_id = mov_id
    GROUP BY organizations.name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reventDes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`chenshinvu`@`%` PROCEDURE `reventDes`(char_id INT)
BEGIN
SELECT description FROM events_characters WHERE character_id = char_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-20  0:07:39
