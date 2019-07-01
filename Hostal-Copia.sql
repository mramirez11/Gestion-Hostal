-- MySQL Workbench Synchronization
-- Generated: 2018-12-08 14:59
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Pablo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `Hostal` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `Hostal`.`Cliente` (
  `idCliente` INT(11) NOT NULL,
  `runCliente` VARCHAR(45) NOT NULL,
  `nombreCliente` VARCHAR(45) NOT NULL,
  `apellidoCliente` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Hostal`.`Arriendo` (
  `idArriendo` INT(11) NOT NULL,
  `fechaInicio` VARCHAR(45) NOT NULL,
  `fechaTermino` VARCHAR(45) NOT NULL,
  `Cliente_idCliente` INT(11) NOT NULL,
  `rutaComprobante` VARCHAR(255) NOT NULL,
  `estadoSolicitud` INT(11) NOT NULL COMMENT 'Valores de 0,1,2\n0=Rechazado\n\n1=Aceptado\n\n2=En espera',
  `costoArriendo` INT(11) NOT NULL,
  PRIMARY KEY (`idArriendo`),
  INDEX `fk_Arriendo_Cliente_idx` (`Cliente_idCliente` ASC),
  CONSTRAINT `fk_Arriendo_Cliente`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `Hostal`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Hostal`.`Habitacion` (
  `idHabitacion` INT(11) NOT NULL,
  `nombreHabitacion` VARCHAR(45) NOT NULL,
  `descripcionHabitacion` VARCHAR(45) NOT NULL,
  `precioHabitacion` INT(11) NOT NULL,
  PRIMARY KEY (`idHabitacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Hostal`.`Arriendo_has_Habitacion` (
  `Arriendo_idArriendo` INT(11) NOT NULL,
  `Habitacion_idHabitacion` INT(11) NOT NULL,
  PRIMARY KEY (`Arriendo_idArriendo`, `Habitacion_idHabitacion`),
  INDEX `fk_Arriendo_has_Habitacion_Habitacion1_idx` (`Habitacion_idHabitacion` ASC),
  INDEX `fk_Arriendo_has_Habitacion_Arriendo1_idx` (`Arriendo_idArriendo` ASC),
  CONSTRAINT `fk_Arriendo_has_Habitacion_Arriendo1`
    FOREIGN KEY (`Arriendo_idArriendo`)
    REFERENCES `Hostal`.`Arriendo` (`idArriendo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Arriendo_has_Habitacion_Habitacion1`
    FOREIGN KEY (`Habitacion_idHabitacion`)
    REFERENCES `Hostal`.`Habitacion` (`idHabitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
