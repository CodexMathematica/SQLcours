-- Consignes ---------------------------------------------------------------------------------------------

-- Ne pas executer le script permettant de créer les tables. utiliser le script pour répondre aux questions

-- Questions ---------------------------------------------------------------------------------------------

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT id, prenom, nom FROM realisateurs WHERE nation = "us" AND sexe = 1;

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT * FROM realisateurs WHERE sexe = "0" ORDER BY nom DESC LIMIT 1;

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT f.id, f.nom AS film, r.prenom, r.nom FROM films f INNER JOIN realisateurs r ON f.id_realisateur = r.id ORDER BY f.id ASC;

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT f.id, f.nom AS film, r.prenom, r.nom FROM films f LEFT JOIN realisateurs r ON f.id_realisateur = r.id ORDER BY f.id ASC;

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT f.id, f.nom, fn.note FROM films f LEFT JOIN films_notes fn ON f.id = fn.id_film ORDER BY f.id ASC;

-- Consignes ---------------------------------------------------------------------------------------------

-- Executer le script permettant de créer les tables
-- Vérifier vos réponses

-- Ajouter les informations suivantes :
    -- Dans la table films : Batman VS Superman + Justice League + 300

    -- Dans la table réalisateur : Les informations concernant Zack Snyder 0 us

    -- Dans la table note : Batman VS Superman à la note de 5

-- Supprimer l'information suivante :
    -- Dans la table films : Blade Runner 






