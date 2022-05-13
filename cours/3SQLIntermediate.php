//*FILTRE ET CONDITIONS -----------------------------------------
//! LIMIT
//Limiter le nombre d'enregistrement à selectionner
//? SELECT * FROM nom_table LIMIT 2;

//! ALIAS de colonne
//Renommer une colonne à l'affichage
//? SELECT first_column AS 'alias', second_column AS 'another alias' FROM nom_table;

//! ORDER BY
//Changer l'ordre d'affichage des enregistrements selectionnés (ordre numérique ou alphabetique)
//? SELECT * FROM table_name ORDER BY first_column;

//Ordre ascendant (celui par défaut)
//? SELECT * FROM table_name ORDER BY first_column ASC;

//Ordre descendant
//? SELECT * FROM table_name ORDER BY first_column DESC;

//! Distinct
//Selectionner les enregistrements en ommetant les enregistrement identiques pour le champ Distinct
(Selectionne que la premiere apparition dans la table et ommet les autres)
//? SELECT DISTINCT first_column FROM table_name;

//! Filtre LIKE
//Permet de chercher une correspondance (% = n'importe quelle chaine de caractére)
//? SELECT * FROM table_name WHERE first_column LIKE '%string%';

//! OU 
//? SELECT * FROM table_name WHERE first_column LIKE '%string%' OR second_column=value;

//! ET
//? SELECT * FROM table_name WHERE first_column LIKE '%string%' AND second_column=value;

//! ENTRE
//? SELECT * FROM table_name WHERE first_column BETWEEN value AND value;

//! EST NULL
//? SELECT * FROM table_name WHERE first_column IS NULL;

//! ALIAS de table 
//Renommer une table (utile lors de jointures car les requetes sont longues)
//? SELECT nt.first_column FROM nom_table AS nt;


//* JOINTURES --------------------------------------
//Idée : Construire une requete qui tire avantage des relations entre les tables 
//Source (https://sql.sh/cours/jointures)

//! JOIN == INNER JOIN
//? SELECT * FROM table_name JOIN another_table_name ON table_name.first_column=another_table_name.first_column;
//? SELECT * FROM table_name INNER JOIN another_table_name ON table_name.first_column=another_table_name.first_column;

//! LEFT JOIN
// table_name est à gauche de l'expression 'LEFT JOIN' donc tous ses enregistrements apparaitront dans la selection
//même si ils ne 'matchent' pas avec un enregistrement de la table à droite de l'expression 'LEFT JOIN'
//? SELECT * FROM table_name LEFT JOIN another_table_name ON table_name.first_column=another_table_name.first_column;

//! RIGHT JOIN
// Même principe que le LEFT JOIN
//? SELECT * FROM table_name RIGHT JOIN another_table_name ON table_name.first_column=another_table_name.first_column;

//! OUTTER JOIN

//* FONCTIONS d'aggrégation -------------------------------------------------
// Principe : Applique une fonction sur la requete afin de retourné le resultat du traitement effectué par la fonction
// Source (https://sql.sh/fonctions/agregation)

//! AVG 
//Retourne une seule ligne qui correspond à la moyenne des données de first_column
//? SELECT AVG(first_column) FROM table_name;

//! SUM 
// Retourne une seule ligne qui correspond à la somme des données de first_column
//? SELECT SUM(first_column) FROM table_name;










