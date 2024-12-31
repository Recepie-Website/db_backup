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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActivityHistory`
--

LOCK TABLES `ActivityHistory` WRITE;
/*!40000 ALTER TABLE `ActivityHistory` DISABLE KEYS */;
INSERT INTO `ActivityHistory` VALUES (1,1,1,NULL,'chicken recipes','2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,1,2,NULL,'salad recipes','2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,2,3,NULL,'quick recipes','2024-11-16 18:47:25','2024-11-16 18:47:25'),(4,3,NULL,NULL,'healthy recipes','2024-11-16 18:47:25','2024-11-16 18:47:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Main Course','2024-11-16 18:47:24','2024-11-16 18:47:24'),(2,'Salad','2024-11-16 18:47:24','2024-11-16 18:47:24'),(3,'Dessert','2024-11-16 18:47:24','2024-11-16 18:47:24'),(4,'Side Dish','2024-11-16 18:47:24','2024-11-16 18:47:24'),(5,'Beverage','2024-11-16 18:47:24','2024-11-16 18:47:24'),(6,'Snack','2024-11-16 18:47:24','2024-11-16 18:47:24'),(7,'Appetizer','2024-11-16 18:47:24','2024-11-16 18:47:24'),(8,'Breakfast','2024-11-16 18:47:24','2024-11-16 18:47:24'),(9,'Lunch','2024-11-16 18:47:24','2024-11-16 18:47:24'),(10,'Dinner','2024-11-16 18:47:24','2024-11-16 18:47:24'),(11,'Healthy','2024-11-16 18:47:24','2024-11-16 18:47:24');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredients`
--

LOCK TABLES `Ingredients` WRITE;
/*!40000 ALTER TABLE `Ingredients` DISABLE KEYS */;
INSERT INTO `Ingredients` VALUES (1,'Chicken Breast','Meat',165,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,'Broccoli','Vegetable',55,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,'Olive Oil','Fat',884,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(4,'Rice','Grain',130,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(5,'Garlic','Herb',149,'2024-11-16 18:47:25','2024-11-16 18:47:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Preferences`
--

LOCK TABLES `Preferences` WRITE;
/*!40000 ALTER TABLE `Preferences` DISABLE KEYS */;
INSERT INTO `Preferences` VALUES (1,1,'Main Course','Chicken','Fish','2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,2,'Salad','Broccoli','Onion','2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,3,'Dessert','Chocolate','Spicy Foods','2024-11-16 18:47:25','2024-11-16 18:47:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeIngredients`
--

LOCK TABLES `RecipeIngredients` WRITE;
/*!40000 ALTER TABLE `RecipeIngredients` DISABLE KEYS */;
INSERT INTO `RecipeIngredients` VALUES (1,1,1,2,'pieces','2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,1,4,1,'cup','2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,2,2,1,'head','2024-11-16 18:47:25','2024-11-16 18:47:25'),(4,2,3,2,'tablespoons','2024-11-16 18:47:25','2024-11-16 18:47:25'),(5,3,4,1,'cup','2024-11-16 18:47:25','2024-11-16 18:47:25'),(6,3,5,3,'cloves','2024-11-16 18:47:25','2024-11-16 18:47:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeSteps`
--

LOCK TABLES `RecipeSteps` WRITE;
/*!40000 ALTER TABLE `RecipeSteps` DISABLE KEYS */;
INSERT INTO `RecipeSteps` VALUES (1,1,1,'Marinate chicken with herbs and spices.','2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,1,2,'Grill the chicken on medium heat until cooked through.','2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,2,1,'Chop broccoli and mix with olive oil.','2024-11-16 18:47:25','2024-11-16 18:47:25'),(4,2,2,'Serve chilled.','2024-11-16 18:47:25','2024-11-16 18:47:25'),(5,3,1,'Cook rice according to package instructions.','2024-11-16 18:47:25','2024-11-16 18:47:25'),(6,3,2,'Saute garlic in olive oil and mix with rice.','2024-11-16 18:47:25','2024-11-16 18:47:25');
/*!40000 ALTER TABLE `RecipeSteps` ENABLE KEYS */;
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
  `cuisine_type` varchar(255) NOT NULL,
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
  KEY `category_id` (`category_id`),
  CONSTRAINT `Recipes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipes`
--

LOCK TABLES `Recipes` WRITE;
/*!40000 ALTER TABLE `Recipes` DISABLE KEYS */;
INSERT INTO `Recipes` VALUES (1,'Grilled Chicken','Delicious grilled chicken with herbs.','American',1,15,30,45,'easy',4,NULL,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,'Broccoli Salad','Fresh broccoli salad with olive oil dressing.','Mediterranean',2,10,5,15,'easy',2,NULL,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,'Garlic Rice','Fluffy rice infused with garlic flavor.','Asian',4,5,15,20,'easy',4,NULL,'2024-11-16 18:47:25','2024-11-16 18:47:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
INSERT INTO `Reviews` VALUES (1,1,1,5,'Absolutely delicious! Will make again.','2024-11-16 18:47:25','2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,2,2,4,'Tasty and refreshing salad.','2024-11-16 18:47:25','2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,3,3,3,'Rice was good but a bit bland.','2024-11-16 18:47:25','2024-11-16 18:47:25','2024-11-16 18:47:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tags`
--

LOCK TABLES `Tags` WRITE;
/*!40000 ALTER TABLE `Tags` DISABLE KEYS */;
INSERT INTO `Tags` VALUES (1,1,'Grilled','2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,1,'Chicken','2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,2,'Vegetarian','2024-11-16 18:47:25','2024-11-16 18:47:25'),(4,2,'Salad','2024-11-16 18:47:25','2024-11-16 18:47:25'),(5,3,'Easy','2024-11-16 18:47:25','2024-11-16 18:47:25'),(6,3,'Rice','2024-11-16 18:47:25','2024-11-16 18:47:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSavedRecipes`
--

LOCK TABLES `UserSavedRecipes` WRITE;
/*!40000 ALTER TABLE `UserSavedRecipes` DISABLE KEYS */;
INSERT INTO `UserSavedRecipes` VALUES (1,1,1,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,1,3,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,2,2,'2024-11-16 18:47:25','2024-11-16 18:47:25'),(4,3,1,'2024-11-16 18:47:25','2024-11-16 18:47:25');
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
  `avatar` varchar(255) DEFAULT NULL,
  `bio` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'john_doe','john@example.com','avatar1.png','Food lover and home cook.','2024-11-16 18:47:25','2024-11-16 18:47:25'),(2,'jane_smith','jane@example.com','avatar2.png','Professional chef.','2024-11-16 18:47:25','2024-11-16 18:47:25'),(3,'alice_jones','alice@example.com','avatar3.png','Culinary student.','2024-11-16 18:47:25','2024-11-16 18:47:25');
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

-- Dump completed on 2024-12-31  3:00:01
