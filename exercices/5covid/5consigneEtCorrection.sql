-- Partie 1 -----------------------------------------------------------------------------------------------------
-- Quelle requête utiliser pour afficher toutes les données de vaccination uniquement pour le 1er avril 2021 ?
-- SELECT c.* FROM covid c WHERE jour = '2021-04-01';

-- Quelle requête utiliser pour afficher toutes les données de vaccination uniquement pour le 1er avril 2021 avec le nom de la région concernée ?
-- SELECT r.name, c.* FROM covid c INNER JOIN regions r ON c.id_region = r.code WHERE jour = '2021-04-01';

-- Quelle requête utiliser pour afficher le nombre au cumulé de vaccination première dose toutes régions en 2020 ? Proposez également une solution pour les vaccination deuxième dose.
-- SELECT SUM(n_dose1) FROM covid c WHERE jour <= '2020-12-31'; 
-- SELECT SUM(n_dose2) FROM covid c WHERE jour <= '2020-12-31';

-- Quelle requête SQL utiliser pour afficher le nombre au cumulé de vaccination première dose pour la région avec le code 93 uniquement pour le mois de mars 2021 ?
-- SELECT SUM(n_dose1) FROM covid c WHERE id_region = '93' AND jour BETWEEN '2021-03-01' AND '2021-03-31';

-- Quelle requête utiliser pour afficher le nombre au cumulé de vaccination deuxième dose pour la région avec le code 11 uniquement pour le mois de mars 2021 ?
-- SELECT SUM(n_dose2) FROM covid c WHERE id_region = '11' AND jour BETWEEN '2021-03-01' AND '2021-03-31';

-- Quelle requête SQL utiliser pour afficher le record de vaccination première dose en une seule journée ? Avec une deuxième requête, afficher les informations de la région concernée, dont son nom, ainsi que le jour du record.
-- SELECT MAX(n_dose1) FROM covid c;
-- SELECT MAX(n_dose1) FROM covid c;

-- Quelles requêtes permettent de connaitre quelle région possède la plus grande couverture de vaccination avec une dose et deux doses ? Vous aurez besoin de 4 requêtes pour répondre aux deux questions. Vous aurez besoin du résultat de la première requête pour la deuxième.
-- SELECT MAX(couv_dose1) FROM covid c;
-- SELECT c.*, r.name FROM covid c INNER JOIN regions r ON c.id_region = r.code WHERE c.couv_dose1 >= 19.7;
-- SELECT MAX(couv_dose2) FROM covid c;
-- SELECT c.*, r.name FROM covid c INNER JOIN regions r ON c.id_region = r.code WHERE c.couv_dose2 >= 8;

-- Quelle requête utiliser pour afficher le nom de la région qui a le plus faible taux de couverture de vaccination avec une dose ? Vous aurez besoin de 2 requêtes pour répondre à la question.
-- SELECT MIN(c.couv_dose1) FROM covid c WHERE c.jour = '2021-04-06';
-- SELECT c.*, r.name FROM covid c INNER JOIN regions r ON c.id_region = r.code WHERE c.jour = '2021-04-06' AND c.couv_dose1 <= 2.80;

-- Quelle requête utiliser pour calculer la couverture moyenne entre les différentes régions à la date la plus récente, pour les vaccinations une et deux doses ? Vous renommez les colonnes de résultats : couverture_dose1_avg et couverture_dose2_avg.
-- SELECT AVG(c.couv_dose1) AS couverture_dose1_avg, AVG(c.couv_dose2) AS couverture_dose2_avg FROM covid c WHERE c.jour = '2021-04-06';

-- Quelle requête utiliser pour afficher les données de vaccination des régions (avec leur nom) qui possèdent une couveture vaccinale supérieure à 15 % pour la première dose et supérieure à 5 % pour la deuxième dose ?
-- SELECT c.*, r.name FROM covid c INNER JOIN regions r ON c.id_region = r.code WHERE c.couv_dose1 >= 15 AND c.couv_dose2 >= 5 AND c.jour = '2021-04-06';

-- Partie 2 -------------------------------------------------------------------------------------------------------------------

-- Sans jointure, quelle requête SQL utiliser pour afficher toutes les données de vaccination du 14 février 2021 uniquement, pour le département de Seine-et-Marne (77) ?
-- SELECT * FROM covid_vaccin v WHERE v.jour = '2021-02-14' AND v.dep_code = 77;

