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
  CONSTRAINT `ActivityHistory_ibfk_61` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `ActivityHistory_ibfk_62` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE SET NULL,
  CONSTRAINT `ActivityHistory_ibfk_63` FOREIGN KEY (`saved_recipe_id`) REFERENCES `UserSavedRecipes` (`user_saved_id`) ON DELETE SET NULL
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
  UNIQUE KEY `name_9` (`name`),
  UNIQUE KEY `name_10` (`name`),
  UNIQUE KEY `name_11` (`name`),
  UNIQUE KEY `name_12` (`name`),
  UNIQUE KEY `name_13` (`name`),
  UNIQUE KEY `name_14` (`name`),
  UNIQUE KEY `name_15` (`name`),
  UNIQUE KEY `name_16` (`name`),
  UNIQUE KEY `name_17` (`name`),
  UNIQUE KEY `name_18` (`name`),
  UNIQUE KEY `name_19` (`name`),
  UNIQUE KEY `name_20` (`name`),
  UNIQUE KEY `name_21` (`name`),
  UNIQUE KEY `name_22` (`name`)
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
  UNIQUE KEY `name_9` (`name`),
  UNIQUE KEY `name_10` (`name`),
  UNIQUE KEY `name_11` (`name`),
  UNIQUE KEY `name_12` (`name`),
  UNIQUE KEY `name_13` (`name`),
  UNIQUE KEY `name_14` (`name`),
  UNIQUE KEY `name_15` (`name`),
  UNIQUE KEY `name_16` (`name`),
  UNIQUE KEY `name_17` (`name`),
  UNIQUE KEY `name_18` (`name`),
  UNIQUE KEY `name_19` (`name`),
  UNIQUE KEY `name_20` (`name`),
  UNIQUE KEY `name_21` (`name`),
  UNIQUE KEY `name_22` (`name`)
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
-- Table structure for table `ModernizedRecipes`
--

