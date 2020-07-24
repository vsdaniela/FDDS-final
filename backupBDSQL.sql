-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `id14441882_asev` DEFAULT CHARACTER SET utf8 ;
USE `id14441882_asev` ;

-- -----------------------------------------------------
-- Table `mydb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id14441882_asev`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NOT NULL,
  `password_usuario` VARCHAR(10) NOT NULL,
  `nombres_usuario` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Eventos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id14441882_asev`.`Eventos` (
  `idEvento` INT NOT NULL AUTO_INCREMENT,
  `nombre_evento` VARCHAR(50) NOT NULL,
  `fecha_evento` DATE NOT NULL,
  `duracion_horas` INT NULL,
  `Usuarios_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idEvento`),
  INDEX `fk_Eventos_Usuarios1_idx` (`Usuarios_idUsuario` ASC),
  CONSTRAINT `fk_Eventos_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuario`)
    REFERENCES `id14441882_asev`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Asistentes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id14441882_asev`.`Asistentes` (
  `idAsistente` INT NOT NULL AUTO_INCREMENT,
  `dni` VARCHAR(8) NOT NULL,
  `correo_asis` VARCHAR(50) NOT NULL,
  `Usuarios_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idAsistente`),
  INDEX `fk_Asistentes_Usuarios1_idx` (`Usuarios_idUsuario` ASC),
  CONSTRAINT `fk_Asistentes_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuario`)
    REFERENCES `id14441882_asev`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Eventos_has_Asistentes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `id14441882_asev`.`Eventos_has_Asistentes` (
  `Asistentes_idAsistente` INT NOT NULL,
  `Eventos_idEvento` INT NOT NULL,
  `idEve_Asis` INT NOT NULL AUTO_INCREMENT,
  INDEX `fk_Asistentes_has_Eventos_Eventos1_idx` (`Eventos_idEvento` ASC),
  INDEX `fk_Asistentes_has_Eventos_Asistentes_idx` (`Asistentes_idAsistente` ASC),
  PRIMARY KEY (`idEve_Asis`),
  CONSTRAINT `fk_Asistentes_has_Eventos_Asistentes`
    FOREIGN KEY (`Asistentes_idAsistente`)
    REFERENCES `id14441882_asev`.`Asistentes` (`idAsistente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Asistentes_has_Eventos_Eventos1`
    FOREIGN KEY (`Eventos_idEvento`)
    REFERENCES `id14441882_asev`.`Eventos` (`idEvento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
