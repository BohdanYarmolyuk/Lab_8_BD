-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лис 30 2021 р., 21:21
-- Версія сервера: 10.4.21-MariaDB
-- Версія PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `l8_db`
--
CREATE DATABASE IF NOT EXISTS `l8_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `l8_db`;

-- --------------------------------------------------------

--
-- Структура таблиці `groups`
--

CREATE TABLE `groups` (
  `id` int(9) NOT NULL,
  `group_name` varchar(16) NOT NULL,
  `kurator_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `kurator_id`) VALUES
(1, 'ІПЗ-11', 1),
(2, 'ІПЗ-21', 2),
(3, 'КІ-11', 3),
(4, 'КІ-21', 4);

-- --------------------------------------------------------

--
-- Структура таблиці `kurators`
--

CREATE TABLE `kurators` (
  `id` int(9) NOT NULL,
  `pib_kuratora` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `kurators`
--

INSERT INTO `kurators` (`id`, `pib_kuratora`) VALUES
(1, 'Якийсь Олег Олегович'),
(2, 'Куратор 2'),
(3, 'Куратор 3'),
(4, 'Куратор 3');

-- --------------------------------------------------------

--
-- Структура таблиці `students`
--

CREATE TABLE `students` (
  `id` int(9) NOT NULL,
  `pib` varchar(128) NOT NULL,
  `group_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `students`
--

INSERT INTO `students` (`id`, `pib`, `group_id`) VALUES
(3, 'Іваненко Іван Іванович', 1),
(20, 'Сергієнко Срегій Сергійович', 1),
(24, 'Парійчук Віталій Олегович', 3);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kurator_id` (`kurator_id`);

--
-- Індекси таблиці `kurators`
--
ALTER TABLE `kurators`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `kurators`
--
ALTER TABLE `kurators`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `students`
--
ALTER TABLE `students`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`kurator_id`) REFERENCES `kurators` (`id`);

--
-- Обмеження зовнішнього ключа таблиці `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
