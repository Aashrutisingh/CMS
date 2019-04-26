-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 25, 2019 at 07:20 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms4.2.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `aheadline` varchar(30) NOT NULL,
  `abio` varchar(500) NOT NULL,
  `aimage` varchar(60) NOT NULL DEFAULT 'avatar.png',
  `addedby` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `datetime`, `username`, `password`, `aname`, `aheadline`, `abio`, `aimage`, `addedby`) VALUES
(1, 'January-24-2019 23:54:07', 'Aashruti', '1234', 'Aashruti Singh', 'evangelist', 'Aashruti Singh is a developer and web designer with the great passion for building beautiful new Desktop/Web Applications from scratch. She is \r\na Student. She has designed variousÂ ApplicationsÂ for many web designing companies . She has great passion for travelling and blogging . ', 'jazeb.jpg', 'Maggi'),
(2, 'January-20-2019 23:57:13', 'Aulick ', '1234', 'Aulick Sah', 'Full Stack Developer', '  Aulick is passionate about Web development and is a coding geek. She works as full stack developer in Microsoft. She has interst intravel blogging and likes sharing her travel experiences  .', 'avatar.png', 'groot'),
(5, 'January-14-2019 00:20:41', 'deekshita', '1234', 'Deekshita Savanur', 'Writer', '  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   ', 'avatar.png', 'emy'),
(6, 'January-14-2019 11:27:38', 'Meghana', '1234', 'Meghana', 'Developer, Blogger', '  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   ', 'avatar.png', 'DavidM'),
(7, 'January-14-2019 11:28:44', 'Zoya', '1234', 'Zoya ALi', 'Journalist, Content Writer', 'I am good at writing. My duty involved writing content for Morning Washington. Designing social media campaign for local merchants and road map for investigative journalism. During the period of 20012-1017 i worked as a Bureau chief for Gajumatta Herald. Furthermore, i worked on many projects which includes investigating economical crisis at Mars. Finding water at Sun and writing a thesis for black holes in moon.', 'zoe.jpg', 'Thor'),
(8, 'January-15-2019 21:30:58', 'ankita', '1234', 'Ankita lokhande', 'Fitness & Sports Trainer ', '  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n  ', 'david.png', 'aarush'),
(9, 'January-27-2019 19:54:22', 'John', '1234', 'John wolf', '', '', 'avatar.png', 'harlen miller');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `author`, `datetime`) VALUES
(1, 'Weekend Break Travel', 'Aashruti', 'December-01-2018 21:05:43'),
(3, 'Vacation', 'Aulick', 'December-01-2018 21:09:29'),
(5, 'Research Travel', 'Aulick', 'January-14-2019 11:24:52'),
(6, 'Group Tour', 'Meghana', 'January-14-2019 11:25:42'),
(7, 'The Road Trip', 'Deekshita', 'January-15-2019 12:25:37'),
(8, 'Voluteer Travel', 'ankita', 'January-15-2019 12:25:45'),
(9, 'Long Term Slow Travel', 'Deekshita', 'January-15-2019 12:25:48'),
(10, 'Business Travel', 'Aashruti', 'January-15-2019 12:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `approvedby` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL,
  `post_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `post` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(19, 'January-15-2019 12:22:54', 'Tips You Need to Know Before Planning a Group Trip', 'Group Tour', 'Meghana', 'safe_image.jpg', 'Group trips can be the best or worst type of trip ever. They can become one of the most amazing times of our lives, where we bond with our travel companions and reminisce about the group trip for years to come. Others, well… not so much.\r\n\r\nTraveling as a group can mean inside jokes, great stories, learning more about how to travel, and plenty of laughs.\r\n\r\nUnfortunately, it usually also involves more precise planning and a lot of organization, which can lead to tension, indecisiveness and bad planning.\r\n\r\nWe love group travel, and so we want to help you plan the best group trip possible and make it one of the great ones!\r\n\r\nWhether it’s a school break trip, a party vacation with friends, a group hiking trip, or attending a festival, there are a lot of things to consider when you’re planning a group trip.'),
(20, 'January-15-2019 12:23:09', 'A Road Trip to Leh – The Luxury Way', 'The RoadTrip', 'Deekshita', 'fit.jpg', 'Traversing through the challenging terrain leading up to Leh is every road-trip enthusiast’s travel dream. The virgin locales, rocky mountains, breathtaking views, tranquil gompas, bustling bazaars and delectable food scene – what’s not to love! Drop the idea of roughing it out like a conventional road-trip because this once-in-a-lifetime experience is best enjoyed in the lap of luxury. This exhaustive guide will help you explore Leh the opulent way incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut '),
(21, 'January-15-2019 12:23:38', 'MY PICK OF THE 5 BEST PLACES FOR YOGA TEACHER TRAINING IN RISHIKESH, INDIA', 'Volunteer Travel', 'ankita', 'safe_image.jpg', 'oga originated from India and Rishikesh, situated on the holy Ganges river at the foothills of the magical Himalayan mountains, is one of the most serene and spiritual towns in India. Ever since The Beatles visited the Maharishi Mahesh Yogi Ashram here in the late 1960s Rishikesh has been famous for being the ‘Yoga Capital of the World’ so it’s not surprising that there are many amazing ashrams, yoga retreats and places to do yoga teacher training in Rishikesh.\r\n\r\nRishikesh has a very special energy, soul stirring scenery and so many temples, ashrams, workshops and healing therapies here which make it a magnet for yogis and spiritual seekers so it’s easy to meet like minded people. There’s an eclectic mix of Indian and Western culture, with delicious local restaurants next to healthy Western restaurants serving nourishing vegan and vegetarian food, many with fabulous views over the river and mountains. As it’s a holy place no meat, eggs or alcohol are served in the restaurants here.\r\n\r\nThere’s also no shortage of places to shop in Rishikesh either, with affordable spiritual books, trinkets, jewelry, handbags, and hand-sewn dresses and skirts to choose from. You can also go white water rafting down the Ganges, visit the abandoned Beatles ashram and take part in the nightly Ganga Aarti along the River Ganga in Ram Jhula'),
(23, 'January-15-2019 12:24:52', 'OUR EXPERIENCE WORKING AS DIGITAL NOMADS AND LIVING IN A MOTORHOME', 'Long Term Slow Travel', 'Deekshita', 'children-running-t.jpg', 'Interested in trying the RV life without the commitment of purchasing an RV?\r\n\r\nThat makes me so happy!\r\n\r\nLiving in a motorhome while traveling the country is a whole new world – I’d hate for you to purchase one without seeing if the lifestyle is for you first!\r\n\r\nWhich is why I’m so excited to tell you that you don’t have to buy an RV to be a part-time digital nomad.\r\n\r\nSites like Outdoorsy allow you to rent RVs for as little as $50 per night. Here are our recommendations of which sites to use.\r\n\r\nRenting an RV is a great way to experience the lifestyle before you commit $10,000+ to buy your own RV. Plus, you can rent different styles to see which ones you like. And you can rent a camper for a month or more, and doing so lets you truly experience what it would be like to live in an RV (a week just isn’t enough time in my opinion).'),
(52, 'April-24-2019 12:46:50', 'Urban Travel Blogâ€™s Affordable City Breaks', 'Weekend Break Travel', 'Aulick ', 'budapest-cheap-city-break.jpg', '                Budget Budapest\r\nRecently calculated to be Europeâ€™s cheapest getaway by the Post Office, weâ€™d have to dispute that but nonetheless this is a city that should be near the top of any hitlist, budget or otherwise, of places to visit. With its castle sitting on top of Buda, the mighty Danube running through it, and the palaces of Pest â€“ relics of the once mighty Austro-Hungarian Empire â€“ this capital deals with grandeur on an epic scale, which together with the famously hearty cuisine and great nightlife options make it a winning option. Prices wise the first place you can save a few pennies is on flights. As well as the regular carriers, Budapest is the home base of the Hungarian airline Wizzair meaning there are a large number of cheap connections around Europe. For accommodation check the â€œPillow Talkâ€ section of our Long Weekend guide, where our insider expert recommends several great hostels. One expense you canâ€™t skimp on is a trip to the baths (check our extensive guide here!) and whilst the best of the bunch â€“ Szechenyi â€“ costs 4500 forints for a day ticket with locker (around â‚¬15) that will feel like money well spent, we promise, when you emerge several hours later. Food and drink remains very reasonable almost everywhere, but take our advice and spend most of your time drinking in the amazing ruin pubs. One final word of advice, avoid heading over during Sziget festival week in August as room prices can doubleâ€¦. unless of course youâ€™re heading over for Sziget festivalâ€¦ in which case have fun you lucky folks!\r\n\r\n              '),
(53, 'April-24-2019 12:54:02', 'Historical Places in Istanbul', 'Weekend Break Travel', 'Aulick ', 'Hagia-Sophia-1.jpg', '                The Best Historical Places in Istanbul, Turkey\r\nThe bustling metropolis of Istanbul in  Turkey is a vibrant city with everything going for it. Not only is it a hub of business, finance, real estate and cultural trends but also home to many historic landmarks. From the days of Byzantine rule to the era of the Ottomans, most of the historical places in Istanbul are open to the public for viewing. Including palaces, mosques, churches, castle and districts, they can be viewed in a few days or a week will take you into the heart and soul of what was old Constantinople.\r\n\r\nGlory of the Hagia Sophia:\r\nAs a former church, mosque, and now museum, this structural building represents the crossover that happened to Constantinople from Byzantine rule to Ottoman grandeur. As one of Istanbulâ€™s great glories built between 532 and 537AD, originally by the emperor Justinian, intricate frescoes adorn the ceiling. Representing scenes from the Bible and prominent figures of the Byzantine Empire, they sit next to large circular plagues pinned to the wall that highlight Islamic calligraphy art. The galleries of the upper level are where the best view of the interior of the iconic building is to be seen.\r\n\r\nHistorical Blue Mosque:\r\nSitting across from the Hagia Sophia, the majestic Blue Mosque dating from 1616 is one of the best historical places in Istanbul. Foreigners can glimpse into the life of secular Muslims in Turkey because the mosque still operates daily for prayers. Also called Sultanahmet cami, entrance to see the blue stained glass windows of the interior is free or donations are gratefully accepted. With its 260 windows and unique 6 minarets, the Blue Mosque is the most famous in Turkey.              '),
(54, 'April-24-2019 13:05:13', 'WHY ROAD TRIPS ARE A GOOD IDEA FOR FAMILY TRAVEL', 'The Road Trip', 'Aulick ', 'familyroadtrip-02.jpg', 'Whether you drive 100 miles or 2,000 miles, youâ€™re in complete control over where you go and how you get there. Being in a vehicle allows you to see the countryside and visit places you would not ordinarily visit. Adventure lies in the most unexpected places.\r\n\r\nWhile on a road trip through the Canadian Rockies this summer, we had the freedom to visit whatever attraction we desired. As we drove down the Icefields Parkway from Jasper to Banff (arguably the most beautiful drive in the world), we constantly found ourselves pulling off the highway to view waterfalls, canyons, glacial lakes and Rocky Mountain viewpoints. We would never have been able to stay at this incredible mountain lodge in Banff National Park if we were traveling by bus or train.\r\n\r\nThe great thing about road trips is that every day is different. Tomorrow brings new landscapes, new towns, new attractions, and new hotel rooms. This is exciting for little ones and parents, because every day becomes a new adventure. It also means that you can change your itinerary at a momentâ€™s notice if you find something better to do.'),
(55, 'April-24-2019 13:09:38', 'Traveling With Wireless Earbudsâ€“Help a Reader!', 'Business Travel', 'Aulick ', 'earbuds.jpg', 'Hi Road Warriorette! I am SO OVER traveling with my wired iPhone earbuds. If Iâ€™m trying to talk or listen to a call while doing anything else, like walk through the airport or pay for coffee, I get all tangled up. The earbuds get jerked out of my ear several times every trip and Iâ€™m just so tired of it. Do you have any tips for switching to a wireless or bluetooth pair? Any suggestions for what to buy? Iâ€™m scared about them falling out, or that Iâ€™ll lose one, but Iâ€™ve got to at least try something else. Thank you!\r\n\r\nReader S, I can totally relate. I have gotten to that point myself, and actually received a pair of bluetooth earbuds for Christmas. Unfortunately I canâ€™t really recommend mine, because while I love them for listening to music and podcasts I donâ€™t like them for conference callsâ€“people say I sound muffled when I speak. (Although if you plan to use them only for listening, they cancel outside sound really well and I love using them for walks. The ones I got are sold out but these seem to be the closest version.)\r\n\r\nBecause this is so new to me I donâ€™t have a ton of best practices of my own yet. I try to remember to put them back in their little charging case anytime I take them off, because Iâ€™m paranoid theyâ€™ll get lost in my enormous purse. Every night I plug the case in to charge when I plug in my phone and other devices. They feel very secure so I am not afraid of one just falling out. But I still bring my regular, wired headphones for conference calls (and yet another pair just in case my plane has built-in in flight entertainment).\r\n\r\nMy sister loves her Apple AirPods but Iâ€™m having a hard time swallowing the $130 price tag.');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `Foreign_Relation` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
