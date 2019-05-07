-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Maj 2019, 22:28
-- Wersja serwera: 10.1.34-MariaDB
-- Wersja PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projectemployees`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `employee`
--

INSERT INTO `employee` (`id`, `name`) VALUES
(1, 'Kowalski Marek'),
(2, 'Nowak Natalia'),
(3, 'Cianciek Józef'),
(4, 'Kowalska Nina'),
(5, 'Wiśniewski Grzegorz'),
(6, 'KAROLINA KOWALSKA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `end_date` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `project`
--

INSERT INTO `project` (`id`, `end_date`, `name`, `start_date`) VALUES
(1, '2019-11-14', 'Bankowa aplikacja', '2019-05-09'),
(2, '2019-05-13', 'Aplikacja do zarządzania ekologia', '2020-05-22'),
(3, '2019-08-09', 'Zarządzenie uniwersytetem', '2019-05-08'),
(4, NULL, 'Wełna skalna', '2019-05-07'),
(6, '2019-05-15', 'Ochrona pand', '2019-05-30'),
(7, '2019-05-16', 'Ochrona fok', '2019-05-27');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_employee`
--

CREATE TABLE `project_employee` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `project_employee`
--

INSERT INTO `project_employee` (`id`, `employee_id`, `project_id`) VALUES
(1, 3, 1),
(2, 2, 1),
(3, 2, 2),
(4, 4, 3),
(5, 5, 3),
(6, 5, 4),
(7, 1, 2),
(8, 4, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `project_employee`
--
ALTER TABLE `project_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn5yqs0xm3rmsg62n84ccyk4k0` (`employee_id`),
  ADD KEY `FK1907nkisp2dlsswuycpnakiv8` (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `project_employee`
--
ALTER TABLE `project_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `project_employee`
--
ALTER TABLE `project_employee`
  ADD CONSTRAINT `FK1907nkisp2dlsswuycpnakiv8` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `FKn5yqs0xm3rmsg62n84ccyk4k0` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
