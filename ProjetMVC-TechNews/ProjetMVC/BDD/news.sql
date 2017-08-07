-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 26 Février 2017 à 21:27
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `news`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `IDARTICLE` int(11) NOT NULL,
  `IDAUTEUR` int(11) NOT NULL,
  `IDCATEGORIE` int(11) NOT NULL,
  `TITREARTICLE` char(150) NOT NULL,
  `CONTENUARTICLE` text NOT NULL,
  `FEATUREDIMAGEARTICLE` varchar(50) DEFAULT NULL,
  `SPECIALARTICLE` tinyint(1) NOT NULL,
  `SPOTLIGHTARTICLE` tinyint(1) NOT NULL,
  `DATECREATIONARTICLE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`IDARTICLE`, `IDAUTEUR`, `IDCATEGORIE`, `TITREARTICLE`, `CONTENUARTICLE`, `FEATUREDIMAGEARTICLE`, `SPECIALARTICLE`, `SPOTLIGHTARTICLE`, `DATECREATIONARTICLE`) VALUES
(1, 1, 2, 'Tip Aligning Digital Marketing with Business Goals and Objectives', ' <p> <span class="dropcap ">N</span>ulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Sed porttitor lectus nibh.</p><p>Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus.</p><div class="post-detail-img"><img alt="" src="http://localhost/POO/technews/public/images/product/4.jpg" /></div><p class="quote">Sed porttitor lectus nibh. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p><p>Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Pellentesque in ipsum id orci porta dapibus.</p>', '3.jpg', 0, 1, '2017-02-26 08:37:18'),
(2, 2, 3, 'Six big ways MacOS Sierra is going to change your Apple experience', ' <p> <span class="dropcap ">N</span>ulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Sed porttitor lectus nibh.</p><p>Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus.</p><div class="post-detail-img"><img alt="" src="http://localhost/POO/technews/public/images/product/4.jpg" /></div><p class="quote">Sed porttitor lectus nibh. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p><p>Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Pellentesque in ipsum id orci porta dapibus.</p>', '4.jpg', 0, 0, '2017-02-26 10:19:18'),
(3, 2, 2, 'Will Anker be the company to finally put a heads-up display in my car', ' <p> <span class="dropcap ">N</span>ulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Sed porttitor lectus nibh.</p><p>Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus.</p><div class="post-detail-img"><img alt="" src="http://localhost/POO/technews/public/images/product/4.jpg" /></div><p class="quote">Sed porttitor lectus nibh. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p><p>Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Pellentesque in ipsum id orci porta dapibus.</p>', '5.jpg', 1, 0, '2017-02-26 10:53:18'),
(4, 1, 3, 'Windows 10 Now Running on 400 Million Active Devices, Says Microsoft', ' <p> <span class="dropcap ">N</span>ulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Sed porttitor lectus nibh.</p><p>Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus.</p><div class="post-detail-img"><img alt="" src="http://localhost/POO/technews/public/images/product/4.jpg" /></div><p class="quote">Sed porttitor lectus nibh. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p><p>Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Pellentesque in ipsum id orci porta dapibus.</p>', '1.jpg', 0, 0, '2017-02-26 10:53:18'),
(5, 1, 3, '400 million machines are now running Windows 10', ' <p> <span class="dropcap ">N</span>ulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Sed porttitor lectus nibh.</p><p>Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus.</p><div class="post-detail-img"><img alt="" src="http://localhost/POO/technews/public/images/product/4.jpg" /></div><p class="quote">Sed porttitor lectus nibh. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p><p>Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Pellentesque in ipsum id orci porta dapibus.</p>', '7.jpg', 0, 1, '2017-02-26 10:53:18'),
(6, 2, 2, '7 essential lessons from agency marketing to startup growth', ' <p> <span class="dropcap ">N</span>ulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Sed porttitor lectus nibh.</p><p>Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus.</p><div class="post-detail-img"><img alt="" src="http://localhost/POO/technews/public/images/product/4.jpg" /></div><p class="quote">Sed porttitor lectus nibh. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p><p>Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Pellentesque in ipsum id orci porta dapibus.</p>', '6.jpg', 0, 0, '2017-02-26 10:53:18');

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `IDAUTEUR` int(11) NOT NULL,
  `NOMAUTEUR` varchar(50) DEFAULT NULL,
  `PRENOMAUTEUR` varchar(50) DEFAULT NULL,
  `EMAILAUTEUR` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`IDAUTEUR`, `NOMAUTEUR`, `PRENOMAUTEUR`, `EMAILAUTEUR`) VALUES
(1, 'LIEGEARD', 'Hugo', 'wf3@hl-media.fr'),
(2, 'Sylviane', 'PEREZ', 'sylviane.perez@wf3.fr');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `IDCATEGORIE` int(11) NOT NULL,
  `LIBELLECATEGORIE` varchar(50) NOT NULL,
  `ROUTECATEGORIE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`IDCATEGORIE`, `LIBELLECATEGORIE`, `ROUTECATEGORIE`) VALUES
