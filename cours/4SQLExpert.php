//*FONCTIONS d'aggrégation suite --------------------------------------------------
//! COUNT et GROUP BY
//GROUP BY regroupe les enregistrements par id avant de lancer la fonction
//Retourne autant de ligne que d'id différent en indiquant le nombre de fois ou ils apparaissent 
//? SELECT id_column, COUNT(id_column) FROM table_name GROUP BY id_column

//!HAVING
//HAVING et WHERE ont le même rôle cependant la condition WHERE s'execute avant GROUP BY alors que HAVING s'execute après
//? SELECT b.first_column AS alias, COUNT(a.id_column) AS another_alias
//? FROM table_name AS b
//? LEFT JOIN another_table_name AS a ON b.id_column = a.second_column
//? GROUP BY b.id_column 
//? HAVING another_alias=1;
