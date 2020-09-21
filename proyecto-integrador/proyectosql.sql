-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2020 a las 16:05:25
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectosql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comentariousuario_id` int(11) NOT NULL,
  `texto_comentario` longtext DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `post_id`, `comentariousuario_id`, `texto_comentario`, `fecha_creacion`) VALUES
(1, 1, 1, 'buena foto', '2019-09-20 00:00:00'),
(2, 2, 1, 'buena foto', '2019-09-19 00:00:00'),
(3, 3, 1, 'buena foto', '2019-09-18 00:00:00'),
(4, 4, 1, 'buena foto', '2019-09-17 00:00:00'),
(5, 5, 1, 'gran momento', '2019-09-16 00:00:00'),
(6, 6, 2, 'gran momento', '2019-09-15 00:00:00'),
(7, 7, 2, 'gran momento', '2019-09-14 00:00:00'),
(8, 8, 2, 'gran momento', '2019-09-13 00:00:00'),
(9, 9, 2, 'genial', '2019-09-12 00:00:00'),
(10, 10, 2, 'genial', '2019-09-11 00:00:00'),
(11, 11, 3, 'genial', '2019-09-10 00:00:00'),
(12, 12, 3, 'genial', '2019-09-09 00:00:00'),
(13, 13, 3, 'grandioso', '2019-09-08 00:00:00'),
(14, 14, 3, 'grandioso', '2019-09-01 00:00:00'),
(15, 15, 3, 'grandioso', '2019-09-02 00:00:00'),
(16, 16, 4, 'grandioso', '2019-09-03 00:00:00'),
(17, 17, 4, 'faaaaaaa', '2019-09-04 00:00:00'),
(18, 18, 4, 'faaaaaaa', '2019-09-05 00:00:00'),
(19, 19, 4, 'faaaaaaa', '2019-09-06 00:00:00'),
(20, 20, 4, 'faaaaaaa', '2019-09-07 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `url_perfil` varchar(3000) DEFAULT NULL,
  `texto_post` longtext DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `usuario_id`, `url_perfil`, `texto_post`, `fecha_creacion`) VALUES
(1, 1, 'https://www.instagram.com/santino.bona/', 'que bueno', '2018-06-19 00:00:00'),
(2, 1, 'https://www.instagram.com/santino.bona/', 'que malo', '2018-06-18 00:00:00'),
(3, 1, 'https://www.instagram.com/santino.bona/', 'que bueno', '2018-06-17 00:00:00'),
(4, 1, 'https://www.instagram.com/santino.bona/', 'que bueno', '2018-06-16 00:00:00'),
(5, 1, 'https://www.instagram.com/santino.bona/', 'que bueno', '2018-06-15 00:00:00'),
(6, 2, 'https://www.instagram.com/leomessi/', 'que bueno', '2018-06-14 00:00:00'),
(7, 2, 'https://www.instagram.com/leomessi/', 'que bueno', '2018-06-13 00:00:00'),
(8, 2, 'https://www.instagram.com/leomessi/', 'que bueno', '2018-06-12 00:00:00'),
(9, 2, 'https://www.instagram.com/leomessi/', 'que bueno', '2018-06-11 00:00:00'),
(10, 2, 'https://www.instagram.com/leomessi/', 'que bueno', '2018-06-10 00:00:00'),
(11, 3, 'https://www.instagram.com/cristiano/', 'que bueno', '2018-06-09 00:00:00'),
(12, 3, 'https://www.instagram.com/cristiano/', 'que bueno', '2018-06-08 00:00:00'),
(13, 3, 'https://www.instagram.com/cristiano/', 'que bueno', '2018-06-07 00:00:00'),
(14, 3, 'https://www.instagram.com/cristiano/', 'que bueno', '2018-06-06 00:00:00'),
(15, 3, 'https://www.instagram.com/cristiano/', 'que bueno', '2018-06-05 00:00:00'),
(16, 4, 'https://www.instagram.com/iamzlatanibrahimovic/', 'que bueno', '2018-06-04 00:00:00'),
(17, 4, 'https://www.instagram.com/iamzlatanibrahimovic/', 'que bueno', '2018-06-03 00:00:00'),
(18, 4, 'https://www.instagram.com/iamzlatanibrahimovic/', 'que bueno', '2018-06-02 00:00:00'),
(19, 4, 'https://www.instagram.com/iamzlatanibrahimovic/', 'que bueno', '2018-06-01 00:00:00'),
(20, 4, 'https://www.instagram.com/iamzlatanibrahimovic/', 'que bueno', '2018-06-20 00:00:00'),
(21, 5, 'https://www.instagram.com/andresiniesta8/', 'que bueno', '2018-06-21 00:00:00'),
(22, 5, 'https://www.instagram.com/andresiniesta8/', 'que bueno', '2018-06-22 00:00:00'),
(23, 5, 'https://www.instagram.com/andresiniesta8/', 'que bueno', '2018-06-23 00:00:00'),
(24, 5, 'https://www.instagram.com/andresiniesta8/', 'que bueno', '2018-06-24 00:00:00'),
(25, 5, 'https://www.instagram.com/andresiniesta8/', 'que bueno', '2018-06-25 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apelllido` varchar(45) DEFAULT NULL,
  `edad` tinyint(255) UNSIGNED DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apelllido`, `edad`, `dni`) VALUES
(1, 'Jeronimo', 'Kilian', 19, '43083899'),
(2, 'David', 'Zir', 20, '43083666'),
(3, 'Santino', 'Bonarrigo', 12, '43083555'),
(4, 'Matias', 'Rodriguez', 15, '43083444'),
(5, 'Juan', 'Lopez', 13, '43083333');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentario_posteo` (`post_id`),
  ADD KEY `comentario a usuario` (`comentariousuario_id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_foreing` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentario a usuario` FOREIGN KEY (`comentariousuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comentario_posteo` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `usuario_foreing` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
