-- CREATION D'UNE BASE DE DONNEES :sourire_yeux_rieurs:
-- Commande pour créer une base
CREATE DATABASE ma_base;
-- Il est préférable de rajouter l'encodage UTF8:
CREATE DATABASE videotheque CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- Je precise la base que j'utilise
USE videotheque;
-- Il est possible d'éffacer sa base :danger: Attention toutes les tables et donnée seront éffacées ! :cri:
DROP DATABASE ma_data_base
-- CREATION DE NOTRE PREMIERE BASE DE DONNEES
-- Voici la commande pour créer une table :
CREATE TABLE film(...);
-- EFFACER UNE TABLE DE DONNEES : :danger: Attention toutes les données seront éffacées ! :sueur_et_sourire:
DROP TABLE film;
-- Il recommander Je peux preciser le moteur de stockage de ma table
-- InnoDB est un moteur de stockage : storage engine / on le définit quand on créé sa table
-- Sinon par défault j'aurais MylSAM au lien de innoDB
-- Celà sera problématique pour les contraintes de clefs étrangère
CREATE TABLE film (..) ENGINE=InnoDB;

-- :clé: MISE EN PLACE D'UNE CLE PRIMAIRE SUR NOTRE TABLE
-- la clef primaire : primary key ou PK
-- Afin d'identifier une ligne de façon précise on définit une clef primaire
-- La clef primaire peut être définit par MySQL AI AUTO_INCREMENT
-- :cadenas: La contrainte de clef primaire impose d'avoir qu'un seul ID
-- c'est à dire si je rentre le même ID MySQL me bloque car je viole la contrainte de clef primaire
-- Nous rajoutons aussi la contrainte de nullité car notre id ne peut être null :

CREATE TABLE film (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY
);
-- :filmer: CREATION DES AUTRES CHAMPS :
-- :danger: Chaque ligne est terminée par une virgule sauf la dernière ligne

USE videotheque;
CREATE TABLE film (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(255) NOT NULL,
  sortie DATE NOT NULL
) ENGINE=InnoDB;
-- Il est aussi possible de définir la clef primaire à la fin :
USE videotheque;
CREATE TABLE film (
  id int NOT NULL AUTO_INCREMENT,
  titre VARCHAR(255) NOT NULL,
  sortie DATE NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;
-- je peux rajouter des commentaires avec # ou --
-- je selectionne ma database : videotheque
USE videotheque;
# creation table film;
CREATE TABLE film (
  id int NOT NULL AUTO_INCREMENT,
  titre VARCHAR(255) NOT NULL,
  sortie DATE NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;



