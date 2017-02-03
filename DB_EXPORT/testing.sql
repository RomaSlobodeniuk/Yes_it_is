-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 03 2017 г., 15:31
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `excerpt`, `text`, `keyword`, `description`) VALUES
(1, 'Brain Cancer Patient Given Months to Live Improves With Malaria Drug', 'After her brain cancer became resistant to chemotherapy and then to targeted treatments, 26-year-old Lisa Rosendahl’s doctors gave her only a few months to live.', 'After her brain cancer became resistant to chemotherapy and then to targeted treatments, 26-year-old Lisa Rosendahl’s doctors gave her only a few months to live.\r\n\r\nBut now, a new drug combination has stabilized Rosendahl’s disease and increased both the quantity and quality of her life.\r\n\r\nBy adding anti-malaria drug chloroquine to her treatment, the combination stopped an essential process that Rosendahl’s cancer cells had been using to resist therapy, re-sensitizing her cancer to the targeted treatment that had previously stopped working. Along with Rosendahl, two other brain cancer patients were treated with the combination and both showed similar, dramatic improvement.', 'brain cancer', 'description of the first post'),
(2, 'Homeless Man Given Six Job Interviews Thanks to His Powerful Sign', 'This formerly homeless man is being blessed by strangers left and right thanks to a woman sharing his plea for help on Facebook.', 'This formerly homeless man is being blessed by strangers left and right thanks to a woman sharing his plea for help on Facebook.\r\n\r\nSherryn Jackson was walking through the city center in Melbourne, Australia when she saw Barry: an elderly homeless man holding a sign with a long message inscribed in marker.\r\nThe sign read: “Hi I’m from Perth W.A, I’ve been here three weeks looking for work. I’ve tried so hard to get work. I have my HR truck driving license and have done lots of driving. I will do anything. Even clean toilets. I am now homeless I just want to make a new life so if anybody can help it would be great. Just give me a go please.”', 'homeless man, blessed', 'description of the second post'),
(3, 'Watch Avalanche Airbag Save Snowboarder’s Life', 'This professional snowboarder was simply enjoying the slopes when the snow beneath his feet suddenly gave way into an avalanche.', 'This professional snowboarder was simply enjoying the slopes when the snow beneath his feet suddenly gave way into an avalanche.\r\nThe man had been maneuvering the back trails on Whistler Mountain in Vancouver. As he was coming over a ridge, the area around him started to slide down the hill.\r\nWATCH: Gymnast Falling on Her Head Saved By Coach With Ninja Moves\r\n\r\nThough we only hear a quick exclamation of surprise, his Go Pro camera captures every second of the heart-wrenching incident.', 'professional snowboarder', 'the description of the third post');

-- --------------------------------------------------------

--
-- Структура таблицы `publication`
--

CREATE TABLE `publication` (
  `id` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `author_name` varchar(64) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `type` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `publication`
--

INSERT INTO `publication` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES
(1, 'Swimming with dolphins may be banned', '2016-08-31', 'Authorities in Hawaii are proposing a ban on the popular tourist activity of swimming with dolphins off the Hawaiian coast.', '', 'David', './images/1.jpg', 'NewsPublication'),
(2, 'Colombia and FARC rebels sign peace deal', '2016-08-28', 'Colombias government signed a peace deal with the rebel group FARC. The deal ends 52 years of fighting.', '', 'April', './images/2.jpg', 'NewsPublication'),
(3, 'Study shows there are two divorce seasons', '2016-08-25', 'Couples might want to put a little extra effort into their marriage just before March and August every year.', '', 'George', './images/3.jpg', 'ArticlePublication'),
(4, 'What the 5,300-year-old Iceman wore', '2016-08-22', 'Scientists studied the pieces of material that were on the body of a man who died in Europe 5,300 years ago.', '', 'Mikel', './images/4.jpg', 'ArticlePublication'),
(5, 'July was hottest month in recorded history', '2016-08-19', 'It is official – July was the hottest month on Earth since scientists started recording the planets temperatures.', '', 'Sonia', './images/5.jpg', 'PhotoReportPublication');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `author_name` (`author_name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `publication`
--
ALTER TABLE `publication`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
