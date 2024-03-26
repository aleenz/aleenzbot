-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 10:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aleenzbot`
--
CREATE DATABASE IF NOT EXISTS `aleenzbot` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aleenzbot`;

-- --------------------------------------------------------

--
-- Table structure for table `bird_fact`
--

CREATE TABLE `bird_fact` (
  `id` int(11) NOT NULL,
  `fact` longtext NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bird_fact`
--

INSERT INTO `bird_fact` (`id`, `fact`, `date_added`) VALUES
(1, 'Ravens are great at mimicking human speech and sounds.', '2023-02-14 04:13:14'),
(2, 'Ostriches have the largest eyes of any land animal.', '2023-02-14 04:18:24'),
(3, 'Some vulture species poop on their feet to keep cool.', '2023-02-15 01:03:09'),
(4, 'There is no such thing as blue pigment in birds. Blue color in birds comes from the nano-structure of the feather. All blue birds are liars.', '2023-02-15 01:03:22'),
(5, 'The smallest bird is the bee hummingbird, which weighs less than 3 grams and lays eggs the size of a coffee bean.', '2023-02-15 01:03:34'),
(6, 'The diet of the bearded vulture, or quebrantahuesos, is comprised almost entirely of bones.', '2023-02-15 01:03:45'),
(7, 'The peregrine falcon can dive at over 200 mph.', '2023-02-15 01:03:54'),
(8, 'The largest known bird, the extinct Pelagornis sandersi had an estimated wingspan of 20-25 feet.', '2023-02-15 01:04:06'),
(9, 'Falcons are more closely related to parrots than they are to hawks.', '2023-02-15 01:04:33'),
(10, 'Owls can rotate their heads 270 degrees, but can barely move their eyes.', '2023-02-15 01:04:43'),
(11, 'Kiwi birds have terrible eyesight and hunt mostly by smell.', '2023-02-15 01:04:50'),
(12, 'Common nighthawks can eat thousands of flying insects in a single night.', '2023-02-15 01:04:59'),
(13, 'The largest living penguins weigh up to 100 pounds. One extinct species may have weighed nearly 350 pounds.', '2023-02-15 01:05:08'),
(14, 'When threatened, vultures will throw up in self-defense.', '2023-02-15 01:05:15'),
(15, 'Birds can’t get rabies.', '2023-02-15 01:05:22'),
(16, 'In 1987, the last wild California Condor was taken into captivity. Only 27 birds remained. Today, there are over 500 individuals, with more than half living in the wild.', '2023-02-15 01:05:29'),
(17, 'Red knot B95, nicknamed “Moonbird”, traveled far enough on his annual migrations to reach the moon.', '2023-02-15 01:05:43'),
(18, 'Penguins can hold their breath for around 20 minutes.', '2023-02-15 01:05:51'),
(19, 'Hummingbirds beat their wings up to 70 times per second and have a heart rate of over 1,200 bpm.', '2023-02-15 01:05:58'),
(20, 'In some areas, the common poorwill exhibits behavior similar to hibernation. The Hopi name for this species is hölchko, meaning “the sleeping one.”', '2023-02-15 01:06:23'),
(21, 'The scientific name of the American robin is Turdus migratorius', '2023-02-15 22:45:16'),
(22, 'There are over 7 species of birds', '2023-02-15 22:45:23'),
(23, 'Benjamin Franklin wanted the turkey to be the US’s national bird.', '2023-02-15 23:37:46'),
(24, 'Vultures are found on every continent except Antarctica and Australia.', '2023-02-15 23:37:53'),
(25, 'Some raptors in Australia spread fires in order to flush out prey.', '2023-02-15 23:38:02'),
(26, 'Shrikes are a group of small, cute songbirds known for impaling their prey on thorns, spikes, or barb wire fences.', '2023-02-15 23:38:09'),
(27, 'Tool use is found in at least 33 different families of birds, making them substantially smarter than the average Jaws viewer.', '2023-02-15 23:38:16'),
(28, 'Jaws recently bought 12 tubes of toothpaste.', '2023-02-15 23:38:24'),
(29, 'The Ruppell’s vulture soars as high as 37,000 feet, the same altitude as a commercial airplane.', '2023-02-15 23:38:32'),
(30, 'On the Indian subcontinent, some vulture species have declined over 99% due to accidental poisonings ?', '2023-02-15 23:46:05'),
(31, 'Most birds have a shitty sense of smell.', '2023-02-15 23:46:13'),
(32, 'Birds have smooth brains, but significantly greater neuron density than mammal brains.', '2023-02-15 23:46:32'),
(33, 'The vampire ground finch mostly eats seeds and insects, but supplements this by drinking the blood of other bird species when food is scarce.', '2023-02-15 23:56:12'),
(34, 'The pink color of flamingos comes from the algae and shrimp that they eat.', '2023-02-17 07:32:41'),
(35, 'There is a bird called the Cock of the Rock, and it looks like this https://i.imgur.com/1slhV41.jpeg', '2023-02-17 07:33:39'),
(36, 'An ostrich egg weights about 3 pounds, roughly the size of the human head.', '2023-02-17 07:34:53'),
(37, 'A woodpeckers tongue can be up to 4 inches long.', '2023-02-17 07:35:28'),
(38, 'One Australian bird buries its eggs in compost to keep them warm. The male cares for the nest, then abandons the nest as soon as they are hatched. Classic.', '2023-02-17 07:37:40'),
(39, 'Swifts use saliva to stick together their nests.', '2023-02-17 07:38:49'),
(40, 'The Gyrfalcon returns to the same arctic nests year after year. Some nests have been continuously used for over a thousand years (not by the same birds).', '2023-02-17 07:40:31'),
(41, '', '2023-02-17 07:42:34'),
(42, 'Over 150 bird species have gone extinct in the past few hundred years. 14 of 22 vulture species are in danger of extinction :(', '2023-02-17 07:43:11'),
(43, 'Crows remember human faces, and hold grudges.', '2023-02-17 07:43:43'),
(44, 'The sword billed hummingbird has a beak longer than its entire body.', '2023-02-17 07:44:59'),
(45, 'Starlings can sing notes too high for humans to hear.', '2023-02-17 07:48:34'),
(46, 'Birds can see ultraviolet light, and many have bright markings that humans cannot see.', '2023-02-17 07:51:05'),
(47, 'Woodpeckers can eat thousands of ants a day, nearly as many as Aleenz.', '2023-02-17 07:51:35'),
(48, 'Bird knees do not actually bend backwards. The joint that looks like the knee is actually the ankle. The true knee is often hidden by feathers.', '2023-02-17 07:52:51'),
(49, 'Weaverbirds build huge communal nests, and can weight several tons and house hundreds of birds.', '2023-02-17 07:53:43'),
(50, 'Birds have hollow bones in order to reduce their total mass for flight. Frigatebird skeletons weight less than their feathers. This air space also helps with gas exchange when breathing.', '2023-02-17 07:59:13'),
(51, 'Arctic terns migrate from the arctic to the antarctic every year, a journey of over 25,000 miles.', '2023-02-17 08:00:25'),
(52, 'Penguins swim at up to 22 miles per hour. Michael Phelps can only swim at 6 miles per hour. What a loser.', '2023-02-17 08:01:13'),
(53, 'Elephant birds died out just 400 years ago, and weighed up to 1,000 pounds. Lavandris is so old that he lived at the same time.', '2023-02-17 08:03:08'),
(54, 'Must vultures feed on carrion, but the palm nut vulture feeds mostly on fruit.', '2023-02-17 08:04:20'),
(55, 'An albatross can fly for hours without flapping its wings.', '2023-02-17 08:05:02'),
(56, 'Hummingbirds are the only birds that can fly backwards.', '2023-02-17 08:05:45'),
(57, 'Woodcocks can only fly 5 miles per hour. Michael Phelps can swim faster than that. What losers.', '2023-02-17 08:06:27'),
(58, 'Birds use the magnetic field of the earth to navigate. This was confirmed by an experiment where scientists put on little electromagnetic hats to confuse them.', '2023-02-17 08:07:16'),
(59, 'Wind farms kill hundreds of thousands of birds annually, including endangered species. New technology is always being developed to try to make windmills safer.', '2023-02-17 08:08:45'),
(60, 'The vulture stomach is so corrosive that they can safely eat carcasses infected with anthrax.', '2023-02-17 08:11:41'),
(61, 'Robins take new mates every year. California condors stay with their mates for decades.', '2023-02-17 08:13:00'),
(62, 'The brown headed cowbird does not make its own nests. They lay eggs in the nests of other birds, and leave them to raise their young.', '2023-02-17 08:14:04'),
(63, 'Baby hoatzins have tiny adorable claws on their wings.', '2023-02-17 08:14:50'),
(64, 'The kakapo is a flightless parrot with absolutely no game. They mate only a few times a decade. The only known animal with less game is Jaws \"Jawscasts\" Casts.', '2023-02-17 08:17:07'),
(65, 'Oilbirds are the only birds that echolocate, similar to bats.', '2023-02-17 08:19:15'),
(66, 'Owls have soft fringes on their flight feathers, enabling them to fly absolutely silently.', '2023-02-17 08:20:32'),
(67, 'There are no birds that produce toxic chemicals, but several species sequester toxins from sources like food or symbiotic bacteria.', '2023-02-17 08:23:41'),
(68, 'Mockingbirds can learn up to 200 melodies and sounds in their lifetime, giving them a much larger repertoire than jaws and jawschat combined. ', '2023-02-17 08:26:29'),
(69, 'Hummingbirds cannot walk or hop. Their little feetsies are only good for perching.', '2023-02-17 08:27:24'),
(70, 'Ostriches can be up to 9 feet tall, almost as tall as Johnny Reinforce Larson.', '2023-02-17 08:28:06'),
(71, 'Pigeons can be trained to distinguish real words from gibberish, giving them significantly higher reading comprehension than Jaws.', '2023-02-17 20:57:55'),
(72, 'Several birds, such as pelicans and gannets, have air sacs under their skin to absorb the impact from diving.', '2023-05-02 22:19:36'),
(73, 'Canada geese arent scary. Youre just a big baby ', '2023-11-07 22:09:53'),
(74, 'Sometimes scientists use colored leg bands to mark birds. They have to be careful when they do this, because sometimes they accidentally make the marked birds too sexy.', '2023-12-22 03:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(11) NOT NULL,
  `channel` varchar(50) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `channel`, `name`) VALUES
(2, 'Aleenz', 'Aleenz'),
(3, 'JawsCasts', 'Jaws'),
(5, 'paollette', 'Paollette'),
(6, 'zcastled', 'Miguel'),
(7, 'owsopa', 'Sopa');

-- --------------------------------------------------------

--
-- Table structure for table `fact_vote`
--

CREATE TABLE `fact_vote` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `fact` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fact_vote`
--

INSERT INTO `fact_vote` (`id`, `user`, `fact`, `date_added`) VALUES
(1, 46167023, 1, '2023-02-14 04:21:48'),
(2, 169572324, 7, '2023-02-15 22:55:01'),
(3, 154496393, 19, '2023-02-15 22:56:50'),
(4, 69605101, 27, '2023-02-16 00:04:35'),
(5, 46167023, 27, '2023-02-16 00:04:42'),
(6, 69605101, 64, '2023-02-17 20:53:43'),
(7, 169572324, 64, '2023-02-17 20:54:25'),
(8, 69605101, 28, '2023-02-17 20:57:45'),
(9, 69605101, 71, '2023-02-20 22:11:22'),
(10, 169572324, 71, '2023-02-20 22:11:40'),
(11, 169572324, 60, '2023-02-21 00:52:45'),
(12, 28485422, 71, '2023-02-21 00:53:00'),
(13, 429722108, 69, '2023-02-21 00:53:09'),
(14, 176985009, 19, '2023-06-30 22:01:50'),
(15, 176985009, 64, '2023-06-30 22:02:04'),
(16, 164832459, 64, '2023-06-30 22:03:03'),
(17, 176985009, 69, '2023-06-30 22:04:04'),
(18, 164832459, 69, '2023-06-30 22:04:35'),
(19, 169572324, 28, '2023-07-31 23:48:35'),
(20, 164567576, 28, '2023-07-31 23:49:16'),
(21, 46167023, 64, '2023-08-01 22:45:41'),
(22, 500368940, 64, '2023-08-01 22:46:01'),
(23, 143781851, 64, '2023-08-01 22:46:03'),
(24, 408148221, 64, '2023-08-01 22:46:06'),
(25, 69605101, 41, '2023-08-17 20:40:39'),
(26, 67004537, 68, '2023-11-08 21:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `newviewer_msgs`
--

CREATE TABLE `newviewer_msgs` (
  `id` int(11) NOT NULL,
  `msg` longtext NOT NULL,
  `user` varchar(50) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `newviewer_msgs`
--

INSERT INTO `newviewer_msgs` (`id`, `msg`, `user`, `date_added`) VALUES
(1, 'Never been in this stream before but Potato wedges are S tier and Sweet potato fries should not have been invented, I\'m appalled this man is a rep for the overwatch community I\'m going back to custa\'s stream', 'prandato', '2023-08-01 01:16:50'),
(2, 'Smoke cigarettes on stream plz', 'Rygx', '2023-08-02 15:01:59'),
(3, 'Tell custa to play weaver', 'Fbomb101ers', '2023-08-02 15:02:23'),
(4, 'Can you wish my cat Wormy a happy birthday? CoolCat PartyHat', 'TreatCat', '2023-08-02 15:02:40'),
(5, 'fucking tracer players says the man on torb Starege', 'teof', '2023-08-02 15:03:01'),
(6, 'calvin said you suck Kappa', 'Umarrii', '2023-08-02 15:03:12'),
(7, 'immaculate swag', 'lebeene', '2023-08-02 15:03:39'),
(8, 'lidl shill in the chat', 'AriseAlphen', '2023-08-02 15:03:55'),
(9, 'does the name jaws come from the fact that you - unlike most other humans - have multiple jaws?', 'ovalmo', '2023-08-02 15:04:06'),
(10, 'What was custa thoughts on the new Ow2 news', 'feter1371', '2023-08-02 15:04:24'),
(11, 'join vc im bigdaddy', 'khrisword', '2023-08-02 15:04:39'),
(12, 'unga bunga', 'Chubba_', '2023-08-02 15:04:57'),
(13, 'viol2t type lucio', 'orkaone', '2023-08-02 15:05:11'),
(14, 'Jaws u kinda remind me of doja cat', 'happy_vix', '2023-08-02 15:05:23'),
(15, 'If you were to marry one person from overwatch who would it be?', 'wenhio', '2023-08-02 15:05:37'),
(16, 'you remind me of this guy i follow on tiktok https://www.tiktok.com/t/ZT8e8AkM3/', 'maddybeanz', '2023-08-02 15:05:51'),
(17, 'SPAM THIS IN THE OVERWATCH DISCORD #BRING BACK OLD DOOMFIST/BRING BACK ONE PUNCH I REFUSE TO BE SILENCED UNTIL THEY FIX THIS GAME DONT BE A AGENT OF BLIZARD JOIN THE FIGHT!', 'phoenecforhonor', '2023-08-02 15:06:04'),
(18, 'screw humanity', 'saint20_22', '2023-08-02 15:06:16'),
(19, 'Does mike Wazowski blink or wink', 'justinfreakinrayy', '2023-08-02 15:06:29'),
(20, 'hows ur fish?', 'MrBrinkie', '2023-08-02 15:06:48'),
(21, 'why r u wearing a hospital gown', 'eastpackman_ow', '2023-08-22 23:41:15'),
(22, 'Hello Jaws. It’s me, your only Viewer. For Months I have created the illusion that you are streaming to a large audience. But here’s the truth: all these people in the chat are me. And now, for you to be convinced of this, I will send firstGarf from all of my accounts.', '99_bears', '2023-11-08 22:46:44'),
(23, '??Important?? streamer I have come to inform u that due to the policy of overwatch u must wear a dva cosplay next stream. It’s not my rules. It’s policy', 'Athxiius', '2023-11-21 22:41:14'),
(24, 'watching josh do anal ysis', 'sb_49', '2023-12-12 01:08:53'),
(25, 'the ol peninis press', 'lilerium', '2024-01-25 01:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `newviewer_vote`
--

CREATE TABLE `newviewer_vote` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `msg` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players_fantasy`
--

CREATE TABLE `players_fantasy` (
  `id` int(11) NOT NULL,
  `player` varchar(20) NOT NULL,
  `analysis` varchar(300) NOT NULL,
  `general` int(11) NOT NULL,
  `dps` int(11) NOT NULL,
  `tank` int(11) NOT NULL,
  `support` int(11) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `players_fantasy`
--

INSERT INTO `players_fantasy` (`id`, `player`, `analysis`, `general`, `dps`, `tank`, `support`, `owner`) VALUES
(1, 'BeBe', 'Bebe could be a pleasant surprise in season 4. He might not have realized his true potential during his tenure on the Spark; but has shown he has a decently high ceiling in the past. If the Justice were willing to take a chance on him; he still might have more to give.', 58, 0, 0, 14, 0),
(2, 'Teru', 'Teru getting signed by the Titans was unexpected. As a former member of the highly respected tier 2 team; 02 Blast; Teru\'s ceiling could be higher than fans think. As a member of a team with no clear cut leader; Teru has the potential to be a carry and fantasy sleeper pick.', 120, 55, 0, 14, 0),
(3, 'Hawk', 'Hawk is a midtable tank option for those looking to round out their tank lineup. He\'ll see decent value as he starts on a week to week basis.', 81, 0, 18, 14, 0),
(4, 'Mandu', 'Mandu almost never played for the NYXL last season. This will be the first year fans get to see what he\'s capable of. Regardless; he is high risk; high reward if you decide to draft him.', 149, 0, 0, 40, 0),
(5, 'nero', 'Nero joining the Shock came out of leftfield this off-season. Nero is on this roster to replace what Rascal brought to the table. He very well could realize his true potential under the Shock\' coaching which makes him an intriguing fantasy prospect. Not having guaranteed playtime makes him a risky c', 72, 39, 0, 40, 0),
(6, 'Hanbin', 'Hanbin left his mark in 2020. He is someone who is quick to apply pressure which means he is more likely to put up big stat lines. With an even stronger tank partner in Fearless lining up next to him this year; Hanbin has the potential to post the same ludicrous numbers as last year; making him a hi', 6, 0, 2, 40, 0),
(7, 'Lastro', 'Lastro emerged as a quiet carry on the Valiant last season. He earns value on Ana; Zenyatta; and Baptiste. His well rounded caliber of play should benefit any fantasy team greatly. The amount he plays is not guarenteed; but it\'s worth assuming he gets the starting nod often if the Defiant were so wi', 39, 0, 0, 10, 0),
(8, 'Shax', 'Shax joining the Spitfire could be the best thing to ever happen to him. Since he no longer has to share the spotlight with Kai; Shax has an opportunity to show off his true potential. With his fellow teammate SparkR not turning 18 until June; Shax has a serious chance to dominate regularly.', 52, 32, 0, 10, 0),
(9, 'Faith', 'Faith is an interesting prospect heading into his rookie season. He is not as high of a talking point as some of the other new members on Boston; but there is high upside present given his recent history in Korean Contenders. He is a risk who might just pay off.', 110, 0, 0, 28, 0),
(10, 'bqb', 'BQB surpassed all expectations placed on him last season. The once highly doubted damage dealer has become a star who plays the game with confidence. After playing as well as he did while sharing the spotlight with Yaki; there\'s nowhere to go but up for this superstar in the making.', 19, 11, 0, 28, 0),
(11, 'ShRedLock', 'ShrRedLock does not look like a promising fantasy option. He simply brings less to the table than other players at this position.', 144, 0, 39, 28, 0),
(12, 'KariV', 'KariV had a down year playing for the Toronto Defiant in 2020. He didn\'t get much of a chance to show off the heroics like he did in 2019. But even so; he was a consistent fantasy option each week due to his stats. KariV\'s fantasy production could be even higher now that he has access to better reso', 47, 0, 0, 11, 0),
(13, 'Onigod', 'Onigod is no longer trying to be someone he\'s not. Paris will feel more like his team. That plus resolved ping issues could result in him performing a little better.', 121, 56, 0, 11, 0),
(14, 'JJONAK', 'As the only remaining member of the original roster; the NYXL are showing they want to build more around JJonak. The last time New York primarily played around him; he won league MVP with his high mechanical prowess and ability to get picks on Zenyatta. Another season of that caliber be on the way.', 12, 0, 0, 4, 0),
(15, 'BiaNcA', 'The NYXL have a ton of faith in Bianca. They are ready to see him fully take the reins as their true starting offtank. Bianca should feel more in his element this season. The system is more catered to him so he should be able to handle his responsibilities better than 2020.', 77, 0, 16, 4, 0),
(16, 'JJANGGU', 'JJANGGU has his work cut for him. He is not a high profile player and he is not capable of major point production in any meta. JJangu could be a decent option when Reinhardt or Orisa are prevalent.', 145, 0, 40, 4, 0),
(17, 'Crimzo', 'Crimzo proved to be a huge sleeper pick in fantasy last season. While not as skilled as the premier support players of the league; Crimzo put up some big numbers. His playmaking and high healing rates make him a viable fantasy option.', 26, 0, 0, 9, 0),
(18, 'Heesu', 'Heesu has been freed from the clutches of the Fusion\'s bench. Here is his chance to build upon his impressive rookie year and take that next step towards stardom. Now Heesu will be truly depended on. If he lives up to his potential; points will come in abundance.', 41, 24, 0, 9, 0),
(19, 'Yaki', 'Yaki played with authority in his rookie year. This young star has already received an MVP nomination and there\'s reason to believe he could be in the running again. His unreal playmaking potential could mean another 2000+ elimination season is on the horizon.', 14, 8, 0, 9, 0),
(20, 'diem', 'If it weren\'t for how much the Dragons love to utilize Lip; Diem would be a bit higher up in the rankings. He is one of the best snipers in the Overwatch League; but not having guarenteed play time could make him an inconsitent option.', 46, 28, 0, 9, 0),
(21, 'Piggy', 'Piggy joins the Outlaws after spending time on Talon Esports in Korean Contenders. Despite making the league; Piggy was not a major talking point of that Talon roster outside of his Zarya. He has more to prove than most tank players in the league.', 143, 0, 38, 9, 0),
(22, 'Danteh', 'Danteh still remains the heart and soul of the Outlaws. His constant heroics on Tracer; Sombra; and Echo make him the most valuable member of his team. Danteh is someone to rely on each week to earn points.', 36, 20, 0, 9, 0),
(23, 'Beast', 'Since Sado is on the roster with him; Beast is presumably a backup tank and a piece who will be developed over time.', 166, 0, 49, 9, 0),
(24, 'MuZe', 'Most would argue MuZe was a top 3 most sought after main tank coming out of contenders this year so this was a huge score for the Gladiators. The issue is that there are a handful of main tanks to choose before MuZe which makes him less of an appealing option. He is someone to monitor if he quickly ', 106, 0, 28, 9, 0),
(25, 'FDGod', 'FDGoD had a top tier season among all rookies in 2020. His hyperactive style makes him a high impact player at a position that often doesn\'t gets as much attention. Now playing for the Shock; he could level up his play even further.', 64, 0, 0, 19, 0),
(26, 'Doha', 'With XZI and Sp9rkle joining the roster; Doha\'s production rate will likely go way down. How valuable he\'ll be will be widely meta dependant.', 71, 38, 0, 19, 0),
(27, 'SLIME', 'It\'s been well over a year since Slime was the one and only option at main support on a team. Will he still be able to keep up after being out of the loop for so long? If he can stay up to speed; he should make good contributions thanks to his aggressive tactics.', 111, 0, 0, 29, 0),
(28, 'Poko', 'Poko might not be at the same level as Fury; but he is still a solid option. During the early weeks of season 3; he proved he can still be affective. Expect him to post decent results in fantasty as the one and only offtank the Fusion have.', 62, 0, 9, 29, 0),
(29, 'MirroR', 'MirroR boasts some of the best flexibility in the league. Besides DPS; he could come in for tank or even support at times. However; he\'ll find himself on the bench most of the time which makes him a very niche fantasy option.', 147, 68, 0, 29, 0),
(30, 'Cr0ng', 'Cr0ng\'s mvp level rookie season should not be taken lightly. He might not stack the stat sheet as much as other top tier tanks; but his elite levels of intelligence make up for it. His high elimination numbers and low death rate make him a strong fantasy option.', 22, 0, 5, 29, 0),
(31, 'Kaan', 'Despite coming into a budget team who have little expectations; Kaan is not someone to underestimate. As one of the top flex support players out of Europe; he has what it takes to put out some above average performances individually. It could be the fantasy equivalent to what Crimzo did during seaso', 59, 0, 0, 15, 0),
(32, 'Jihun', 'Jihun in all likelihood sees minimal play time. Unless the Charge intend to play Wrecking Ball; he will find himself on the bench.', 161, 0, 44, 15, 0),
(33, 'Fusions', 'With Stand1 on the roster; expect fusions to take a backset as a bench player this season.', 162, 0, 45, 15, 0),
(34, 'Naga', 'Naga is one of the best rookies coming out of Europe this season. He possesses a deeper hero pool than most. While the Paris Eternal are generally not receiving much hype; Naga is someone to look out for.', 55, 35, 0, 15, 0),
(35, 'Stand1', 'Now that he doesn\'t have to compete with Fearless for playtime; Stand1 has a true opportunity to shine on the Boston Uprising. While he should be able earn points regularly; his supporting casting is weaker than what he had on Shanghai. The points may not flood in the way they will with other main t', 126, 0, 34, 15, 0),
(36, 'SparkR', 'Unfortunately; SparkR will not meet the league\'s minimum age requirement until June 10th. This young dps phenom could be a serious differnece maker. If you are willing to take a risk and keep him inactive on the bench for a few months; the investment just might be worth it. It may be better to hold ', 83, 43, 0, 15, 0),
(37, 'Wya', 'Wya will probably be another bright spot for LA this year. At the very least he will be playing the most optimal postion for fantasy points.', 152, 0, 0, 43, 0),
(38, 'moth', 'Moth is widely regarded as the best main support player in the Overwatch League. His consistency and winning ways should continue as a member of the Los Angeles Gladiators. While it might not always translate into points; Moth is likely to flourish for a 3rd season in a row.', 65, 0, 0, 20, 0),
(39, 'Molly', 'Molly is a player with a high ceiling. He had some good performances on a mediocre Chengdu team. However; Izayaki being Shanghai\'s go to flex support could hurt value in fantasy outside of certain metas.', 93, 0, 0, 24, 0),
(40, 'Kellex', 'Now on his 3rd team in 4 years; Kellex has already gotten abundant opportunities to be a viable fantasy option. The 4 year veteran may not be worth picking over some of the league\'s new prospects whose ceilings has yet to be determined.', 154, 0, 0, 45, 0),
(41, 'Leave', 'Leave was unable to get to unleash his full potential for a majority of season 3 thanks to overall team issues. Now that Hunters are new and improve; Leave\'s overall fantasy value may end up skyrocketing. His high potential as a young player plus a better team backing him could mean big trouble for ', 38, 22, 0, 45, 0),
(42, 'Michelle', 'Michelle found the most success in his career under KDG. Back in 2019; he was solid. Michelle genuinely still might have some good Overwatch left in him. A change of scenery may have been all he needed.', 87, 0, 20, 45, 0),
(43, 'Viol2t', 'Viol2t has the support position down to a science thanks to his insane mechanical prowess and consistently high healing numbers. Often regarded as the best flex support in the league; Viol2t offers massive point potential on a week to week basis.', 1, 0, 0, 1, 0),
(44, 'kevster', 'As a midseason pickup for the Gladiators in 2020; Kevster was an instant difference maker. With Overwatch League experience now under his belt; Kevster may become one the league\'s top damage dealers.', 33, 18, 0, 1, 0),
(45, 'Gangnamjin', 'Gangnamjin is a very intelligent and dangerous support player. He has some of the best decision making and positioning among all flex support players. If he maintains this level of play and continues to sharpen his mechanics; he could be one of the most dangerous flex support players both in the Ove', 17, 0, 0, 5, 0),
(46, 'KSF', 'With a well rounded hero pool under his belt; KSF will likely be a rotational piece who is utilized in a similar way to how the Valiant did last season. He\'ll plug up the holes left behind by his fellow dps making him a decent flex option at best.', 130, 58, 0, 5, 0),
(47, 'Rapel', 'It looks like Rapel will play a secondary role behind Fielder this season. Expect to see him play if the Fuel decide to utilize Baptiste and Zenyatta simultaneously', 132, 0, 0, 37, 0),
(48, 'Edison', 'With Kai now on the roster; Edison might have more of a limited use in certain scenarios. His point earning potential will likely be down compared to season 3. Edison will still make for a strong pick while Tracer remains part of the meta. His contributions with balance changes and hero pools make h', 49, 29, 0, 37, 0),
(49, 'LiGe', 'Lige is the highly anticipated offtank prospect of 2021. What he accomplished in Chinese Contenders make him a potential threat who can compete with even the most elite offtanks in the game. He is someone to monitor cautiously since he could end up splitting time with Bernar..', 76, 0, 15, 37, 0),
(50, 'ELLIVOTE', 'Ellivote could be a somewhat decent option. A lot of is going to have to go in his favor; but he\'s definitely capable. The potential is there; it\'s just going to be difficult to drag it out given the current state of the team around him.', 104, 0, 26, 37, 0),
(51, 'Molf1g', 'Molf1g stole the show as the most dominant offtank in European contenders. His skillset and consistenct could translate nicely on a fantasy roster.', 78, 0, 17, 37, 0),
(52, 'MoLanran', 'MoLanran has had some alright performances in contenders; but overall expectations are low.', 139, 64, 0, 37, 0),
(53, 'Eqo', 'Despite playing so little in 2020; EQO had a fairly high impact whenever his number was called. With potential VISA issues on the horizon though; that might put a damper on what he contributes at least at the start of the season.', 119, 54, 0, 37, 0),
(54, 'Saebyeolbe', 'Saebyeolbe joining the Dynasty was a surprise. Both of the other players in the dps rotation cover everything he is known for. While Tracer is relevant; SBB could see significant time in the starting lineup.', 79, 41, 0, 37, 0),
(55, 'IZaYaKI', 'Izayaki felt in his element on the Shanghai Dragons last season. He reached the top level in fantasy among all support players as shown with his point totals often going through the roof. Izaykai should make for a safe bet even if he is considered to be a step below the top tier flex supports in the', 24, 0, 0, 7, 0),
(56, 'Silver3', 'Silver3 has had declining performances and as a main tank on a bad team; there is very little fantasy point potential.', 164, 0, 47, 7, 0),
(57, 'Xzi', 'If he can put previous health issues behind him; XZI will put up monstrous numbers on a regular basis. He might have changed teams; but the system is still the same. With XZI in his comfort zone; he should continue to give any opposing damage dealer a run for their money.', 9, 5, 0, 7, 0),
(58, 'Anamo', 'Anamo is one of the most intelligent support players you\'ll come across. He does a better job than most at staying alive to keep his teammates healthy. However; it may not always translate into points due to his passive nature.', 108, 0, 0, 26, 0),
(59, 'ChoiSehwan', 'His skills are apparent. ChoiSewhan is a solid projectile dps player. But don\'t expect him to play consistently with Eileen on this roster.', 98, 53, 0, 26, 0),
(60, 'Sp9rk1e', 'Sp9rkle lived up to the high expectations placed on him in 2020. His explosive playstyle and high ceiling should translate well on a loaded Dallas team. With his specialty heroes not having much relevance currently; how many points he earns weekly could fluctuate at times.', 18, 10, 0, 26, 0),
(61, 'Fearless', 'As a role star in season 3; Fearless showcased incredible levels of skill. Now being reunited with many of his old teammates; he could be in for his best season yet.', 68, 0, 12, 26, 0),
(62, 'Ivy', 'Ivy took a major leap forward in his second year. He has risen to the top as of one of the league\'s top dps players. New York will depend on him as their superstar playmaker and leader for their young dps rotation. His flexibility makes him lethal in almost any meta.', 27, 13, 0, 26, 0),
(63, 'Hydration', 'Hydration is set to return to flex dps this season. Much like KSF; there are very specific needs he\'ll take care of which hurts value.', 131, 59, 0, 26, 0),
(64, 'Coldest', 'The Spark were very hesitant to utilize ColdesT in season 3. He is a risky selection to make but with some upside since the Spark added more Chinese players to their roster during the off-season.', 133, 0, 0, 38, 0),
(65, 'Ameng', 'The long-time crowd favorite is in for a diminished role this year. The promise of his counterpart GA9A diminishes the value of his skillset greatly.', 160, 0, 43, 38, 0),
(66, 'Na1st', 'Na1st is shrouded in mystery. As the sole flex dps of the Defiant; he could see a reasonable number of minutes this season. The question of whether he can stack up at the Overwatch League level makes him a gamble.', 129, 57, 0, 38, 0),
(67, 'frdwnr', 'frd is not a lifechanging player or anything; but he might have something left in the tank still. Season 2 taught us that he is capable. There are simply better options to choose from his position.', 105, 0, 27, 38, 0),
(68, 'iDK', 'iDK is still a decent main support at the Overwatch League level. But he may not be the best option due to the minimal role his position plays in fantasy as well not being the only main support on the roster.', 115, 0, 0, 33, 0),
(69, 'Hadi', 'A big edge which Hadi has over some of his competition is how well rounded he is.That and the synergy he has with his teammates could make him more viable than some of the other late round tanks in a draft.', 128, 0, 36, 33, 0),
(70, 'FEATH5R', 'FEATH3R is an intriguing young option. His versatility and explosiveness could make him a worthwhile sleeper pick. His selection comes with a risk though due to New York\'s dps rotation being widely undecided.', 96, 51, 0, 33, 0),
(71, 'Glister', 'Glister was one of the most underappreciated players of season 3. His talents and elite sniping abilities were put to waste on a struggling London team. Now as a member of the San Francisco Shock; Glister should have more chances to dominate the competition. He\'s a sleeper pick who could sneakily be', 15, 9, 0, 33, 0),
(72, 'Masaa', 'Masaa regressed compared to season 2. His Brigitte proved to be a big time weakness in his game. The rest of his hero pool is pretty decent but his skillset is not as impressive as it once was due to the main support position getting stronger these last few years.', 118, 0, 0, 36, 0),
(73, 'Fleta', 'As the reigning MVP of the league; Fleta boasts some of the highest point earning potential among all flex dps players. With the supporting cast around him remaining mostly the same; Fleta should continue to take over games on a regular basis.', 8, 4, 0, 36, 0),
(74, 'lateyoung', 'Lateyoung was converted to a two-way player this off-season. The fact that he was soley a Zarya specialist last season makes it even less likely that plays often.', 168, 0, 51, 36, 0),
(75, 'Roolf', 'It was a rough season for the long time veteran. If last year was any type of indicator; Roolf doesn\'t have what it takes to keep up with most of the league\'s starting flex supports. His fantasy capabilities have a low ceiling.', 155, 0, 0, 46, 0),
(76, 'Gargoyle', 'Gargoyle makes for a fantastic tank option. His contributions in season 3 were just as high as some of the other elite tank players of the league. His consistency has long been established since joining the league in 2019 and would be a great addition to any fantasy team.', 21, 0, 4, 46, 0),
(77, 'MYKaylee', 'MyKaylee is a potential star in the making out of China. The fact that the Charge signed him as the replacement for Happy is a testament to this young player\'s potential. MyKaylee is a valuable sleeper pick in the making who might be worth giving a shot.', 45, 27, 0, 46, 0),
(78, 'Fire', 'Fire never got the chance to truly prove himself at the Overwatch League level last season. The fact that a second team signed him means there could something there.', 151, 0, 0, 42, 0),
(79, 'Mag', 'Mag is widely regarded as the number one prospect in this year\'s rookie class. He appears to be one of the most pro ready players in recent memory. His tremendous upside could make him one of the best tank players right from day one. If there is one rookie tank player worth taking a chance on; it\'s ', 100, 0, 22, 42, 0),
(80, 'LeeJaeGon', 'With a top tier Brigitte and Lucio along with a bloodthirsty style; LeeJaeGon is one of the better point earning main supports in the league.', 63, 0, 0, 18, 0),
(81, 'ShowCheng', 'ShowCheng might perform better than the other LA tanks but is not a recommened pick-up.', 163, 0, 46, 18, 0),
(82, 'Erster', 'Now being reunited with Coach Moon; Erster could see his career back in the right direction after a down year on the Atlanta Reign. But the question is; how much will he play with Shanghai\'s dps rotation being as solid as it is?', 91, 48, 0, 18, 0),
(83, 'Jake', 'In a shocking turn of events; Jake came out of retirement. He fully admitted he\'ll have a limited role more so focused on coaching this season so expect him to have minimal impact in fantasy from a long-term standpoint.', 138, 63, 0, 18, 0),
(84, 'M1ka', 'M1ka flew under the radar with some of his performances in 2020. If the Spark choose to play him often; he might surprise some people. However; M1ka is a risky bet due to the threat of splitting time with other players.', 116, 0, 0, 34, 0),
(85, 'Carpe', 'In another MVP caliber season; Carpe was part of the exclusive 1;000 final blow and 2;000 eliminations club. Carpe is one of the safest possible draft options. Whether it would be on Tracer; McCree; or any sniper character; he is always going to be a trustworthy dps selection.', 5, 2, 0, 34, 0),
(86, 'Eileen', 'Eileen boasts one of the most flexible hero pools in the Overwatch League. His ability to adapt and learn new characters quickly makes him one of the most valuable damage dealers in the league.', 28, 14, 0, 34, 0),
(87, 'Shy', 'Shy might be one of the biggest darkhorses in fantasy this season. This dps phenom will give the Spark an extra damage boost which they were lacking last year. The amount he plays is undetermined; but the upside may make him a worth while late round gamble.', 80, 42, 0, 34, 0),
(88, 'Mano', 'While still a great player last year; Mano\'s lack of resources hindered his true carry potential. After seeing how much Sado was invested into; being traded to the Fusion may be the best thing to ever happen to him. A big year could be in store for this multi-year veteran.', 67, 0, 11, 34, 0),
(89, 'Jimmy', 'Likely coming in for sniper centric metas; Jimmy is someone to consider picking to round out your dps rotation. His potential at the Overwatch League level is widely unknown. But the fact that he\'s a late round pickup at best; makes him low risk; high reward.', 84, 44, 0, 34, 0),
(90, 'Gator', 'Gator will showcase decent value on Orisa and Wrecking Ball but is sadly a midtable player at his position at best.', 127, 0, 35, 34, 0),
(91, 'Closer', 'The rumors indicate that Closer had a strong showing during tryouts. Season 3 might have been a rough year for him; but transitoning to such a strong team might help him see drastic improvement.', 112, 0, 0, 30, 0),
(92, 'Striker', 'The 2020 grand finals MVP is still as dangerous as ever. If Striker is in the game; major contributions should almost always be expected.', 13, 7, 0, 30, 0),
(93, 'Ttuba', 'Ttuba emerged as a star in the making for the Justice in season 3. With an even stronger supporting casting around him this year; he could contribute to a dangerous one-two punch alongside Decay.', 37, 21, 0, 30, 0),
(94, 'Joobi', 'The first ever collegiate player to make it into the Overwatch League could be a pleasant surprise invidiually. The potential struggles of his team could hold him back though.', 148, 0, 0, 39, 0),
(95, 'birdring', 'Birdring had a comeback year in 2020. As the primary playmaker of the Los Angeles Gladiators; he is a great number one option. His prowess on Widowmaker; Hanzo; and Ashe makes him a dominant force in any meta involving snipers. Leading the lobby in kills should continue to be the norm for this incre', 7, 3, 0, 39, 0),
(96, 'GodsB', 'GodsB often slips under the radar as an underrated damage dealer. He is better than most at applying pressure to his opposition. Now that Shy is one the roster; he might not be as reliable for fantasy as previous years. He is someone to consider if he remains the usual starter though.', 56, 36, 0, 39, 0),
(97, 'Yveltal', 'Yveltal became a two-way player this off-season. He might not be seen much at least at the start of the season unless his services are required on Mercy.', 169, 0, 0, 48, 0),
(98, 'im37', 'The path to pro speedrunner makes his return to the Overwatch League after grinding for one year in Korean Contenders. im37 has come a long way since honing his skills on WGS Phoenix. His excellent mechanical abilities should make him a primary playmaker on the new look Boston Uprising.', 44, 26, 0, 48, 0),
(99, 'Takoyaki', 'Guxue is the more established player with the higher ceiling. But if the Spark feel more comfortable fielding their Korean players; Takoyaki likely comes in for synergy purposes. His stocks could rise greatly depending on what the Spark decide to do.', 157, 0, 42, 48, 0),
(100, 'blasé', 'A change of scenery could do Blas\' some good. Both seasons 2 and 3 saw him play for disorganized teams who could never find their way. Playing for a London team with a true purpose and since of identity could be just what he needs to play his best Overwatch yet.', 73, 40, 0, 48, 0),
(101, 'Ir1s', 'Now that Dogman has retired; the Reign are fully trusting in Ir1s. Now going into his first full season under the Atlanta system; he just might be worth giving a shot.', 60, 0, 0, 16, 0),
(102, 'Gesture', 'Gesture was heavily criticized in season 3. But now that the Dynasty worked out a few issues; there\'s reason to beleive he\'s in for a better year. Now that Marve1 is back on main tank though; his time in the lineup could be a bit more inconsistent.', 122, 0, 30, 16, 0),
(103, 'Logix', 'Despite the team changing around him so much; Logix still has an opportunity to see serious play time in season 4. With the way the meta is shaping up; his services as a Tracer extraordinaire may be something his team depends on.', 88, 47, 0, 16, 0),
(104, 'FunnyAstro', 'Between the aggressive style; high healing rates; and survivability; Funnyastro is one of the best possible options if you are forced to pick up a main support. With rumors about travel issues surrounding him though; he might be worth skipping out on due to potential VISA concerns.', 90, 0, 0, 23, 0),
(105, 'NvM', 'NvM has not competed in a long time and is close to a last resort tank option.', 165, 0, 48, 23, 0),
(106, 'ANSOONJAE', 'Ansoonjae is in an interesting position. He has the chance to be a solid fantasy option but also risks getting outclassed since main support is a very top heavy position', 114, 0, 0, 32, 0),
(107, 'Assassin', 'While TTuba is fantastic; he\'s nowhere near perfect on every character he touches. That\'s where Assassin comes in. He should be good in those situations where the team needs to make on the fly adjustments mid-game.', 92, 49, 0, 32, 0),
(108, 'Kai', 'Don\'t let the change of scenery deceive you. Kai is still dangerous. Whether the Atlanta Reign play better or worse than 2020 Valiant; Kai is going to light up the scoreboard. In 22 hours of playtime during the 2020 season; Kai netted the 2nd highest number of eliminations and final blows. His point', 11, 6, 0, 32, 0),
(109, 'Guxue', 'It wasn\'t always easy to show it last season; but Guxue is still a beast.', 99, 0, 21, 32, 0),
(110, 'Void', 'Void makes for a consistently good option at tank. As the league leader in total eliminations and the highest damage dealer among tanks in 2020; Void is a stat sheet stuffer. Void boasts versatility that ensures high point potential in pretty much any meta. Don\'t forget his league low death total am', 3, 0, 1, 32, 0),
(111, 'Happy', 'Happy is an elite dps player who will serve as the Outlaws\' sniper and pure hitscan specialist. If snipers or McCree are part of the meta; expect Happy to get major playtime. While he tends to be a streaky player; Happy can output point explosions when he gets hot.', 40, 23, 0, 32, 0),
(112, 'Fury', 'Fury is one of the most consistent tank players in league history. Now that he\'ll be getting play time right from day one; he should be able to deliver points even more consistently.', 29, 0, 6, 32, 0),
(113, 'Jecse', 'Despite playing for a very mediocre team in season 3. Jecse found ways to stand out. He was very clutch; especially during the earlier parts of the season. Realistically speaking; Jecse could be even better this year.', 109, 0, 0, 27, 0),
(114, 'Rio', 'Rio is a steady option who will likely continue to see constant action. His passive style will make him less viable then the serious playmaking main tanks in the league though.', 124, 0, 32, 27, 0),
(115, 'SADO', 'Last year saw Sado put up one of the most productive seasons by a main tank in league history; all while receiving tons of pre-season doubts. Sado is now on the map as one of the league\'s premier tank players. Can he find similar levels of success with a different supporting cast?', 69, 0, 13, 27, 0),
(116, 'MCD', 'He showed great promise on Element Mystic playing alongside some well known Overwatch League players. Drafting MCD comes with a risk though. Being the consistent starter is not guarenteed.', 74, 0, 0, 21, 0),
(117, 'Fate', 'Fate has proven he\'s a very flexible and versatile player who can thrive under multiple systems. It also helps that he gets to be reunited with his long time coach and friend; Coach Moon.', 101, 0, 23, 21, 0),
(118, 'Decay', 'Now having a true home in Washington; Decay is going to be the focal point of the Justice roster. He should be the main playmaker who puts in the work on a variety of dps characters. He has also shown he can flex onto Zarya which makes him a high value flex option who can earn big points in a multit', 2, 1, 0, 21, 0),
(119, 'Dalton', 'Now that he\'s playing his natural position full time again; Dalton could find himself being slightly more productive than last season. Characters like Tracer are his speciality so he might just be worth giving a chance in the later rounds of a draft.', 86, 46, 0, 21, 0),
(120, 'Smurf', 'Smurf is one of the most underappreciated members of the Shock. His consistency is second to none. As a top tier player on multiple main tank characters; Smurf is a viable option if you\'re looking for a late round tank pick to have as a backup at tank.', 66, 0, 10, 21, 0),
(121, 'Pelican', 'Coming into the league as one of the most promising rookies; Pelican is someone to monitor closely. If his versatility and explosiveness translates to the league; he could be dangerous.', 53, 33, 0, 21, 0),
(122, 'LiNkzr', 'As the best sniper on the Titans; LiNkzr might get a fair amount of minutes this season. However; he is a risky bet to with given his streaky and inconsistent history.', 135, 60, 0, 21, 0),
(123, 'Tsuna', 'Tsuna is known for his Tracer so there\'s a good chance he splits time with Onigod and Naga. Since he didn\'t get much of a chance to prove himself on the Vancouver Titans last season; Tsuna could end up being a pleasant surprise if he gets involved enough.', 142, 67, 0, 21, 0),
(124, 'neptuNo', 'NeptuNo\'s overall value is not what it used to be. The main support position\'s evolution has simply been too much for him to keep pace with. He might have guaranteed play time lined up; but the same cannot be said for high point earnings.', 150, 0, 0, 41, 0),
(125, 'Rascal', 'Rascal has had major success proving he is an MVP level player. He may be splitting time with FunnyAstro and Shockwave depending on the meta.', 31, 16, 0, 41, 0),
(126, 'Krystal', 'Krystal will be a brighter spot on arguably the worst team in the league. While he is talented he has also proven to be a liability on other teams.', 137, 62, 0, 41, 0),
(127, 'Friday', 'Friday is a rookie flying under the radar heading into season 4. As the handpicked partner for JJonak; he has the potential to be a decent late round budget pick to round out a fantasy support rotation.', 113, 0, 0, 31, 0),
(128, 'Elsa', 'Elsa had a down year in 2020. He had a difficult time holding his own against the other offtanks in Asia. With RUI being his coach again; maybe he can show improvement.', 103, 0, 25, 31, 0),
(129, 'super', 'Much like last season; Super will come in as specialist. How much he contributes will be both meta and map dependent.', 134, 0, 37, 31, 0),
(130, 'Yakpung', 'Since his 1 year stint on Toronto; he\'s been grinding in Korean Contenders. As a member of 02 Blast; he showed tremendous improvement; even helping his team bring home a Contenders title. He might have finally cracked the code to consistently play up to his potential.', 107, 0, 29, 31, 0),
(131, 'OGE', 'OGE has big shoes to fill this season. After trading away Fate to the Dragons; Florida putting all of their trust in him. Season 3 was a struggle for him so he has his work cut out for him. OGE might not be the best choice to fill out a fantasy tank line.', 125, 0, 33, 31, 0),
(132, 'Architect', 'Now in his first full year as a member of the Spark; Architect should look and feel a bit more comfortable in this system. His large hero pool and versatility will be of great use to a Spark team who will be counting on him to help them have a bounce back year. Architect is someone who can be relied', 32, 17, 0, 31, 0),
(133, 'Checkmate', 'Checkmate is someone who can help build upon Florida\'s dps core. He should be able to plug up some of the holes that the Mayhem last year. He should make for a nice rotational piece and flex option in season 4.', 95, 50, 0, 31, 0),
(134, 'Ria', 'Ria was most likely brought onto the Spark as a reserve. It is difficult to see him making many contributions with Fury and Mag being on the same team.', 167, 0, 50, 31, 0),
(135, 'punk', 'Punk has a serious chance to reawaken the constant heroics seen out of him when he first joined the team. Higher morality and a stronger team around him could result in somewhat consistent point potential.', 82, 0, 19, 31, 0),
(136, 'Farway1987', 'His Team CC roots from Chinese contenders could mean huge upside at the Overwatch League level. A warning to keep in mind is that he was spolied by an elite team from top to bottom in contenders. Insane production won\'t be as easy on a team that won\'t domiante the way he\'s used to.', 57, 0, 0, 13, 0),
(137, 'GA9A', 'GA9A is one of the high profile players in this rookie class. GA9A will provide the Hunters with newfound life at the main tank position. His flexibility; not easily exploitable weaknesses; and game sense should see him assert dominance regularly.', 102, 0, 24, 13, 0),
(138, 'Hybrid', 'There\'s reason to maybe feel skeptical about Hybrid. If he gets any sort of significant play time; he might struggle. Dps is a very oversaturated position. Even some of the mediocre teams have high end talent at hitscan.', 141, 66, 0, 13, 0),
(139, 'Valentine', 'Valentine is an intriguing rookie prospect. He made a name for himself as a versatile and mechanically skilled flex player on WGS Phoenix. Not only is he a potential damage dealer; but he remains under the guidance of his former coach who he followed to Boston. Valentine has all the resources and sk', 54, 34, 0, 13, 0),
(140, 'BERNAR', 'Bernar was a standout performer on 2020 London Spitfire. Much like his former teammate Glister; his potential was held back by a team who simply looked lost. A more well rounded team like the Spark should see Bernar take that next step in his game. First he must decisively win the starting job thoug', 75, 0, 14, 13, 0),
(141, 'Choihyobin', 'Coming off yet another glamorous season; Choihyobin is a solid number one to have. He put up slightly lower numbers than a few of his competitors last year; but made up for it with his ability to make clutch plays at pivotal moments. Choihyobin should be one of the first tanks taken off the board in', 16, 0, 3, 13, 0),
(142, 'Creative', 'Creative put himself on the map by stringing together multiple excellent performances during the Dynasty\'s playoff run. If that was a sign of things to come; then Creative will be a smart option to round out any fantasy support line.', 48, 0, 0, 12, 0),
(143, 'Flora', 'Flora\'s role on the NYXL is a mystery. He is part of a stacked dps rotation so it\'s difficult to judge how often he plays. He undoubtably has a ton of talent. He\'s a very sound dps player with proficiencies ranging from Sombra and Tracer to Widowmaker and Ashe. It\'s simply a matter of not knowing ho', 97, 52, 0, 12, 0),
(144, 'Marve1', 'Marve1 could make for a solid flex option this season. As someone who can play both main tank and Sigma; he offers the Dynasty quite a few options. However; now that he is back on main tank; he will have to fight for play time with Gesture.', 123, 0, 31, 12, 0),
(145, 'Myunb0ng', 'Myunb0ng got off to a solid start to his career in 2020. He had multiple hard carry moments despite playing for such a weak Boston squad. Now that he has access to stronger teammates and coaching; Myunb0ng should be able to take his play to the next level.', 25, 0, 0, 8, 0),
(146, 'Aztac', 'Aztac is one of the most promising rookie support propsects this season. Now that Lastro is on the roster;', 94, 0, 0, 25, 0),
(147, 'LIP', 'Lip had quite the impressive rookie season which is evident by his 2020 role star selection. Lip was a mainstay in the Shanghai starting lineup for the most part last season and there\'s reason to believe more of the same happens in 2021.', 30, 15, 0, 25, 0),
(148, 'Jerry', 'Jerry showed potential in his rookie season on the Uprising. He was not perfect; but he has some clear cut upside. The Justice offer him a better supporting cast and access to better coaching could help him reach a new level. With Decay on the team though; Jerry may be on the bench at times.', 70, 37, 0, 25, 0),
(149, 'Fielder', 'Fielder exploded onto the scene with his heroics on high ping. This year he\'ll be playing without any connection disadvantages. If he can make big plays at a disadvantage; it is terrifying to think about what he can do on equal footing.', 23, 0, 0, 6, 0),
(150, 'SPACE', 'Space is someone who can always be relied on to earn big points. While not widely considered to be a top offtank; he is still no joke with the contributions he makes. With a promising rookie main tank at his side; Space could run wild over the competition.', 34, 0, 7, 6, 0),
(151, 'Nisha', 'As a member of Billibilli gaming and the One Winner; his teams consistently finished top 3 or better in Chinese Contenders. He has a good playmaker mentality which could make him a decent late round selection.', 117, 0, 0, 35, 0),
(152, 'sHockWave', 'Shockwave made himself known to the world with how hard he tried to carry the Titans last season. The Fusion took notice of him and now he sits in a position where he can be Carpe\'s partner in crime. The better resources should help him build upon a strong start to his career.', 50, 30, 0, 35, 0),
(153, 'Highbee', 'Highbee is a mystery this year as his whole career has been on the tank role and now he will be playing main support.', 153, 0, 0, 44, 0),
(154, 'Seominsoo', 'Seominsoo\'s contributions are a mystery. The amount of time he sees in the starting lineup will be vastly meta dependent. There are simply too many damage options on the Spark to guarantee consistent play time. If Reaper or Zarya is needed; Seominsoo will be a good flex option.', 140, 65, 0, 44, 0),
(155, 'FITS', 'Fits showed his true capabilities at some pivotal moments in Seoul\'s 2020 campaign. As one of only 11 players to acheive over 1000 total final blows in season 3; he has proven to be a viable fantasy option.The issue is that he has a difficult time maintining consistency which makes him a high-risk h', 35, 19, 0, 44, 0),
(156, 'ToYou', 'After impressing as a two-way player in 2020; the Dynasty promoted Toyou to their roster full-time. His aggressive style and good decision making could result in big point earnings on a regular basis.', 42, 0, 8, 44, 0),
(157, 'SoOn', 'SoOn finds himself in an interesting situation. The role he plays could vary. IM37 is a prolific hitscan specialist who could steal his spotlight at times. One thing that should remain a constant though is Soon coming in for Tracer. If she is part of the meta; he will be a reliable point source.', 51, 31, 0, 44, 0),
(158, 'Alarm', 'In his rookie year; Alarm dominated the scene and established himself as a top tier support player in the Overwatch League. Alarm was the leader in total healing last season along with top damage stats on Baptiste and Zenyatta. With his high ceiling along with a year\'s worth of improvement; Alarm sh', 4, 0, 0, 2, 0),
(159, 'Ripa', 'Ripa gets his first true chance to show fans what he\'s got at the Overwatch League level this year. The time spent on British Hurricane has seen him improve drastically. Giving him a shot could prove to bear fruit in deeper fantasy leagues', 61, 0, 0, 17, 0),
(160, 'Gwangboong', 'Gwangboong should be considered a sleeper player to look out for in 2021. As a member of an unpopular Chinese Contenders team; he has gone under the radar despite showing flashes of brilliance. This promising rookie should not be taken lightly.', 43, 25, 0, 17, 0),
(161, 'JinMu', 'Jinmu\'s role on this Chengdu team feels pretty clear cut. When the team is in need of a hardcore projectile player; he will get the call. If not; expect to find him on the bench. His fantasy value is meta dependent.', 85, 45, 0, 17, 0),
(162, 'Shu', 'Shu played a major role in the Charge\'s success in 2020. Now a member of a dangerous looking Gladiators team; Shu could be primed for his best season yet. He has the mechanical skill to combat any player at his position. His damage potential; high rates of healing; and intelligent positioning make h', 10, 0, 0, 3, 0),
(163, 'Ta1yo', 'The Shock\'s dps rotation is deep and well rounded. Ta1yo feels like the odd man out currently. Do not expect him to play a major role this season.', 159, 70, 0, 3, 0),
(164, 'Profit', 'Profit has long since established himself as one of the most reliable dps options in the league. His flexibility and clutch factor in the big games is something he\'s shown off year after year. Now coming into his 4th year; the all time leader in final blows is a safe option for any fantasy team give', 20, 12, 0, 3, 0),
(165, 'Skewed', 'Skewed was a surprise addition to the Gladiators that gives their support line extra insurance. Not that they needed it though. Unless the meta calls for two characters primarily played by flex supports; Skewed may not be a worthwhile option thanks to Shu being on the roster.', 156, 0, 0, 47, 0),
(166, 'Colourhex', 'Colourhex had a down year in 2020. His inconsistencies showed on a regular basis and now finds himself with more competition than ever for play time. With the likes of Valentine on the roster; Colourhex will likely have a diminished role in season 4.', 158, 69, 0, 47, 0),
(167, 'Twilight', 'Twilight is one of the most talented players at his positon. Unfortunately for him; Viol2t is playing the best Overwatch of his career currently which makes Twilight a rotational piece for double flex support and Ana situations.', 89, 0, 0, 22, 0),
(168, 'Kaneki', 'Kaneki is a very versatile dps option with a lot of upside. Since he\'s still unproven he is a risky draft choice. But it could be worth it in the long run if he proves to be more valuable than some of the other dps in the Chengdu rotation.', 136, 61, 0, 22, 0),
(169, 'Daan', 'Daan was a decent player in Contenders. But compared to what he\'ll be going up against in North America; he\'s at a skill disadvantage. Even the lower tier teams will be a major challenge for him to overcome.', 146, 0, 41, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_names`
--

CREATE TABLE `pokemon_names` (
  `id` int(11) NOT NULL,
  `channel` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT 'TBA',
  `completed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pokemon_names`
--

INSERT INTO `pokemon_names` (`id`, `channel`, `user`, `name`, `completed`) VALUES
(1, 2, 'aleenz', 'TBA', 1),
(2, 2, 'pedro', 'TBA', 1),
(3, 2, 'pedro', 'pedra', 1),
(4, 2, 'uberchain', 'penis', 1),
(5, 2, 'jaws', 'bruh', 1),
(6, 2, 'whiskeyswan', 'birdnoises', 1),
(7, 2, 'ishikii_', 'kimiko', 1),
(8, 2, 'furiousyama', 'seomintwo', 0),
(9, 2, 'aleenz', 'potato ', 0),
(10, 4, 'itsxcivizion', 'BikiniTorb ', 1),
(11, 4, 'ishikii', '', 1),
(12, 4, 'gabby', 'Arlo ', 1),
(13, 4, 'tazmo', 'SP9RK1E ', 1),
(14, 4, 'getdeluxe', 'Buy Lush', 1),
(15, 4, 'furiousyama', 'Euler ', 1),
(16, 2, 'deluxe', 'el mosquito ', 0),
(17, 4, 'hackslayer', '', 1),
(18, 4, 'xcivizion', 'butlinslad ', 1),
(19, 4, 'BadPachimari', 'Whatever ', 1),
(20, 4, 'MonkeyMeatloaf', 'Ganyu ', 1),
(21, 4, 'NotEvenDavid', 'Boiltheegg ', 1),
(22, 4, 'itsxcivizion', 'SeoWINsoo or Kimiko ', 1),
(23, 4, 'Fossiltalk', '424f4f42 ', 1),
(24, 4, 'hackslayer', 'TBA', 1),
(25, 4, 'Wilsamacgilsa', 'BIGNOSEWIL ', 0),
(26, 4, 'ACPinYT', 'Nosemite ', 0),
(27, 4, 'Li77leWolfer', 'Pepega ', 0),
(28, 4, 'Doooly66', 'Dooly ', 0),
(29, 4, 'hackslayer', 'TBA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `channel` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `quote` varchar(200) NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `channel`, `number`, `quote`, `year`) VALUES
(9, 3, 1, 'you mean nothing to me, chat', '2021'),
(10, 3, 2, 'if aleenz deletes this he stinks', '2021'),
(11, 3, 3, 'at some point - jaws, his entire life', '2021'),
(12, 3, 4, 'i wish i had a girlfriend...', '2020'),
(13, 3, 5, 'i am from america', '2021'),
(14, 3, 6, 'are there parts of australia that haven\'t been discovered yet?', '2021'),
(15, 3, 7, 'wendys balls drop in your mouth', '2021'),
(16, 2, 1, 'a', '2021'),
(17, 3, 8, 'please kill kariv, please kill kariv', '2021'),
(18, 3, 9, 'i\'m kind of a ball studier', '2021'),
(19, 3, 10, 'i will eat a shoe', '2021'),
(20, 3, 11, 'i hate jeff', '2021'),
(21, 3, 12, 'i love jeff', '2021'),
(22, 3, 13, 'perhaps me dumb', '2021'),
(23, 3, 14, 'whiskey is always correct', '2021'),
(24, 3, 15, 'are there parts of australia that haven\'t been discovered yet?', '2021'),
(25, 3, 16, 'i’m the best overwatch player ever', '2021'),
(26, 3, 17, 'my brain works', '2021'),
(27, 3, 18, 'they have to push me or...oh no they\'re pushing me', '2021'),
(28, 3, 19, 'i never wear sunscreen', '2021'),
(29, 3, 20, 'i have no friends', '2021'),
(30, 3, 21, 'i will amazon prime some marbles to you', '2021'),
(31, 3, 22, 'i will sing once this game is over', '2021'),
(32, 3, 23, 'im too good for the gobbos', '2021'),
(33, 3, 24, 'you\'ve got beautiful eyes, bren', '2021'),
(34, 3, 25, 'smoke my ass eat my dick suck my weed yep', '2021'),
(35, 3, 26, 'i don\'t care about the desk people', '2021'),
(36, 3, 27, 'he\'s got a snake dick, nice', '2021'),
(37, 3, 28, 'i just wanna look at aimgod', '2022'),
(38, 3, 29, 'a catboy. thoughts, questions, concerns?', '2022'),
(39, 3, 30, 'i\'m a catboy. thoughts, questions, concerns?', '2022'),
(40, 3, 31, 'all', '2022'),
(41, 3, 32, 'kill the baby', '2022'),
(42, 3, 33, 'overwatch 1 should have never existed', '2022'),
(43, 3, 34, 'main support is for losers', '2023'),
(44, 3, 35, 'contenders? who cares!', '2023'),
(45, 3, 36, 'for some reason chat loves to see my wood!', '2023'),
(46, 3, 37, 'yes! suck him off!', '2023'),
(47, 3, 38, 'i love hentai', '2023'),
(48, 3, 39, 'fuck junk players. they don\'t deserve to find love', '2023'),
(49, 3, 40, 'as the saying goes: if you\'re immortal, you don\'t die; that\'s facts!', '2023'),
(50, 3, 41, 'jaws\' banana goes kind of hard', '2023'),
(51, 3, 42, 'everyone loves a good d', '2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bird_fact`
--
ALTER TABLE `bird_fact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fact_vote`
--
ALTER TABLE `fact_vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newviewer_msgs`
--
ALTER TABLE `newviewer_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newviewer_vote`
--
ALTER TABLE `newviewer_vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players_fantasy`
--
ALTER TABLE `players_fantasy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokemon_names`
--
ALTER TABLE `pokemon_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bird_fact`
--
ALTER TABLE `bird_fact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fact_vote`
--
ALTER TABLE `fact_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `newviewer_msgs`
--
ALTER TABLE `newviewer_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `newviewer_vote`
--
ALTER TABLE `newviewer_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players_fantasy`
--
ALTER TABLE `players_fantasy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `pokemon_names`
--
ALTER TABLE `pokemon_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Database: `behack`
--
CREATE DATABASE IF NOT EXISTS `behack` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `behack`;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `institution` varchar(200) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `estatus` int(2) NOT NULL DEFAULT 10,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `name`, `email`, `institution`, `reason`, `estatus`, `created_at`, `updated_at`) VALUES
(8, 210153407481249793, 'test', 'test', 'etst', 'test', 30, '2023-10-12 19:44:36', '2023-10-12 19:44:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"behack\",\"table\":\"applications\"},{\"db\":\"aleenzbot\",\"table\":\"channels\"},{\"db\":\"aleenzbot\",\"table\":\"newviewer_vote\"},{\"db\":\"aleenzbot\",\"table\":\"newviewer_msgs\"},{\"db\":\"aleenzbot\",\"table\":\"quotes\"},{\"db\":\"aleenzbot\",\"table\":\"bird_fact\"},{\"db\":\"aleenzbot\",\"table\":\"players_fantasy\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-02-23 21:11:52', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