(1, 'Accueil', ''),
(2, 'Business', 'news/business'),
(3, 'Computing', 'news/computing'),
(4, 'Tech', 'news/tech');

-- --------------------------------------------------------

--
-- Structure de la table `referencer`
--

CREATE TABLE `referencer` (
  `IDARTICLE` int(11) NOT NULL,
  `IDTAGS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `IDTAGS` int(11) NOT NULL,
  `LIBELLETAGS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`IDTAGS`, `LIBELLETAGS`) VALUES
(1, 'iPhone 7'),
(2, 'News'),
(3, 'Sport'),
(4, 'Apple'),
(5, 'Alcatel');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `view_articles`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `view_articles` (
`IDARTICLE` int(11)
,`IDAUTEUR` int(11)
,`IDCATEGORIE` int(11)
,`LIBELLECATEGORIE` varchar(50)
,`TITREARTICLE` char(150)
,`CONTENUARTICLE` text
,`FEATUREDIMAGEARTICLE` varchar(50)
,`SPECIALARTICLE` tinyint(1)
,`SPOTLIGHTARTICLE` tinyint(1)
,`DATECREATIONARTICLE` timestamp
,`NOMAUTEUR` varchar(50)
,`PRENOMAUTEUR` varchar(50)
,`EMAILAUTEUR` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure de la vue `view_articles`
--
DROP TABLE IF EXISTS `view_articles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_articles`  AS  select `article`.`IDARTICLE` AS `IDARTICLE`,`article`.`IDAUTEUR` AS `IDAUTEUR`,`article`.`IDCATEGORIE` AS `IDCATEGORIE`,`categorie`.`LIBELLECATEGORIE` AS `LIBELLECATEGORIE`,`article`.`TITREARTICLE` AS `TITREARTICLE`,`article`.`CONTENUARTICLE` AS `CONTENUARTICLE`,`article`.`FEATUREDIMAGEARTICLE` AS `FEATUREDIMAGEARTICLE`,`article`.`SPECIALARTICLE` AS `SPECIALARTICLE`,`article`.`SPOTLIGHTARTICLE` AS `SPOTLIGHTARTICLE`,`article`.`DATECREATIONARTICLE` AS `DATECREATIONARTICLE`,`auteur`.`NOMAUTEUR` AS `NOMAUTEUR`,`auteur`.`PRENOMAUTEUR` AS `PRENOMAUTEUR`,`auteur`.`EMAILAUTEUR` AS `EMAILAUTEUR` from ((`article` join `auteur`) join `categorie`) where ((`article`.`IDAUTEUR` = `auteur`.`IDAUTEUR`) and (`article`.`IDCATEGORIE` = `categorie`.`IDCATEGORIE`)) ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`IDARTICLE`),
  ADD KEY `FK_REDIGER` (`IDAUTEUR`),
  ADD KEY `FK_PLACER` (`IDCATEGORIE`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`IDAUTEUR`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`IDCATEGORIE`);

--
-- Index pour la table `referencer`
--
ALTER TABLE `referencer`
  ADD PRIMARY KEY (`IDARTICLE`,`IDTAGS`),
  ADD KEY `FK_REFERENCER2` (`IDTAGS`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`IDTAGS`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `IDARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `IDAUTEUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `IDCATEGORIE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `IDTAGS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_PLACER` FOREIGN KEY (`IDCATEGORIE`) REFERENCES `categorie` (`IDCATEGORIE`),
  ADD CONSTRAINT `FK_REDIGER` FOREIGN KEY (`IDAUTEUR`) REFERENCES `auteur` (`IDAUTEUR`);

--
-- Contraintes pour la table `referencer`
--
ALTER TABLE `referencer`
  ADD CONSTRAINT `FK_REFERENCER` FOREIGN KEY (`IDARTICLE`) REFERENCES `article` (`IDARTICLE`),
  ADD CONSTRAINT `FK_REFERENCER2` FOREIGN KEY (`IDTAGS`) REFERENCES `tags` (`IDTAGS`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
