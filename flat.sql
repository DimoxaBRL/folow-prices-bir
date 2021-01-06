-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 06 2021 г., 16:08
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `flat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `flat`
--

CREATE TABLE `flat` (
  `id` int(11) NOT NULL,
  `vid` varchar(255) NOT NULL,
  `complex` varchar(255) DEFAULT NULL,
  `dom` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `square` float DEFAULT NULL,
  `rooms` int(11) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `floar` int(11) NOT NULL,
  `data_create` date NOT NULL,
  `date_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `flat`
--

INSERT INTO `flat` (`id`, `vid`, `complex`, `dom`, `number`, `square`, `rooms`, `year`, `floar`, `data_create`, `date_update`) VALUES
(1, '', 'Minsk World', 'Дом 20.5	', 205, 27.76, 1, '2022', 0, '2021-01-06', '2021-01-07');

-- --------------------------------------------------------

--
-- Структура таблицы `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `id_flat` int(11) NOT NULL,
  `date` date NOT NULL,
  `price_ per_meter` int(11) NOT NULL,
  `price_full` int(11) NOT NULL,
  `price_per_metr_100` int(11) NOT NULL,
  `price_full_100` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `prices`
--

INSERT INTO `prices` (`id`, `id_flat`, `date`, `price_ per_meter`, `price_full`, `price_per_metr_100`, `price_full_100`) VALUES
(1, 1, '2021-01-06', 1, 2, 3, 4),
(7, 1, '2021-01-05', 22, 33, 22, 33);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `flat`
--
ALTER TABLE `flat`
  ADD UNIQUE KEY `id_3` (`id`),
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `id_2` (`id`);

--
-- Индексы таблицы `prices`
--
ALTER TABLE `prices`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_flat` (`id_flat`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `flat`
--
ALTER TABLE `flat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
