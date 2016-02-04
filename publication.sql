-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 04 2016 г., 20:40
-- Версия сервера: 10.1.9-MariaDB
-- Версия PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testsite2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `publication`
--

CREATE TABLE `publication` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `short_content` text CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `author_name` varchar(225) CHARACTER SET utf8 NOT NULL,
  `preview` varchar(225) CHARACTER SET utf8 NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `publication`
--

INSERT INTO `publication` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES
(1, 'The first entry', '2016-02-03 22:00:00', 'This is my first trial entry for you', '', 'Andrew Solchanyk', '/img/1.jpg', 'NewsPublication'),
(2, 'second entry', '2016-02-03 22:00:00', 'This is my second trial account for you', '', 'Andrew Solchanyk', '/img/2.jpg', 'NewsPublication'),
(3, 'third record', '2016-02-03 22:00:00', 'This is my third trial account for you', '', 'Andrew Solchanyk', '/img/3.jpg', 'ArticlePublication'),
(4, 'The fourth record', '2016-02-03 22:00:00', 'This is my fourth test recording for you', '', 'Andrew Solchanyk', '/img/4.jpg', 'ArticlePublication'),
(5, 'Fifth entry', '2016-02-03 22:00:00', 'It''s my fifth trial account for you', '', 'Andrew Solchanyk', '/img/5.jpg', 'PhotoReportPublication'),
(7, 'Item number six', '2016-02-03 22:00:00', 'It''s my six trial account for you', '', 'Andrew Solchanyk', '/img/01.MP3', 'AudioPublication');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `publication`
--
ALTER TABLE `publication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
