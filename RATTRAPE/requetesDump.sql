-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 04:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gg3`
--

-- --------------------------------------------------------

--
-- Table structure for table `catégories`
--

CREATE TABLE `catégories` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(50) DEFAULT NULL,
  `cat_id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catégories`
--

INSERT INTO `catégories` (`cat_id`, `cat_nom`, `cat_id_1`) VALUES
(0, 'plant_ext', 0),
(1, 'plant_int', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `cli_id` int(11) NOT NULL,
  `cli_nom` varchar(50) NOT NULL,
  `cli_prenom` varchar(50) NOT NULL,
  `cli_adrL` varchar(50) DEFAULT NULL,
  `cli_adrF` varchar(50) DEFAULT NULL,
  `cli_tel` varchar(50) DEFAULT NULL,
  `cli_mail` varchar(50) DEFAULT NULL,
  `cli_type` varchar(50) DEFAULT NULL,
  `cli_civ` varchar(50) DEFAULT NULL,
  `cli_news` varchar(50) DEFAULT NULL,
  `cli_pw` varchar(50) DEFAULT NULL,
  `cli_coef` int(11) DEFAULT NULL,
  `cmr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`cli_id`, `cli_nom`, `cli_prenom`, `cli_adrL`, `cli_adrF`, `cli_tel`, `cli_mail`, `cli_type`, `cli_civ`, `cli_news`, `cli_pw`, `cli_coef`, `cmr_id`) VALUES