-- Sans jointure, quelle requête SQL utiliser pour afficher le cumul de toutes les données de vaccination pour tous les vaccins du 14 février 2021 uniquement, pour les départements de l'Essonne (91) et de la Seine-et-Marne (77) ?
-- SELECT * FROM covid_vaccin v WHERE v.jour = '2021-02-14' AND v.dep_code IN (77, 91) AND v.vaccin = 0;

-- Sans jointure, quelle requête utiliser pour afficher la somme des vaccinations première dose réalisées uniquement avec le vaccin AstraZeneka pour le mois de février 2021 pour le département de la Seine-et-Marne (77) ?
-- SELECT SUM(v.n_dose1) FROM covid_vaccin v WHERE v.dep_code = 77 AND v.jour BETWEEN '2021-02-01' AND '2021-02-31' AND v.vaccin = 3;

-- Sans jointure, quelle requête utiliser pour afficher la somme des vaccinations deuxième dose réalisées avec le vaccin AstraZeneka ou Moderna pour le mois de mars 2021 pour le département de la Seine-et-Marne (77) ?
-- SELECT SUM(v.n_dose2) FROM covid_vaccin v WHERE v.dep_code = 77 AND v.jour BETWEEN '2021-03-01' AND '2021-03-31' AND v.vaccin IN (2, 3);

-- Sans jointure, quelle requête utiliser pour afficher le record de vaccination première dose avec un type de vaccin en une seule journée ? Avec une deuxième requête qui exploitera une jointure, afficher toutes les informations possibles pour cette journée record et sur le type de vaccin.
-- SELECT MAX(v.n_dose1) FROM covid_vaccin v WHERE v.vaccin != 0;
-- SELECT * FROM covid_vaccin v INNER JOIN covid_vaccin_type t ON t.id = v.vaccin WHERE v.vaccin != 0 AND v.n_dose1 >= 7494;
-- Réponse le 2021-03-12 et AstraZeneka.

-- Sans jointure, quelle requête utiliser pour afficher le record de vaccination deuxième dose avec un type de vaccin en une seule journée ? Avec une deuxième requête qui exploitera deux jointures, afficher toutes les informations possibles pour cette journée record, sur le type de vaccin et sur le département.
-- SELECT MAX(v.n_dose2) FROM covid_vaccin v WHERE v.vaccin != 0;
-- SELECT * FROM covid_vaccin v INNER JOIN covid_vaccin_type t ON t.id = v.vaccin INNER JOIN departments d ON d.code = v.dep_code WHERE v.vaccin != 0 AND v.n_dose2 >= 5046;
-- Réponse le 2021-04-02 et Pfizer.

-- Quelle requête permet de savoir quel département possède le plus grand nombre d'injections première dose pour le vaccin AstraZeneka ? 
-- SELECT MAX(v.n_cum_dose1) FROM covid_vaccin v INNER JOIN covid_vaccin_type t ON t.id = v.vaccin INNER JOIN departments d ON d.code = v.dep_code WHERE jour = '2021-04-06' AND v.vaccin = 3;

-- Quelle requête permet de savoir quel département a eu le moins de vaccinations première dose avec le vaccin COMIRNATY Pfizer/BioNTech ? 
-- SELECT MIN(v.n_cum_dose1) FROM covid_vaccin v INNER JOIN covid_vaccin_type t ON t.id = v.vaccin INNER JOIN departments d ON d.code = v.dep_code WHERE jour = '2021-04-06' AND vaccin = 1;

-- Quelle requête permet de connaître la moyenne de vaccinations première dose dans tous les départements pour le vaccin Moderna ? Renommer la colonne de résultat avec avg_moderna.
-- SELECT AVG(n_cum_dose1) AS avg_moderna FROM covid_vaccin v INNER JOIN covid_vaccin_type t ON t.id = v.vaccin INNER JOIN departments d ON d.code = v.dep_code WHERE v.jour = '2021-04-06' AND v.vaccin = 2;

-- Quelle requête utiliser pour afficher les départements (avec leur nom) qui possèdent un nombre d'injections deuxième dose avec le vaccin Moderna supérieur à 9000 ou un nombre d'injections première dose avec le vaccin COMIRNATY Pfizer/BioNTech supérieur à 120000 ? Vous aurez besoin de deux jointures.
-- SELECT v.jour, t.nom, v.n_cum_dose1, d.code, d.name
-- FROM covid_vaccin v
-- INNER JOIN covid_vaccin_type t ON t.id = v.vaccin
-- INNER JOIN departments d ON d.code = v.dep_code
-- WHERE (v.jour = '2021-04-06' AND v.vaccin = 1 AND v.n_cum_dose1 > 120000)
-- OR (v.jour = '2021-04-06' AND v.vaccin = 2 AND v.n_cum_dose2 > 9000);
