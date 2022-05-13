-- Consignes -------------------------------------------------------------------------------------

-- Executer le script permettant la création des tables

-- Qestions ----------------------------------------------------------------------------------------

-- Quelle requête utiliser pour afficher l'id des étudiants qui ont participés à au moins un examen ?
-- SELECT DISTINCT id_etudiant FROM examens;

-- Quelle requête utiliser pour compter le nombre d'étudiants qui ont participés à au moins un examen ?
-- SELECT COUNT(DISTINCT id_etudiant) FROM examens;

-- Quelle requête utiliser pour calculer la moyenne de l'examen portant l'id : 45 ?
-- SELECT AVG(note) FROM examens WHERE id_examen = 45;

-- Quelle requête utiliser pour récupérer la meilleure note de l'examen portant l'id : 87 ?
-- SELECT MAX(note) FROM examens WHERE id_examen = 87;

-- Quelle requête utiliser pour afficher l'id des étudiants qui ont eu plus de 11 à l'examen 45 ou plus de 12 à l'examen 87 ?
-- SELECT DISTINCT id_etudiant FROM examens WHERE (id_examen = 45 AND note > 11) OR (id_examen = 87 AND note > 12);

-- Quelle requête utiliser pour afficher tous les enregistrement de la table examens avec en plus, si c'est possible, le prenom et le nom de l'étudiant ?
-- SELECT ex.*, et.prenom, et.nom FROM examens ex LEFT JOIN etudiants et ON ex.id_etudiant = et.id_etudiant;

-- Quelle requête utiliser pour afficher les enregistrement de la table examens avec le prenom et le nom de l'étudiant, uniquement quand les étudiants sont présents dans la table etudiants ?
-- SELECT ex.*, et.prenom, et.nom FROM examens ex INNER JOIN etudiants et ON ex.id_etudiant = et.id_etudiant;

-- Quelle requête utiliser pour afficher uniquement le nom et le prenom de l'étudiant avec l'id : 30 avec la moyenne de ses deux examens dans une colonne moyenne ?
-- SELECT et.prenom, et.nom, AVG(ex.note) as moyenne FROM examens ex INNER JOIN etudiants et ON ex.id_etudiant = et.id_etudiant WHERE et.id_etudiant = 30;

-- Quelle requête utiliser pour afficher les 3 meilleures examens, du meilleur au moins bon, avec le prenom et le nom de l'étudiant associé ?
-- SELECT * FROM examens ex INNER JOIN etudiants et ON ex.id_etudiant = et.id_etudiant ORDER BY ex.note DESC LIMIT 3;