(1, 'Jovey', 'Sallyann', '7 Kedzie Terrace', '999 Hovde Lane', '3804530271', 'CHUPACABRA', 'pro', 'Female', '1', '6cbvKW', 0, 1),
(3, 'Yankishin', 'Petronia', '344 East Parkway', '517 Arapahoe Plaza', '3383990634', 'HPZj0p', 'par', 'Female', '0', 'cAjwRCsXx', 0, 1),
(5, 'Dyhouse', 'Barnabas', '5 Portage Road', '48 Hagan Trail', '3368274252', 'Bo5qn0QqI', 'pro', 'Male', '1', 'fkgKqjJfv', 7, 2),
(6, 'Welberry', 'Marchelle', '00231 Messerschmidt Court', '8 Laurel Point', '1039534407', 'Rb7GDeueRNgd', 'pro', 'Male', '1', 'HncA6jpksjI', 56, 1),
(7, 'Matyukon', 'Myra', '4157 Mallard Center', '14358 Algoma Way', '7228340277', 'Rh0AfK1', 'par', 'Female', '0', 'xf6zPeBLO', 71, 2),
(8, 'Pickup', 'Mavra', '24 Pierstorff Drive', '08666 Amoth Trail', '4445551079', '1oUW660MvwdQ', 'par', 'Female', '0', 'd8B8BmM2pnsN', 42, 1),
(9, 'Elphinston', 'Zitella', '3915 Luster Junction', '63 Northland Street', '1421224226', '3ksj3gh', 'par', 'Male', '0', 'qd8rLvTnWK', 9, 2),
(10, 'Killingsworth', 'Delbert', '555 Sugar Center', '44674 Goodland Pass', '2151505931', 'qaTSF7e', 'pro', 'Male', '0', 'omPDPANbxf', 29, 1),
(11, 'Richt', 'Sheppard', '68 Sugar Crossing', '0 5th Circle', '9074738231', 'jhtufBowWLM', 'par', 'Female', '1', 'aLqpnmeF', 57, 1),
(12, 'Mouland', 'Sarena', '8624 Haas Court', '054 2nd Center', '3178192125', 'YJjLElUhDCsu', 'pro', 'Male', '0', 'hATKiynt', 13, 1),
(13, 'Coatts', 'Jasmina', '640 Old Gate Junction', '216 Graceland Circle', '5743375393', 'dKm06E', 'pro', 'Female', '1', '8uaYNKwcTo4b', 91, 1),
(14, 'Sleep', 'Bayard', '36549 Ridge Oak Circle', '47 Meadow Vale Drive', '6809507071', '8SKNAwoBOk1a', 'par', 'Male', '0', 'HgUcxvlefG', 86, 2),
(15, 'Lettington', 'Bowie', '567 Morningstar Point', '1 Declaration Park', '8899660482', '3iwT4XH6HZBZ', 'par', 'Female', '1', 'Sep2aEw0KR', 59, 1),
(16, 'Bier', 'Quintus', '60 Waywood Center', '7100 1st Crossing', '7355788729', 'I3WZmYIOeZzC', 'par', 'Male', '0', 'tEXaCLmUH', 7, 2),
(17, 'Haughey', 'Yoshiko', '8 Crescent Oaks Avenue', '33 Welch Trail', '6557150395', 'MB43ujWApW', 'pro', 'Female', '1', 'xCCOcrn', 29, 2),
(18, 'Stirzaker', 'Audi', '38 Gina Center', '23 Eggendart Parkway', '6512192158', 'EjM4wHeT2', 'pro', 'Female', '1', 'ugt2toG', 23, 2),
(19, 'Havock', 'Jo ann', '76 Scott Street', '41 Waxwing Trail', '8143902558', 'tFgVP8Qp', 'par', 'Female', '0', 'cHkOcT', 14, 2),
(20, 'Humbell', 'Catina', '874 Columbus Court', '2362 Hazelcrest Point', '7326903821', 'jv0N7L8', 'par', 'Non-binary', '1', 'Dt3TvN', 42, 1),
(21, 'Van den Velde', 'Mikaela', '193 Menomonie Road', '0775 Gina Lane', '4406289568', 'N71JpZI9p4Z', 'pro', 'Female', '1', '3K4eYNP8', 21, 1),
(22, 'Klimmek', 'Abbi', '3 Dunning Street', '2537 Mifflin Terrace', '8085601782', '90QW4UKvL', 'par', 'Male', '0', 'Wue9GSdZKiFM', 14, 2),
(25, 'Fuster', 'Erica', '45 Washington Alley', '384 Superior Point', '3632064128', 'qRJHTh', 'pro', 'Male', '0', 'KJdtTZSNJ', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `cmd_id` int(11) NOT NULL,
  `cmd_date` date DEFAULT NULL,
  `cmd_etat` varchar(50) DEFAULT NULL,
  `cli_id` int(11) NOT NULL,
  `cmd_num` int(11) DEFAULT NULL,
  `cmd_qt` int(11) DEFAULT NULL,
  `cmd_prodID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`cmd_id`, `cmd_date`, `cmd_etat`, `cli_id`, `cmd_num`, `cmd_qt`, `cmd_prodID`) VALUES
(1, '2022-03-10', 'saisie', 1, 1, 5, '1000'),
(2, '2022-03-01', 'en prep', 5, 2, 5, '1000'),
(3, '2022-03-14', 'saisie', 16, 3, 5, '1000'),
(4, '2022-03-14', 'saisie', 3, 4, 5, '1000'),
(5, '2022-03-15', 'saisie', 1, 1, 2, 'ab723720663'),
(6, '2022-03-15', 'en prep', 1, 1, 2, 'cg345026120');

-- --------------------------------------------------------

--
-- Table structure for table `commercial`
--

CREATE TABLE `commercial` (
  `cmr_id` int(11) NOT NULL,
  `cmr_nom` varchar(50) DEFAULT NULL,
  `cmr_tel` varchar(50) DEFAULT NULL,
  `cmr_mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`cmr_id`, `cmr_nom`, `cmr_tel`, `cmr_mail`) VALUES
(1, 'Gérard', '1123123235', 'mail1@mail'),
(2, 'Michel', '2147483647', 'mail2@mail');

-- --------------------------------------------------------

--
-- Table structure for table `facture`
--

