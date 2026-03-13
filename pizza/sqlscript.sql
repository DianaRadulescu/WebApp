CREATE DATABASE `pizza`;
use `pizza`;
CREATE TABLE `pizza`.`clienti` (
  `idclient` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) ,
  `password` VARCHAR(45) ,
  `nr_tel` VARCHAR(45) ,
  PRIMARY KEY (`idclient`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) ,
  UNIQUE INDEX `nr_tel_UNIQUE` (`nr_tel` ASC) );
  
  
  
  CREATE TABLE `pizza`.`produse` (
  `idprodus` INT NOT NULL AUTO_INCREMENT,
  `pret` FLOAT,
  `nume` VARCHAR(45),
  `gramaj` INT,
  PRIMARY KEY (`idprodus`),
  UNIQUE INDEX `nume_UNIQUE` (`nume` ASC) );
  
  
  CREATE TABLE `pizza`.`cos` (
  `idcos` INT NOT NULL AUTO_INCREMENT,
  `idprodus` INT ,
  `idclient` INT NOT NULL,
  PRIMARY KEY (`idcos`));
  
  
  
  CREATE TABLE `pizza`.`comenzi` (
  `idcomanda` INT NOT NULL AUTO_INCREMENT,
  `idcurier` INT NOT NULL,
  `idclient` INT NOT NULL,
  `status` VARCHAR(45) ,
  `pret_comanda` FLOAT ,
  `adresa` VARCHAR(150),
  PRIMARY KEY (`idcomanda`));
  
  
  CREATE TABLE `pizza`.`curieri` (
  `idcurier` INT NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) ,
  `nr_tel` VARCHAR(45) ,
  `status` VARCHAR(45) ,
  PRIMARY KEY (`idcurier`),
  UNIQUE INDEX `nume_UNIQUE` (`nume` ASC) ,
  UNIQUE INDEX `nr_tel_UNIQUE` (`nr_tel` ASC) );
  
  
  
ALTER TABLE `pizza`.`cos` 
ADD CONSTRAINT `idprodus`
  FOREIGN KEY (`idprodus`)
  REFERENCES `pizza`.`produse` (`idprodus`)
  ON DELETE CASCADE,
ADD CONSTRAINT `idclient`
  FOREIGN KEY (`idclient`)
  REFERENCES `pizza`.`clienti` (`idclient`)
  ON DELETE CASCADE;


ALTER TABLE `pizza`.`comenzi` 
ADD CONSTRAINT `idclient2`
  FOREIGN KEY (`idclient`)
  REFERENCES `pizza`.`clienti` (`idclient`)
  ON DELETE CASCADE,
ADD CONSTRAINT `idcurier`
  FOREIGN KEY (`idcurier`)
  REFERENCES `pizza`.`curieri` (`idcurier`)
  ON DELETE CASCADE;



INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('25', 'diavola', '500');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('30', 'quattro_formaggi', '800');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('25', 'prosciutto_funghi', '450');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('50', 'hot_cheese', '850');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('50', 'capriciosa', '800');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('20', 'brocolli', '350');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('60', 'bolognesse', '950');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('35', 'margherita', '450');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('40', 'carnivora', '500');
INSERT INTO `pizza`.`produse` (`pret`, `nume`, `gramaj`) VALUES ('45', 'bbq', '650');



INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('marian', '0744519074', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('andrei', '0723428233', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('robert', '0230510073', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('victor', '0722585229', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('vlad', '0241585103', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('alin', '0720996900', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('cosmin', '0256433273', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('marius', '0749017843', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('vasile', '0245227002 ', 'liber');
INSERT INTO `pizza`.`curieri` (`nume`, `nr_tel`, `status`) VALUES ('eduard', '0723289964 ', 'liber');



