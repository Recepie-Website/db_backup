-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `ActivityHistory`
--

DROP TABLE IF EXISTS `ActivityHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ActivityHistory` (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `recipe_id` int DEFAULT NULL,
  `saved_recipe_id` int DEFAULT NULL,
  `search_query` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `user_id` (`user_id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `saved_recipe_id` (`saved_recipe_id`),
  CONSTRAINT `ActivityHistory_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `ActivityHistory_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE SET NULL,
  CONSTRAINT `ActivityHistory_ibfk_3` FOREIGN KEY (`saved_recipe_id`) REFERENCES `UserSavedRecipes` (`user_saved_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActivityHistory`
--

LOCK TABLES `ActivityHistory` WRITE;
/*!40000 ALTER TABLE `ActivityHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ActivityHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Italian','2025-01-10 12:56:11','2025-01-10 12:56:11'),(2,'French','2025-01-10 12:56:11','2025-01-10 12:56:11'),(3,'Spanish','2025-01-10 12:56:11','2025-01-10 12:56:11'),(4,'Japanese','2025-01-10 12:56:11','2025-01-10 12:56:11'),(5,'Chinese','2025-01-10 12:56:11','2025-01-10 12:56:11'),(6,'Mexican','2025-01-10 12:56:11','2025-01-10 12:56:11'),(7,'Indian','2025-01-10 12:56:11','2025-01-10 12:56:11'),(8,'Greek','2025-01-10 12:56:11','2025-01-10 12:56:11'),(9,'Ukrainian','2025-01-10 12:56:11','2025-01-10 12:56:11'),(10,'Turkish','2025-01-10 12:56:11','2025-01-10 12:56:11'),(11,'Korean','2025-01-10 12:56:11','2025-01-10 12:56:11'),(12,'American','2025-01-10 12:56:12','2025-01-10 12:56:12');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cuisines`
--

DROP TABLE IF EXISTS `Cuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cuisines` (
  `cuisine_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`cuisine_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuisines`
--

LOCK TABLES `Cuisines` WRITE;
/*!40000 ALTER TABLE `Cuisines` DISABLE KEYS */;
INSERT INTO `Cuisines` VALUES (1,'Breakfast','2025-01-10 12:56:12','2025-01-10 12:56:12'),(2,'Main Courses','2025-01-10 12:56:12','2025-01-10 12:56:12'),(3,'Snacks','2025-01-10 12:56:12','2025-01-10 12:56:12'),(4,'Desserts','2025-01-10 12:56:12','2025-01-10 12:56:12'),(5,'Salads','2025-01-10 12:56:12','2025-01-10 12:56:12'),(6,'Vegan Dishes','2025-01-10 12:56:12','2025-01-10 12:56:12'),(7,'Drinks','2025-01-10 12:56:12','2025-01-10 12:56:12');
/*!40000 ALTER TABLE `Cuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredients`
--

DROP TABLE IF EXISTS `Ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingredients` (
  `ingredient_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `nutritional_value` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredients`
--

LOCK TABLES `Ingredients` WRITE;
/*!40000 ALTER TABLE `Ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Preferences`
--

DROP TABLE IF EXISTS `Preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Preferences` (
  `preference_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `favorite_category` varchar(255) DEFAULT NULL,
  `favorite_ingredient` varchar(255) DEFAULT NULL,
  `disliked_ingredient` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`preference_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `Preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Preferences`
--

LOCK TABLES `Preferences` WRITE;
/*!40000 ALTER TABLE `Preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `Preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecipeIngredients`
--

DROP TABLE IF EXISTS `RecipeIngredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecipeIngredients` (
  `recipe_ingredient_id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `ingredient_id` int NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`recipe_ingredient_id`),
  UNIQUE KEY `RecipeIngredients_ingredient_id_recipe_id_unique` (`recipe_id`,`ingredient_id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `RecipeIngredients_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RecipeIngredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `Ingredients` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeIngredients`
--

LOCK TABLES `RecipeIngredients` WRITE;
/*!40000 ALTER TABLE `RecipeIngredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `RecipeIngredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecipeSteps`
--

DROP TABLE IF EXISTS `RecipeSteps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecipeSteps` (
  `step_id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `step_number` int NOT NULL,
  `description` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`step_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `RecipeSteps_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeSteps`
--

LOCK TABLES `RecipeSteps` WRITE;
/*!40000 ALTER TABLE `RecipeSteps` DISABLE KEYS */;
/*!40000 ALTER TABLE `RecipeSteps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecipeTags`
--

DROP TABLE IF EXISTS `RecipeTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecipeTags` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `RecipeRecipeId` int NOT NULL,
  `TagTagId` int NOT NULL,
  PRIMARY KEY (`RecipeRecipeId`,`TagTagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeTags`
--

LOCK TABLES `RecipeTags` WRITE;
/*!40000 ALTER TABLE `RecipeTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `RecipeTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recipes`
--

DROP TABLE IF EXISTS `Recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recipes` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cuisine_id` int NOT NULL,
  `category_id` int NOT NULL,
  `preparation_time` int NOT NULL,
  `cooking_time` int NOT NULL,
  `total_time` int NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL,
  `servings` int NOT NULL,
  `location_map` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `cuisine_id` (`cuisine_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `Recipes_ibfk_1` FOREIGN KEY (`cuisine_id`) REFERENCES `Cuisines` (`cuisine_id`),
  CONSTRAINT `Recipes_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipes`
--

LOCK TABLES `Recipes` WRITE;
/*!40000 ALTER TABLE `Recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` text,
  `review_date` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `Reviews_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE,
  CONSTRAINT `Reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tags`
--

DROP TABLE IF EXISTS `Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tags` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `tag` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `Tags_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tags`
--

LOCK TABLES `Tags` WRITE;
/*!40000 ALTER TABLE `Tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSavedRecipes`
--

DROP TABLE IF EXISTS `UserSavedRecipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserSavedRecipes` (
  `user_saved_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `recipe_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`user_saved_id`),
  KEY `user_id` (`user_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `UserSavedRecipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `UserSavedRecipes_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSavedRecipes`
--

LOCK TABLES `UserSavedRecipes` WRITE;
/*!40000 ALTER TABLE `UserSavedRecipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSavedRecipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bio` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'new_user','new_user@example.com','$2b$10$vPtx4.jVWCj1/dFm4eldVuZ3XWOO6hz0.O4u84IRBU8eelYb3936q',NULL,NULL,'2025-01-10 13:25:32','2025-01-10 13:25:32'),(2,'test_user','test@example.com','$2b$10$VfmUIZ0F0bV0hhTq1b3JrORZo0jgKbh0PHON3UlUbVHSjmJ.lBU8a',NULL,NULL,'2025-01-10 13:29:58','2025-01-10 13:29:58'),(3,'duplicate_user','duplicate@example.com','$2b$10$4hvrCxKyYxRjNw4Z2SC1zeF60hxN4v30/4UJAlyD/f8PjeScEwybi',NULL,NULL,'2025-01-10 13:31:26','2025-01-10 13:31:26'),(4,'very_long_username_sedrtfyuikjhgyftghwcjjhwhjkcwjshviqjeofncwoiwjoijwoejoenhcoeoicj','testt@example.com','$2b$10$H0F0uNNKPPbEur/3UAgtS.DgnwG5JsVFdWfLgkq4xhGHJ13HrCiri',NULL,NULL,'2025-01-10 13:32:45','2025-01-10 13:32:45'),(5,'very_long_username_sedrtaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaafyuikjhgyftghwcjjhwhjkcwjshviqjeofncwoiwjoijwoejoenhcoeoicj','testtt@example.com','$2b$10$hlUn0asxyo3mk4C6yUgmseIODC5vaCMQdaTx./ay.LqZmqpi0oZp2',NULL,NULL,'2025-01-10 13:33:05','2025-01-10 13:33:05'),(6,'teest_user','teestttt_user@example.com','$2b$10$oQuLnfEs6w/FejFWoFhTEu3.pgERtPd6rdPBbW4/HPjMCG8ZgVbte',NULL,NULL,'2025-01-10 13:45:31','2025-01-10 13:45:31'),(7,'teesstt_user','teesstttt_user@example.com','$2b$10$qZWMD5lijkZZAGIwixLqUeoftZkumaXkTKzFeW63HdEZ16x5i7Qx2',NULL,NULL,'2025-01-10 13:52:54','2025-01-10 13:52:54'),(8,'tteesstt_user','tteesstttt_user@example.com','$2b$10$qZEU6tUfT2dLyXA7ass/9usL.6/8nyjHhaX1B.dXcVk6ovTG087nG',NULL,NULL,'2025-01-10 13:52:54','2025-01-10 13:52:54'),(9,'user1','user1@example.com','$2b$10$VWLSCIfkxKTD5Gm8Ty6DpOIjAD6roNgrtCav3czH6OllV5XzNOJaO',NULL,NULL,'2025-01-10 14:00:26','2025-01-10 14:00:26'),(10,'user2','user2@example.com','$2b$10$Darpjg/7Wsa.tvSzD7anIubqajItxNSpvILtu6h5H062hpgW1m64a',NULL,NULL,'2025-01-10 14:00:26','2025-01-10 14:00:26'),(11,'user3','user3@example.com','$2b$10$ZygUgp/w9tSQ3xFd8dYry.sXsrxVJ3dV8Q6yfJRLqfZBu/s1w1iKq',NULL,NULL,'2025-01-10 14:00:27','2025-01-10 14:00:27'),(12,'user4','user4@example.com','$2b$10$QmoXD1wA8YTciPEa4bucue4UGZrXDc7mGIEkzHi/xeXZ0OUI8Mf7G',NULL,NULL,'2025-01-10 14:00:27','2025-01-10 14:00:27'),(13,'user5','user5@example.com','$2b$10$xbVHGtHXeqPwWp58MvkFKuzT6zl13XZoUHoYB2JuK1uRJhuYJVzFy',NULL,NULL,'2025-01-10 14:00:27','2025-01-10 14:00:27'),(14,'user6','user6@example.com','$2b$10$ZCL6rC/VVQaqMXvlLxLikulJtxTxeTKaBmNyfUUV1/lAuna4HuiWG',NULL,NULL,'2025-01-10 14:56:27','2025-01-10 15:49:39');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11  3:00:02