CREATE TABLE `facture` (
  `fac_id` int(11) NOT NULL,
  `fac_pen` int(11) DEFAULT NULL,
  `fac_frais` int(11) DEFAULT NULL,
  `fac_date` date DEFAULT NULL,
  `fac_delai` date DEFAULT NULL,
  `fac_modeP` varchar(50) DEFAULT NULL,
  `cmd_id` int(11) NOT NULL,
  `cli_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facture`
--

INSERT INTO `facture` (`fac_id`, `fac_pen`, `fac_frais`, `fac_date`, `fac_delai`, `fac_modeP`, `cmd_id`, `cli_id`) VALUES
(1, 0, 40, '2022-03-09', '2022-03-11', 'vir', 1, 1),
(2, 0, 0, '2022-03-05', '2022-03-12', 'vir', 2, 5),
(12, 0, 0, '2022-03-08', '2022-03-20', 'vir', 3, 16);

-- --------------------------------------------------------

--
-- Table structure for table `fournis`
--

CREATE TABLE `fournis` (
  `prod_ref` varchar(50) NOT NULL,
  `frn_id` int(11) NOT NULL,
  `quantité` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fournis`
--

INSERT INTO `fournis` (`prod_ref`, `frn_id`, `quantité`) VALUES
('1000', 1, 10),
('1000', 3, 10),
('ab723720663', 3, 0),
('cg345026120', 1, 0),
('ci605361829', 2, 0),
('eo781342715', 5, 0),
('gn879251602', 4, 0),
('hi021429051', 9, 0),
('is165077974', 2, 0),
('jj291674389', 8, 0),
('jn933737886', 5, 0),
('md176852921', 9, 0),
('mz346421993', 7, 0),
('pg197130943', 4, 0),
('vx869652527', 2, 0),
('xq679206213', 13, 0),
('yg991606887', 9, 0),
('yj768834946', 8, 0),
('yq860192023', 5, 0),
('ys688543320', 2, 0),
('zl446208638', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `frn_id` int(11) NOT NULL,
  `frn_nom` varchar(50) DEFAULT NULL,
  `frn_adr` varchar(50) DEFAULT NULL,
  `frn_tel` varchar(50) DEFAULT NULL,
  `frn_mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`frn_id`, `frn_nom`, `frn_adr`, `frn_tel`, `frn_mail`) VALUES
(1, 'Toyota1', 'ebrimman0@reuters.com', '6608727808', 'gmitie0@hhs.gov'),
(2, 'Ford', 'mmingardo1@xrea.com', '1313398902', 'hpentercost1@unc.edu'),
(3, 'Ford', 'nparcall2@eepurl.com', '9777938592', 'jcarmo2@nhs.uk'),
(4, 'Mazda', 'lalston3@squidoo.com', '1815671918', 'skillingback3@reuters.com'),
(5, 'Pontiac', 'mlandrick4@plala.or.jp', '8213324525', 'cbottinelli4@godaddy.com'),
(6, 'Ford', 'fward5@samsung.com', '7964338014', 'gskypp5@gravatar.com'),
(7, 'Lincoln', 'adennitts6@theglobeandmail.com', '8772878853', 'gfrawley6@unc.edu'),
(8, 'Volkswagen', 'bbotright7@ocn.ne.jp', '7714878309', 'tvaun7@cloudflare.com'),
(9, 'Plymouth', 'vbraybrookes8@yellowbook.com', '4472703594', 'nsurgison8@weather.com'),
(10, 'Lexus', 'cworsham9@barnesandnoble.com', '3942081719', 'fbriatt9@cyberchimps.com'),
(11, 'Toyota', 'rmackiesona@psu.edu', '9045899045', 'gsilverthorna@4shared.com'),
(12, 'Ford', 'jjustunb@fc2.com', '3407192526', 'ncarterb@go.com'),
(13, 'Lexus', 'ggerrensc@house.gov', '7576621268', 'smaciejewskic@wired.com'),
(14, 'Honda', 'dminchintond@ebay.com', '5301319143', 'tsweetloved@java.com'),
(15, 'Nissan', 'cjellybrande@seattletimes.com', '5424623303', 'jswindine@microsoft.com'),
(16, 'Hyundai', 'kinkpinf@ihg.com', '4793135990', 'dcarlozzif@discovery.com'),
(17, 'Ford', 'htuckerg@bloomberg.com', '2412859944', 'jsearesg@tinyurl.com'),
(18, 'Mercedes-Benz', 'mcooleh@independent.co.uk', '6985823110', 'spilmoreh@fda.gov'),
(19, 'Hyundai', 'kharroni@senate.gov', '4542513745', 'dmattiolii@princeton.edu'),
(20, 'Ford', 'jkupkerj@mail.ru', '1261826313', 'mcharopenj@icq.com');

-- --------------------------------------------------------

--
-- Table structure for table `intégrer`
--

CREATE TABLE `intégrer` (
  `prod_ref` varchar(50) NOT NULL,
  `cmd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intégrer`
--

INSERT INTO `intégrer` (`prod_ref`, `cmd_id`) VALUES
('1000', 1),
('1000', 2),
('1000', 4);

-- --------------------------------------------------------

--
-- Table structure for table `livraison`
--

CREATE TABLE `livraison` (
  `livr_id` int(11) NOT NULL,
  `livr_date` date DEFAULT NULL,
  `cmd_id` int(11) NOT NULL,
  `cli_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `livraison`
--

INSERT INTO `livraison` (`livr_id`, `livr_date`, `cmd_id`, `cli_id`) VALUES
(1, '2022-03-10', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posséder`
--

CREATE TABLE `posséder` (
  `prod_ref` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `prod_ref` varchar(50) NOT NULL,
  `prod_des` varchar(50) DEFAULT NULL,
  `prod_prixHT` decimal(15,2) DEFAULT NULL,
  `prod_tauxTVA` decimal(5,2) DEFAULT NULL,
  `prod_prixTTC` decimal(15,2) DEFAULT NULL,
  `prod_pho` varchar(150) DEFAULT NULL,
  `prod_stock` int(11) DEFAULT NULL,
  `prod_quantité` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`prod_ref`, `prod_des`, `prod_prixHT`, `prod_tauxTVA`, `prod_prixTTC`, `prod_pho`, `prod_stock`, `prod_quantité`) VALUES
('1000', 'rose_blanche', '5.00', '5.50', '5.28', 'www.img.com', 20, 0),
('ab723720663', 'Beef Wellington', '1.00', '5.50', '1.06', 'https://robohash.org/consequunturvoluptateset.png?size=300x300&set=set1', 24, 0),
('cg345026120', 'Jam - Apricot', '2.00', '5.50', '2.11', 'https://robohash.org/consecteturauteos.png?size=300x300&set=set1', 21, 0),
('ci605361829', 'Cardamon Ground', '12.00', '5.50', '12.66', 'https://robohash.org/laborumdoloredeserunt.png?size=300x300&set=set1', 93, 0),
('eo781342715', 'Longos - Lasagna Beef', '10.00', '5.50', '10.55', 'https://robohash.org/quiavoluptasautem.png?size=300x300&set=set1', 73, 0),
('gn879251602', 'Beer - Upper Canada Lager', '21.00', '5.50', '22.16', 'https://robohash.org/animiquiat.png?size=300x300&set=set1', 86, 0),
('hi021429051', 'Yams', '531.00', '5.50', '560.21', 'https://robohash.org/voluptatemaliquamnisi.png?size=300x300&set=set1', 55, 0),
('is165077974', 'Flour - All Purpose', '54.00', '5.50', '56.97', 'https://robohash.org/teneturquiacorporis.png?size=300x300&set=set1', 74, 0),
('jj291674389', 'Chicken - Leg, Fresh', '351.00', '20.00', '421.20', 'https://robohash.org/eospraesentiumodio.png?size=300x300&set=set1', 26, 0),
('jn933737886', 'Wine - Two Oceans Sauvignon', '23.00', '20.00', '27.60', 'https://robohash.org/velitquidolorum.png?size=300x300&set=set1', 11, 0),
('md176852921', 'Cake Sheet Combo Party Pack', '58.00', '20.00', '69.60', 'https://robohash.org/autvoluptatemassumenda.png?size=300x300&set=set1', 91, 0),
('mz346421993', 'Vinegar - Champagne', '654.00', '20.00', '784.80', 'https://robohash.org/porroametnon.png?size=300x300&set=set1', 21, 0),
('pg197130943', 'Cinnamon Buns Sticky', '654.00', '20.00', '784.80', 'https://robohash.org/sedautporro.png?size=300x300&set=set1', 47, 0),
('qh702152508', 'Basil - Seedlings Cookstown', '87.00', '20.00', '104.40', 'https://robohash.org/etvitaedicta.png?size=300x300&set=set1', 83, 0),
('qs35351531', 'geranium', '87.00', '20.00', '104.40', 'lksqfnjsdq;nfmljdsnflmj', 25, 0),
('vx869652527', 'Chutney Sauce', '89.00', '20.00', '106.80', 'https://robohash.org/quiinciduntvoluptas.png?size=300x300&set=set1', 73, 0),
('wt651456546', 'Patate douce', '31.00', '20.00', '37.20', 'www.img.com', 10, 0),
('xq679206213', 'Ostrich - Fan Fillet', '35.00', '5.50', '36.93', 'https://robohash.org/eaquenihilnon.png?size=300x300&set=set1', 93, 0),
('yg991606887', 'Veal - Leg, Provimi - 50 Lb Max', '64.00', '5.50', '67.52', 'https://robohash.org/accusamusquiest.png?size=300x300&set=set1', 31, 0),
('yj768834946', 'Chinese Foods - Thick Noodles', '58.00', '20.00', '69.60', 'https://robohash.org/molestiaeeummolestias.png?size=300x300&set=set1', 74, 0),
('yq860192023', 'Chocolate - Dark Callets', '35.00', '5.50', '36.93', 'https://robohash.org/sequiestperspiciatis.png?size=300x300&set=set1', 85, 0),
('ys688543320', 'Tomatoes - Cherry', '58.00', '20.00', '69.60', 'https://robohash.org/voluptatemrepellendusvoluptatibus.png?size=300x300&set=set1', 17, 0),
('zl446208638', 'Crush - Orange, 355ml', '20.00', '5.50', '21.10', 'https://robohash.org/modiconsequaturimpedit.png?size=300x300&set=set1', 12, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catégories`
--
ALTER TABLE `catégories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_id_1` (`cat_id_1`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cli_id`),
  ADD KEY `cmr_id` (`cmr_id`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`cmd_id`),
  ADD KEY `cli_id` (`cli_id`);

--
-- Indexes for table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`cmr_id`);

--
-- Indexes for table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`fac_id`),
  ADD UNIQUE KEY `cmd_id` (`cmd_id`),
  ADD KEY `cli_id` (`cli_id`);

--
-- Indexes for table `fournis`
--
ALTER TABLE `fournis`
  ADD PRIMARY KEY (`prod_ref`,`frn_id`,`quantité`) USING BTREE,
  ADD KEY `frn_id` (`frn_id`,`quantité`) USING BTREE;

--
-- Indexes for table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`frn_id`);

