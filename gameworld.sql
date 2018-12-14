-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2018 at 04:27 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `gamecategory`
--

CREATE TABLE `gamecategory` (
  `id` int(11) NOT NULL,
  `gameCategory` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `categoryImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gamecategory`
--

INSERT INTO `gamecategory` (`id`, `gameCategory`, `color`, `categoryImage`) VALUES
(1, 'Steam', 'TESr', 'logoSteam.png'),
(2, 'Playstation', 'TEST', 'logoPlaystation.png'),
(3, 'Xbox', 'TESADs', 'logoXBox.svg');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `gameId` int(3) NOT NULL,
  `gameName` varchar(255) NOT NULL,
  `gamePrice` decimal(5,2) NOT NULL,
  `gamePlatform` int(3) NOT NULL,
  `gameImage` varchar(255) NOT NULL,
  `gameDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameId`, `gameName`, `gamePrice`, `gamePlatform`, `gameImage`, `gameDescription`) VALUES
(1, 'Rocket League', '19.99', 2, 'rocketLeague.jpg', 'Rocket League the sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars is soccer and driving combined. For those who enjoy high-octane reckless driving and the world\'s most popular sport, Rocket League is for you. This cross-genre arena battler is the latest craze on Steam, PS4, Xbox One and Nintendo Switch. Fun for all players and abilities, the game offers both a casual and competitive atmosphere, as well as a ton of laughs.\r\n\r\nRocket League was released on July 7, 2015 for Steam and PS4, February 17, 2016 for Xbox One and November 14th, 2017 for Nintendo Switch.\r\n\r\nIt should be noted that this game can be played across PC and PS4, and PC and Xbox One, allowing for more users to connect through different hardware.'),
(2, 'Don\'t Starve', '8.15', 1, 'dontStarve.jpg', 'Don\'t Starve is an open world survival video game developed by the Canadian indie company Klei Entertainment. The game was initially released via Valve Corporation\'s Steam software for Microsoft Windows, OS X, and Linux on April 23, 2013.[1] A PlayStation 4 port, renamed Don\'t Starve: Giant Edition, became available the following year (with PlayStation Vita and PlayStation 3 versions released on September 2014 and June 2015 respectively, and an Xbox One version released in August 2015).[2][3] Don\'t Starve for iOS, renamed Don\'t Starve: Pocket Edition was released on July 9, 2015.[4] Android version was released on October 20, 2016. Downloadable content titled Reign of Giants was released on April 30, 2014, and a multiplayer expansion called Don\'t Starve Together became free for existing users on June 3, 2015.[5] A Nintendo Switch port came out on April 12, 2018.'),
(4, 'Garry\'s Mod', '20.00', 1, 'garrysMod.jpg', 'Garry\'s Mod is a physics sandbox. There aren\'t any predefined aims or goals. We give you the tools and leave you to play.\r\n\r\nYou spawn objects and weld them together to create your own contraptions - whether that\'s a car, a rocket, a catapult or something that doesn\'t have a name yet - that\'s up to you. You can do it offline, or join the thousands of players who play online each day. \r\n\r\nIf you\'re not too great at construction - don\'t worry! You can place a variety of characters in silly positions. But if you want to do more, we have the means.'),
(6, 'Tom clancy\'s Rainbow Six Siege', '40.00', 2, 'rainbowSixSiege.jpg', 'Master the art of destruction and gadgetry in Tom Clancy’s Rainbow Six Siege. Face intense close quarters combat, high lethality, tactical decision making, team play and explosive action within every moment. Experience a new era of fierce firefights and expert strategy born from the rich legacy of past Tom Clancy\'s Rainbow Six games.\r\n'),
(8, 'Terraria', '10.00', 1, 'terraria.jpg', 'The very world is at your fingertips as you fight for survival, fortune, and glory. Delve deep into cavernous expanses, seek out ever-greater foes to test your mettle in combat, or construct your own city - In the World of Terraria, the choice is yours!\r\n\r\nBlending elements of classic action games with the freedom of sandbox-style creativity, Terraria is a unique gaming experience where both the journey and the destination are as unique as the players themselves!'),
(10, 'Grand Theft Auto 5', '50.00', 2, 'gtaV.jpeg', 'When a young street hustler, a retired bank robber and a terrifying psychopath find themselves entangled with some of the most frightening and deranged elements of the criminal underworld, the U.S. government and the entertainment industry, they must pull off a series of dangerous heists to survive in a ruthless city in which they can trust nobody, least of all each other.'),
(11, 'Spiderman', '60.00', 2, 'spiderman.jpg', 'BE GREATER.\r\n\r\nOntdek een nieuw hoofdstuk in de wereld van Marvel\'s Spider-Man als een Peter Parker met meer ervaring.\r\n\r\nIn Marvel\'s Spider-Man draait alles om een van de beroemdste superhelden ooit. Bereid je voor op de acrobatische toeren, improvisatie en webcapriolen waar deze muurkruiper om bekendstaat. Sommige elementen zijn nooit eerder vertoond in een Spider-Man-game.\r\n\r\nSpeel Spider-Man op een compleet nieuwe manier met parkourscènes, unieke interactie met de omgeving, nieuwe gevechtsmogelijkheden en actie zoals je die in films ziet.'),
(12, 'ARK: Survival Evolved', '60.00', 2, 'ark.jpg', 'As a man or woman stranded naked, freezing and starving on the shores of a mysterious island called ARK, you must hunt, harvest resources, craft items, grow crops, research technologies, and build shelters to withstand the elements. Use your cunning and resources to kill or tame & breed the leviathan dinosaurs and other primeval creatures roaming the land, and team up with or prey on hundreds of other players to survive, dominate... and escape!'),
(13, 'Just Cause 4', '60.00', 1, 'justCause4.png', 'Welcome to Solis, a huge South American world home of conflict, oppression and extreme weather conditions. Just Cause 4 sees rogue agent Rico Rodriguez land in Solis to hunt down the truth about his past, at any cost. Strap into your wingsuit, equip your fully customizable grappling hook, and get ready to bring the thunder!'),
(14, 'Assassin\'s Creed Odyssey', '60.00', 2, 'assassninsCreedOdyssey.jpg', 'This is an action-adventure game in which players assume the role of Alexios or Kassandra, mercenaries on a quest for vengeance. As players explore an open-world environment in Ancient Greece, they interact with characters, infiltrate enemy bases and strongholds, and kill human enemies. Players use swords, spears, and bows to kill enemy soldiers and bandits in melee-style combat. Players also use stealth attacks (e.g., knife stabbing) to dispatch enemies discreetly. Large blood-splatter effects occur as enemies are killed. A handful of cutscenes depict more intense acts of violence and/or gore: characters stabbed through the head/neck with bladed weapons; young characters thrown off a cliff; a man mauled by a mob as his arm gets thrown into the air. Some environments depict severed limbs and dismembered corpses on the ground. The game contains instances of sexual material: characters kissing and caressing before the screen fades to black (sex is implied though never shown); dialogue referencing sex and prostitution (e.g., “Anything goes in this sex andron”; “That is love, this is commerce. What are you into?”); a character hearing sexual moaning sounds behind a door. The words “f**k” and “sh*t” are heard in the game.'),
(15, 'Football Manager 2019', '60.00', 1, 'footballManager2019.jpg', 'You’ve always thought you could do better, haven’t you?\r\nSigned better players. Played a different way. Snuck the three points.\r\nWell, now’s your chance to live out your footballing dreams…\r\n\r\nGo on… accept that big contract and take the reins at your club.\r\nSet your objectives with the board and get to work with the players.\r\nWhose time at the club is over and who’s ready for first team?\r\nYour scouts know who\'ll improve your squad, and if you can afford it.\r\n\r\nBest roll up those sleeves on the training ground. Your vision needs practice. \r\nYour coaches can help, but only if you\'ll let them. Some go it alone…\r\nThe media say your tactics are ambitious, and perhaps they are.\r\nYes, you\'d be comfortable in a 4-2-3-1, but that’s how everyone plays…\r\n\r\nNow the stadium is packed and the fans are eager. It’s Match Day.\r\nWill you trust your tactics or tinker from the side-lines? Your call, your way.\r\nBecause you are the sole author of your team’s destiny. And your path is unique.\r\nThe players might take the glory, but their glory is your story.'),
(16, 'Counter-Strike: Global Offensive', '14.00', 1, 'csgo.jpg', 'Counter-Strike: Global Offensive is one of the most popular multiplayer shooters with great impact on the way we look at online gaming. In CS:GO you choose your team- terrorists or counter-terrorists, eliminate your enemies and earn money to buy better equipment at the beginning of every round. The Developers of CS: GO have added new maps, characters and weapons to deliver a better, improved gaming experience. What has also been introduced are the new gameplay modes, matchmaking and leader boards. Still, the most fervent fans of the franchise will not be disappointed as the game has changed only slightly and the classic CS content remains. This content was copied from https://www.g2a.com/nl-nl/counter-strike-global-offensive-full-game-steam-key-europe-i10000016291018?aid=11697742&___currency=EUR&er=44b54a0c3ca3b8f845918f3c15d157fe&___language=en&adid=GMC_NL-Smart-HIGH&id=14&gclid=Cj0KCQiA3IPgBRCAARIsABb-iGL5Hfyl_L-YK6szQ-jZnht3I4T8ot9cA0W8gwollIRj_WYHtUtrQ0oaAu2IEALw_wcB&gclsrc=aw.ds. It is protected by copyright, all rights reserved. If you want to use it, you are obligated to leave the link to the original source.'),
(17, 'Watch Dogs 2', '60.00', 3, 'watchDogs2.jpg', 'Jij bent Marcus Holloway, een briljante jonge hacker, die in de San Francisco Bay Area woont, de wieg van de techrevolutie.\r\nSluit je aan bij DedSec, een beruchte groep hackers, om de grootste hack uit de geschiedenis uit te voeren: het platleggen van het ctOS2.0. Dit invasieve besturingssysteem wordt door criminele meesterbreinen gebruikt om de burgers op een enorme schaal te monitoren en te manipuleren.'),
(18, 'Watch Dogs', '30.00', 3, 'watchDogs.jpg', 'All it takes is the swipe of a finger. We connect with friends. We buy the latest gadgets and gear. We find out what’s happening in the world. But with that same simple swipe, we cast an increasingly expansive shadow. With each connection, we leave a digital trail that tracks our every move and milestone, our every like and dislike. And it’s not just people. Today, all major cities are networked. Urban infrastructures are monitored and controlled by complex operating systems. \r\n\r\nIn Watch_Dogs, this system is called the Central Operating System (CTOS) – and it controls almost every piece of the city’s technology and holds key information on all of the city’s residents. \r\n\r\nYou play as Aiden Pearce, a brilliant hacker and former thug, whose criminal past led to a violent family tragedy. Now on the hunt for those who hurt your family, you\'ll be able to monitor and hack all who surround you by manipulating everything connected to the city’s network. Access omnipresent security cameras, download personal information to locate a target, control traffic lights and public transportation to stop the enemy…and more. \r\n\r\nUse the city of Chicago as your ultimate weapon and exact your own style of revenge.'),
(19, 'F1 2018', '40.00', 3, 'f12018.jpg', 'F1® 2018 is the official videogame of the 2018 FIA FORMULA ONE WORLD CHAMPIONSHIP™. Become immersed in the world of Formula 1® more than ever before.\r\nBuild your reputation both on and off the track, with time-pressured media interviews that influence your F1 career path. Do you exhibit sportsmanship or showmanship? Will you develop your team to the top or send your agent to target a rival team and driver? F1 2018 puts you in control of your destiny.\r\no More classic F1 cars than ever before\r\no The most accurate F1 car simulation model yet\r\no Stunning graphics and new circuits for 2018: Paul Ricard and Hockenheim'),
(20, 'Minecraft', '30.00', 3, 'minecraft.jpg', 'Minecraft is een game waarbij blokken worden verplaatst en avonturen beleefd. Bouw alles wat je je kan voorstellen met onbeperkte bronnen in de Creative-modus of ga op grote expedities in Survival, reis door mysterieuze landen en in de diepten van je eigen oneindige werelden. Ga je je verbergen voor de monsters of bouw je je eigen gereedschappen, pantser en wapens om terug te vechten? Je hoeft het niet alleen te doen! Deel je avonturen met vrienden in split-screen, multiplayermodus en online.'),
(22, 'Halo Master Chief Collection', '50.00', 3, 'haloMCC.jpg', 'XBOX GAME PASS MEMBERS – Download and play by selecting \"Halo: The Master Chief Collection\" under \"In this bundle\". For the first time ever, The Master Chief\'s entire story is on one console. Featuring a re-mastered Halo 2: Anniversary, along with Halo: Combat Evolved Anniversary, Halo 3, and Halo 4, and new digital series, Halo: Nightfall, this is the definitive Halo experience. The Complete Master Chief Story – Honoring the iconic hero and his epic journey, the Master Chief’s entire story is brought together as Halo: The Master Chief Collection. Halo: Combat Evolved Anniversary, Halo 2: Anniversary, Halo 3, and Halo 4 are all included with a total of 45 campaign missions plus more than 100 multiplayer (including the original Halo Combat Evolved maps) and Spartan Ops maps. Now updated with Xbox One X enhancements to provide up to 4K UHD and HDR support, this is the collection Halo fans have been waiting for!*'),
(23, 'Gears of War 4', '40.00', 3, 'gearsOfWar4.jpg', 'JD Fenix en zijn vrienden Kait en Del zijn ternauwernood ontsnapt aan een aanval op hun dorp. Ze moeten nu hun geliefden zien te redden door een monsterlijke nieuwe vijand te bestrijden. Maak gebruik van een ongekende verscheidenheid aan gevechts- en steektechnieken, en vuur er op los met geavanceerde nieuwe wapens, zoals de Buzzkill en Dropshot, waarmee je rond en over dekking kunt schieten om vanuit alle hoeken maximale schade aan te richten.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gamecategory`
--
ALTER TABLE `gamecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gamecategory`
--
ALTER TABLE `gamecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
