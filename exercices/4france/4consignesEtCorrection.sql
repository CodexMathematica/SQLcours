-- Quelle requête utiliser pour retrouver la ville qui possède les coordonnées GPS suivantes : 48.66913724637683, 1.87586057971015 ?
-- SELECT * FROM cities WHERE gps_lat = 48.66913724637683 AND gps_lng = 1.87586057971015;

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes que compte le département de l'Essonne ?
-- SELECT COUNT(*) FROM cities WHERE department_code = 91;

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes en Île-de-France se terminant par "-le-Roi" ?
-- SELECT COUNT(*) FROM cities WHERE name LIKE "%-le-Roi";

-- Combien de villes possèdent le code postal (zip_code) 77320 ? Renommez la colonne de résultat n_cities.
-- SELECT COUNT(*) as n_cities FROM cities WHERE zip_code = 77320;

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes commençant par "Saint-" en Seine-et-Marne ?
-- SELECT COUNT(*) FROM cities WHERE name LIKE "SAINT-%" AND department_code = 77;

-- Quelles villes possèdent un code postal (zip_code) compris entre 77210 et 77810 ?
-- SELECT * FROM cities WHERE zip_code BETWEEN 77210 AND 77810;

-- Sans jointure, quelles sont les deux villes de Seine-et-Marne à avoir le code postal (zip_code) le plus grand ?
-- SELECT * FROM cities WHERE department_code = 77 ORDER BY zip_code DESC LIMIT 2;

-- Quel est le code postal (zip_code) le plus grand de la table cities ?
-- SELECT MAX(zip_code) FROM cities;

-- Avec un seul WHERE et aucun OR, quelle est la requête permettant d'afficher les départements des régions ayant le code suivant : 75, 27, 53, 84 et 93 ? Le résultat doit afficher le nom du département ainsi que le nom et le slug de la région associée.
-- SELECT d.name AS departement, r.name AS region, d.slug FROM departments d INNER JOIN regions r ON (d.region_code = r.code) WHERE d.region_code IN (75, 27, 53, 84, 93);

-- Quelle requête utiliser pour obtenir en résultat, les noms de la région, du département et de chaque ville du département ayant pour code 77 ?
-- SELECT r.name as reg, d.name as dep, c.name as ville FROM cities c INNER JOIN departments d ON (c.department_code = d.code) INNER JOIN regions r ON (d.region_code = r.code) WHERE d.code = 77;
