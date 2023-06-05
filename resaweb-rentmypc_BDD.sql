-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 05 juin 2023 à 20:43
-- Version du serveur : 10.3.39-MariaDB
-- Version de PHP : 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rabarison_resaweb_rentmypc`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories_pc_portables`
--

CREATE TABLE `categories_pc_portables` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `categories_pc_portables`
--

INSERT INTO `categories_pc_portables` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Standard'),
(2, 'Pro'),
(3, 'Premium');

-- --------------------------------------------------------

--
-- Structure de la table `pc_portables`
--

CREATE TABLE `pc_portables` (
  `id` int(11) NOT NULL,
  `ext_id_catégorie` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `pc_portables`
--

INSERT INTO `pc_portables` (`id`, `ext_id_catégorie`, `nom`, `image`, `description`, `prix`) VALUES
(1, 1, 'Asuz Zenbook Pro 15 OLED', 'img/pc_portables/asuz_zenbook_pro_15_OLED.png', 'Performances tout-terrain\r\n\r\nLe ZenBook Pro 15 OLED dispose du processeur AMD Ryzen™ 9 5900HX qui vous offre des performances de niveau supérieur afin que vous puissiez accomplir avec brio toute tâche créative, quelle que soit son exigence. Le refroidissement de l\'ordinateur portable est assuré par la technologie exclusive ASUS IceCool Pro, qui comprend deux ventilateurs et trois caloducs, aidant ainsi le ZenBook Pro 15 OLED à fournir en toute fiabilité toute la puissance nécessaire à une créativité sans effort. \r\n\r\nHaut en couleurs\r\n\r\nLes PC portables ASUS équipés d’une dalle OLED sont capables d\'afficher un niveau de détail et de réalisme absolument exceptionnel notamment grâce à l\'espace de couleurs 100 % DCI-P3. Cela signifie que les couleurs reproduites à l\'écran sont plus riches et vives pour vos projets artistiques mais aussi pour mettre en valeur tout type de contenu.\r\n\r\nTrue Black : Percevoir l\'imperceptible\r\n\r\nLes PC portables ASUS OLED reproduisent les noirs à la perfection. Lorsqu\'ils affichent du noir sur une dalle OLED, le pixel est simplement éteint pour produire la nuance la plus foncée possible. Vous profitez ainsi d\'images claires et nettes mêmes dans les zones les plus sombres de votre image. Vous serez surpris de constater tous les nouveaux détails à découvrir dans vos films préférés !\r\n\r\nForce et élégance\r\n\r\nLe design épuré du ZenBook Pro 15 OLED s\'intègre parfaitement à tout environnement professionnel. Il présente une finition Pine Grey, subtile et raffinée, avec sur le couvercle une version spéciale décentrée du revêtement en métal filé de l\'emblématique ZenBook. Il est subtil, unique et sophistiqué, et ajoute une touche de fraîcheur à votre espace de travail créatif.', 325),
(2, 2, 'DELL G15', 'img/pc_portables/dell_g15.png', 'GARDEZ L\'ŒIL SUR VOTRE OBJECTIF\r\n \r\nLa carte graphique GeForce® RTX 3050 Ti met à votre disposition les performances graphiques révolutionnaires de l’architecture NVIDIA Turing™. Bénéficiez d’un rendu graphique ultra-rapide dans les meilleurs jeux du moment, y compris les plus récents. Enrichissez votre expérience de jeu avec GeForce GTX.\r\n\r\nCONÇU POUR DOPER L’ACTION\r\n\r\nAvec le processeur Intel Core i5 accompagné de 8 Go de mémoire DDR4 vous pourrez profiter de performances puissantes que vous soyez en train de jouer à vos jeux favoris ou en plein streaming\r\n\r\nNI CHAUD NI FROID\r\n\r\nLa conception thermique inspirée par Alienware intègre une double prise d’air au niveau du haut du clavier et du bas du G15. Cet air est ensuite expulsé par les quatre orifices situés sur les côtés et à l’arrière afin d’optimiser la circulation d’air sur les tuyaux en cuivre pour optimiser le refroidissement et la dissipation thermique.\r\n\r\nUNE IMMERSION TOTALE\r\n\r\nL\'écran 120 Hz Full HD garantit un gaming rapide, facile et précis. Indispensable pour être réactif lors de vos matchs.\r\n\r\nSON CAPTIVANT\r\n\r\nLes deux haut-parleurs équipés de la technologie 3D Audio for Gamers de Nahimic offrent aux joueurs une qualité sonore exceptionnelle à chaque plan d’attaque.', 200),
(3, 3, 'Razer Blade 18 ', 'img/pc_portables/razer_blade_18.png', 'LE REMPLAÇANT D\'ORDINATEUR DE BUREAU ULTIME\r\n \r\nCombinant parfaitement les performances d\'un ordinateur de bureau et la conception d\'un PC portable, le nouveau Razer Blade 18 définit une nouvelle norme pour les ordinateurs portables de 18 pouces. Doté d\'une carte graphique NVIDIA® GeForce™ RTX 4090 avec une puissance graphique totale (TGP) maximale et des derniers processeurs Intel® Core™ i9 HX de 13e génération, le Razer Blade 18 est l\'ordinateur portable le plus puissant que nous ayons jamais conçu. Avec un superbe écran QHD+ 18 pouces, une webcam nette de 5 MP et 6 haut-parleurs avec THX Spatial Audio, le nouveau Razer Blade 18 offre une expérience de bureau où que vous décidiez de vous installer.\r\n\r\nUN REFROIDISSEMENT EXCEPTIONNELLEMENT EFFICACE\r\n\r\nPour maintenir des performances élevées et des températures basses, le Razer Blade 18 est doté de la plus grande chambre à vapeur que nous ayons jamais créée, associée à un système à 3 ventilateurs spécialement conçu pour une efficacité thermique maximale.\r\n\r\nCHARGEUR GAN ULTRA-COMPACT\r\n\r\nAvec une taille plus petite et une puissance de sortie plus élevée, transportez facilement le Razer Blade 18 et gardez-le prêt à l’emploi à tout moment. \r\n\r\nREVÊTEMENT ANTI-EMPREINTES DIGITALES\r\n\r\nLe Razer Blade 18 a été conçu pour ne pas s\'encrasser lorsqu\'il est utilisé ou manipulé, ce qui lui permet de conserver un aspect propre et professionnel en toutes circonstances.', 800),
(4, 3, 'Apple MacBook Pro M2 Max 16\" Gris sidéral', 'img/pc_portables/macbook_pro_m2_max.png', 'M2 MAX\r\n \r\nLa puce M2 Max, la plus puissante et la plus économe en énergie jamais vue sur un ordinateur portable pro, est conçue pour aider les pros à repousser les limites de leur ingéniosité et de leur créativité. Dotée du même CPU 12 cœurs nouvelle génération que la M2 Pro, la M2 Max intègre deux fois plus de bande passante mémoire, jusqu’à trois fois plus de mémoire unifiée et jusqu’à 38 cœurs de GPU. De quoi faire des rendus d’effets, fusionner des panoramas immenses et concevoir des formes géométriques 3D spectaculaires à une échelle inédite.\r\n\r\nLIQUID RETINA XDR\r\n\r\nLa gamme dynamique extrême affiche des tons clairs d’une grande finesse, un extra­ordinaire niveau de détail dans les zones d’ombre et des couleurs éclatantes d’une remarquable fidélité. Chaque écran est calibré en usine et propose des modes de référence pro pour tout ce qui est HDR : étalonnage couleur, photographie, design graphique et impression.\r\nPROMOTION\r\n\r\nAvec des taux de rafraîchissement atteignant 120 Hz, ProMotion s’adapte automati­quement au mouvement du contenu, ce qui améliore considé­rablement la fluidité et la réactivité de tout ce que vous faites – du défilement d’une simple page web au gaming de haut vol. Les pros du montage vidéo peuvent également choisir un taux de rafraî­­chisse­ment fixe qui s’aligne précisément sur leurs séquences.\r\n\r\nL’AIR DE RIEN.\r\n\r\nGrâce à l’efficacité énergétique des puces Apple, les ventilateurs n’ont même pas besoin de se déclen­cher pour la plupart des tâches courantes. Et grâce aux systèmes thermiques avancés, ils tournent à bas régime même quand il faut gérer de lourdes tâches.\r\n\r\nSYSTÈME AUDIO À SIX HAUT-PARLEURS\r\n\r\nQuatre woofers à annulation de force livrent des basses plus profondes et un son riche et ample. Les tweeters hautes performances restituent les voix avec plus d’ampleur et de clarté. Et l’Audio spatial crée une scène sonore tridimen­sionnelle sophistiquée lorsque vous diffusez de la musique ou de la vidéo avec Dolby Atmos.\r\n\r\nTOUCH ID, RICHE IDÉE\r\n\r\nLe Magic Keyboard est doté d’une rangée de touches de fonction grand format et de Touch ID, qui vous permet de déverrouiller votre Mac et vous connecter aux apps et sites web de façon rapide, facile et sécurisée.', 1200),
(5, 2, 'Asus ROG Strix G17', 'img/pc_portables/asus-rog-strix-g17.png', 'LA DOMINATION DU ESPORT\r\n\r\nLe dernier processeur AMD Ryzen™ 9 7845HX, associé à un GPU pour ordinateur portable NVIDIA® GeForce RTX™ 4060 avec un TGP maximal de 140W, ainsi qu\'un Switch MUX avec NVIDIA Advanced Optimus constituent les piliers du Strix G17 2023. Le métal liquide Conductonaut Extreme sur le processeur permet au Strix G17 de booster le processeur plus haut, plus longtemps. \r\n\r\nCONCURRENCE HERTZIENNE\r\n\r\nEn tant que machine gaming spécialement conçue, le Strix G17 offre des options d\'écran allant jusqu\'à QHD 240Hz et FHD 144Hz ainsi que la prise en charge de NVIDIA® G-SYNC. Les écrans à haute fréquence de rafraîchissement sont essentiels pour les jeux compétitifs, car ils permettent de fluidifier les animations et de suivre plus facilement les mouvements des ennemis.\r\n\r\nAMÉLIORE VOTRE EXPÉRIENCE\r\n\r\nLes composants gaming de haut niveau génèrent de la chaleur, ce qui peut avoir un impact sur les performances et les niveaux sonores. Le Strix G17 utilise le système ROG Intelligent Cooling™ pour garder les températures sous contrôle. Le processus commence par la présence de Métal liquide Conductonaut Extreme sur le CPU, abaissant les températures jusqu\'à 15°C par rapport aux pâtes thermiques traditionnelles. Les quatre sorties d\'aération permettent à l\'ordinateur portable de se débarrasser de l\'excès de chaleur aussi efficacement que possible. ', 500),
(6, 1, 'ASUS TUF Gaming F17', 'img/pc_portables/asus-tuf-gaming-f17.png', 'RELEVEZ TOUS LES DÉFIS\r\n\r\nArmé de caractéristiques l\'aidant à affronter toutes les situations, le TUF Gaming F17 délivre des performances de haut vol pour le gaming, le streaming, etc. Son processeur Intel® Core™ i5 12ème génération est capable de prendre en charge les tâches les plus complexes. Les visuels de vos jeux favoris seront plus fluides grâce au GPU GeForce RTX™ 3050 qui offre un nombre d\'images par seconde élevé sur de nombreux jeux récents. \r\n\r\nFONCEZ JUSQU\'À LA VICTOIRE\r\n \r\nJouez à une vitesse impressionnante avec la dalle IPS 144 Hz du TUF Gaming F17. La technologie Adaptive Sync synchronise la fréquence de rafraîchissement de l\'écran avec celle du processeur graphique afin de réduire les lags, les saccades au niveau de l\'IPS et élimine les déchirures de l\'image pour des graphismes ultra-fluides. \r\n\r\nREFROIDISSEMENT LONGUE DURÉE\r\n\r\nLe refroidissement du TUF Gaming F17 lui garantit une fiabilité considérable sur le long terme tout en prolongeant sa durée de vie. Les quatre caloducs et trois radiateurs dissipent la chaleur générée par vos composants afin qu\'ils maintiennent une température optimale. \r\n\r\nOPTIMISÉ POUR LE JEU\r\n \r\nÉquipez-vous d\'un clavier similaire à ceux des PC de bureau gaming, afin d\'être plus à l\'aise lorsque vous jouez. Le rétroéclairage RGB du PC vous permet de personnaliser son style et les touches ZQSD mises en valeur vous permettent de visualiser plus rapidement vos commandes de mouvements. La technologie Overstroke accélère la réactivité des touches à chaque frappe tandis que le N-Key Rollover enregistre précisément chaque frappe, même lors des combats les pus acharnés. Fidèles à l\'ADN TUF, les touches ultrarésistantes supportent chacune plus de 20 millions de frappes afin d\'améliorer la fiabilité de votre clavier mais aussi votre précision au combat.', 200),
(7, 3, 'ASUS ROG Strix G16', 'img/pc_portables/asus-rog-strix-g16.png', 'AMÉLIOREZ VOTRE JEU\r\n\r\nAlimenté par un processeur 13e Gen Intel® Core™ i7-13650HX et un GPU pour ordinateur portable NVIDIA GeForce RTX 4060, préparez-vous à faire trembler la concurrence dans les derniers jeux. Accompagné d\'un Switch MUX dédié et de NVIDIA Advanced Optimus, le G16 libère le véritable potentiel de son matériel. Grâce au stockage SSD PCIe Gen4x4 et 16 Go de RAM DDR5, les immenses bibliothèques de jeux et les sessions intenses de multitâche n\'effraient pas cette machine gaming.\r\n\r\nROG NEBULA DISPLAY\r\n \r\nPour la toute première fois, cette machine de 16 pouces offre un écran Nebula QHD+ 240Hz. Une dalle 16:10 affichant une luminosité de 500 nits, une couverture DCI-P3 à 100 % et un temps de réponse de 3 ms, le Strix G16 offre une précision au pixel près, même dans les combats les plus acharnés. \r\nROG INTELLIGENT COOLING\r\n\r\nPour accueillir des composants aussi puissants, le châssis et la carte mère du Strix G16 ont tous deux été repensés pour accueillir le nouveau dissipateur thermique pleine largeur, dont les ailettes en cuivre ont été rapprochées des évents d\'échappement pour un refroidissement plus efficace. De plus, la plupart des ordinateurs portables gaming sont dotés d\'un système de refroidissement à deux ventilateurs, mais le G16 a pu repousser encore plus loin les limites de la performance grâce à l\'introduction d\'un troisième ventilateur qui contribue à maintenir le GPU et la VRAM au frais. Associé à sept caloducs et au métal liquide Conductonaut Extreme sur le CPU et le GPU, le système de refroidissement du G16 est une merveille d\'ingénierie.\r\n\r\nLANCEZ L’OFFENSIVE\r\n\r\nLa technologie Overstroke permet un travail et un jeu sublimes, en réduisant l\'actionnement des touches et en améliorant la réactivité. Conçu pour les joueurs, ce clavier présente des touches de fonction espacées qui permettent d\'identifier plus intuitivement les touches de raccourcis. Ainsi, vous accédez plus rapidement à vos principales commandes de jeu. ', 1500),
(8, 1, 'Lenovo IdeaPad Gaming 3', 'img/pc_portables/lenovo-ideapad-gaming-3.png', 'TOUT POUR LA DOMINATION\r\n\r\nAvec le portable IdeaPad Gaming 3 et son écran qui permet de décupler vos réflexes, la victoire n’est plus qu’une formalité. L’écran Full HD de 39,62 cm (15,6\") offre des images nettes et sans artefacts qui vous permettront de suivre et d’abattre plusieurs cibles et de vous constituer un tableau de chasse légendaire. Grâce au port HDMI 2.0, vous pouvez facilement connecter un moniteur ou un téléviseur supplémentaire pour profiter pleinement d’une expérience sur grand écran.\r\n\r\nPRÊT À PASSER AU NIVEAU SUPÉRIEUR ?\r\n\r\nExécutez vos jeux AAA préférés en toute fluidité, comme ils ont été développés pour les joueurs, grâce aux processeurs AMD Ryzen 5, aux cartes graphiques NVIDIA GeForce RTX 3060, à la mémoire DDR4 et aux options de stockage SSD M.2 PCIe NVMe. Ces puissantes caractéristiques vous permettent d’exécuter vos jeux en utilisant les paramètres d’affichage les plus élevés, afin que vous ayez toujours l’avantage de profiter de tous les détails de votre environnement de jeu.\r\n\r\nLA VICTOIRE EST ENTRE VOS MAINS\r\n\r\nPrenez place dans le cockpit : les commandes vont vous mener à une victoire glorieuse. Le clavier spacieux de l’IdeaPad Gaming 3 a été conçu pour les joueurs, avec une course des touches de 1,5 mm pour un contrôle ultime et un rétroéclairage bleu pour une meilleure visibilité des touches dans toutes les situations d’éclairage.', 275),
(9, 3, 'Lenovo Legion 5 Pro', 'img/pc_portables/lenovo-legion-5-pro.png', 'DES PERFORMANCES EXTRÊMES. UNE AUTONOMIE DE BATTERIE SANS COMPROMIS.\r\n\r\nGrâce aux tout nouveaux processeurs Intel Core i7 de 12ème génération, vous pouvez profiter de performances optimales lorsque vous jouez à vos compétitions de gaming sur un ordinateur portable fin et léger, le tout avec une excellente autonomie de la batterie. Ne faites plus jamais de compromis sur votre ordinateur portable quand vous jouez à vos jeux.\r\n\r\nPOUR LES JOUEURS COMME POUR LES CRÉATEURS\r\n\r\nDécouvrez des performances ultimes avec le processeur graphique NVIDIA® GeForce RTX™ nouvelle génération pour ordinateurs portables Série 30 pour les joueurs et les créateurs. Ultra-performant grâce à des cœurs Ray Tracing et Tensor et des multiprocesseurs de diffusion en continu, la RTX 3070 Ti offre des graphismes ultra réalistes, ainsi que de nouvelles fonctionnalités de pointe, le tout combiné à la puissance de l’IA.\r\nÉLARGISSEZ VOTRE ZONE GAGNANTE\r\n\r\nÉlevez-vous au-dessus des jeux Full HD pour atteindre un nouveau degré de supériorité visuelle avec le premier écran de jeu QHD 40,64 cm (16\") au monde, qui prend en charge la technologie NVIDIA G-Sync et AMD FreeSync. Celui-ci offre une densité de pixels 34 % supérieure, prend en charge la technologie Dolby Vision™ et VESA DisplayHDR™ 400 et assure une précision à 100 % des couleurs sRGB, avec une luminosité maximale de plus de 500 nits. Gardez toujours une longueur d’avance avec la technologie Overdrive, qui offre des taux de rafraîchissement allant jusqu’à 165 Hz et des temps de réponse de 3 ms.\r\n\r\nPLUS FRAIS. PLUS INTELLIGENT. COLDFRONT 3.0.\r\n\r\nLe Legion Coldfront 3.0 de Legion 5 Pro s’appuie sur toute une génération existante de système à fréquences d’horloge maximales pour garantir des heures de jeu sans aucune limitation, et pousse encore plus loin les performances thermiques de première classe. Il déploie un système d’admission intelligent, une conception à double ventilateur surpuissante, des orifices d’admission thermique sous les commutateurs du clavier et un système d’évacuation à quatre canaux.\r\nAUDIO 3D IMMERSIF NAHIMIC POUR LES GAMERS\r\n\r\nNahimic améliore considérablement votre expérience de jeu avec son audio 3D immersif et ses fonctionnalités attrayantes pour les gamers. Tirez un avantage concurrentiel avec le tracker sonore. Profitez d’une communication ultra-claire avec vos coéquipiers. Nahimic est une nouvelle façon de jouer et les gamers de Legion peuvent exclusivement profiter de BT Link, une solution audio innovante qui transforme n’importe quel haut-parleur Bluetooth en un système de son surround.\r\n\r\nFRAPPEZ FORT ET DANS LE MILLE\r\n\r\nLe clavier Legion TrueStrike est doté de boutons innovants pour une saisie souple et précise, permettant d’asséner des coups plus violents avec une force égale à chaque frappe. Cela vous permet de frapper les ennemis avec une précision extrême, de manière ultra-réactive et avec une efficacité implacable. La disposition de qualité supérieure est également éclairée par un rétroéclairage RVB à 4 zones.', 699),
(10, 2, 'Gigabyte Aero 15 OLED', 'img/pc_portables/gigabyte-aero-15-oled.png', 'AFFICHAGE VISUEL ÉPOUSTOUFLANT\r\n\r\nL\'AERO offre des affichages visuels d\'une clarté cristalline avec le superbe écran premium OLED 4K de 15,6 pouces qui offre une luminosité supplémentaire et correspond à la norme VESA Display HDR 400.Prend en charge une gamme de couleurs 100% DCI-P3 (25% de couleurs en plus que sRGB) et produit un temps de réponse d\'affichage ultra rapide de 1 milliseconde.Soyez prêt à accueillir l\'expérience visuelle la plus riche du monde.\r\n\r\nAUSSI RAPIDE QUE VOTRE IMAGINATION\r\n\r\nPas de compromis lorsqu’il s’agit de votre créativité. RTX Studio est un nouveau type de système ultra performant, alimenté par la puissante carte graphique NVIDIA RTX 3070, le tout dans un ordinateur portable ultra fin.\r\n\r\nPensé pour les créatifs et testé par des créatifs, l’ordinateur supporte les vidéos 8k, le ray tracing en temps réel et propose une assistance grâce à une intelligence artificielle. Chaque composant est calibré pour de la performance 3D, la justesse de couleur et la puissance nécessaire pour les créations visuelles. Pas de latence, de souffle ou de surchauffe.\r\nPROCESSEUR MOBILE INNOVANT\r\n\r\nUne créativité débridée implique des applications et logiciels multi-tâches avec une grande capacité de support. Afin de favoriser la fluidité du travail, l’essentiel est d’avoir un processeur puissant. L’AERO s’améliore avec le processeur Intel® Core™ H-series 11e génération offre des performances sur demande, n’importe où.\r\n\r\nLE PREMIER CADRE D’ÉCRAN AU MONDE DE 3 FACES 3MM\r\n\r\nUn espace de 15.6 pouces pour créer. Avec le premier cadre d’écran au monde de 3 faces 3mm, vous avez tout l’espace dont vous avez besoin pour créer, ainsi qu’une précision incroyable des rendus des couleurs grâce à un calibrage individuel en usine.\r\n\r\nChaque cadre d’écran de 3mm de la gamme AERO sont calibrés et certifié X-Rite Pantone, la technologie de renom, qui permet une grande précision et un plus large spectre de couleur dès l’allumage.\r\nPROCESSEUR MOBILE INNOVANT\r\n\r\nUne créativité débridée implique des applications et logiciels multi-tâches avec une grande capacité de support. Afin de favoriser la fluidité du travail, l’essentiel est d’avoir un processeur puissant. L’AERO s’améliore avec le processeur Intel® Core™ H-series 11e génération offre des performances sur demande, n’importe où.\r\n\r\nLE PREMIER CADRE D’ÉCRAN AU MONDE DE 3 FACES 3MM\r\n\r\nUn espace de 15.6 pouces pour créer. Avec le premier cadre d’écran au monde de 3 faces 3mm, vous avez tout l’espace dont vous avez besoin pour créer, ainsi qu’une précision incroyable des rendus des couleurs grâce à un calibrage individuel en usine.\r\n\r\nChaque cadre d’écran de 3mm de la gamme AERO sont calibrés et certifié X-Rite Pantone, la technologie de renom, qui permet une grande précision et un plus large spectre de couleur dès l’allumage.', 575),
(11, 3, 'Razer Blade 16', 'img/pc_portables/razer_blade_16.png', 'UNE PUISSANCE FOLLE\r\n \r\nQue ce soit pour les jeux AAA ou la création intensive de contenu, exécutez des tâches gourmandes en ressources sans aucun problème grâce au processeur mobile le plus puissant à base de silicium de haute qualité (Intel Core i9-13950HX). \r\n\r\nPLUS RAPIDE QUE JAMAIS POUR LES GAMEURS ET LES CRÉATEURS\r\n\r\nLes processeurs graphiques pour ordinateurs portables NVIDIA® GeForce RTX™ série 40 alimentent les ordinateurs portables les plus rapides du monde pour les gamers et les créateurs. Construits avec l’architecture NVIDIA Ada Lovelace extrêmement efficace, ces processeurs graphiques révolutionnent les performances avec le DLSS 3 alimenté par IA et permettent de créer des mondes virtuels réalistes grâce au full ray-tracing. \r\n \r\nUN ÉCRAN DE 16 POUCES AVEC UN CADRE DE 15 POUCES\r\n\r\nConçu avec des dimensions de châssis similaires à celles d’un ordinateur portable gaming de 15 pouces, le Razer Blade 16 ne perd rien en portabilité et gagne même en surface d’écran : une solution alliant le meilleur des deux mondes.\r\n\r\nECRAN BI-MODE\r\n\r\nProfitez en exclusivité d\'un écran bi-mode pour profitez de performances optimales quels que soient vos besoins. Un mode UHD+ 120 Hz idéal pour la création de contenu et un mode FHD+ 240 Hz idéal pour les jeux et la compétition. \r\n \r\nUN REFROIDISSEMENT EXCEPTIONNELLEMENT EFFICACE\r\n\r\nConçu avec des matériaux thermiques de pointe, le système dissipe silencieusement et efficacement la chaleur grâce à l’évaporation et à la condensation d’un fluide interne. Une caractéristique qui donne au Razer Blade 16 une forme compacte et davantage de puissance. Le système exploite au maximum ses bloqueurs thermiques de nanoparticules et ses composants de qualité serveur pour tirer le meilleur parti de chaque FPS.\r\n\r\nCHARGEUR GAN ULTRA-COMPACT\r\n\r\nSoyez prêt à emportez le Razer Blade 16 où que vous soyez grâce à un chargeur qui non seulement est plus rapide et plus économe en énergie que les adaptateurs standard, mais qui est aussi jusqu’à 60 % plus petit.', 875),
(12, 3, 'Apple MacBook Pro M2 Pro 14\" Gris Sidéral', 'img/pc_portables/macbook_pro_m2_pro.png', 'M2 PRO\r\n\r\nLa M2 Pro vous offre la puissance nécessaire pour réaliser des projets encore plus exigeants. Son CPU intégrant jusqu’à 12 cœurs et son Neural Engine nouvelle génération exécutent rapidement toutes les tâches professionnelles, du classement et de la retouche d’images aux simulations de mécanique des fluides numériques. Et son GPU pouvant intégrer jusqu’à 19 cœurs offre une augmentation spectaculaire des performances graphiques, aussi bien pour travailler que pour jouer.\r\n\r\nLIQUID RETINA XDR\r\n\r\nLa gamme dynamique extrême affiche des tons clairs d’une grande finesse, un extra­ordinaire niveau de détail dans les zones d’ombre et des couleurs éclatantes d’une remarquable fidélité. Chaque écran est calibré en usine et propose des modes de référence pro pour tout ce qui est HDR : étalonnage couleur, photographie, design graphique et impression.\r\nPROMOTION\r\n\r\nAvec des taux de rafraîchissement atteignant 120 Hz, ProMotion s’adapte automati­quement au mouvement du contenu, ce qui améliore considé­rablement la fluidité et la réactivité de tout ce que vous faites – du défilement d’une simple page web au gaming de haut vol. Les pros du montage vidéo peuvent également choisir un taux de rafraî­­chisse­ment fixe qui s’aligne précisément sur leurs séquences.\r\n\r\nL’AIR DE RIEN.\r\n\r\nGrâce à l’efficacité énergétique des puces Apple, les ventilateurs n’ont même pas besoin de se déclen­cher pour la plupart des tâches courantes. Et grâce aux systèmes thermiques avancés, ils tournent à bas régime même quand il faut gérer de lourdes tâches.\r\n\r\nSYSTÈME AUDIO À SIX HAUT-PARLEURS\r\n\r\nQuatre woofers à annulation de force livrent des basses plus profondes et un son riche et ample. Les tweeters hautes performances restituent les voix avec plus d’ampleur et de clarté. Et l’Audio spatial crée une scène sonore tridimen­sionnelle sophistiquée lorsque vous diffusez de la musique ou de la vidéo avec Dolby Atmos.\r\n\r\nTOUCH ID, RICHE IDÉE\r\n\r\nLe Magic Keyboard est doté d’une rangée de touches de fonction grand format et de Touch ID, qui vous permet de déverrouiller votre Mac et vous connecter aux apps et sites web de façon rapide, facile et sécurisée.', 1600),
(13, 3, 'Apple MacBook Pro M1 Pro (2021) 14\" Argent', 'img/pc_portables/macbook_pro_m1_pro.png', 'Supersonique\r\n \r\nLa M1 Pro booste les performances déjà exceptionnelles de l’architecture M1 pour répondre aux exigences poussées des pros. Même les projets les plus ambitieux se gèrent facilement grâce à un système qui mobilise jusqu’à 10 cœurs de CPU, jusqu’à 16 cœurs de GPU, un Neural Engine 16 cœurs et des moteurs médias dédiés à l’encodage et au décodage prenant en charge H.264, HEVC et les codecs ProRes.\r\n\r\nLiquid Retina XDR\r\n\r\nLe meilleur écran jamais intégré à un portable bénéficie de la gamme dynamique extrême (Extreme Dynamic Range, XDR) et d’un rapport de contraste de 1 000 000:1. Le contenu HDR s’anime dans les photos, vidéos et jeux en déployant des tons clairs d’une grande finesse, un extra­ordinaire niveau de détail dans les zones d’ombre et des couleurs éclatantes d’une remarquable fidélité. Chaque écran est calibré en usine et propose des modes de référence pro pour tout ce qui est HDR : étalonnage couleur, photographie, design graphique et impression.\r\nProMotion\r\n\r\nPour la première fois, ProMotion s’invite sur Mac et rend tout ce que vous faites – du défilement d’une simple page web au gaming de haut vol – super fluide et réactif, tout en réduisant la consommation d’énergie. Avec des taux de rafraîchissement atteignant 120 Hz, cette technologie adapte automati­quement le taux au mouvement du contenu. Les pros du montage vidéo peuvent également choisir un taux de rafraîchissement fixe qui s’aligne précisément sur leurs séquences.\r\n\r\nRien ne vous arrête. Surtout pas lui\r\n\r\nDes performances phénoménales alliées à une autonomie qui change la donne : c’est ça, l’efficacité énergétique d’une puce Apple. Une même charge vous permet de compiler jusqu’à quatre fois plus de code dans Xcode19 et de faire jusqu’à deux fois plus de retouche photo dans Lightroom Classic20. Et à la différence des autres ordinateurs portables, le MacBook Pro livre des performances exception­nelles, qu’il soit branché ou non.\r\n\r\nCentre aéré\r\n\r\nNos systèmes thermiques de pointe déplacent 50 % d’air en plus, même à des vitesses de ventilateur réduites. Et grâce à l’efficacité éner­gétique de la puce Apple, pour un grand nombre de vos activités quoti­diennes, les ventilateurs n’ont même pas besoin de se déclencher.\r\nSSD avec un grand V\r\n\r\nAttention les yeux : le SSD d’une capacité pouvant atteindre 8 To vous permet de bénéficier de vitesses de lecture jusqu’à 7,4 Go/s23, soit deux fois plus rapides que la génération précédente24. Vous pouvez donc ouvrir instanta­nément plusieurs vidéos 8K ou stocker des centaines de milliers de photos RAW à la fois.\r\n\r\nSouriez, c’est une caméra HD 1080p\r\n\r\nAujourd’hui, garder le contact est plus primordial que jamais. C’est pourquoi la caméra du nouveau MacBook Pro offre une résolution deux fois plus importante – 1080p – et utilise un objectif doté d’une ouverture plus large qui laisse pénétrer plus de lumière. Avec en plus un capteur d’image plus grand qui dispose d’un plus grand nombre de pixels effectifs, la caméra du nouveau MacBook Pro livre des performances deux fois meilleures par faible éclairage.\r\n\r\nTrois micros de qualité studio\r\n\r\nGrâce à des micros réduisant jusqu’à 60 % le bruit de fond, le MacBook Pro est en mesure de capter les sons les plus subtils. Et l’ensemble de trois micros exploite la technologie de beamforming directionnel pour que votre voix se fasse toujours parfaitement entendre.\r\n\r\nSystème audio à six haut-parleurs\r\n\r\nQuatre woofers à annulation de force révèlent des notes jusqu’à un demi-octave plus bas et emplissent la pièce avec jusqu’à 80 % de basses supplémen­taires. Quant aux tweeters hautes performances, ils restituent les voix avec plus d’ampleur et de clarté.', 980);

-- --------------------------------------------------------

--
-- Structure de la table `reservations_pc_portables`
--

CREATE TABLE `reservations_pc_portables` (
  `id` int(11) NOT NULL,
  `id_pc_portable` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `duree_reservation` varchar(20) NOT NULL,
  `date_reservation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `reservations_pc_portables`
--

INSERT INTO `reservations_pc_portables` (`id`, `id_pc_portable`, `nom`, `prenom`, `email`, `duree_reservation`, `date_reservation`) VALUES
(1, 0, 'test', 'test', 'test@gmail.com', '21', '0000-00-00'),
(2, 0, 'test', 'test', 'test@gmail.com', '22', '0000-00-00'),
(3, 3, 'test', 'test', 'test@gmail.com', '22', '0000-00-00'),
(4, 1, 'test', 'test', 'test@gmail.com', '37', '0000-00-00'),
(5, 1, 'test', 'test', 'test@gmail.com', '36', '0000-00-00'),
(6, 1, 'Chalat', 'Corentin', 'corentin@yopmail.com', '60', '0000-00-00'),
(7, 12, 'test', 'test', 'andyrabarison92@gmail.com', '36', '0000-00-00'),
(8, 8, 'test', 'test', 'andyrabarison92@gmail.com', '20', '0000-00-00'),
(9, 6, 'dfdfdfdfdff', 'fdkfd', 'andyrabarison92@gmail.com', '48', '0000-00-00'),
(10, 2, 'JSPLENOM', 'Clement', 'andyrabarison92@gmail.com', '60', '0000-00-00'),
(11, 2, 'JSPLENOM', 'Clement', 'andyrabarison92@gmail.com', '60', '0000-00-00'),
(12, 1, 'test', 'test', 'andyrabarison92@gmail.com', '1', '0000-00-00'),
(13, 6, 'porn', 'hhh', 'gvgvgyu@cfgdfgdf.com', '60', '0000-00-00'),
(14, 6, 'test', 'test', 'shadow75624@gmail.com', '17', '0000-00-00'),
(15, 5, 'Bansront', 'Thomas', 'electrex.178@gmail.com', '60', '0000-00-00'),
(16, 6, 'test', 'test', 'andyrabarison92@gmail.com', '16', '0000-00-00'),
(17, 1, 'test1', 'test', 'andyrabarison92@gmail.com', '1', '2023-06-06'),
(18, 6, 'test', 'test', 'andyrabarison92@gmail.com', '60', '2023-06-21'),
(19, 6, 'test', 'test', 'andyrabarison92@gmail.com', '1', '2023-06-28'),
(20, 6, '', '', '', '', '0000-00-00'),
(21, 6, 'test', 'test', 'andyrabarison92@gmail.com', '1', '2023-06-21'),
(22, 6, 'test', 'test', 'andyrabarison92@gmail.com', '1', '2023-06-23'),
(23, 6, 'test', 'TEST', 'andyrabarison92@gmail.com', '60', '2023-06-06'),
(24, 6, 'test', 'TEST', 'andyrabarison92@gmail.com', '1', '2023-06-15'),
(25, 6, 'test', 'TEST', 'andyrabarison92@gmail.com', '1', '2023-06-08'),
(26, 1, 'TEST', 'Test', 'andyrabarison92@gmail.com', '55', '2023-06-14'),
(27, 11, 'TEST', 'Test', 'andyrabarison92@gmail.com', '24', '2023-09-11'),
(28, 6, 'JULIEN', 'Valentin', 'andyrabarison92@gmail.com', '34', '2023-06-30'),
(29, 9, 'test', 'test', 'andyrabarison92@gmail.com', '15', '2023-06-16'),
(30, 13, 'Rabarison', 'Allan', 'tsurey95@gmail.com', '12', '2023-06-15'),
(31, 8, 'Rabarison', 'Allan', 'test@gmail.com', '6', '2023-06-12'),
(32, 10, 'RABARISON', 'Anjaratiana', 'andyrabarison92@gmail.com', '36', '2023-08-10');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories_pc_portables`
--
ALTER TABLE `categories_pc_portables`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `pc_portables`
--
ALTER TABLE `pc_portables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_catégorie` (`ext_id_catégorie`);

--
-- Index pour la table `reservations_pc_portables`
--
ALTER TABLE `reservations_pc_portables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pc_portable` (`id_pc_portable`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories_pc_portables`
--
ALTER TABLE `categories_pc_portables`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `pc_portables`
--
ALTER TABLE `pc_portables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `reservations_pc_portables`
--
ALTER TABLE `reservations_pc_portables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories_pc_portables`
--
ALTER TABLE `categories_pc_portables`
  ADD CONSTRAINT `categories_pc_portables_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `pc_portables` (`ext_id_catégorie`);

--
-- Contraintes pour la table `pc_portables`
--
ALTER TABLE `pc_portables`
  ADD CONSTRAINT `pc_portables_ibfk_1` FOREIGN KEY (`ext_id_catégorie`) REFERENCES `categories_pc_portables` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
