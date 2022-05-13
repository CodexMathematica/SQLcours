//* Dans PHPMyAdmin (client pour Mysql et MariaDB se présentant sous la forme d'une application web en PHP)
//* Convention : Les mots en SQL s'écrivent en majuscule

//* BASES DE DONNEES --------------------------------------------
//! ----------------------------Create Database
//? CREATE DATABASE database_name;

//! ----------------------------Drop Database
//? DROP DATABASE database_name;

//! ----------------------------Use Database
// Permet au gestionnaire de savoir dans quelle base de données les requêtes vont être executées.
//? USE database_name;

//* TABLES -----------------------------------------------------
//! -------------------------Create table
//? CREATE TABLE table_name(
//?        first_column INT NOT NULL,
//?        second_column VARCHAR(255)
//?);

//! -------------------------Alter table
//? ALTER TABLE table_name ADD another_column VARCHAR(255);
//? ALTER TABLE table_name DROP COLUMN column_name;

//! -------------------------Truncate table
// Supprimer toutes les données d'une table
//? TRUNCATE TABLE table_name;

//* CLEFS -----------------------------------------------------
//! ---------------------------Primary Key (auto-increment)
//PRIMARY KEY: Identifiant unique qui permet d'identifier de façon unique chaque enregistrement de la table.
//AUTO-INCREMENT: Ajoute automatiquement 1 à chaque nouvel enregistrement.
//? CREATE TABLE table_name(
//?        first_column INT PRIMARY KEY AUTO_INCREMENT,
//?        second_column VARCHAR(255)
//?);

//! -------------------------Foreign Key
//Foreign Key: Clef qui fait référence à une clef primaire d'une autre table. Permet de mettre en place des relations.
//? CREATE TABLE table_name(
//?        first_column INT NOT NULL,
//?        second_column VARCHAR(255),
//?        FOREIGN KEY(second_column) REFERENCE another_table_name(column_with_a_primary_key)
//?);

//* CRUD --------------------------------------------------
//! -------------------------------C
//? INSERT INTO table_name (first_column) VALUES (value);
//? INSERT INTO table_name (first_column, another_column) VALUES (value, value);
//? INSERT INTO table_name (first_column) VALUES (value), (value), (value);

//! ----------------------------R
//? SELECT * FROM nom_table;
//? SELECT first_column, another_column FROM nom_table;

//! ---------------------------- U
// Sans la conditions Where tous les enregistrements seront modifiés !!!!!!!!!!!!!
//? UPDATE table_name SET first_column=value WHERE another_column=value;

// ! ------------------------ D
// Sans la conditions Where tous les enregistrements seront supprimés !!!!!!!!!!!!!
//? DELETE FROM table_name WHERE a_column=value;










