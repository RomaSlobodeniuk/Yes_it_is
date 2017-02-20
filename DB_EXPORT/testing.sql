-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 20 2017 г., 16:49
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
-- Структура таблицы `bl_sef`
--

CREATE TABLE `bl_sef` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `link_sef` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bl_sef`
--

INSERT INTO `bl_sef` (`id`, `link`, `link_sef`) VALUES
(1, 'blog/author', 'author'),
(2, 'blog/releases', 'releases'),
(3, 'blog/release-single', 'release'),
(4, 'blog/view?id=1&all=4&redirect_id=2', 'single-1'),
(5, 'blog/view?id=4&all=4&redirect_id=1', 'single-4'),
(6, 'blog/view?id=2&all=4&redirect_id=1', 'single-2'),
(7, 'blog/view?id=3&all=4&redirect_id=1', 'single-3'),
(8, 'blog/view?id=2&all=4', 'single-2'),
(9, 'blog/view?id=1&all=4', 'single-1'),
(10, 'blog/view?id=3&all=4', 'single-3'),
(11, 'blog/view?id=4&all=4', 'single-4'),
(12, 'blog/view?id=1&all=4&redirect_id=1', 'single-1'),
(13, 'blog/view?id=2&all=4&redirect_id=2', 'single-2'),
(14, 'blog/view?id=3&all=4&redirect_id=2', 'single-3'),
(15, 'blog/view?id=4&all=4&redirect_id=2', 'single-4'),
(16, 'blog/search', 'search'),
(17, 'blog/release-single?id=3&all=3&redirect_id=1&num=3', 'release-3'),
(18, 'blog/release-single?id=2&all=3&redirect_id=1&num=3', 'release-2'),
(19, 'blog/release-single?id=3&all=1&redirect_id=1&num=3', 'release-3'),
(20, 'blog/release-single?id=2&all=3', 'release-2'),
(21, 'blog/release-single?id=2&all=3&redirect_id=1&num=2', 'release-2'),
(22, 'blog/release-single?id=1&all=3', 'release-1'),
(23, 'blog/release-single?id=1&all=3&redirect_id=2&num=1', 'release-1'),
(24, 'blog/release-single?id=3&all=3', 'release-3'),
(25, 'blog/sites', 'sites'),
(26, 'blog/videos', 'videos'),
(27, 'blog/reviews', 'reviews'),
(28, 'blog/add-site', 'add-site');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bl_sef`
--
ALTER TABLE `bl_sef`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bl_sef`
--
ALTER TABLE `bl_sef`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
