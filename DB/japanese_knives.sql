-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema japanese_knives
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `japanese_knives` ;

-- -----------------------------------------------------
-- Schema japanese_knives
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `japanese_knives` DEFAULT CHARACTER SET utf8 ;
USE `japanese_knives` ;

-- -----------------------------------------------------
-- Table `knives`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `knives` ;

CREATE TABLE IF NOT EXISTS `knives` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(150) NOT NULL,
  `maker` VARCHAR(125) NOT NULL,
  `construction` VARCHAR(125) NULL,
  `steel` VARCHAR(100) NULL,
  `cladding` VARCHAR(200) NULL,
  `handle` VARCHAR(200) NULL,
  `edge` VARCHAR(100) NULL,
  `weight` VARCHAR(100) NULL,
  `blade_length` VARCHAR(100) NULL,
  `total_length` VARCHAR(100) NULL,
  `spine_thickness` VARCHAR(100) NULL,
  `blade_height` VARCHAR(100) NULL,
  `description` VARCHAR(5000) NULL,
  `img_link` BLOB NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS knivesuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'knivesuser'@'localhost' IDENTIFIED BY 'knivesuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'knivesuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `knives`
-- -----------------------------------------------------
START TRANSACTION;
USE `japanese_knives`;
INSERT INTO `knives` (`id`, `type`, `maker`, `construction`, `steel`, `cladding`, `handle`, `edge`, `weight`, `blade_length`, `total_length`, `spine_thickness`, `blade_height`, `description`, `img_link`) VALUES (1, 'Anryu Kurouchi', 'something in there so it works', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

