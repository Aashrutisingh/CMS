-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 05:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

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

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `aheadline` varchar(30) NOT NULL,
  `abio` varchar(500) NOT NULL,
  `aimage` varchar(60) NOT NULL DEFAULT 'avatar.png',
  `addedby` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `approvedby` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `datetime`, `name`, `email`, `comment`, `approvedby`, `status`, `post_id`) VALUES
(9, 'January-26-2019 10:47:55', 'Nick', 'nick@gmail.com', 'i support this initiative', 'aarush', 'ON', 51),
(10, 'January-26-2019 10:48:28', 'Danny', 'Dann@gmail.com', 'This is very inspiring', 'aarush', 'ON', 51);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `post` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(16, 'January-15-2019 12:20:29', 'A Spontaneous Weekend Getaway…', 'Weekend Break Travel', 'Aashruti', '3.jpg', 'This weekend I had no plans whatsoever… Actually scratch that! I ‘kinda’ had plans but most of it involved challenging myself to eat my body’s weight in free samples at food markets in London and lots of catching up on Netflix  – both of which I am very skilled at but these plans changed when I got asked by Time Out London and Booking.com if I would a spontaneous weekend away. This, was a very easy yes! Especially so as Time Out is our go to place when it comes to looking for cool and different events in London. I can not tell you the amount of times Georgia, Lloyd, Chris and I (along with lots of our other friends) have decided on a whim to go out in London and whizzed through Time Out London’s impressively curated list of everything cool that’s going on in London. I’m pretty sure if you ask any Londoner they’ll probably tell you how important Time Out is to your social life in London – especially when you’ve not made enough plans in advance.\r\n\r\nAnyway, I digress – Time Out was already synonymous with spontaneous fun evenings in London for me and my friends so my first though as soon as I was asked was “Yeah…Why not?! Let’s do this!“.'),
(17, 'January-15-2019 12:20:47', '11 Reasons Why Singapore Zoo Is One Of The Best Zoos In The World', 'Vacation', 'Aulick', 'agi-banner-ai1.jpg', 'Singapore has 3 main cultures living together in harmony, a booming economy, low rates of crime, minimal traffic jams, and a peaceful feel that’s unique to this island nation. Even if your experience is limited to a stop at Changi airport, you can’t help but notice there’s something extraordinary about Singapore. \r\n\r\nI’ve been to dozens of zoos around the world, and to be honest, it now takes a lot to impress me. It’s fairly rare for me to carve precious time out of my itinerary to visit a zoo, but I made an exception this time.\r\n\r\nI had a feeling that Singapore Zoo would be pretty special so got discounted tickets at Voyagin and spent a day exploring Singapore Zoo and River Safari.\r\n\r\nLike the rest of Singapore, everything at the zoo was done a little differently and very efficiently. I found 11 ways that Singapore Zoo stands out as one of the best zoos in the world. '),
(18, 'January-15-2019 12:21:14', 'WHAT KIND OF BACKPACKER ARE YOU?', 'Research Travel', 'Aulick', '_102968357_diverse_politics.jpg', ' You always hear about the distinction between tourists and backpackers, but even among backpackers, we love to group each other into categories by who is the “better” traveler. Check into any hostel, and you will find a variety of travelers wearing their distinctive tribal gear and people going “Yeah, that guy over there? Definitely the partier.”\r\n\r\nSo who are the backpackers? What kind of types have I identified in the hostel jungle? After years of research, many!'),
(19, 'January-15-2019 12:22:54', 'Tips You Need to Know Before Planning a Group Trip', 'Group Tour', 'Meghana', 'safe_image.jpg', 'Group trips can be the best or worst type of trip ever. They can become one of the most amazing times of our lives, where we bond with our travel companions and reminisce about the group trip for years to come. Others, well… not so much.\r\n\r\nTraveling as a group can mean inside jokes, great stories, learning more about how to travel, and plenty of laughs.\r\n\r\nUnfortunately, it usually also involves more precise planning and a lot of organization, which can lead to tension, indecisiveness and bad planning.\r\n\r\nWe love group travel, and so we want to help you plan the best group trip possible and make it one of the great ones!\r\n\r\nWhether it’s a school break trip, a party vacation with friends, a group hiking trip, or attending a festival, there are a lot of things to consider when you’re planning a group trip.'),
(20, 'January-15-2019 12:23:09', 'A Road Trip to Leh – The Luxury Way', 'The RoadTrip', 'Deekshita', 'fit.jpg', 'Traversing through the challenging terrain leading up to Leh is every road-trip enthusiast’s travel dream. The virgin locales, rocky mountains, breathtaking views, tranquil gompas, bustling bazaars and delectable food scene – what’s not to love! Drop the idea of roughing it out like a conventional road-trip because this once-in-a-lifetime experience is best enjoyed in the lap of luxury. This exhaustive guide will help you explore Leh the opulent way incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut '),
(21, 'January-15-2019 12:23:38', 'MY PICK OF THE 5 BEST PLACES FOR YOGA TEACHER TRAINING IN RISHIKESH, INDIA', 'Volunteer Travel', 'ankita', 'safe_image.jpg', 'oga originated from India and Rishikesh, situated on the holy Ganges river at the foothills of the magical Himalayan mountains, is one of the most serene and spiritual towns in India. Ever since The Beatles visited the Maharishi Mahesh Yogi Ashram here in the late 1960s Rishikesh has been famous for being the ‘Yoga Capital of the World’ so it’s not surprising that there are many amazing ashrams, yoga retreats and places to do yoga teacher training in Rishikesh.\r\n\r\nRishikesh has a very special energy, soul stirring scenery and so many temples, ashrams, workshops and healing therapies here which make it a magnet for yogis and spiritual seekers so it’s easy to meet like minded people. There’s an eclectic mix of Indian and Western culture, with delicious local restaurants next to healthy Western restaurants serving nourishing vegan and vegetarian food, many with fabulous views over the river and mountains. As it’s a holy place no meat, eggs or alcohol are served in the restaurants here.\r\n\r\nThere’s also no shortage of places to shop in Rishikesh either, with affordable spiritual books, trinkets, jewelry, handbags, and hand-sewn dresses and skirts to choose from. You can also go white water rafting down the Ganges, visit the abandoned Beatles ashram and take part in the nightly Ganga Aarti along the River Ganga in Ram Jhula'),
(22, 'January-15-2019 12:24:05', 'Post 7', 'Science', 'Zoe333', 'HTML5 CSS3.jpg', ''),
(23, 'January-15-2019 12:24:52', 'OUR EXPERIENCE WORKING AS DIGITAL NOMADS AND LIVING IN A MOTORHOME', 'Long Term Slow Travel', 'Deekshita', 'children-running-t.jpg', 'Interested in trying the RV life without the commitment of purchasing an RV?\r\n\r\nThat makes me so happy!\r\n\r\nLiving in a motorhome while traveling the country is a whole new world – I’d hate for you to purchase one without seeing if the lifestyle is for you first!\r\n\r\nWhich is why I’m so excited to tell you that you don’t have to buy an RV to be a part-time digital nomad.\r\n\r\nSites like Outdoorsy allow you to rent RVs for as little as $50 per night. Here are our recommendations of which sites to use.\r\n\r\nRenting an RV is a great way to experience the lifestyle before you commit $10,000+ to buy your own RV. Plus, you can rent different styles to see which ones you like. And you can rent a camper for a month or more, and doing so lets you truly experience what it would be like to live in an RV (a week just isn’t enough time in my opinion).'),
(25, 'January-15-2019 12:26:22', 'Tower Bridge in London, a Triumph of Victorian Engineering, Turns 125', 'Business Travel', 'Aashruti', 'gas.jpg', '             Tower Bridge, which crosses the Thames close to the Tower of London, is celebrating its 125th anniversary this year. In addition to being a beloved icon of the city, it is one of the most recognizable structures in the world.\r\n\r\nIt was opened by the Prince of Wales, who was also the future King Edward VII, and his wife, the Princess of Wales.\r\n\r\nBuilt between 1886 and 1894, the bridge was designed so that hydraulic steam engines would raise and lower the two bascules or giant roadways to allow ships to pass through. The elevated walkway atop the bridge would allow pedestrians to cross when the bascules were open.\r\n\r\nThe bridge was designed by the architect, Sir Horace Jones, and the engineer, Sir John Wolfe Barry, in this manner because a standard fixed bridge at street level would have cut off access by ships to port facilities in the Pool of London, which is between London Bridge and the Tower of London. The bridge’s designers concealed the bascule pivots and operating machinery in the two towers, which are clad in Cornish granite and Portland stone to match the nearby Tower of London.                 '),
(38, 'January-26-2019 07:49:42', 'France offers citizenship to Malian immigrant', 'News', 'Tom', 'download.jpg', '                              '),
(51, 'January-26-2019 07:51:50', 'Education for Syrian Refugee Children', 'News', 'Zoe333', 'education.jpg', '                Symbolic Syrian Woman Alkuman-Made is asking for Free Education to all under-privileges . This will definitely a milestone in the middle eastern region.               ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
