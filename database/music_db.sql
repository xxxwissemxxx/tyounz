-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 05:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(30) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `description`, `cover_photo`, `date_created`) VALUES
(1, 'DRILL', 'Drill is a subgenre of hip hop music that originated in Chicago in the early 2010s. It is sonically similar to the trap music subgenre and lyrically similar to the gangsta rap subgenre. Artists within drill music have been noted for their explicit style of lyricism and association with crime in Chicago. The genre progressed into the American mainstream in 2012 following the success of rappers like Chief Keef, Lil Durk, Lil Reese, Fredo Santana, G Herbo, Lil Bibby and King Louie who had many local fans and a significant internet presence alongside producer Young Chop. Other rappers, such as LA Capone and RondoNumbaNine also contributed to the early drill scene. As the audience grew, media attention and the signing of drill musicians to major labels followed.', '1684289760_1b85b8a7-b607-48dc-8df5-1b45f3ddd1b4-s .jpg', '2020-11-19 08:26:53'),
(2, 'BOOM BAP', 'Boom bap is a subgenre and music production style that was prominent in East Coast hip hop during the golden age of hip hop from the late 1980s to the early 1990s .', '1684278180_0bbe0f0aa5baef2dae04c6e10f847b63.jpg', '2020-11-19 08:29:13'),
(3, 'TRAP', 'Trap is a subgenre of hip hop music that originated in the Southern United States in the 1990s.The genre gets its name from the Atlanta slang word \"trap house\", a house used exclusively to sell drugs .Trap music uses synthesized drums and is characterized by complex hi-hat patterns, tuned kick drums with a long decay (originally from the Roland TR-808 drum machine), and lyrical content that often focuses on drug use and urban violence .It utilizes very few instruments and focuses almost exclusively on snare drums and double- or triple-timed hi-hats.', '1684277700_WallpaperDog-5514229.png', '2020-11-19 08:59:17'),
(4, 'AFRO-TRAP', 'Afro trap is a genre that takes inspiration from both Sub-Saharan African music traditions and modern rap music. The genre was coined in the mid-2010s by French rapper MHD .MHD, who is of West African descent, stated he judged the world of French-language rap was too much influenced by American trends ,so he decided to create Afro-Trap by incorporating elements of West African culture, such as traditional music and languages such as Fula or Wolof .The genre is only very loosely influenced by trap music.', '1684348200_1.jpg', '2023-05-17 00:30:59'),
(5, 'LO-FI', 'Lo-fi is a music or production quality in which elements usually regarded as imperfections in the context of a recording or performance are present, sometimes as a deliberate choice. The standards of sound quality (fidelity) and music production have evolved throughout the decades, meaning that some older examples of lo-fi may not have been originally recognized as such. Lo-fi began to be recognized as a style of popular music in the 1990s, when it became alternately referred to as DIY music (from \"do it yourself\").', '1684348440_Wp2337007.jpg', '2023-05-17 19:34:57'),
(6, 'TECHNO', 'Techno is a genre of electronic dance music (EDM) which is generally produced for use in a continuous DJ set, with tempo often varying between 120 and 150 beats per minute (bpm). The central rhythm is typically in common time (4/4) and often characterized by a repetitive four on the floor beat.', '1684417920_maxresdefault (1).jpg', '2023-05-18 14:52:44'),
(7, 'RNB', 'Rhythm and blues, is a genre of popular music that originated in African-American communities in the 1940s. The term was originally used by record companies to describe recordings marketed predominantly to urban African Americans, at a time when \"urbane, rocking, jazz based music ... insistent beat\" was becoming more popular.', '1684418460_1684349460_Smooth-Rap-Rnb-Type-Beat-Madamoiselle.jpg', '2023-05-18 15:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `user_id`, `title`, `description`, `cover_image`, `date_created`) VALUES
(1, 1, 'SAD', '', '1684289460_desktop-wallpaper-frank-ocean-type-beat-choices-ft-joji-sad-lofi-type-beat.jpg', '2020-11-20 08:52:36'),
(2, 1, 'VIBE', 'some fresh beats for your mood', '1684289580_maxresdefault.jpg', '2020-11-20 08:58:35'),
(3, 2, 'My Playlist', 'Sample', '1605833940_h1.jpg', '2020-11-20 08:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_items`
--

CREATE TABLE `playlist_items` (
  `id` int(30) NOT NULL,
  `playlist_id` int(30) NOT NULL,
  `music_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist_items`
--

INSERT INTO `playlist_items` (`id`, `playlist_id`, `music_id`, `date_created`) VALUES
(1, 6, 1, '2020-11-20 08:52:51'),
(2, 2, 2, '2020-11-20 08:58:44'),
(3, 3, 2, '2020-11-20 08:59:46'),
(4, 3, 1, '2020-11-20 08:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `genre_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `description` text NOT NULL,
  `upath` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp(),
  `bpm` int(3) NOT NULL,
  `downloads` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `genre_id`, `title`, `artist`, `description`, `upath`, `cover_image`, `date_created`, `bpm`, `downloads`) VALUES
(4, 1, 4, 'jul x morad type beat', 'TOXXIK 💀', '&lt;p&gt;jul,&lt;span style=&quot;font-size: 1rem;&quot;&gt;morad,&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;afro-trap,&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;afro,&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;trap,&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;africa,&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;vibe,&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;summer&lt;/span&gt;&lt;/p&gt;', '1684279980_jul.mp3', '1684279980_eyJidWNrZXQiOiJidHMtY29udGVudCIsImtleSI6InVzZXJzL3Byb2QvMTAzNzEyNS9pbWFnZS9uQlBSMHpyYjNmMGgvbWF4cmVzZGVmYXVsdC5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsiZml0IjpudWxsLCJ3aWR0aCI6NzAwLCJoZWlnaHQiOjcwMH19fQ==.png', 2147483647, 125, 0),
(5, 1, 1, 'centrall cee type beat', 'TOXXIK 💀', '&lt;p&gt;centrall cee,guitar,piano,soft&lt;/p&gt;', '1684292460_hh.mp3', '1684292460_656227be-ccf9-4bc4-aacf-31b935844ff2_anchorball_httpss.mj.runuYVKoN_Rap_Singer_SnoopDog_chill_singing_psychedelic_in_the_style_of_garbagepail_Kids_c.png', 2147483647, 142, 0),
(6, 1, 3, 'lil baby type beat', 'TOXXIK 💀', '&lt;p&gt;lil baby&lt;/p&gt;&lt;p&gt;trap&lt;/p&gt;&lt;p&gt;piano&lt;/p&gt;&lt;p&gt;fast&lt;/p&gt;&lt;p&gt;hard&lt;/p&gt;&lt;p&gt;gunna&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1684501680_beeby.mp3', '1684501680_Screenshot_254.png', 2147483647, 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 2,
  `profile_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `type`, `profile_pic`, `date_created`) VALUES
(1, 'Administrator', '', 'Male', '+123546879', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-18 16:50:06'),
(2, 'John', 'Smith', 'Male', '+6948 8542 623', 'Sample address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 2, '1605833640_avatar.jpg', '2020-11-20 08:54:15'),
(3, 'wissem', 'mesboub', 'Male', 'TOXXIK 💀', 'djerba', 'gamingnews447@gmail.com', '6e93abeb1e6877596ca98a74e8b2a127', 1, '', '2023-05-16 00:00:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_items`
--
ALTER TABLE `playlist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlist_items`
--
ALTER TABLE `playlist_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
