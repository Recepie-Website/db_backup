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
  CONSTRAINT `ActivityHistory_ibfk_22` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `ActivityHistory_ibfk_23` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE SET NULL,
  CONSTRAINT `ActivityHistory_ibfk_24` FOREIGN KEY (`saved_recipe_id`) REFERENCES `UserSavedRecipes` (`user_saved_id`) ON DELETE SET NULL
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
  UNIQUE KEY `name_2` (`name`),
  UNIQUE KEY `name_3` (`name`),
  UNIQUE KEY `name_4` (`name`),
  UNIQUE KEY `name_5` (`name`),
  UNIQUE KEY `name_6` (`name`),
  UNIQUE KEY `name_7` (`name`),
  UNIQUE KEY `name_8` (`name`),
  UNIQUE KEY `name_9` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Italian','2025-01-14 01:33:30','2025-01-14 01:33:30'),(2,'French','2025-01-14 01:33:31','2025-01-14 01:33:31'),(3,'Spanish','2025-01-14 01:33:31','2025-01-14 01:33:31'),(4,'Japanese','2025-01-14 01:33:31','2025-01-14 01:33:31'),(5,'Chinese','2025-01-14 01:33:31','2025-01-14 01:33:31'),(6,'Mexican','2025-01-14 01:33:31','2025-01-14 01:33:31'),(7,'Indian','2025-01-14 01:33:31','2025-01-14 01:33:31'),(8,'Greek','2025-01-14 01:33:31','2025-01-14 01:33:31'),(9,'Ukrainian','2025-01-14 01:33:31','2025-01-14 01:33:31'),(10,'Turkish','2025-01-14 01:33:31','2025-01-14 01:33:31'),(11,'Korean','2025-01-14 01:33:31','2025-01-14 01:33:31'),(12,'American','2025-01-14 01:33:31','2025-01-14 01:33:31');
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
  UNIQUE KEY `name_2` (`name`),
  UNIQUE KEY `name_3` (`name`),
  UNIQUE KEY `name_4` (`name`),
  UNIQUE KEY `name_5` (`name`),
  UNIQUE KEY `name_6` (`name`),
  UNIQUE KEY `name_7` (`name`),
  UNIQUE KEY `name_8` (`name`),
  UNIQUE KEY `name_9` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cuisines`
--

LOCK TABLES `Cuisines` WRITE;
/*!40000 ALTER TABLE `Cuisines` DISABLE KEYS */;
INSERT INTO `Cuisines` VALUES (1,'Breakfast','2025-01-14 01:33:31','2025-01-14 01:33:31'),(2,'Main Courses','2025-01-14 01:33:31','2025-01-14 01:33:31'),(3,'Snacks','2025-01-14 01:33:31','2025-01-14 01:33:31'),(4,'Desserts','2025-01-14 01:33:31','2025-01-14 01:33:31'),(5,'Salads','2025-01-14 01:33:31','2025-01-14 01:33:31'),(6,'Vegan Dishes','2025-01-14 01:33:31','2025-01-14 01:33:31'),(7,'Drinks','2025-01-14 01:33:31','2025-01-14 01:33:31');
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
  CONSTRAINT `RecipeIngredients_ibfk_15` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RecipeIngredients_ibfk_16` FOREIGN KEY (`ingredient_id`) REFERENCES `Ingredients` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `description` varchar(255) DEFAULT NULL,
  `cuisine_id` int NOT NULL,
  `category_id` int NOT NULL,
  `preparation_time` int DEFAULT NULL,
  `cooking_time` int DEFAULT NULL,
  `total_time` int DEFAULT NULL,
  `difficulty` enum('easy','medium','hard') DEFAULT NULL,
  `servings` int DEFAULT NULL,
  `location_map` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `cuisine_id` (`cuisine_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `Recipes_ibfk_15` FOREIGN KEY (`cuisine_id`) REFERENCES `Cuisines` (`cuisine_id`),
  CONSTRAINT `Recipes_ibfk_16` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipes`
--

LOCK TABLES `Recipes` WRITE;
/*!40000 ALTER TABLE `Recipes` DISABLE KEYS */;
INSERT INTO `Recipes` VALUES (1,'Bruschetta',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Bruschetta.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(2,'Focaccia',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Focaccia.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(3,'Granola with Yogurt',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Granola-with-Yogurt.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(4,'Cornetto',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Cornetto.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(5,'Crostino',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Crostino.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(6,'Fetta Bruschetta',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Fetta-Bruschetta.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(7,'Cannelloni',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Cannelloni.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(8,'Pasta with Pesto',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Pasta-with-Pesto.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(9,'Osso Buco',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Osso-buco.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(10,'Lasagna',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Lasagna-Bolognese.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(11,'Pasta Carbonara',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Pasta-Carbonara.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(12,'Margherita Pizza',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Margherita-Pizza.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(13,'Minestrone.jpg',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Minestrone.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(14,'Arancini',NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Arancini.webp','2025-01-14 02:36:34','2025-01-14 02:36:34'),(15,'Cherry mousse dessert',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Cherry-mousse-dessert.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(16,'Gelato',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Gelato.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(17,'Tiramisu',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Tiramisu.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(18,'Panettone',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Panettone.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(19,'Yogurt Cake',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Yogurt-Cake.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(20,'Fruit Salad',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Fruit-Salad.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(21,'Caprese Salad',NULL,5,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Caprese-Salad.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(22,'Polenta',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Polenta.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(23,'Mushroom Risotto',NULL,6,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Mushroom-risotto.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(24,'Cappuccino with Brioche',NULL,7,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Cappuccino-with-Brioche.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34');
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
  CONSTRAINT `Reviews_ibfk_15` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE,
  CONSTRAINT `Reviews_ibfk_16` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE
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
  CONSTRAINT `UserSavedRecipes_ibfk_15` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `UserSavedRecipes_ibfk_16` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE
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
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `username_3` (`username`),
  UNIQUE KEY `email_3` (`email`),
  UNIQUE KEY `username_4` (`username`),
  UNIQUE KEY `email_4` (`email`),
  UNIQUE KEY `username_5` (`username`),
  UNIQUE KEY `email_5` (`email`),
  UNIQUE KEY `username_6` (`username`),
  UNIQUE KEY `email_6` (`email`),
  UNIQUE KEY `username_7` (`username`),
  UNIQUE KEY `email_7` (`email`),
  UNIQUE KEY `username_8` (`username`),
  UNIQUE KEY `email_8` (`email`),
  UNIQUE KEY `username_9` (`username`),
  UNIQUE KEY `email_9` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
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

-- Dump completed on 2025-02-14 13:03:11
