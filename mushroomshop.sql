-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 19 2019 г., 21:38
-- Версия сервера: 5.7.25-0ubuntu0.18.04.2
-- Версия PHP: 7.2.16-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mushroomshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rus_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cats`
--

INSERT INTO `cats` (`id`, `name`, `rus_name`) VALUES
(1, 'edible', 'Съедобные грибы'),
(2, 'poisonous', 'Ядовитые грибы'),
(3, 'mould', 'Плесневые грибы');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `rus_name` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `cat`, `price`, `rus_name`, `img`, `descr`) VALUES
(1, 'amanita', 'poisonous', 100, 'Мухомор красный', 'amanita.jpg', 'Плодовое тело гриба содержит ряд токсичных соединений, некоторые из которых обладают психотропным эффектом. Токсические и психоактивные вещества хорошо растворяются в горячей воде, и употребление грибов, отваренных в нескольких водах, приводит к менее сильному отравлению. Однако, содержание ядов в плодовых телах может сильно варьировать, что делает употребление мухоморов в пищу опасным'),
(2, 'panther', 'poisonous', 200, 'Мухомор пантерный', 'panther.jpg', 'Сильно ядовит. Образует микоризу со многими деревьями, встречается в хвойных, смешанных и широколиственных лесах, часто под сосной, дубом, буком, предпочитает щелочные почвы. Широко распространён в умеренном климате Северного полушария'),
(3, 'kingbolete', 'edible', 300, 'Белый гриб', 'kingbolete.jpg', 'Классический вид, который в народе прозвали «полковником» – чествуя самым главным и лучшим из сородичей. Каштаново-коричневая шляпка выпуклая, затем плоско-выпуклая, подушковидная, редко распростертая, достигает диаметра 25–30 см. Известны гигантские представители – с диаметром шляпки до 45 см и весом до 2–3 кг. Поверхность гладкая, иногда неровная, бороздчатая ил'),
(4, 'leccinum', 'edible', 400, 'Подосиновик', 'leccinum.jpg', 'Плодоносит чаще поодиночке. Обычный гриб в северной умеренной зоне, в России наиболее известен в Европейской части и на Дальнем Востоке, где встречается под берёзой маньчжурской и каменной. Сезон июнь — сентябрь, иногда до поздней осени. Съедобен'),
(5, 'chanterelle', 'edible', 500, 'Лисичка', 'chanterelle.jpg', 'Хорошо известный съедобный гриб, высоко ценится, годится для употребления в любом виде. Образует микоризу с различными деревьями, наиболее часто с елью, сосной, дубом, буком'),
(6, 'pax', 'poisonous', 600, 'Свинушка', 'pax.jpg', 'До 1981 года этот гриб считался условно съедобным и относился к 4-й категории по пищевым качествам. В настоящее время отнесён к ядовитым, хотя симптомы отравления проявляются не всегда и/или не сразу. Содержит токсины (лектины), не разрушающиеся даже при многократном отваривании'),
(8, 'aspergillus', 'mould', 560, 'Аспергилл', 'aspergillus.png', 'Виды аспергилл важны с медицинской и коммерческой точки зрения. Отдельные виды могут инфицировать человека и других животных. Некоторые инфекции, найденные на животных, изучались годами; в то время как другие виды, найденные на животных, описывались как новые и специфические для исследуемого заболевания. Иные были известны как уже использующиеся названия для организмов, таких как сапрофиты. Более 60 видов аспергилл являются существенными медицинскими патогенами. Существует целый ряд заболеваний человека, таких как инфекция наружного уха, поражения кожи и изъязвления, классифицируемые как мицетомы.'),
(9, 'penicillium', 'mould', 777, 'Пеницилл', 'penicillium.jpg', 'Один из наиболее широко распространённых в мире родов грибов, представители которого обнаруживаются в самых различных местах — в почве, на растениях, в воздухе, в помещениях, на пищевых продуктах, в морях. С эколого-трофической точки зрения, виды рода — сапротрофы и слабые паразиты растений.\r\n\r\nОтдельные виды используются в сыроварении — Penicillium roqueforti и P. camemberti.\r\n\r\nК роду относят продуцентов антибиотика пенициллина — среди них P. chrysogenum, являющийся одним из самых распространённых грибов в мире. Другой крайне широко распространённый вид рода — P. citrinum.'),
(10, 'fusarium', 'mould', 55, 'Фузариум', 'fusarium.jpg', 'Представители рода имеют существенное значение как грибы, приносящие вред народному хозяйству и патогены, вызывающие заболевания или токсикозы у растений и животных, в том числе человека. Заболевания растений, вызываемые этими грибами, имеют название фузариозы, отравления животных и человека — фузариотоксикозы. Фузариозы растений могут проявляться в форме гнили корней, увядания (так наз. трахеомикозное сосудистое увядание), поражений плодов и семян; важную роль некоторые виды фузариума выполняют в развитии кагатной гнили корнеплодов. Зерно, поражённое фузарием Fusarium sporotrichioides содержит ядовитое вещество вомитоксин, его употребление в пищу приводит к заболеванию алиментарно-токсической алейкией («септической ангиной»); причиной отравлений могут стать и другие виды. Некоторые фузарии способны паразитировать на человеческой коже, вызывая дерматиты.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat` (`cat`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `cats` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;