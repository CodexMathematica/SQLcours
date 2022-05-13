CREATE TABLE `films` (
  `id` int(5) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `id_realisateur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Pour les questions relative à l'ENGINE : https://sql.sh/1548-mysql-innodb-myisam

--
-- Insertion des données de la table `films`
--

INSERT INTO `films` (`id`, `nom`, `id_realisateur`) VALUES
(546, 'Gladiator', 16),
(775, 'Blade Runner', 16),
(984, 'Seul sur Mars', 16),
(121, 'Requiem for a Dream', 22),
(986, 'Black Swan', 22),
(666, 'Fight Club', 61),
(987, 'Wonder Woman', 47),
(988, 'The Tomorrow Man', 85);

-- ---------------------------------------------------------------------

--
-- Structure de la table `realisateurs`
--

CREATE TABLE `realisateurs` (
  `id` int(5) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `sexe` tinyint(4) NOT NULL,
  `nation` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Insertion des données de la table `realisateurs`
--

INSERT INTO `realisateurs` (`id`, `nom`, `prenom`, `sexe`, `nation`) VALUES
(16, 'Scott', 'Ridley', 0, 'uk'),
(22, 'Aronofsky', 'Darren', 0, 'us'),
(47, 'Jenkins', 'Patty', 1, 'us'),
(66, 'Ritchie', 'Guy', 0, 'uk');

-- ------------------------------------------------------------------

--
-- Structure de la table `films_notes`
--

CREATE TABLE `films_notes` (
  `id` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `note` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Insertion des données de la table `films_notes`
--

INSERT INTO `films_notes` (`id`, `id_film`, `note`) VALUES
(1, 546, 4.5),
(2, 546, 2.5),
(3, 775, 5),
(4, 984, 3.5),
(5, 987, 3.1),
(6, 666, 4.2),
(7, 986, 3),
(8, 986, 4.3),
(9, 121, 1);


--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `films_notes`
--
ALTER TABLE `films_notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateurs`
--
ALTER TABLE `realisateurs`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=989;

--
-- AUTO_INCREMENT pour la table `films_notes`
--
ALTER TABLE `films_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `realisateurs`
--
ALTER TABLE `realisateurs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;




















