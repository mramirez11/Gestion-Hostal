-- MySQL Workbench Synchronization
-- Generated: 2018-12-08 14:59
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Pablo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `hostal` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `hostal`.`cliente` (
  `idCliente` INT(11) NOT NULL,
  `runCliente` VARCHAR(45) NOT NULL,
  `nombreCliente` VARCHAR(45) NOT NULL,
  `apellidoCliente` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `hostal`.`arriendo` (
  `idArriendo` INT(11) NOT NULL,
  `fechaInicio` VARCHAR(45) NOT NULL,
  `fechaTermino` VARCHAR(45) NOT NULL,
  `cliente_idCliente` INT(11) NOT NULL,
  `rutaComprobante` VARCHAR(255) NOT NULL,
  `estadoSolicitud` INT(11) NOT NULL COMMENT 'Valores de 0,1,2\n0=Rechazado\n\n1=Aceptado\n\n2=En espera',
  `costoArriendo` INT(11) NOT NULL,
  PRIMARY KEY (`idArriendo`),
  INDEX `fk_arriendo_cliente_idx` (`cliente_idCliente` ASC),
  CONSTRAINT `fk_arriendo_cliente`
    FOREIGN KEY (`cliente_idCliente`)
    REFERENCES `hostal`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `hostal`.`habitacion` (
  `idHabitacion` INT(11) NOT NULL,
  `nombreHabitacion` VARCHAR(45) NOT NULL,
  `descripcionHabitacion` VARCHAR(45) NOT NULL,
  `precioHabitacion` INT(11) NOT NULL,
  PRIMARY KEY (`idHabitacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `hostal`.`arriendo_has_habitacion` (
  `arriendo_idArriendo` INT(11) NOT NULL,
  `habitacion_idHabitacion` INT(11) NOT NULL,
  PRIMARY KEY (`arriendo_idArriendo`, `habitacion_idHabitacion`),
  INDEX `fk_arriendo_has_habitacion_habitacion1_idx` (`habitacion_idHabitacion` ASC),
  INDEX `fk_arriendo_has_habitacion_arriendo1_idx` (`arriendo_idArriendo` ASC),
  CONSTRAINT `fk_arriendo_has_habitacion_arriendo1`
    FOREIGN KEY (`arriendo_idArriendo`)
    REFERENCES `hostal`.`arriendo` (`idArriendo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_arriendo_has_habitacion_habitacion1`
    FOREIGN KEY (`habitacion_idHabitacion`)
    REFERENCES `hostal`.`habitacion` (`idHabitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
