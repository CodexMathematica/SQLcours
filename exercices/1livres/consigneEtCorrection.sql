-- Consigne -----------------------------------------------------------------------

-- En utilisant uniquement le SQL (Interdiction de passer de par l'interface graphique)

--Créer la BDD sql_training

--Créer la table books qui content 5 colonnes : id_book, title, isbn_10(int), author, price.

-- Faire en sorte que id_book soit la clef primaire

--Insérer les informations suivantes
-- 1, 'Forteresse digitale', 2709626306, 'Dan Brown', 20.5
-- 2, 'La jeune fille et la nuit	', 2253237620, 'Guillaume Musso', 21.9
-- 3, 'T\'choupi se brosse les dents', 2092589547, 'Thierry Courtin', 5.7
-- 4, 'La Dernière Chasse', 2226439412, 'Jean-Christophe Grangé', 22.9
-- 5, 'Le Signal', 2226319484, 'Maxime Chattam', 23.9

-- Questions -----------------------------------------------------------------------------------------------
-- Quelle requête utiliser pour afficher l'ensemble des enregistrements de la table?
    -- SELECT * FROM books;

-- Quelle requête utiliser pour sélectionner uniquement les livres qui ont un prix strictement supérieur à 20 ?
    -- SELECT * FROM books WHERE price > 20;

-- Quelle requête utiliser pour trier les enregistrements de la table du prix le plus élevé aux prix le plus bas ?
    -- SELECT * FROM books ORDER BY price DESC;

-- Quelle requête utiliser pour récupérer les livres de la table qui ont un prix compris entre 20 et 22 ?
    -- SELECT * FROM books WHERE price BETWEEN 20 AND 22;

-- Quelle requête utiliser pour récupérer tous les livres de la table à l'exception de celui portant la valeur 
-- pour la colonne isbn_10 : 2092589547 ?
    -- SELECT * FROM books WHERE isbn_10 != 2092589547;

-- Quelle requête utiliser pour récupérer le prix du livre le moins élevé de la table en renommant la colonne
-- dans les résultats par minus ?
    -- SELECT MIN(price) AS minus FROM books;

-- Quelle requête utiliser pour sélectionner uniquement les 3 premiers résultats sans le tout premier de la table ?
    -- SELECT * FROM books LIMIT 1, 3;
    -- SELECT * FROM books LIMIT 3 OFFSET 1;





