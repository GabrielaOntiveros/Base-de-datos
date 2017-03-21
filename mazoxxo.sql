-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2017 a las 07:29:10
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mazoxxo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_paterno` varchar(45) NOT NULL,
  `apellido_materno` varchar(45) NOT NULL,
  `telefono_casa` varchar(20) NOT NULL,
  `telefono_celular` varchar(20) NOT NULL,
  `domicilio` varchar(255) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `cp` int(6) NOT NULL,
  `email` varchar(60) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_proveedor` varchar(45) NOT NULL,
  `total` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `fecha_compra` varchar(45) NOT NULL,
  `productos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_detalle`
--

CREATE TABLE `compras_detalle` (
  `id` int(11) NOT NULL,
  `id_compras` varchar(45) NOT NULL,
  `id_producto` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `subtotal` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `giros`
--

CREATE TABLE `giros` (
  `id` int(11) NOT NULL,
  `nombre_giro` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `rfc` varchar(45) NOT NULL,
  `empresa` varchar(45) NOT NULL,
  `responsable` varchar(45) NOT NULL,
  `domicilio` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `celular` varchar(45) NOT NULL,
  `id_giro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `fecha_registro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalle`
--

CREATE TABLE `ventas_detalle` (
  `id` int(11) NOT NULL,
  `id_venta` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `subtotal` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras_detalle`
--
ALTER TABLE `compras_detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `giros`
--
ALTER TABLE `giros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
