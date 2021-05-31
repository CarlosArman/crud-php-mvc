-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2021 a las 22:35:15
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_php_mvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `prod_descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_modificacion` datetime DEFAULT NULL,
  `fecha_eliminacion` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_nombre`, `prod_descripcion`, `fecha_creacion`, `fecha_modificacion`, `fecha_eliminacion`, `estado`) VALUES
(1, 'Auriculares', 'Ninguna', '2021-05-26 20:10:06', '2021-05-31 15:31:30', NULL, 1),
(2, 'Mouse', 'Ninguna', '2021-05-27 03:14:03', NULL, NULL, 1),
(3, 'Teclado', 'Ninguna', '2021-05-26 20:14:04', NULL, NULL, 1),
(4, 'Laptop', 'Ninguna', '2021-05-28 22:33:32', NULL, NULL, 1),
(5, 'Radio', 'Ninguna', '2021-05-28 22:38:15', NULL, '2021-05-28 22:38:21', 0),
(6, 'Tijera', 'Descripcion tijera', '2021-05-28 23:01:52', '2021-05-31 15:25:57', '2021-05-28 23:08:15', 1),
(7, 'Radio', 'Ninguna', '2021-05-28 23:08:21', NULL, NULL, 1),
(8, 'test', 'Ninguna', '2021-05-31 13:48:26', NULL, NULL, 1),
(9, 'test2', 'Ninguna', '2021-05-31 14:45:09', NULL, '2021-05-31 15:05:53', 0),
(10, 'test2', 'Ninguna', '2021-05-31 14:45:17', NULL, '2021-05-31 15:05:57', 0),
(11, 'test23', 'Ninguna', '2021-05-31 14:52:54', NULL, '2021-05-31 15:02:24', 0),
(12, 'test2', 'Ninguna', '2021-05-31 15:05:47', NULL, '2021-05-31 15:05:51', 0),
(13, 'test2', 'Ninguna', '2021-05-31 15:06:15', NULL, NULL, 1),
(14, 'test23222', 'Ninguna2', '2021-05-31 15:32:48', NULL, NULL, 1),
(15, 'test3323', 'Ninguna223232', '2021-05-31 15:33:04', NULL, '2021-05-31 15:33:11', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
