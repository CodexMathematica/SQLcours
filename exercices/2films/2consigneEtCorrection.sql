-- Consignes ---------------------------------------------------------------------------------------------

-- Ne pas executer le script permettant de créer les tables. utiliser le script pour répondre aux questions

-- Questions ---------------------------------------------------------------------------------------------

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT id, prenom, nom FROM realisateurs WHERE nation = "us" AND sexe = 1;
-- id	prenom	nom
-- 47	Patty	Jenkins

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT * FROM realisateurs WHERE sexe = "0" ORDER BY nom DESC LIMIT 1;
-- id	nom	prenom	sexe	nation
-- 16	Scott	Ridley	0	uk


-- Quel est le résultat de la requête ci-dessous ?
-- SELECT f.id, f.nom AS film, r.prenom, r.nom FROM films f INNER JOIN realisateurs r ON f.id_realisateur = r.id ORDER BY f.id ASC;
-- id	film	prenom	nom
-- 121	Requiem for a Dream	Darren	Aronofsky
-- 546	Gladiator	Ridley	Scott
-- 775	Blade Runner	Ridley	Scott
-- 984	Seul sur Mars	Ridley	Scott
-- 986	Black Swan	Darren	Aronofsky
-- 987	Wonder Woman	Patty	Jenkins

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT f.id, f.nom AS film, r.prenom, r.nom FROM films f LEFT JOIN realisateurs r ON f.id_realisateur = r.id ORDER BY f.id ASC;
-- id	film	prenom	nom
-- 121	Requiem for a Dream	Darren	Aronofsky
-- 546	Gladiator	Ridley	Scott
-- 666	Fight Club		
-- 775	Blade Runner	Ridley	Scott
-- 984	Seul sur Mars	Ridley	Scott
-- 986	Black Swan	Darren	Aronofsky
-- 987	Wonder Woman	Patty	Jenkins
-- 988	The Tomorrow Man	

-- Quel est le résultat de la requête ci-dessous ?
-- SELECT f.id, f.nom, fn.note FROM films f LEFT JOIN films_notes fn ON f.id = fn.id_film ORDER BY f.id ASC;
-- id	nom	note
-- 121	Requiem for a Dream	1
-- 546	Gladiator	4.5
-- 546	Gladiator	2.5
-- 666	Fight Club	4.2
-- 775	Blade Runner	5
-- 984	Seul sur Mars	3.5
-- 986	Black Swan	4.3
-- 986	Black Swan	3
-- 987	Wonder Woman	3.1
-- 988	The Tomorrow Man
-- Consignes ---------------------------------------------------------------------------------------------

-- Executer le script permettant de créer les tables
-- Vérifier vos réponses

-- Ajouter les informations suivantes :
    -- Dans la table films : Batman VS Superman + Justice League + 300             
        -- INSERT INTO `films`(`nom`, `id_realisateur`) VALUES ('Batman Vs Superman', 67);

    -- Dans la table réalisateur : Les informations concernant Zack Snyder 0 us   
        --INSERT INTO `realisateurs`(`nom`, `prenom`, `sexe`, `nation`) VALUES ('Snyder','Zack', 0,'us');

    -- Dans la table note : Batman VS Superman à la note de 5                   
        --INSERT INTO `films_notes`(`id_film`, `note`) VALUES (989, 4);

-- Supprimer l'information suivante :
    -- Dans la table films : Blade Runner 


-- Questions supplémentaires -----------------------------------------------------------------------------






