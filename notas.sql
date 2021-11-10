-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-11-2021 a las 16:38:30
-- Versión del servidor: 5.6.45-log
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `d2000556_notas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categorias`
--

CREATE TABLE `Categorias` (
  `categorias_id` int(11) NOT NULL,
  `categorias_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Categorias`
--

INSERT INTO `Categorias` (`categorias_id`, `categorias_nombre`) VALUES
(1, 'Política'),
(2, 'Deportes'),
(3, 'Espectáculos'),
(5, 'Opinión'),
(7, 'Música'),
(9, 'Economía'),
(11, 'Salud'),
(13, 'Tecnología'),
(15, 'Turismo'),
(17, 'Finanzas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Notas`
--

CREATE TABLE `Notas` (
  `notas_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `notas_titulo` varchar(100) NOT NULL,
  `notas_fecha_creacion` date NOT NULL,
  `notas_fecha_modificacion` date NOT NULL,
  `notas_descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Notas`
--

INSERT INTO `Notas` (`notas_id`, `usuarios_id`, `notas_titulo`, `notas_fecha_creacion`, `notas_fecha_modificacion`, `notas_descripcion`) VALUES
(1, 1, 'Dolar por las nuves', '2021-11-02', '2021-11-09', 'Se dispara el dolar... caos en las calles'),
(3, 9, 'La salud antes que el dinero', '2021-11-04', '2021-11-11', 'El dolar va y viene, lo importante es la salud'),
(5, 4, 'Argentina paga la deuda', '2021-11-02', '2021-11-12', 'Cambiamos la deuda con el fondo a cambio de la patagonia, cuyo, mesopotamia y la pampa húmeda'),
(7, 3, 'Selección argentina', '2021-11-02', '2021-11-04', 'Nico González fue desafectado y se pierde los partidos ante Uruguay y Brasil'),
(9, 11, 'Qué puedes hacer para cuidar tus articulaciones', '2021-11-01', '2021-11-12', 'Las articulaciones son el punto de contacto donde se unen dos o más huesos, como la rodilla, cadera, codo u hombro. Permiten que el esqueleto sea flexible, sin ellas, el movimiento sería imposible. Por eso, es importante protegerlas para prevenir el dolor articular o posibles lesiones.'),
(11, 8, 'San Petersburgo o la ciudad rusa con una oferta cultural excelente en otoño', '2021-11-01', '2021-11-02', 'A finales de otoño, el tiempo parece ralentizarse en San Petersburgo. La ciudad invita a dar largos y agradables paseos, y los visitantes pueden disfrutar de sus célebres museos alejados de las multitudes. Uno de los nuevos destinos que se pueden explorar es el Museo del Ferrocarril de Rusia.'),
(19, 13, 'Por qué los astronautas de la Estación Espacial Internacional regresaron a la Tierra con pañales', '2021-11-02', '2021-11-05', 'Durante el largo viaje desde la EEI hasta la costa de Florida, en Estados Unidos, los pasajeros de Crew Dragon debieron llevar pañales ya que el inodoro de la nave estaba averiado. Con más elegancia, la NASA señaló que los viajeros debieron utilizar “ropa interior absorbente”.'),
(21, 7, 'Harry Potter cumple 20 años', '2021-11-03', '2021-11-11', 'La película de Harry Potter y la Piedra Filosofal cumple 20 años y Warner decidió celebrar el aniversario con el reestreno de la cinta en la pantalla grande con material extra: una trivia y el testimonio del director, Christopher Colombus. A partir de este jueves, fanáticos de todas las edades podrán ver, algunes por primera vez, las aventuras del joven mago creado por J.K. Rowling. “Esto habla de cuán presente sigue Harry a pesar del paso del tiempo. No fue una moda, está ahí y va a estar mucho tiempo más”, auguró Patricio Tarantino, autor de Historia secreta del mundo mágico.'),
(23, 2, '“Gracias Totales” de Soda Stereo', '2021-11-01', '2021-11-06', 'Soda Stereo confirmó sus funciones del 18 y 19 de diciembre en el Campo de Polo de la Ciudad de Buenos Aires. Serán dos noches en donde los fans podrán disfrutar de varios de los clásicos del trío. En “Gracias Totales-Soda Stereo”, Chaly Alberti y Zeta Bosio celebrarán la música y la historia del grupo con un espectáculo en vivo junto con algunos de los más grandes artistas internacionales y nacionales. Una forma de agradecer a sus fans y recordar a Gustavo Cerati.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Notas_Categorias`
--

CREATE TABLE `Notas_Categorias` (
  `notas_categorias_id` int(11) NOT NULL,
  `notas_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `usuarios_id` int(11) NOT NULL,
  `usuarios_nombre` varchar(50) NOT NULL,
  `usuarios_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`usuarios_id`, `usuarios_nombre`, `usuarios_email`) VALUES
(1, 'Jose', 'jose@mail.com'),
(2, 'Maria', 'maria@mail.com'),
(3, 'Pedro', 'pedro@mail.com'),
(4, 'Pablo', 'pablo@mail.com'),
(5, 'Alberto', 'alberto@mail.com'),
(7, 'Susana', 'susana@mail.com'),
(8, 'Martin', 'martin@mail.com'),
(9, 'Berta', 'berta@mail.com'),
(11, 'Roman', 'roman@mail.com'),
(13, 'Cristina', 'cristina@mail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categorias`
--
ALTER TABLE `Categorias`
  ADD PRIMARY KEY (`categorias_id`);

--
-- Indices de la tabla `Notas`
--
ALTER TABLE `Notas`
  ADD PRIMARY KEY (`notas_id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `Notas_Categorias`
--
ALTER TABLE `Notas_Categorias`
  ADD PRIMARY KEY (`notas_categorias_id`),
  ADD KEY `notas_id` (`notas_id`),
  ADD KEY `categorias_id` (`categorias_id`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`usuarios_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Categorias`
--
ALTER TABLE `Categorias`
  MODIFY `categorias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `Notas`
--
ALTER TABLE `Notas`
  MODIFY `notas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `Notas_Categorias`
--
ALTER TABLE `Notas_Categorias`
  MODIFY `notas_categorias_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `usuarios_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Notas`
--
ALTER TABLE `Notas`
  ADD CONSTRAINT `Notas_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `Usuarios` (`usuarios_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Notas_Categorias`
--
ALTER TABLE `Notas_Categorias`
  ADD CONSTRAINT `Notas_Categorias_ibfk_1` FOREIGN KEY (`notas_id`) REFERENCES `Notas` (`notas_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Notas_Categorias_ibfk_2` FOREIGN KEY (`categorias_id`) REFERENCES `Categorias` (`categorias_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