--
-- Indexes for table `intégrer`
--
ALTER TABLE `intégrer`
  ADD PRIMARY KEY (`prod_ref`,`cmd_id`),
  ADD KEY `cmd_id` (`cmd_id`);

--
-- Indexes for table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`livr_id`),
  ADD KEY `cmd_id` (`cmd_id`),
  ADD KEY `cli_id` (`cli_id`);

--
-- Indexes for table `posséder`
--
ALTER TABLE `posséder`
  ADD PRIMARY KEY (`prod_ref`,`cat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`prod_ref`,`prod_quantité`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `cmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `cmr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facture`
--
ALTER TABLE `facture`
  MODIFY `fac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `livr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catégories`
--
ALTER TABLE `catégories`
  ADD CONSTRAINT `catégories_ibfk_1` FOREIGN KEY (`cat_id_1`) REFERENCES `catégories` (`cat_id`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`cmr_id`) REFERENCES `commercial` (`cmr_id`);

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`cli_id`) REFERENCES `client` (`cli_id`);

--
-- Constraints for table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`cmd_id`) REFERENCES `commande` (`cmd_id`),
  ADD CONSTRAINT `facture_ibfk_2` FOREIGN KEY (`cli_id`) REFERENCES `client` (`cli_id`);

--
-- Constraints for table `fournis`
--
ALTER TABLE `fournis`
  ADD CONSTRAINT `fournis_ibfk_1` FOREIGN KEY (`prod_ref`) REFERENCES `produit` (`prod_ref`),
  ADD CONSTRAINT `fournis_ibfk_2` FOREIGN KEY (`frn_id`) REFERENCES `fournisseur` (`frn_id`);

--
-- Constraints for table `intégrer`
--
ALTER TABLE `intégrer`
  ADD CONSTRAINT `intégrer_ibfk_1` FOREIGN KEY (`prod_ref`) REFERENCES `produit` (`prod_ref`),
  ADD CONSTRAINT `intégrer_ibfk_2` FOREIGN KEY (`cmd_id`) REFERENCES `commande` (`cmd_id`);

--
-- Constraints for table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `livraison_ibfk_1` FOREIGN KEY (`cmd_id`) REFERENCES `commande` (`cmd_id`),
  ADD CONSTRAINT `livraison_ibfk_2` FOREIGN KEY (`cli_id`) REFERENCES `client` (`cli_id`);

--
-- Constraints for table `posséder`
--
ALTER TABLE `posséder`
  ADD CONSTRAINT `posséder_ibfk_1` FOREIGN KEY (`prod_ref`) REFERENCES `produit` (`prod_ref`),
  ADD CONSTRAINT `posséder_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `catégories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;