DROP TABLE IF EXISTS `ModernizedRecipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ModernizedRecipes` (
  `modernized_id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` text COLLATE utf8mb4_unicode_ci,
  `preparation_time` int DEFAULT NULL,
  `cooking_time` int DEFAULT NULL,
  `total_time` int DEFAULT NULL,
  `difficulty` enum('easy','medium','hard') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servings` int DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`modernized_id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `ModernizedRecipes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `UkrRegionRecipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModernizedRecipes`
--

LOCK TABLES `ModernizedRecipes` WRITE;
/*!40000 ALTER TABLE `ModernizedRecipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ModernizedRecipes` ENABLE KEYS */;
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
-- Table structure for table `RecipeByRegions`
--

DROP TABLE IF EXISTS `RecipeByRegions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecipeByRegions` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cuisine_id` int NOT NULL,
  `region_id` varchar(255) NOT NULL,
  `preparation_time` int DEFAULT NULL,
  `cooking_time` int DEFAULT NULL,
  `total_time` int DEFAULT NULL,
  `difficulty` enum('easy','medium','hard') DEFAULT NULL,
  `servings` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `cuisine_id` (`cuisine_id`),
  CONSTRAINT `RecipeByRegions_ibfk_1` FOREIGN KEY (`cuisine_id`) REFERENCES `Cuisines` (`cuisine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeByRegions`
--

LOCK TABLES `RecipeByRegions` WRITE;
/*!40000 ALTER TABLE `RecipeByRegions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RecipeByRegions` ENABLE KEYS */;
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
  CONSTRAINT `RecipeIngredients_ibfk_41` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RecipeIngredients_ibfk_42` FOREIGN KEY (`ingredient_id`) REFERENCES `Ingredients` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  CONSTRAINT `Recipes_ibfk_41` FOREIGN KEY (`cuisine_id`) REFERENCES `Cuisines` (`cuisine_id`),
  CONSTRAINT `Recipes_ibfk_42` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipes`
--

LOCK TABLES `Recipes` WRITE;
/*!40000 ALTER TABLE `Recipes` DISABLE KEYS */;
INSERT INTO `Recipes` VALUES (1,'Greek Salad','A refreshing Mediterranean salad with tomatoes, cucumbers, olives, and feta cheese.',5,8,10,10,10,'easy',4,'https://maps.example.com/location','/img/recipes/Bruschetta.jpg','2025-01-14 02:36:34','2025-02-14 14:19:19'),(2,'Focaccia',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Focaccia.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(3,'Granola with Yogurt',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Granola-with-Yogurt.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(4,'Cornetto',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Cornetto.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(5,'Crostino',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Crostino.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(6,'Fetta Bruschetta',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Fetta-Bruschetta.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(7,'Cannelloni',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Cannelloni.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(8,'Pasta with Pesto',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Pasta-with-Pesto.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(9,'Osso Buco',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Osso-buco.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(10,'Lasagna',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Lasagna-Bolognese.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(11,'Pasta Carbonara',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Pasta-Carbonara.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(12,'Margherita Pizza',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Margherita-Pizza.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(13,'Minestrone.jpg',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Minestrone.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(14,'Arancini',NULL,3,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Arancini.webp','2025-01-14 02:36:34','2025-01-14 02:36:34'),(15,'Cherry mousse dessert',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Cherry-mousse-dessert.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(16,'Gelato',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Gelato.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(17,'Tiramisu',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Tiramisu.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(18,'Panettone',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Panettone.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(19,'Yogurt Cake',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Yogurt-Cake.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(20,'Fruit Salad',NULL,4,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Fruit-Salad.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(21,'Caprese Salad',NULL,5,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Caprese-Salad.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(22,'Polenta',NULL,2,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Polenta.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(23,'Mushroom Risotto',NULL,6,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Mushroom-risotto.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(24,'Cappuccino with Brioche',NULL,7,1,NULL,NULL,NULL,NULL,NULL,NULL,'/img/recipes/Cappuccino-with-Brioche.jpg','2025-01-14 02:36:34','2025-01-14 02:36:34'),(25,'Pasta Carbonara','Classic Italian pasta dish with eggs, cheese, pancetta, and pepper.',2,1,15,25,35,'easy',2,'https://maps.example.com/location',NULL,'2025-02-14 13:48:00','2025-02-14 14:09:44'),(26,'Pasta Carbonara','Classic Italian pasta dish with eggs, cheese, pancetta, and pepper.',2,1,15,20,35,'easy',2,'https://maps.example.com/location',NULL,'2025-02-14 13:50:48','2025-02-14 13:50:48'),(27,'Greek Salad','A refreshing Mediterranean salad with tomatoes, cucumbers, olives, and feta cheese.',5,8,10,10,10,'easy',4,'https://maps.example.com/location',NULL,'2025-02-14 14:03:11','2025-02-14 14:18:56'),(29,'Salad 2','Test',5,8,10,0,10,'easy',4,'https://maps.example.com/location',NULL,'2025-02-27 11:16:24','2025-02-27 11:16:24');
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
  CONSTRAINT `Reviews_ibfk_41` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE,
  CONSTRAINT `Reviews_ibfk_42` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE
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
-- Table structure for table `UkrRegionRecipes`
--

DROP TABLE IF EXISTS `UkrRegionRecipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UkrRegionRecipes` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuisine_id` int NOT NULL,
  `region_id` int NOT NULL,
  `preparation_time` int DEFAULT NULL,
  `cooking_time` int DEFAULT NULL,
  `total_time` int DEFAULT NULL,
  `difficulty` enum('easy','medium','hard') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servings` int DEFAULT NULL,
  `location_map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `cuisine_id` (`cuisine_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `UkrRegionRecipes_ibfk_1` FOREIGN KEY (`cuisine_id`) REFERENCES `Cuisines` (`cuisine_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UkrRegionRecipes_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `UkrRegions` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UkrRegionRecipes`
--

LOCK TABLES `UkrRegionRecipes` WRITE;
/*!40000 ALTER TABLE `UkrRegionRecipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UkrRegionRecipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UkrRegions`
--

DROP TABLE IF EXISTS `UkrRegions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UkrRegions` (
  `region_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UkrRegions`
--

LOCK TABLES `UkrRegions` WRITE;
/*!40000 ALTER TABLE `UkrRegions` DISABLE KEYS */;
INSERT INTO `UkrRegions` VALUES (1,'Vinnytsia','2025-05-08 09:34:45','2025-05-08 09:34:45'),(2,'Volyn','2025-05-08 09:34:46','2025-05-08 09:34:46'),(3,'Dnipro','2025-05-08 09:34:46','2025-05-08 09:34:46'),(4,'Donetsk','2025-05-08 09:34:46','2025-05-08 09:34:46'),(5,'Zhytomyr','2025-05-08 09:34:46','2025-05-08 09:34:46'),(6,'Zakarpattia','2025-05-08 09:34:46','2025-05-08 09:34:46'),(7,'Zaporizhzhia','2025-05-08 09:34:46','2025-05-08 09:34:46'),(8,'Ivano-Frankivsk','2025-05-08 09:34:46','2025-05-08 09:34:46'),(9,'Kyiv','2025-05-08 09:34:46','2025-05-08 09:34:46'),(10,'Kirovohrad','2025-05-08 09:34:46','2025-05-08 09:34:46'),(11,'Luhansk','2025-05-08 09:34:46','2025-05-08 09:34:46'),(12,'Lviv','2025-05-08 09:34:46','2025-05-08 09:34:46'),(13,'Mykolaiv','2025-05-08 09:34:46','2025-05-08 09:34:46'),(14,'Odesa','2025-05-08 09:34:46','2025-05-08 09:34:46'),(15,'Poltava','2025-05-08 09:34:46','2025-05-08 09:34:46'),(16,'Rivne','2025-05-08 09:34:46','2025-05-08 09:34:46'),(17,'Sumy','2025-05-08 09:34:46','2025-05-08 09:34:46'),(18,'Ternopil','2025-05-08 09:34:46','2025-05-08 09:34:46'),(19,'Kharkiv','2025-05-08 09:34:46','2025-05-08 09:34:46'),(20,'Kherson','2025-05-08 09:34:46','2025-05-08 09:34:46'),(21,'Khmelnytskyi','2025-05-08 09:34:46','2025-05-08 09:34:46'),(22,'Cherkasy','2025-05-08 09:34:46','2025-05-08 09:34:46'),(23,'Chernivtsi','2025-05-08 09:34:46','2025-05-08 09:34:46'),(24,'Chernihiv','2025-05-08 09:34:46','2025-05-08 09:34:46'),(25,'Crimea','2025-05-08 09:34:46','2025-05-08 09:34:46');
/*!40000 ALTER TABLE `UkrRegions` ENABLE KEYS */;
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
  CONSTRAINT `UserSavedRecipes_ibfk_41` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `UserSavedRecipes_ibfk_42` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE
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
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bio` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`),
  UNIQUE KEY `email_4` (`email`),
  UNIQUE KEY `email_5` (`email`),
  UNIQUE KEY `email_6` (`email`),
  UNIQUE KEY `email_7` (`email`),
  UNIQUE KEY `email_8` (`email`),
  UNIQUE KEY `email_9` (`email`),
  UNIQUE KEY `email_10` (`email`),
  UNIQUE KEY `email_11` (`email`),
  UNIQUE KEY `email_12` (`email`),
  UNIQUE KEY `email_13` (`email`),
  UNIQUE KEY `email_14` (`email`),
  UNIQUE KEY `email_15` (`email`),
  UNIQUE KEY `email_16` (`email`),
  UNIQUE KEY `email_17` (`email`),
  UNIQUE KEY `email_18` (`email`),
  UNIQUE KEY `email_19` (`email`),
  UNIQUE KEY `email_20` (`email`),
  UNIQUE KEY `email_21` (`email`),
  UNIQUE KEY `email_22` (`email`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `username_3` (`username`),
  UNIQUE KEY `username_4` (`username`),
  UNIQUE KEY `username_5` (`username`),
  UNIQUE KEY `username_6` (`username`),
  UNIQUE KEY `username_7` (`username`),
  UNIQUE KEY `username_8` (`username`),
  UNIQUE KEY `username_9` (`username`),
  UNIQUE KEY `username_10` (`username`),
  UNIQUE KEY `username_11` (`username`),
  UNIQUE KEY `username_12` (`username`),
  UNIQUE KEY `username_13` (`username`),
  UNIQUE KEY `username_14` (`username`),
  UNIQUE KEY `username_15` (`username`),
  UNIQUE KEY `username_16` (`username`),
  UNIQUE KEY `username_17` (`username`),
  UNIQUE KEY `username_18` (`username`),
  UNIQUE KEY `username_19` (`username`),
  UNIQUE KEY `username_20` (`username`),
  UNIQUE KEY `username_21` (`username`),
  UNIQUE KEY `username_22` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'user7','user7@example.com','$2b$10$xKTQj01STBa.eArvz3wcmuDmpqLkMUc6qp1JrasXCZF/2f1pb.dmy',NULL,NULL,'2025-02-14 14:52:51','2025-02-14 15:00:36'),(2,NULL,'user8@example.com','$2b$10$dsbsei0bsIeEjAoAk8yYdurvBWD90sVReL6tJCkE5cEdb029WHzL.',NULL,NULL,'2025-04-14 08:49:17','2025-04-14 09:21:18'),(3,NULL,'ira.lemchyk@gmail.com','$2b$10$WO9Ex2Nns8MOQSyhc.NQn.fgRsvsYKCAHASTrTYIkr1Ep.oSCWK1e',NULL,NULL,'2025-04-14 08:56:17','2025-05-12 14:12:43'),(4,NULL,'roman@gmail.com','$2b$10$CiIMGDM3wIqhx.biFMTZHe3c12cmIpdb50VwTlelup9G1WAi8cWgG',NULL,NULL,'2025-05-10 16:28:18','2025-05-10 16:28:18'),(5,NULL,'jwt@gmail.com','$2b$10$jqbYnAFt9vu.pOi8Njm0Dus/YlAy0Bnbsgnmn46v.YAnaiV4H4cea',NULL,NULL,'2025-05-10 16:31:20','2025-05-10 16:31:20'),(6,'potato','potato@gmail.com','$2b$10$Mgy6et5ui/WIGNBjdNn8HeXc2Otrjv9VKGPsKeu0y4Ii7gR482nHW',NULL,NULL,'2025-05-10 19:27:05','2025-05-10 19:27:05'),(7,'lonef','lonef@duck.com','$2b$10$uOc5rZvh1kUngfoyjV1QyOlKUhQtiis9.b3QNOKjkdIbDdDTLW/KC',NULL,NULL,'2025-05-10 20:45:02','2025-05-13 09:25:08'),(8,'gggggg','yyyyy@uu.io','$2b$10$I0enMuZJTcbEehjWH/2vluJtQ4.uUIvQij0DLCLBhmny0kkRZoJJC',NULL,NULL,'2025-05-12 14:06:09','2025-05-12 14:06:09'),(9,'testing','test@gmail.com','$2b$10$pVElx9N2ZAk706hsH2lC9OHK063CAXInwntm7zAs48La8Sdtw9Y5y',NULL,NULL,'2025-05-26 14:17:31','2025-05-26 14:17:31');
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

-- Dump completed on 2025-06-05  3:00:02
