-- Partie 1 : Création et suppression de bases de données
--  Créer une base de données languages.
 CREATE DATABASE languages;
-- Créer une base de données webDevelopment avec l’encodage UTF-8.
 CREATE DATABASE webDevelopment CHARACTER SET utf8;
--  Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.
 CREATE DATABASE IF NOT EXISTS "framewors" CHARACTER SET utf8;
--  Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.
 CREATE DATABASE IF NOT EXISTS language CHARACTER SET utf8;
--  Supprimer la base de données languages.
 DROP DATABASE languages;
--  Supprimer la base de données frameworks si elle existe.
 DROP DATABASE IF EXISTS frameworks;
--  Supprimer la base de données languages si elle existe.
 DROP DATABASE IF EXISTS languages;
--  Supprimer la base de données webDevelopment si elle existe.
 DROP DATABASE IF EXISTS webDevelopment;
--  Créer une base de données webDevelopment au charactère utf8
 CREATE DATABASE webDevelopment CHARACTER SET utf8;
--   Créer une base de données webDevelopment au charactère utf8 si existe pas
 CREATE DATABASE IF NOT EXISTS webDevelopment CHARACTER SET utf8;

-- Partie 2 : Création de tables
-- exo1:
-- Dans la base de données webDevelopment, créer la table languages avec les colonnes :
-- id (type INT, auto-incrémenté, clé primaire)
-- language (type VARCHAR)

 USE webDevelopment;
CREATE TABLE languages (
     id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     language CHAR (50) NOT NULL );

-- exo2:
--  Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- tool (type VARCHAR)
 CREATE TABLE tools ( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 tool CHAR (50) NOT NULL );

--  exo3
-- Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- name (type VARCHAR)
CREATE TABLE frameworks ( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name CHAR (50) NOT NULL );

-- exo4
-- Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- library (type VARCHAR)
CREATE TABLE librairies ( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
library CHAR (50) NOT NULL );

-- exo5
-- Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- ideName (type VARCHAR)
 CREATE TABLE ide ( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 ideName CHAR (50) NOT NULL );

--  exo6
-- Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :

-- id (type INT, auto-incrémenté, clé primaire)
-- name (type VARCHAR)
CREATE TABLE IF NOT EXISTS frameworks ( id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name CHAR (50) NOT NULL );

-- exo7
-- Supprimer la table tools si elle existe.
DROP TABLE IF EXISTS tools;

-- Exercice 8
-- Supprimer la table libraries.
DROP TABLE IF EXISTS librairies;

-- exercice 9
-- Supprimer la table ide.
DROP TABLE ide;

-- TP

-- Créer la base codex. Y créer une table clients qui aura comme colonnes :


-- Colonne	Type	Attributs
-- id
-- INT	Auto-incrémenté, clé primaire
-- lastname	VARCHAR	
-- firstname	VARCHAR	
-- birthDate	DATE	
-- address	VARCHAR	
-- firstPhoneNumber	INT	
-- secondPhoneNumber	INT	
-- mail	VARCHAR	

CREATE DATABASE codex; 
 CREATE TABLE `clients`(id INT AUTO_INCREMENT,
 lastname VARCHAR (100),
  firstname VARCHAR (100),
  birthDate DATE,
 adress VARCHAR (100),
 firstPhoneNumber INT,
  secondPhoneNumber INT,
   mail VARCHAR (100), 
   PRIMARY KEY (id) ) ENGINE = INNODB ;

--   Partie 3 : Modification de tables
-- Exercice 1Devoir
-- Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).
 USE webDevelopment;
ALTER TABLE languages ADD versions VARCHAR(50) NULL;

-- Exercice 2Devoir
-- Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).
ALTER TABLE frameworks ADD versions INT;

-- Exercice 3Devoir
-- Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.
  USE 'webDevelopment';
        ALTER TABLE 'languages'
        CHANGE 'versions' 'version' VARCHAR(255);

-- Exercice 4Devoir
-- Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.
USE 'webDevelopment';
ALTER TABLE `frameworks`CHANGE `name` `framework` VARCHAR (255);

-- Exercice 5Devoir
-- Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
 USE `webDevelopment`;
 ALTER TABLE `frameworks` MODIFY `version` VARCHAR(10);



-- TPDevoir
-- Dans la base codex, dans la table clients :

-- supprimer la colonne secondPhoneNumber
-- renommer la colonne firstPhoneNumber en phoneNumber
-- changer le type de la colonne phoneNumber en VARCHAR
-- ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR) 
 USE `codex`;
ALTER TABLE `clients` DROP COLUMN secondPhoneNumber;
ALTER TABLE `clients` CHANGE `firstPhoneNumber` `phoneNumber` VARCHAR(255);
ALTER TABLE `clients` MODIFY `phoneNumber` VARCHAR(50);
ALTER TABLE `clients` ADD zipCode VARCHAR(255) NULL , city VARCHAR (100) NULL;

-- Partie 4 : Insertion de données
-- Exercice 1Devoir
-- Insérez les données suivantes dans la table languages de la base webDevelopment :

-- JavaScript, version 5
-- PHP, version 5.2
-- PHP, version 5.4
-- HTML, version 5.1
-- JavaScript, version 6
-- JavaScript, version 7
-- JavaScript, version 8
-- PHP, version 7

USE `webDevelopment`;
ALTER TABLE `clients` ADD `zipCode` VARCHAR(255);
ALTER TABLE `clients` ADD `city` VARCHAR(255);
USE `webDevelopment`;
INSERT INTO languages (name,version) VALUES ('JavaScript', 'version 5'),('PHP', 'version 5.2'),('PHP', 'version 5.4'),('HTML', 'version 5.1'), ('JavaScript', 'version 6'),('JavaScript', 'version 7'),('JavaScript', 'version 8'),('PHP', 'version 7');



-- Exercice 2Devoir
-- Insérez les données suivantes dans la table frameworks de la base webDevelopment :

-- Symfony, version 2.8
-- Symfony, version 3
-- Jquery, version 1.6
-- Jquery, version 2.10