-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2021 a las 20:02:18
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
-- Base de datos: `shoppingg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0e0ce2c32f1b101a0647eb616399272e', '2017-01-24 16:21:18', '22-06-2020 10:14:35 PM'),
(2, 'madreverde', 'madreverde2000', '2021-07-12 21:22:12', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Mascarillas', 'Mascarillas a beneficio de la fundación.', '2021-01-24 19:17:37', '12-07-2021 04:34:49 PM'),
(4, 'Servicios', 'Servicios que vende la fundación. ', '2021-01-24 19:19:32', '12-07-2021 04:37:13 PM'),
(5, 'Compostables', 'Productos bio-degradables amigables con el ambiente.', '2021-01-24 19:19:54', '12-07-2021 04:38:22 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(18, 5, '22', 1, '2021-07-19 18:43:01', 'SINPE', 'Entregado'),
(19, 5, '28', 1, '2021-07-19 18:43:02', 'SINPE', NULL),
(20, 5, '31', 1, '2021-07-19 18:43:03', 'SINPE', NULL),
(21, 6, '23', 1, '2021-07-19 18:57:51', 'Debit / Credit card', 'En proceso'),
(22, 6, '22', 1, '2021-07-19 23:57:43', 'SINPE', NULL),
(23, 6, '24', 1, '2021-07-20 00:02:58', 'Debit / Credit card', NULL),
(24, 6, '22', 1, '2021-07-20 00:05:25', 'Debit / Credit card', NULL),
(25, 6, '22', 1, '2021-07-20 00:10:10', 'SINPE', NULL),
(26, 6, '24', 1, '2021-07-23 17:34:11', 'Debit / Credit card', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 17, 'Entregado', 'Ya ha pagado', '2021-07-12 21:26:59'),
(6, 18, 'Entregado', 'Ya esta listo', '2021-07-19 18:44:27'),
(7, 21, 'En proceso', 'Se esta alistando el pedido', '2021-07-19 18:58:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 5, 9, 'Platos Familiar', 'Madre Verde', 40, 50, 'Platos amigables con el ambiente', '84ee369c-ccd1-4165-bc0e-786c68e126d4.jpg', '84ee369c-ccd1-4165-bc0e-786c68e126d4.jpg', '84ee369c-ccd1-4165-bc0e-786c68e126d4.jpg', 0, 'En Stock', '2021-07-12 21:45:40', NULL),
(23, 4, 3, 'Programa Bandera Azul', 'Madre Verde', 80900, 0, 'Programa bandera azul ecologica', 'pramave.png', 'pramave.png', 'pramave.png', 0, 'En Stock', '2021-07-12 23:39:48', NULL),
(24, 3, 8, 'Mascarilla Ranitas', 'Madre Verde', 3000, 3500, 'Mascarillas diseño ranitas', 'mascarillaranitas.jpg', 'mascarillaranitas.jpg', 'mascarillaranitas.jpg', 0, 'En Stock', '2021-07-12 23:42:52', NULL),
(25, 3, 8, 'Mascarilla Fundación', 'Madre Verde', 3500, 3500, '<ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; list-style: none; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Mascarilla ecológica, mantiene su transpirabilidad.</li></ul>', 'mascarillafundacion.jpg', 'mascarillafundacion.jpg', 'mascarillafundacion.jpg', 0, 'En Stock', '2021-07-12 23:45:24', NULL),
(26, 3, 8, 'Mascarilla Hojitas', 'Madre Verde', 3500, 3500, '<ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; list-style: none; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Mascarilla ecológica, mantiene su transpirabilidad.</li></ul>', 'mascarillahojitas.jpg', 'mascarillahojitas.jpg', 'mascarillahojitas.jpg', 0, 'En Stock', '2021-07-12 23:46:13', NULL),
(27, 3, 8, 'Mascarilla Logo Fundación', 'Madre Verde', 3500, 3500, '<ul class=\"_3dG3ix col col-9-12\" style=\"margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; list-style: none; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Mascarilla ecológica, mantiene su transpirabilidad.</li></ul>', 'mascarillazul.jpg', 'mascarillazul.jpg', 'mascarillazul.jpg', 0, 'En Stock', '2021-07-12 23:47:05', NULL),
(28, 5, 10, 'Chuchillo-Cuchara-Tenedor', 'Madre Verde', 40, 50, 'Cubertería bio-degradable', 'bda3f6e8-65e3-4f1b-b6e0-90e378cd0f55.jpg', 'bda3f6e8-65e3-4f1b-b6e0-90e378cd0f55.jpg', 'bda3f6e8-65e3-4f1b-b6e0-90e378cd0f55.jpg', 0, 'En Stock', '2021-07-12 23:50:02', NULL),
(29, 5, 9, 'Tazón Hondo 850ml', 'Madre Verde', 240, 240, 'Tazón hondo Amigable con el ambiente', '41c40984-1493-4d83-9b57-8f39bd082f29.jpg', '41c40984-1493-4d83-9b57-8f39bd082f29.jpg', '41c40984-1493-4d83-9b57-8f39bd082f29.jpg', 0, 'En Stock', '2021-07-12 23:54:00', NULL),
(30, 5, 9, 'Tazón Medio Hondo 355ml', 'Madre Verde', 240, 240, 'Tazón hondo amigable con el ambiente<br>', 'd09dc62c-b5b7-4d37-8b61-caac3f4d9e37.jpg', 'd09dc62c-b5b7-4d37-8b61-caac3f4d9e37.jpg', 'd09dc62c-b5b7-4d37-8b61-caac3f4d9e37.jpg', 0, 'En Stock', '2021-07-12 23:54:53', NULL),
(31, 5, 10, 'Pajillas', 'Madre Verde', 40, 50, 'Pajillas Bio-Degradables', 'a78bcfe1-afe6-4e19-9510-0e7104786d78 (1).jpg', 'a78bcfe1-afe6-4e19-9510-0e7104786d78 (1).jpg', 'a78bcfe1-afe6-4e19-9510-0e7104786d78 (1).jpg', 0, 'En Stock', '2021-07-12 23:55:42', NULL),
(32, 5, 11, 'Bandeja Grande ', 'Madre Verde', 80, 80, 'Bandeja para comida con tapa con divisiones', '3c2f6f83-c365-46ce-9953-d0fe9f87d652.jpg', '3c2f6f83-c365-46ce-9953-d0fe9f87d652.jpg', '3c2f6f83-c365-46ce-9953-d0fe9f87d652.jpg', 0, 'En Stock', '2021-07-12 23:58:43', NULL),
(33, 5, 11, 'Bandeja Mediana', 'Madre Verde', 240, 240, 'Bandeja Mediana sin divisiones', 'bffccc9a-2d57-4c39-8915-f36ab8c4626f.jpg', '1a3c923f-af59-42b1-b955-c1eee5ec5fd3.jpg', 'bffccc9a-2d57-4c39-8915-f36ab8c4626f.jpg', 0, 'En Stock', '2021-07-13 00:29:32', NULL),
(34, 5, 13, 'Bolsa Con Manillas', 'Madre Verde', 4945, 4945, 'Bolsa mediana con manilla, 100 unidades.', 'c11025f1-0023-4e35-a3c8-df469a286bd9.jpg', 'c11025f1-0023-4e35-a3c8-df469a286bd9.jpg', 'c11025f1-0023-4e35-a3c8-df469a286bd9.jpg', 0, 'En Stock', '2021-07-13 00:32:08', NULL),
(35, 5, 13, 'Bolsa sin Manillas', 'Madre Verde', 5310, 5310, 'Bolsa sin manillas mediana, 125 unidades', '55b437ea-add6-4c4d-85d7-97ce605602a0.jpg', '55b437ea-add6-4c4d-85d7-97ce605602a0.jpg', '55b437ea-add6-4c4d-85d7-97ce605602a0.jpg', 0, 'En Stock', '2021-07-13 00:34:21', NULL),
(36, 5, 13, 'Bolsa Grande', 'Madre Verde', 1520, 1520, 'Bolsas grandes sin manillas, rollo 9 unidades', '2c3c4d6e-a65f-4d63-b38a-fdf9f91897fc.jpg', '2c3c4d6e-a65f-4d63-b38a-fdf9f91897fc.jpg', '2c3c4d6e-a65f-4d63-b38a-fdf9f91897fc.jpg', 0, 'En Stock', '2021-07-13 00:35:45', NULL),
(37, 4, 2, 'Alquiler Cocina', 'Madre Verde', 80000, 80000, 'Alquiler de cocina para fiesta o evento.', 'rotulo.jpeg', 'rotulo.jpeg', 'rotulo.jpeg', 0, 'En Stock', '2021-07-13 00:40:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Alquileres', '2017-01-26 16:24:52', '12-07-2021 04:39:15 PM'),
(3, 4, 'Bandera Azul', '2017-01-26 16:29:09', '12-07-2021 04:39:56 PM'),
(8, 3, 'Mascarillas ', '2017-02-04 04:13:54', '12-07-2021 04:43:32 PM'),
(9, 5, 'Platos', '2017-02-04 04:36:45', '12-07-2021 04:41:38 PM'),
(10, 5, 'Cubertería', '2017-02-04 04:37:02', '12-07-2021 04:42:14 PM'),
(11, 5, 'Bandejas', '2017-02-04 04:37:51', '12-07-2021 04:42:27 PM'),
(13, 5, 'Bolsas', '2021-07-13 00:29:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:49:46', NULL, 0),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:54:27', '22-06-2020 07:42:06 PM', 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 20:37:14', NULL, 1),
(27, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 00:58:24', '22-06-2020 08:40:53 PM', 1),
(28, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 01:45:10', NULL, 1),
(29, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:26', NULL, 0),
(30, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:36', NULL, 1),
(31, 'denrod11122017@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-12 21:26:18', NULL, 1),
(32, 'denrod11122017@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 01:25:28', NULL, 1),
(33, 'denrod11122017@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-19 18:41:59', '19-07-2021 12:48:07 PM', 1),
(34, 'madreverde@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-19 18:48:19', NULL, 0),
(35, 'arodriguezm94@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-07-19 18:57:39', NULL, 1),
(36, 'madreverde@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-19 23:57:21', NULL, 0),
(37, 'arodriguezm94@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-07-19 23:57:36', '19-07-2021 06:07:35 PM', 1),
(38, 'arodriguezm94@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-07-20 00:08:40', NULL, 1),
(39, 'arodriguezm94@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-07-20 21:43:19', NULL, 1),
(40, 'arodriguezm94@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 17:29:55', NULL, 1),
(41, 'arodriguezm94@hotmail.com', 0x3a3a3100000000000000000000000000, '2021-07-24 19:23:10', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'madreverde', 'madreverde@gmail.com', 948445199, '77821d6f09aad66ace339068f6b7f61c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-23 00:58:07', NULL),
(5, 'Denis Rodriguez', 'denrod11122017@gmail.com', 83655072, '02d0716987399760d441f8e93bcb1a1f', 'Alto Murillo, Naranjo, Alajuela Costa Ri', 'Naranjo', 'Alajuela', 20601, 'Alto Murillo, Naranjo, Alajuela Costa Ri', 'Naranjo', 'Alajuela', 20601, '2021-07-12 21:25:46', NULL),
(6, 'Fundación Madre Verde', 'arodriguezm94@hotmail.com', 83655072, '1396184fce838ec9670b11c2662020ae', 'Alto Murillo, Naranjo, Alajuela Costa Rica', 'Naranjo', 'Alajuela', 20601, 'Alto Murillo', 'Alajuela', 'Naranjo', 20601, '2021-07-19 18:57:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 12, '2020-06-23 03:05:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
