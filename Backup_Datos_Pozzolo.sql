-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectofinal_pozzolo
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,1,'¡Excelente publicación!'),(2,3,1,'Estoy de acuerdo contigo'),(3,1,2,'¿Cuál es tu película favorita?'),(4,3,3,'¡Feliz cumpleaños! Que tengas un gran día'),(5,1,4,'El parque se ve increíble'),(6,2,5,'¿Dónde fue tomada esa foto?'),(7,3,6,'Esa receta se ve deliciosa'),(8,1,7,'Me identifico con tus pensamientos'),(9,2,8,'Disfruta de la naturaleza por mí también'),(10,3,9,'¡Felicidades por tus logros!'),(11,1,10,'Me encanta pasar tiempo con amigos'),(12,2,11,'Cuéntame más sobre tu próximo proyecto'),(13,3,12,'Un día productivo es muy satisfactorio'),(14,1,13,'Explorar nuevos lugares siempre es emocionante'),(15,2,14,'El tiempo en familia es invaluable'),(16,2,1,'¡Excelente post! Me encantó'),(17,3,1,'Gracias por compartir'),(18,4,2,'Interesante, ¿tienes más información?'),(19,5,2,'Totalmente de acuerdo'),(20,1,3,'Qué envidia, me encantaría estar en la playa ahora'),(21,3,3,'¡Saludos desde otro destino paradisíaco!'),(22,4,4,'Bonito día, disfruta el sol'),(23,2,4,'Me encanta el clima de la ciudad'),(24,5,5,'El libro es increíble, definitivamente lo recomiendo'),(25,1,5,'Estoy deseando leerlo'),(26,3,6,'Qué recuerdos tan hermosos'),(27,4,6,'¡Yo también los recuerdo!'),(28,1,7,'¿Puedes compartir la receta?'),(29,2,7,'Claro, aquí está la receta completa'),(30,5,8,'¿A qué lugar estás explorando?'),(31,3,8,'Estoy explorando una nueva ciudad'),(32,4,9,'¡Felicitaciones a todos los graduados!'),(33,2,9,'¡Gracias! Fue un gran logro'),(34,1,10,'Reflexiones profundas, me hicieron pensar'),(35,5,10,'La vida es un constante aprendizaje'),(36,2,11,'¡Disfruta tus vacaciones!'),(37,4,11,'Gracias, lo estoy pasando genial'),(38,3,12,'¡Qué emocionante! ¿En qué consiste el proyecto?'),(39,1,12,'Es un proyecto de investigación en medicina'),(40,4,13,'La imagen es espectacular'),(41,2,13,'Me alegra que te guste'),(42,5,14,'¡Hermosos momentos compartidos!'),(43,3,14,'Son recuerdos que atesoraré siempre'),(44,1,15,'De vuelta a la rutina laboral'),(45,2,15,'Espero que tengas un buen día de trabajo');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,2,3),(2,4,5),(3,6,7),(4,8,9),(5,10,11),(6,12,13),(7,14,15),(8,1,2),(9,3,4),(10,5,6),(11,7,8),(12,9,10),(13,11,12),(14,13,14),(15,15,1),(16,2,5),(17,3,1),(18,1,2),(19,4,6),(20,3,4),(21,5,2),(22,2,3),(23,1,4),(24,5,6),(25,3,5),(26,2,1),(27,4,2),(28,1,5),(29,5,3),(30,2,4),(31,3,6),(32,4,1),(33,5,2),(34,1,5),(35,2,3),(36,4,6),(37,3,4),(38,5,1),(39,1,3),(40,4,5);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Hola, ¿cómo estás?','2023-05-25',1,2),(2,'¡Felicidades por tu nuevo trabajo!','2023-05-26',2,1),(3,'Gracias, estoy muy emocionado.','2023-05-27',1,2),(4,'¿Alguien quiere tomar un café?','2023-05-28',3,2),(5,'Sí, me gustaría. Nos vemos en el café de siempre.','2023-05-29',2,3),(6,'Hoy es un gran día.','2023-05-30',4,3),(7,'¡Estoy de acuerdo!','2023-05-31',3,4),(8,'¿Tienes algún plan para el fin de semana?','2023-06-01',5,4),(9,'No, aún no he decidido.','2023-06-02',4,5),(10,'¡Deberíamos organizar una salida!','2023-06-03',6,5),(11,'Estaré ocupado durante la semana.','2023-06-04',5,6),(12,'¿Qué opinas de esta idea?','2023-06-05',7,6),(13,'Suena interesante. Vamos a discutirlo más tarde.','2023-06-06',6,7),(14,'¿Has visto la última película?','2023-06-07',8,7),(15,'Sí, me encantó. Deberíamos verla juntos.','2023-06-08',7,8);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Hoy fue un día maravilloso.','2023-05-25',1),(2,'Estoy emocionado por mi próximo viaje.','2023-05-26',2),(3,'Recuerdos de un tiempo feliz.','2023-05-27',3),(4,'Disfrutando de una buena comida.','2023-05-28',4),(5,'Compartiendo mis pensamientos.','2023-05-29',5),(6,'Nuevas aventuras esperando.','2023-05-30',6),(7,'Una tarde relajante en casa.','2023-05-31',7),(8,'Reflexionando sobre la vida.','2023-06-01',8),(9,'Una caminata en la naturaleza.','2023-06-02',9),(10,'Celebrando los pequeños logros.','2023-06-03',10),(11,'Disfrutando de la compañía de amigos.','2023-06-04',11),(12,'Planeando mi próximo proyecto.','2023-06-05',12),(13,'Un día productivo en el trabajo.','2023-06-06',13),(14,'Explorando nuevos lugares.','2023-06-07',14),(15,'Pasando tiempo con la familia.','2023-06-08',15),(16,'Este es un post de prueba 6','2023-06-08',3),(17,'Nuevo post interesante','2023-06-09',2),(18,'Saludos desde la playa','2023-06-10',4),(19,'Un día soleado en la ciudad','2023-06-11',1),(20,'¿Qué opinan sobre el nuevo libro?','2023-06-12',5),(21,'Recordando viejos tiempos','2023-06-13',3),(22,'Compartiendo una receta deliciosa','2023-06-14',2),(23,'Explorando nuevos lugares','2023-06-15',4),(24,'Felicidades a todos los graduados','2023-06-16',1),(25,'Reflexiones sobre la vida','2023-06-17',5),(26,'Celebrando el inicio de las vacaciones','2023-06-18',3),(27,'¡Nuevo proyecto en marcha!','2023-06-19',2),(28,'Una imagen vale más que mil palabras','2023-06-20',4),(29,'Compartiendo momentos especiales','2023-06-21',1),(30,'De vuelta al trabajo','2023-06-22',5);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_insert_log`
--

LOCK TABLES `user_insert_log` WRITE;
/*!40000 ALTER TABLE `user_insert_log` DISABLE KEYS */;
INSERT INTO `user_insert_log` VALUES (3,0,'root@localhost','2023-06-13 19:58:37'),(4,0,'root@localhost','2023-06-13 21:53:48'),(5,19,'root@localhost','2023-06-13 21:55:36'),(6,20,'root@localhost','2023-06-15 21:00:06');
/*!40000 ALTER TABLE `user_insert_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ivan','Perez','ivanp','ivanp@example.com','pass123'),(2,'María','Gomez','mariag','mariag@example.com','pass456'),(3,'Pedro','Rodriguez','pedror','pedror@example.com','pass789'),(4,'Ana','Hernández','anah','anah@example.com','pass987'),(5,'Carlos','Silva','carloss','carloss@example.com','pass654'),(6,'Luisa','Torres','luisat','luisat@example.com','pass321'),(7,'David','Flores','davidf','davidf@example.com','pass876'),(8,'Marta','Ramirez','martar','martar@example.com','pass543'),(9,'Andrés','Lopez','andresl','andresl@example.com','pass210'),(10,'Isabel','Garcia','isabelg','isabelg@example.com','pass879'),(11,'Fernando','Martinez','fernandom','fernandom@example.com','pass768'),(12,'Carolina','Sanchez','carolinas','carolinas@example.com','pass987'),(13,'Javier','Navarro','javiern','javiern@example.com','pass543'),(14,'Elena','Rojas','elenar','elenar@example.com','pass210'),(15,'Hugo','Ortega','hugoo','hugoo@example.com','pass879'),(16,'Niko','Kusje','nicokusje','nikokusje@example.com','pass982'),(17,'Santiago','González','sgonzales','santiago.gonzalez@example.com','password123'),(18,'juan','González','jgonzales','jgonzalez@example.com','password523'),(19,'pablo','pirez','ppirez','ppirez@example.com','password583'),(20,'Nico','Lopez','nicolopez','nicolopez@example.com','pass782');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_user` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    INSERT INTO user_insert_log (user_id, inserted_by, insert_date)
    VALUES (NEW.id_system_user, USER(), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `users_log_after_update` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
    DECLARE action_text VARCHAR(255);
    
    IF NEW.first_name <> OLD.first_name THEN
        SET action_text = CONCAT('First Name Update: ', OLD.first_name, ' -> ', NEW.first_name);
    ELSEIF NEW.last_name <> OLD.last_name THEN
        SET action_text = CONCAT('Last Name Update: ', OLD.last_name, ' -> ', NEW.last_name);
    ELSEIF NEW.username <> OLD.username THEN
        SET action_text = CONCAT('Username Update: ', OLD.username, ' -> ', NEW.username);
    ELSEIF NEW.email <> OLD.email THEN
        SET action_text = CONCAT('Email Update: ', OLD.email, ' -> ', NEW.email);
    ELSEIF NEW.password <> OLD.password THEN
        SET action_text = 'Password Update';
    END IF;

    INSERT INTO users_update_log (user_id, action, action_date, action_details)
    VALUES (NEW.id_system_user, 'UPDATE', NOW(), action_text);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `users_update_log`
--

LOCK TABLES `users_update_log` WRITE;
/*!40000 ALTER TABLE `users_update_log` DISABLE KEYS */;
INSERT INTO `users_update_log` VALUES (1,1,'UPDATE','2023-06-13 20:03:10','First Name Update: Juan -> Ivan'),(2,1,'UPDATE','2023-06-13 20:05:01','Username Update: juanp -> ivanp');
/*!40000 ALTER TABLE `users_update_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyectofinal_pozzolo'
--

--
-- Dumping routines for database 'proyectofinal_pozzolo'
--
/*!50003 DROP FUNCTION IF EXISTS `get_full_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_full_name`(user_id INT) RETURNS varchar(80) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE f_name VARCHAR(40);
    DECLARE l_name VARCHAR(40);
    DECLARE full_name VARCHAR(80);
    
    SELECT first_name, last_name INTO f_name, l_name FROM users WHERE id_system_user = user_id;
    SET full_name = CONCAT(f_name, ' ', l_name);
    
    RETURN full_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_post_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_post_count`(user_id INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE post_count INT;
    SET post_count = (SELECT COUNT(*) FROM posts WHERE id_system_user = user_id);
    RETURN post_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_user_message_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_user_message_count`(user_id INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE message_count INT;
    
    SELECT COUNT(*) INTO message_count FROM messages WHERE id_system_user_emisor = user_id;
    
    RETURN message_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_or_delete_dynamic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_or_delete_dynamic`(
    IN action INT,
    IN delete_id INT,
    IN first_name_value VARCHAR(40),
    IN last_name_value VARCHAR(40),
    IN username_value VARCHAR(40),
    IN email_value VARCHAR(100),
    IN password_value VARCHAR(100)
)
BEGIN
    IF action = 1 THEN
        SET @sql = CONCAT('INSERT INTO ', 'users', ' (first_name, last_name, username, email, password)',
                          ' VALUES (', QUOTE(first_name_value), ', ', QUOTE(last_name_value), ', ',
                          QUOTE(username_value), ', ', QUOTE(email_value), ', ', QUOTE(password_value), ')');
        
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    ELSEIF action = 2 THEN
        SET @sql = CONCAT('DELETE FROM ', 'users', ' WHERE id_system_user = ', delete_id);
        
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `order_table_by_field` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `order_table_by_field`(
    IN table_name VARCHAR(100),
    IN order_field VARCHAR(100),
    IN order_direction VARCHAR(4)
)
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', table_name, ' ORDER BY ', order_field, ' ', order_direction);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
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

-- Dump completed on 2023-06-28 20:43:30
