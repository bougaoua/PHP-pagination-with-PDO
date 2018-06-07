-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 07 juin 2018 à 01:26
-- Version du serveur :  10.1.32-MariaDB
-- Version de PHP :  7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pagination`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `post_id` bigint(20) NOT NULL,
  `post_title` varchar(300) NOT NULL,
  `post_content` longtext NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`post_id`, `post_title`, `post_content`, `post_date`) VALUES
(1, ' Before it was developed ', 'ephemerally in lectures, or all at once in books. There was no public forum for incremental advances.', '2018-06-06 22:42:18'),
(2, 'The more sophisticated science', 'the harder it is to communicate results. Papers today are longer than ever and full of jargon and symbols', '2018-06-06 22:42:18'),
(3, 'Perhaps the paper itself is to blame', ' Scientific methods evolve now at the speed of software; the skill most in demand among physicists', '2018-06-06 22:43:04'),
(4, 'What would you get if you designed', 'the scientific paper from scratch today? A little while ago I spoke to Bret Victor, a researcher', '2018-06-06 22:43:04'),
(5, 'Victor gestured at what might be possible', 'He chose it both because it’s one of the most highly cited papers in all of science', '2018-06-06 22:43:49'),
(6, 'The Watts-Strogatz paper described', 'findings the way most papers do, with text, pictures, and mathematical symbols', '2018-06-06 22:43:49'),
(7, 'Strogatz admired Victor’s design', 'He later told me that it was a shame that in mathematics it’s been a tradition for hundreds', '2018-06-06 22:44:27'),
(8, 'Strogatz studies nonlinear dynamics', 'metronomes ticking, heart cells firing electrical impulses', '2018-06-06 22:44:27'),
(9, 'The key is that these systems go through', 'which Strogatz visualizes as dots running around circles: When a dot comes back ', '2018-06-06 22:45:11'),
(10, 'making little computer animations', 'animations of dots running around circles, with colors indicating their frequency', '2018-06-06 22:45:11'),
(11, 'the purple are the fast guys', 'I have these colored dots swirling around on my computer', '2018-06-06 22:46:09'),
(12, 'Software is a dynamic medium', 'This is, of course, the whole problem of scientific communication in a nutshell', '2018-06-06 22:46:13');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
