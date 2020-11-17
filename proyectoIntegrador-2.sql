-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 17, 2020 at 03:14 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyectoIntegrador`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comentariousuario_id` int(11) NOT NULL,
  `texto_comentario` longtext,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comentarios`
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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `url_perfil` varchar(3000) DEFAULT NULL,
  `texto_post` longtext,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `usuario_id`, `url_perfil`, `texto_post`, `createdAt`) VALUES
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
(25, 5, 'https://www.instagram.com/andresiniesta8/', 'que bueno', '2018-06-25 00:00:00'),
(29, 40, 'url', 'texto', '2020-01-01 00:00:00'),
(31, 48, '123', '456', '2020-09-09 00:00:00'),
(32, 48, 'probando', 'probandoo', '2020-09-20 00:00:00'),
(33, 48, 'https://images.daznservices.com/di/library/GOAL/67/64/lionel-messi-barcelona-2020-21_1epkbxe4akqa61alyadwopnzxn.jpg?t=-674771132&quality=100', 'funciona', '2020-09-24 00:00:00'),
(34, 40, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhMVFRUXGBcYFxcYFxcYHRgVFxgYFxcXFxcYHSggGB0lGxcXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGisdHR0tLS0tLSsrLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS8tNy0rMCswLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAAECBAYDBwj/xABBEAABAwIEAwUFBAkEAQUAAAABAAIRAwQFEiExBkFREyJhcYEykaGxwRQj0fAHMzRCUnKy4fFigpLCFSQ1Q3N0/8QAGgEAAgMBAQAAAAAAAAAAAAAAAwQAAQIFBv/EACoRAAICAgICAQMCBwAAAAAAAAABAhEDMRIhQVEiBBMyQnEFM2Fy0eHw/9oADAMBAAIRAxEAPwCkklCRTgkMknTFUWMUycpKFESub3cphdVl+KaxY4ZCZLTm8uR8CszdI1BWzjjt5LiwQQN9kHqXIgQYcDyKqVbgnmVXhKvsZSouPuXu5+5SoVnNOm/VVmtKdzoUosvXpcYc45tOSpm6I0AiPErm6udlxKiRZarXJcNSkbs5Q3kq86QnYxSiixb3ET4rjngkptlElQsk6qSrlOrDQ0NHievgh6myoVGQ1XD965jsj/Zd8DyWmXntG6OnUbHn71vbK4D2NeDPWOvNHxS6oBlj5OoTKQSRAIkkk6hBkiE6SosZJPl8UlZC0AmIUoShaIRhMpwmIVEIwmlShMqLor3tcMbM68unvWLxa6zuLnQZHTaPHmtLxAX5YYyeZ6LEVmkO+8OvT87JebbYaCVFaoU7XBQeNUzSshDq6prC5kpipUWyQFC0M2mSdAuj7Rw1IK1uD4a0t9lETh/UJd56YZYTz8Uj0VplkZAIidlr/wDxImYUalj32HlJB/4n8Aqeey1hMlXsHN8lVfThbu9w/', 'Soy el diegooo', '2020-10-01 00:00:00'),
(39, 49, 'https://estaticos.muyinteresante.es/uploads/images/article/5536592a70a1ae8d775df846/dia-del-mono.jpg', 'monitooo', '2020-10-22 00:00:00'),
(40, 50, 'https://estaticos.muyinteresante.es/uploads/images/article/5536592a70a1ae8d775df846/dia-del-mono.jpg', 'Mono12345', '2020-10-25 00:00:00'),
(42, 50, 'https://billboard.com.ar/wp-content/uploads/2020/05/TRAPICHEO.jpg', 'trapicheo', '2020-11-10 00:00:00'),
(43, 50, 'https://media.diariopopular.com.ar/adjuntos/143/imagenes/004/885/0004885445.jpg', 'el toro', '2020-11-11 00:00:00'),
(44, 50, 'https://www.ecestaticos.com/image/clipping/ceca530e1d1858920098bb6e4640e666/opening.jpg', '#hola #post #mono', '2020-11-12 00:00:00'),
(45, 55, 'https://estaticos.muyinteresante.es/uploads/images/article/5536592a70a1ae8d775df846/dia-del-mono.jpg', '#mono #post', '2020-11-13 00:00:00'),
(46, 50, 'file:///Users/davidzir/Desktop/UdeSA/liomessifoto.jpg', '0426', '2020-11-14 00:00:00'),
(50, 50, 'https://images-na.ssl-images-amazon.com/images/I/81hMEx3kLqL._SL1200_.jpg', 'ultimo posteo', '2020-11-15 16:44:24'),
(52, 56, 'https://lh3.googleusercontent.com/proxy/JYPVnMu0X50AXrayjLsQ5qPARYt0oV8qZZhehyTTDmvOmVemDMd56bm9U9KrElPpIvemh_4FVP7B12MIfnDEx1Y7v1Yh7jGB8WBzDy36yFb2TFzIlQcuzCIV2Kk', 'viva el csgo!', '2020-11-15 17:16:14'),
(54, 55, 'https://fin.guru/multimedia/noticias/N/201908/5b928c8d4761f_850x425.jpg', '#tesla #musk', '2020-11-16 02:44:05'),
(55, 79, 'https://www.ecestaticos.com/image/clipping/60f0d5835b45acd5aed0d1cb44047f12/gano-joe-biden-pero-las-encuestas-se-equivocaron-mas-que-en-2016-por-que.jpg', 'Stop the count !!!', '2020-11-17 00:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `edad` tinyint(255) UNSIGNED DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `pregunta` varchar(45) DEFAULT NULL,
  `respuesta` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `username`, `edad`, `password`, `mail`, `pregunta`, `respuesta`) VALUES
(1, 'Jeronimo', 'Kilian', 'jkilian', 19, '43083899', 'jkilian@udesa.edu.ar', NULL, 'si'),
(2, 'David', 'Zir', 'davidz', 20, '43083666', 'dzircampero@udesa.edu.ar', NULL, 'si'),
(3, 'Santino', 'Bonarrigo', 'santib', 12, '43083555', 'sbonarrigo@udesa.edu.ar', NULL, 'si'),
(4, 'Matias', 'Rodriguez', 'matirod', 15, '43083444', 'matirod@gmail.com', NULL, 'si'),
(5, 'Juan', 'Lopez', 'jjlopez', 13, '43083333', 'jlopez@hotmail.com', NULL, 'si'),
(29, 'Lautaro', 'Martinez', 'toro22', NULL, 'holasoyeltoro', 'toro@gmail.com', NULL, NULL),
(30, 'Elon', 'Musk', 'elon.musk', NULL, 'tesla123', 'emusk@gmail.com', NULL, NULL),
(34, 'Diego', NULL, 'diegoarmando', NULL, '$2a$10$vWJOxrGr1V/5J/sJh/0Uce0Q4Kb1LfPv9FWBV0THqZyj8gRwMLYSG', 'dmarado@gmail.com', NULL, NULL),
(39, 'hola', 'hola', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'DAVID', 'ZIR', 'davidzir123', NULL, '$2a$10$u/CVIH2tGo73ez/.PQEKl./zVnm9Pd9bCN54LFqLF1.fLTYVahu.6', 'davidzir@hotmail.com', NULL, NULL),
(42, 'monito', 'monito', NULL, NULL, '$2a$10$.K/ZAoyHc0AgWRrks.Qdx.oIvys9Pxm/cn8Q.qnPON.enskLDiO1G', NULL, NULL, NULL),
(43, 'jero', 'kilian', NULL, NULL, '$2a$10$GfrNQ4.83I89g/DSQR1Y..F0zYpgJwtDstYgYBWIpJeYpDumfEYE6', NULL, NULL, NULL),
(44, '', '', NULL, NULL, '$2a$10$V.WaakUFZf6sxNzqCIyfQeo26Fda.y7.j89C4aLSny3RSlyiC8GYu', NULL, NULL, NULL),
(46, 'lio', 'messi', 'liomessi', NULL, '$2a$10$U62uyQGpLJ2/3pPfT7jB2.lldJ/DqVsOq7rAlwLKRoQ9AmOQII1Am', 'liomessi@gmail.com', NULL, NULL),
(47, 'jero', 'kilian', 'jkilian', NULL, '$2a$10$kEd074f5DSVMRNqGgX1Zy.yX6vaUiEBZWLts8Sj63KX2T.Xs.vzom', 'jkilian@udesa.com.ar', NULL, NULL),
(48, '123', '123', '123', NULL, '$2a$10$ZRUsjNN3L9zgISLwdWX6ie90ApOil6LWRodr5EHTuJWEPMoTpyka2', '123', '1', '1'),
(49, 'monito', 'monito', 'monito123', NULL, '$2a$10$eS04GFZGNRODQPRO0mlvkeMCQEMg1I3YslHbv47CrYxG77CrObsD.', 'monito@gmail.com', '1', 'monito'),
(50, 'Mono', 'Mono', 'mono', NULL, '$2a$10$3rTkQduMYhg./OyRK1LbMOYCTpZu1lK/84qebRo2nH5UZe1lSlTqu', 'mono@gmail.com', '1', 'hola'),
(51, 'david', 'zir', 'davidzir', NULL, '$2a$10$UccUAEvT2puhney4LFBF2elwWZ1hUo0eYbzbQ381X7aNVKxOg3R6i', 'david.zir@gmail.com', '1', '123'),
(53, 'klk', 'klk', 'klk', NULL, '$2a$10$tiW9Nm1CzCcoGga5tL9Pt.Lb9kFT8TgEktAuAflmngKhDRG.3E5f.', 'david.zir@hotmail.com', '1', '123'),
(54, 'klk', 'klk', 'klk', NULL, '$2a$10$PT.PmgDyekXEVkTs5BsOKOlK7j8nytgF4AQzchdUn5Jvq051uvxh.', 'klk@hotmail.com', '1', '123'),
(55, 'mono123456', '1234', 'monoo', NULL, '$2a$10$KmOABv31DX4UPMnIJIP7qeuIot3nLkD5vatyqmwJUtTYxfL5hQhaC', 'mono@.com', '1', 'dos'),
(56, 'Shawn', 'Zir', 'SHAWNzir', NULL, '$2a$10$MyJCgmc5XPXXUS9O4PfpMOAS40hQIt6bPOq1wu7oAQ5VrKk/u1Jli', 'shawn@gmail.com', '1', 'julio'),
(58, 'prueba', 'prueba', 'prueba', NULL, '$2a$10$6yQ0sq12SpP3cRmmDQCdwO4dV2VvJqGdK.sJf8boeFnErIHUriU9i', 'prueba@g.com', '3', 'colegio'),
(61, 'prueba', 'prueba', 'prueba1', NULL, '$2a$10$iJLzI.f2lkJIRKKsfdHyIuu4SjP4bpKd6wImDQMlDcBKOtg5qOK3a', 'prueba@123.com', '2', 'caba'),
(63, 'prueba', 'prueba', 'prueba1', NULL, '$2a$10$k6aDjypZujZBGP7IAWVAXufi3fiKxYtSgUvZA2nyjGgenyAfe012m', 'hola@hola.edu.ar', '2', 'caba'),
(64, 'prueba', 'david', 'prueba', NULL, '$2a$10$1Jdv1NCOVP0eeYtvpS15MOSJG8Eh4fH1vJ6lsFgKFKOz5cnZYbUWO', '145@157.com', '1', 'caba'),
(67, '1234567890', '`123456789', '1234567890', NULL, '$2a$10$v5yjm/iukji5lw/T7HcVKOhetXra1.CGsYE846sh.VoV4zxSUgCTK', '1234567890@09876543.com', '1', 'caca'),
(78, 's', 's', 's', NULL, '$2a$10$HGqmfzdQHusZyRE61ql9X.QujXogRqbD5/Mg1W3iI4dAbq/eTHSzC', 'd@otmail.com', '1', 'eee'),
(79, 'tade', 'bibes', 'fachacarp1212', NULL, '$2a$10$0V7syOXR85xWj3KcmzIxJOttesEk6UuCQpX.KsxHp4Y2seD/1UtAu', 'bibestadeo@hotmail.com', '1', 'berta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentario_posteo` (`post_id`),
  ADD KEY `comentario a usuario` (`comentariousuario_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_foreing` (`usuario_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentario a usuario` FOREIGN KEY (`comentariousuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comentario_posteo` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `usuario_foreing` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
