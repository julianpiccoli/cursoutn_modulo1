-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-08-2024 a las 20:07:24
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cerveceriax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(3, '1 Día Mundial de la Cerveza: de IPA a Lager, cuáles son las diferencias entre los estilos más reconocidos del mundo', 'Esta efeméride comenzó en un pequeño bar de Estados Unidos y se extendió entre los fanáticos de esta bebida. La tradición, la composición, el origen y los ingredientes determinan, en muchos casos, las características y la denominación de cada tipo alrededor del planeta', 'Este 2 de agosto, el mundo celebra el Día Internacional de la Cerveza, una festividad que tuvo su origen en un pequeño bar de Santa Cruz, en California, Estados Unidos. Lo que comenzó como una simple convocatoria para los clientes habituales de este local, se transformó rápidamente en una efeméride de alcance global. Cada primer viernes de agosto, aficionados de todos los rincones del planeta levantan sus vasos para brindar por esta apreciada bebida.', 'v7rofvgntft56hu9ayvc'),
(7, 'Esta es la mejor cerveza de Argentina, según la Inteligencia Artificial', 'Descubrí cuál es la mejor cerveza de Argentina. Gemini, la IA desarrollada por Google, elaboró un ránking con las 10 mejores "birras".', 'En nuestro país, la cerveza juega un papel destacado a la hora de juntarse a comer con amigos. Hace unos días la Inteligencia Artificial (IA) reveló cuáles son las marcas más elegidas por los argentinos, pero ahora le consultamos cuál es la mejor cerveza de Argentina. \r\n\r\nEntre las marcas embématicas se desta Quilmes, que desde hace décadas se convirtió en la preferida por muchos argentinos, convirtiéndose en un verdadero símbolo nacional. Con su sabor único y una amplia gama de variedades, Quilmes sigue liderando el mercado cervecero argentino.', NULL),
(11, 'prueba modificada', 'fgsdgds', 'hfdhh', 'ftg8vqldpwb06etpmhwp'),
(13, 'prueba imagen 2', 'prueba imagen 2', 'prueba imagen 2', 'm71itm4ihmxyefetmir8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'julian', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'julian2', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'julian3', 'hola');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
