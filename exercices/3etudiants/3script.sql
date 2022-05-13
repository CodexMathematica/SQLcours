--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id_etudiant` int(3) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `nom` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Insertion des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id_etudiant`, `prenom`, `nom`) VALUES
(30, 'Joseph', 'Biblo'),
(31, 'Paul', 'Bismuth'),
(32, 'Jean', 'Michel'),
(33, 'Ted', 'Bundy'),
(34, 'Caroline', 'Martinez'),
(35, 'Joséphine', 'Henry');

-- --------------------------------------------------------

--
-- Structure de la table `examens`
--

CREATE TABLE `examens` (
  `id` int(3) NOT NULL,
  `id_examen` int(3) NOT NULL,
  `id_etudiant` int(3) NOT NULL,
  `matiere` varchar(128) NOT NULL,
  `note` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Insertion des données de la table `examens`
--

INSERT INTO `examens` (`id`, `id_examen`, `id_etudiant`, `matiere`, `note`) VALUES
(788, 45, 30, 'Histoire-Geographie', 10.5),
(789, 87, 33, 'Mathématiques', 14),
(790, 87, 34, 'Mathématiques', 4),
(791, 45, 31, 'Histoire-Geographie', 15.5),
(792, 45, 32, 'Histoire-Geographie', 8),
(793, 87, 31, 'Mathématiques', 14),
(794, 45, 33, 'Histoire-Geographie', 9.5),
(795, 45, 36, 'Histoire-Geographie', 13),
(796, 45, 34, 'Histoire-Geographie', 17),
(797, 87, 30, 'Mathématiques', 7.5);


--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id_etudiant`);

--
-- Index pour la table `examens`
--
ALTER TABLE `examens`
  ADD PRIMARY KEY (`id`);



--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id_etudiant` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `examens`
--
ALTER TABLE `examens`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;
