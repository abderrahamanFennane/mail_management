-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 25 mai 2022 à 21:48
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `arrive`
--

CREATE TABLE `arrive` (
  `idArrive` int(100) NOT NULL,
  `numero` int(10) DEFAULT NULL,
  `dateArrive` date DEFAULT NULL,
  `dateEnvoie` date DEFAULT NULL,
  `objetA` varchar(100) DEFAULT NULL,
  `piece` varchar(100) DEFAULT NULL,
  `divisionA` int(10) DEFAULT NULL,
  `Depart` int(10) DEFAULT NULL,
  `typeCourrier` varchar(100) DEFAULT NULL,
  `destin` int(100) DEFAULT NULL,
  `statusA` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `arrive`
--

INSERT INTO `arrive` (`idArrive`, `numero`, `dateArrive`, `dateEnvoie`, `objetA`, `piece`, `divisionA`, `Depart`, `typeCourrier`, `destin`, `statusA`) VALUES
(28, 1, '2022-05-19', '2022-05-05', 'demande de travail', 'pfe.sql', 8, NULL, '4', 2, NULL),
(32, 1, '2022-05-19', '2022-05-05', 'demande de travail', 'pfe.sql', 3, NULL, '4', 2, NULL),
(33, 1, '2022-05-19', '2022-05-05', 'demande de travail', 'pfe.sql', 1, NULL, '4', 2, NULL),
(34, 1, '2022-05-19', '2022-05-05', 'demande de travail', 'pfe.sql', 10, NULL, '4', 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `depart`
--

CREATE TABLE `depart` (
  `idDepart` int(100) NOT NULL,
  `numero` int(10) DEFAULT NULL,
  `dateDepart` date DEFAULT NULL,
  `datedelai` date DEFAULT NULL,
  `objetD` varchar(100) DEFAULT NULL,
  `PJ` varchar(100) DEFAULT NULL,
  `divisionD` int(10) DEFAULT NULL,
  `arrive` int(10) DEFAULT NULL,
  `typeCourrier` varchar(100) DEFAULT NULL,
  `destinataire` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `depart`
--

INSERT INTO `depart` (`idDepart`, `numero`, `dateDepart`, `datedelai`, `objetD`, `PJ`, `divisionD`, `arrive`, `typeCourrier`, `destinataire`) VALUES
(39, 1, '2022-05-13', '2022-05-10', 'demande de mariage', 'ana.sql', 11, NULL, '3', '1');

-- --------------------------------------------------------

--
-- Structure de la table `destinataire`
--

CREATE TABLE `destinataire` (
  `idDest` int(100) NOT NULL,
  `nomDest` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `destinataire`
--

INSERT INTO `destinataire` (`idDest`, `nomDest`) VALUES
(1, 'قيادة الصخور     '),
(2, 'وزارة الداخلية');

-- --------------------------------------------------------

--
-- Structure de la table `division`
--

CREATE TABLE `division` (
  `idDivision` int(100) NOT NULL,
  `nomD` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `division`
--

INSERT INTO `division` (`idDivision`, `nomD`, `description`) VALUES
(1, 'DBM', '01112'),
(3, 'DAS', '01113'),
(8, 'DAEC', '01114'),
(9, 'RH', '01115'),
(10, 'DFL', '01116'),
(11, 'DUE', '01117'),
(12, 'superUser', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_19_102302_create_docteurs_table', 1),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(7, '2022_05_03_144144_create_depart_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `objet`
--

CREATE TABLE `objet` (
  `idObjet` int(100) NOT NULL,
  `typeObjet` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `objet`
--

INSERT INTO `objet` (`idObjet`, `typeObjet`) VALUES
(1, 'message'),
(2, 'visas'),
(3, 'plaintes'),
(4, 'cahier d\'endurance'),
(5, 'décisions fiscales');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

CREATE TABLE `permission` (
  `idPermission` int(12) NOT NULL,
  `nameP` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `piece`
--

CREATE TABLE `piece` (
  `idPiece` int(12) NOT NULL,
  `chemin` varchar(100) DEFAULT NULL,
  `Dep` int(100) DEFAULT NULL,
  `Arr` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reponsessystem`
--

CREATE TABLE `reponsessystem` (
  `IDREP` int(11) NOT NULL,
  `REP` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `idRole` int(30) NOT NULL,
  `nameR` varchar(100) DEFAULT NULL,
  `user` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `transfered`
--

CREATE TABLE `transfered` (
  `idTranf` int(100) NOT NULL,
  `idCourrier` int(100) DEFAULT NULL,
  `idDivis` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `transfered`
--

INSERT INTO `transfered` (`idTranf`, `idCourrier`, `idDivis`) VALUES
(45, 28, 3),
(46, 28, 3),
(47, 28, 1),
(48, 28, 10),
(49, 28, 3),
(50, 28, 1),
(51, 28, 10);

-- --------------------------------------------------------

--
-- Structure de la table `transferer`
--

CREATE TABLE `transferer` (
  `idTranf` int(100) NOT NULL,
  `idCour` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`idCour`)),
  `idDivs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`idDivs`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `transferer`
--

INSERT INTO `transferer` (`idTranf`, `idCour`, `idDivs`) VALUES
(4, '\"12\"', '\"3\"'),
(5, '\"12\"', '\"1\"'),
(6, '\"13\"', '\"3\"'),
(7, '\"13\"', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divisionUser` int(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `divisionUser`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'abderrahm', 'abderrahman@email.com', 10, NULL, '$2y$10$5MgZ7kInyFY1RA6dA7Ot..I/SCrNMVctde186B06Boj3UFUk850Cu', NULL, NULL, NULL, NULL, NULL),
(4, 'admin', 'admin@email.com', 12, NULL, '$2y$10$ourfdD/E4siVuowJDn/nF.ORyKRl65g5loYdtQDwomh5sAGI9oQX2', NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arrive`
--
ALTER TABLE `arrive`
  ADD PRIMARY KEY (`idArrive`),
  ADD KEY `fk_dest` (`destin`);

--
-- Index pour la table `depart`
--
ALTER TABLE `depart`
  ADD PRIMARY KEY (`idDepart`),
  ADD KEY `fk_d` (`arrive`),
  ADD KEY `divisionD` (`divisionD`);

--
-- Index pour la table `destinataire`
--
ALTER TABLE `destinataire`
  ADD PRIMARY KEY (`idDest`);

--
-- Index pour la table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`idDivision`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objet`
--
ALTER TABLE `objet`
  ADD PRIMARY KEY (`idObjet`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`idPermission`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `piece`
--
ALTER TABLE `piece`
  ADD PRIMARY KEY (`idPiece`),
  ADD KEY `fk` (`Dep`),
  ADD KEY `fk_A` (`Arr`);

--
-- Index pour la table `reponsessystem`
--
ALTER TABLE `reponsessystem`
  ADD PRIMARY KEY (`IDREP`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Index pour la table `transfered`
--
ALTER TABLE `transfered`
  ADD PRIMARY KEY (`idTranf`),
  ADD KEY `fk_idC` (`idCourrier`),
  ADD KEY `fk_idDiv` (`idDivis`);

--
-- Index pour la table `transferer`
--
ALTER TABLE `transferer`
  ADD PRIMARY KEY (`idTranf`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_User` (`divisionUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arrive`
--
ALTER TABLE `arrive`
  MODIFY `idArrive` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `depart`
--
ALTER TABLE `depart`
  MODIFY `idDepart` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `destinataire`
--
ALTER TABLE `destinataire`
  MODIFY `idDest` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `division`
--
ALTER TABLE `division`
  MODIFY `idDivision` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `objet`
--
ALTER TABLE `objet`
  MODIFY `idObjet` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `permission`
--
ALTER TABLE `permission`
  MODIFY `idPermission` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `piece`
--
ALTER TABLE `piece`
  MODIFY `idPiece` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transfered`
--
ALTER TABLE `transfered`
  MODIFY `idTranf` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `transferer`
--
ALTER TABLE `transferer`
  MODIFY `idTranf` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `arrive`
--
ALTER TABLE `arrive`
  ADD CONSTRAINT `fk_dest` FOREIGN KEY (`destin`) REFERENCES `destinataire` (`idDest`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `depart`
--
ALTER TABLE `depart`
  ADD CONSTRAINT `depart_ibfk_1` FOREIGN KEY (`divisionD`) REFERENCES `division` (`idDivision`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_d` FOREIGN KEY (`arrive`) REFERENCES `arrive` (`idArrive`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `piece`
--
ALTER TABLE `piece`
  ADD CONSTRAINT `fk` FOREIGN KEY (`Dep`) REFERENCES `depart` (`idDepart`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_A` FOREIGN KEY (`Arr`) REFERENCES `arrive` (`idArrive`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `transfered`
--
ALTER TABLE `transfered`
  ADD CONSTRAINT `fk_idC` FOREIGN KEY (`idCourrier`) REFERENCES `arrive` (`idArrive`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_idDiv` FOREIGN KEY (`idDivis`) REFERENCES `division` (`idDivision`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_User` FOREIGN KEY (`divisionUser`) REFERENCES `division` (`idDivision`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
