-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2019 at 11:14 AM
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
-- Database: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cms`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'News', '2019-06-09 03:54:08', '2019-06-09 03:54:08'),
(2, 'Marketing', '2019-06-09 03:54:08', '2019-06-09 03:54:08'),
(3, 'Partnership', '2019-06-09 03:54:08', '2019-06-09 03:54:08'),
(4, 'Management', '2019-06-09 09:51:25', '2019-06-09 09:51:25'),
(5, 'Engineering', '2019-06-09 09:51:31', '2019-06-09 09:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(119, '2014_10_12_000000_create_users_table', 1),
(120, '2014_10_12_100000_create_password_resets_table', 1),
(121, '2019_04_30_174320_create_posts_table', 1),
(122, '2019_04_30_174341_create_categories_table', 1),
(123, '2019_05_14_183408_add_soft_deletes_to_posts_table', 1),
(124, '2019_06_05_104829_create_tags_table', 1),
(125, '2019_06_06_075107_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `image`, `user_id`, `category_id`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'We relocated our office to a new designed garage', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<div><br></div><div><strong><em>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...</em></strong><em>\"</em></div><div><br></div><div><strong>\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</strong><br><br></div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus mollis, augue volutpat venenatis fringilla, magna lacus varius nibh, id auctor lectus arcu sed ante. Aliquam porttitor sem et metus egestas tristique. Nam dignissim eu ipsum a dignissim. Vivamus eget interdum sapien. Donec rhoncus justo ac diam venenatis, ut eleifend elit cursus. Aliquam fermentum, orci sagittis aliquet molestie, arcu lacus bibendum enim, et faucibus mauris odio ut est. Fusce bibendum, erat molestie euismod euismod, erat erat mattis magna, eget posuere ipsum nunc vel ante. Aenean luctus sagittis elit, sit amet volutpat nibh pellentesque id. Pellentesque lacinia sapien vitae ullamcorper consectetur. Duis et elit at libero cursus luctus quis vitae enim.<br><br></div><div>Nulla sed commodo dolor. Morbi eget est id est vehicula facilisis quis ut dui. Donec convallis leo id arcu ornare, non tincidunt mi congue. Vivamus laoreet in orci at mattis. Donec volutpat urna vitae ligula fermentum efficitur. Nullam id mattis purus. Phasellus porttitor sapien eu vestibulum fermentum. Pellentesque eu ipsum in elit pellentesque porta. Cras ligula diam, suscipit nec viverra non, congue vel nisi. Vivamus sit amet eleifend mi, ac vehicula ipsum. Nunc ut magna vel elit ultricies mattis.<br><br></div><div>Ut eu iaculis elit. Ut egestas ipsum eu lectus ultricies, a condimentum mauris sollicitudin. Integer consequat laoreet est, eget bibendum ipsum. Vestibulum in pharetra metus. Quisque congue luctus cursus. Praesent lorem tortor, volutpat eget massa ac, iaculis elementum lectus. Mauris erat augue, dignissim malesuada felis sit amet, convallis iaculis turpis.<br><br></div><div>Nam suscipit urna eget viverra porta. In vitae hendrerit ante. Fusce facilisis lectus justo, blandit cursus urna sollicitudin ut. Aliquam eu cursus turpis, eu pulvinar nisl. Quisque aliquet accumsan ipsum, eu placerat nisi imperdiet pretium. Mauris porta elit mi, ut suscipit sem finibus sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam neque augue, eleifend eu nisl eget, lacinia semper sem. Ut nec rutrum leo, id fermentum mi. Phasellus at lectus nunc. In consectetur nisl a lorem dictum, non aliquet nisi pellentesque. Morbi consectetur gravida felis sit amet posuere. Nullam erat urna, sodales eu convallis vitae, luctus quis enim. Vivamus et felis ac purus viverra viverra eget sed ante.<br><br></div><div>Sed viverra pulvinar ante sed dapibus. Pellentesque malesuada a mi eu consequat. Morbi vitae viverra felis, in feugiat sapien. Aenean iaculis augue sapien. Vivamus pharetra mauris a nisl imperdiet mollis. Vivamus augue erat, iaculis id ante et, sagittis consectetur lacus. Donec at sollicitudin turpis, sed pellentesque felis. Pellentesque id tortor vel diam laoreet vehicula. Maecenas efficitur elit eget lorem ullamcorper condimentum.<br><br></div>', 'posts/1.jpg', 2, 1, NULL, '2019-06-09 03:54:08', '2019-06-09 04:55:15', NULL),
(2, 'Congratulate and thank to Maryam for joining our team', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'posts/2.jpg', 3, 2, NULL, '2019-06-09 03:54:09', '2019-06-09 03:54:09', NULL),
(3, 'Best practices for minimalist design with example', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'posts/3.jpg', 2, 3, NULL, '2019-06-09 03:54:09', '2019-06-09 03:54:09', NULL),
(4, 'Congratulate and thank to Maryam for joining our team', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</div>', 'posts/4.jpg', 3, 2, NULL, '2019-06-09 03:54:09', '2019-06-10 02:02:34', NULL),
(5, 'Huge update for PostBin - frontend and backend', 'About a week ago, I started getting reports that PostBin was giving out 500 errors. I started looking into it but couldn\'t figure out where those errors were coming from.', '<div>On Monday (Day 1) I managed to just test out creating my own bin, sending a few requests to it, and watching it disappear after 30 mins. All seemed well, I replied to the emails hoping it was just an ephemeral error. Alas no.<br><br></div><div>On Tuesday (Day 2) more reports came in. Another test. Seemed fine. I looked at the code and started mulling over my architecture. I had a Heroku app with a free MongoDB instance. Was MongoDB breaking at the seems with all the requests, after all I seem to get hit around 4 to 5 million times a day!<br><br></div><div>Yep, you heard that right. PostBin gets hammered between 4 and 5 million times per day. Unfortunately though these requests are not actually using PostBin correctly and instead are just hitting various bins that no longer exist! Every so often when I tail the logs there are bursts from the same IP for the same bin with the same User Agent, and they all end up as 404s.<br><br></div><div>This somewhat annoys me, and whilst I knew we got hammered, there\'s really no explanation as to why people - well, let\'s be honest - programs/tests/CI would do that.<br><br></div><div>On Wednesday (Day 3) I start to tinker with the old code on the site. I do a lot of housekeeping such as:<br><br></div><ul><li>fixing up various titles, descriptions and meta tags</li><li>upgrading packages</li><li>process and use environment variables better</li><li>re-order a few files to be a more typical Express app</li><li>output some errors to the log so we can track them</li></ul><div>On Thursday (Day 4) I didn\'t do any coding but I did wonder whether I should bring PostBin back in-house (ie. from Heroku to a Digital Ocean server) and whack MongoDB on there for good measure. It\'d be local, fast, be allowed much more disk space and perhaps help with the load.<br><br></div><div>That evening I got to work but luckily before I did, I had a fabulous idea. For a long time (since about 2011 in fact) I\'ve been a big fan of LevelDB and especially so using <a href=\"https://www.npmjs.com/package/level\">Level on Nodejs</a>, so I figured that this would be the ultimate in speedy storage for something as simple as a RequestBin, PostBin, HTTP Test, or WebHook Testing service. Yay! This was starting to get exciting.<br><br></div><div>That evening I started coding and within a couple of hours I managed to re-write my lib/store.js (the MongoDB specific code) to the new lib/db.js which was the LevelDB specific code. The server started and the tests passed. We were good,<br><br></div><pre>commit 574b48bda36a76c7973d497872b1594ddad215a4\r\nAuthor: Andrew Chilton &lt;chilts@appsattic.com&gt;\r\nDate:   Fri May 17 00:04:27 2019 +1200\r\n\r\n    Switch over from MongoDB to LevelDB\r\n\r\n .eslintrc             |   30 --\r\n README.md             |    5 +-\r\n lib/db.js             |  218 ++++++++++++\r\n lib/middleware.js     |   14 +-\r\n lib/routes/api.js     |   15 +-\r\n lib/routes/bin.js     |    8 +-\r\n lib/routes/home.js    |    9 +-\r\n lib/routes/inspect.js |    8 +-\r\n lib/store.js          |  223 ------------\r\n package-lock.json     | 1006 +++++++++++-------------------------------------------\r\n package.json          |    7 +-\r\n server.js             |   11 +-\r\n set-env.sh.EXAMPLE    |   14 -\r\n test/basic.js         |   21 +-\r\n test/collector.js     |    7 +-\r\n 20 files changed, 478 insertions(+), 1133 deletions(-)\r\n<br></pre><div>As you can see, the commit was just after midnight and bam, I had to go to sleep.<br><br></div><div>On Friday (Day 5) I did quite a number of things including (but not limited to):<br><br></div><ul><li>adding deployment files</li><li>logging of incoming IP Addresses</li><li>adding a way to ban an IP Address (and starting to ban some)</li><li>adding stats to the entire site so we can measure and see what is happening</li><li>fixes to the API page</li><li>switch from eslint to standard</li></ul><div>So far this was all going well and so I deployed onto the new architecture and we were away! I added a lot more bans over an hour or so and again, finally, it was time for sleep.<br><br></div><div>On Saturday (Day 6) I completely switched over the frontend from Bootstrap v3 (!) to TailwindCSS v0.7. It is now in keeping with all of the other services we provide under the <a href=\"https://webdev.sh/\">WebDev.sh</a> banner. With a couple more tweaks for development purposes, we\'ve managed to re-design and re-architect the entire app in the space of a week.<br><br></div><div>Which only leaves Sunday (Day 7) left. Ah, a day of rest and even though I\'m not religious it\'s been an intense week so I deserve a break.<br><br></div><div>My thoughts are now for the future and what will happen with PostBin. It\'s yet another service I provide with love to anyone but because of the inordinate amount of crap being shovelled into it, I\'m thinking I need to take a slightly different route.<br><br></div><div>This time I\'m going to add new features in the future for registration and then creation of API Tokens so I can check who is doing what. It\'s not something I ever wanted to do, but with the amount of traffic battering the site, I can\'t keep up with the cat and mouse game of banning IP Addresses as and when I notice them.<br><br></div><div>And with that, I bid thee farewell and I hope you enjoy both the new design and the new service.<br><br></div>', 'posts/TXskoWZBIJJakblWofT95OwTDFMDMjj3brEhvynz.jpeg', 1, 5, '2019-06-21 05:30:00', '2019-06-09 09:54:52', '2019-06-09 09:54:52', NULL),
(6, 'New Language Examples Pages', 'CSS Minifier now has a whole new set of pages showing lots of different language examples. It\'s a great resource and most of the code has been contributed by our users, so thanks to everyone concerned. Every person is credited on the page/language that they sent in, so if you bump into them, please say thank you. :)', '<div><br>Massive Update<br><br></div><div>Before giving you an update on what has changed, I owe you an apology. <a href=\"https://cssminifier.com/\">CSS Minifier</a> has not been very well recently due to a huge number of invalid minifications being sent to us. Those minifications were making the node process race (to 100% CPU) and stayed there making the server unresponsive.<br><br></div><div>It\'s my job to keep CSS Minifier running as best I can for you. Yes, I know it\'s a free service, but it\'s my responsibility to keep your expectations high and I haven\'t been doing that. I wish that we can keep serving you as quickly, as consistently, and as small (minified) as possible.<br><br></div><div>Here\'s some background on what has been happening...<br><br></div><div>Over the past three years or so, we\'ve noticed that not only are we increasing how many minification requests we see, but also a huge increase on the number of invalid minifications received. Sometimes the CSS is invalid and we should be able to deal with that, but sometimes we see either HTML or JavaScript being sent to us! Sometimes this causes theclean-css program to fail (which is natural) but in other cases cause it to spin up to 100% CPU and stay there, rendering the server pretty unresponsive.<br><br></div><div>Over the years I\'ve tried doing things like niceing the process or killing it after 15 seconds (since all minifications should really be finished in that time). However, these haven\'t worked out as expected and haven\'t help stabilise things. Other things I fixed early on were things like the server running out of disk space having kept all of the uploaded and minified files.<br><br></div><div>So whilst various measures have made the service better here and there, none have fixed it completely. I\'m loathe to tell you I\'ve fixed it all now but it is looking a lot more stable than it has for quite a while.<br><br></div><div>So let\'s look at some of the recent improvements for the minifier itself:<br><br></div><ul><li>hash the input (file) and use that as a key for caching prior results</li><li>if a hashed input clashes with an ongoing minification, it is denied</li><li>if a hashed input is know to cause the minifier to fail, it is immediately relayed to the user</li><li>if a hashed input is known to have already been performed recently (in the past 12 hours), the cached minified output is returned</li></ul><div>Other things recently improved (amongst others):<br><br></div><ul><li>migrate from Jade templates to Pug</li><li>upgrade all npm packages we depend on including express, body-parser, and clean-css</li></ul><div>Some upcoming improvements we\'re making this year are as follows:<br><br></div><ul><li>ban IP addresses (for a short time) who hit the server more necessary - it\'s a free service and everyone should be able to use it</li><li>upgrade to a bigger server</li><li>switch to Bootstrap v4 (the API will stay the same)</li><li>switch back to using Nginx for the front-end https proxy, mainly for LetsEncrypt/CertBot stability</li></ul><div>As you can see, we\'re still imrpoving CSS Minifier and as a result many of these improvements will also trickle across to our other services such as <a href=\"https://javascript-minifier.com/\">JavaScript Minifier</a>, <a href=\"http://pngcrush.com/\">PNG Crush</a>, <a href=\"http://jpgoptimiser.com/\">JPG Optimiser</a>, <a href=\"http://img-resize.com/\">Image Resize</a>, and <a href=\"http://html-minifier.com/\">HTML Minifier</a>.<br><br></div><div>And finally, I\'d like to ask you a favour. CSS Minifier has 100,000 page views per month and performs anywhere between a few thousand and ten thousand minifications per day. On it\'s busiest day there were 24,590 minifications, whether invalid, valid, empty, small, medium, or large. It\'s a free service and has been this way since 2010.<br><br></div><div>My question is, what do you think I should do to support it best from a financial point of view. I\'d love to be able to get at least something back for my expenses, but also for my time and effort involved in running it. Would you support it by doing any or all of the following, or something else altogether:<br><br></div><ol><li>sponsoring the site to help it improve</li><li>sponsoring me (e.g. Patreon) to produce more sites like it and the others mentioned above</li><li>paying for a premium service and get acccess to all of these online tools</li></ol><div>Please tweet at me <a href=\"https://twitter.com/andychilton\">@andychilton</a> or email me at andychilton at gmail dot com.<br><br></div><div>Many thanks, and thanks for your understanding, patience, input, and help.<br><br></div><div>(Ends)<br><br></div>', 'posts/g4g2UqV4Dg1qtOJ23MbK3zUhzBX4cH0OJPImiSPM.jpeg', 1, 1, '2019-06-24 05:55:00', '2019-06-09 09:56:20', '2019-06-09 09:56:20', NULL),
(7, '10 Data Structure and Algorithms Articles Beginners Should Read this Weekend', 'Hello guys, How are you doing? It\'s been a long time since I wrote anything here, so here I am, sharing with you a couple of nice articles you can read this week on Data Structure and Algorithms.', '<div><em><br>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"<br></em><br></div><div><br>\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"<br><br></div><div><br></div><div><br></div><div><br></div><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus mollis, augue volutpat venenatis fringilla, magna lacus varius nibh, id auctor lectus arcu sed ante. Aliquam porttitor sem et metus egestas tristique. Nam dignissim eu ipsum a dignissim. Vivamus eget interdum sapien. Donec rhoncus justo ac diam venenatis, ut eleifend elit cursus. Aliquam fermentum, orci sagittis aliquet molestie, arcu lacus bibendum enim, et faucibus mauris odio ut est. Fusce bibendum, erat molestie euismod euismod, erat erat mattis magna, eget posuere ipsum nunc vel ante. Aenean luctus sagittis elit, sit amet volutpat nibh pellentesque id. Pellentesque lacinia sapien vitae ullamcorper consectetur. Duis et elit at libero cursus luctus quis vitae enim.<br><br></div><div>Nulla sed commodo dolor. Morbi eget est id est vehicula facilisis quis ut dui. Donec convallis leo id arcu ornare, non tincidunt mi congue. Vivamus laoreet in orci at mattis. Donec volutpat urna vitae ligula fermentum efficitur. Nullam id mattis purus. Phasellus porttitor sapien eu vestibulum fermentum. Pellentesque eu ipsum in elit pellentesque porta. Cras ligula diam, suscipit nec viverra non, congue vel nisi. Vivamus sit amet eleifend mi, ac vehicula ipsum. Nunc ut magna vel elit ultricies mattis.<br><br></div><div>Ut eu iaculis elit. Ut egestas ipsum eu lectus ultricies, a condimentum mauris sollicitudin. Integer consequat laoreet est, eget bibendum ipsum. Vestibulum in pharetra metus. Quisque congue luctus cursus. Praesent lorem tortor, volutpat eget massa ac, iaculis elementum lectus. Mauris erat augue, dignissim malesuada felis sit amet, convallis iaculis turpis.<br><br></div><div>Nam suscipit urna eget viverra porta. In vitae hendrerit ante. Fusce facilisis lectus justo, blandit cursus urna sollicitudin ut. Aliquam eu cursus turpis, eu pulvinar nisl. Quisque aliquet accumsan ipsum, eu placerat nisi imperdiet pretium. Mauris porta elit mi, ut suscipit sem finibus sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam neque augue, eleifend eu nisl eget, lacinia semper sem. Ut nec rutrum leo, id fermentum mi. Phasellus at lectus nunc. In consectetur nisl a lorem dictum, non aliquet nisi pellentesque. Morbi consectetur gravida felis sit amet posuere. Nullam erat urna, sodales eu convallis vitae, luctus quis enim. Vivamus et felis ac purus viverra viverra eget sed ante.<br><br></div><div>Sed viverra pulvinar ante sed dapibus. Pellentesque malesuada a mi eu consequat. Morbi vitae viverra felis, in feugiat sapien. Aenean iaculis augue sapien. Vivamus pharetra mauris a nisl imperdiet mollis. Vivamus augue erat, iaculis id ante et, sagittis consectetur lacus. Donec at sollicitudin turpis, sed pellentesque felis. Pellentesque id tortor vel diam laoreet vehicula. Maecenas efficitur elit eget lorem ullamcorper condimentum.<br><br></div>', 'posts/wAC4kCi6Hah6znN78vlwTiZ5NDRF7wJ5CyMxY7yf.jpeg', 1, 5, '2019-06-12 08:30:00', '2019-06-09 10:01:04', '2019-06-09 10:01:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 3, NULL, NULL),
(5, 3, 2, NULL, NULL),
(6, 3, 3, NULL, NULL),
(7, 5, 1, NULL, NULL),
(8, 5, 4, NULL, NULL),
(9, 6, 3, NULL, NULL),
(10, 6, 4, NULL, NULL),
(11, 7, 4, NULL, NULL),
(12, 4, 2, NULL, NULL),
(13, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Jobs', '2019-06-09 03:54:09', '2019-06-09 03:54:09'),
(2, 'Customers', '2019-06-09 03:54:09', '2019-06-09 03:54:09'),
(3, 'Record', '2019-06-09 03:54:09', '2019-06-09 03:54:09'),
(4, 'Code', '2019-06-09 09:52:27', '2019-06-09 09:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('writer','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'writer',
  `about` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `about`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', NULL, NULL, '$2y$10$vBKcevqzFStNTv8IF02rheeWGqUJHsqlbpsVF2uzQk9R3wNmQ2pwS', NULL, '2019-06-09 03:54:08', '2019-06-09 03:54:08'),
(2, 'Harzard', 'Harzard@gmail.com', 'writer', NULL, NULL, '$2y$10$1/tNhLDWjjLZPFi4HxyuGOI1A2pOSzxXNnu7bepZPTDXDe.wmT5oO', NULL, '2019-06-09 03:54:08', '2019-06-09 03:54:08'),
(3, 'Jame Holland', 'Jame@gmail.com', 'writer', NULL, NULL, '$2y$10$Ntzmml0Q9nANgFnmiRaw6eL.oO5bFAz21OzkFbfWQZ3Xt4omd75fu', NULL, '2019-06-09 03:54:08', '2019-06-09 03:54:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
