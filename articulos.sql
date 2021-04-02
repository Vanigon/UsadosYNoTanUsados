-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2021 a las 21:28:51
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `articulos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `categoria` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `categoria`) VALUES
(1, 'Escritorio PC', 'Escritorio de Melamina, de 120cm por 60cm, con dos cajones y repisa para teclado. Excelente estado.', '5000', 'escritorio120.jpg', 'Muebles'),
(2, 'Mesa Ratona', 'Mesa de madera maciza de 80 x 60cm, con un cajoncito. Tiene detalles de uso.', '2000', 'mesaratona.jpg', 'Muebles'),
(3, 'Biblioteca baja con puertas', 'Biblioteca con puertas y cerradura, 100 x 46cm. Excelente estado.', '5000', 'bibliotecabaja.jpg', 'Muebles'),
(4, 'Mesa de Luz', 'Mesa de luz armada de melamina con un estante y dos cajones. Disponible una armada y una en caja para armar. Precio por unidad.', '2500', 'mesaluz.jpg', 'Muebles'),
(6, 'Sillón escritorio rojo', 'Sillón escritorio ergonómico de altura regulable, giratorio con apoya brazos y rueditas. Excelente estado.', '5500', 'sillonrojo.jpg', 'Muebles'),
(7, 'Cómoda con seis cajones', 'Comoda de melamina de 86,5 x 45 cm, con seis cajones. Estado regular, detalles de uso en el lado derecho (mancha oscura) y en la parte trasera.', '2000', 'comoda.jpg', 'Muebles'),
(8, 'Sillón de escritorio negro', 'Sillon de escritorio negro, con apoya brazos, ruedas y altura regulable, revestido en cuerina. Detalles de uso en la cuerina.', '5000', 'sillonnegro.jpg', 'Muebles'),
(9, 'Silla de escritorio', 'Silla negra de escritorio revestida en tela con ruedas, sin apoya brazos, de altura regulable. Buen estado.', '3500', 'sillanegra.jpg', 'Muebles'),
(10, 'Monitor 15´ PC', 'Monitor para PC de 15 pulgadas LG. Buen estado.', '6000', 'monitor.jpg', 'Tecnologia'),
(11, 'TV Led 42 pulgadas', 'TV Led Philips, 42 pulgadas, excelente estado.', '20000', 'tv.jpg', 'Tecnologia'),
(12, 'Volante y pedalera Logitech G29 Ps4', 'Volante y pedalera G29 para Ps4 y Ps3. Perfecto estado.', '45000', 'volante.jpg', 'Tecnologia'),
(13, 'Lupa con luz y memoria', 'Lupa electrónica con luz, con posibilidad de sacar fotos y filmar, ranura para tarjeta de memoria, nueva en caja.', '7000', 'lupa.jpg', 'Tecnologia'),
(14, 'Auriculares wireless', 'Auriculares con conexión a distancia, para mirar TV sin molestar a otros! cerrado en su estuche.', '2000', 'auriculares.jpg', 'Tecnologia'),
(15, 'Portarretrato digital', 'Portarretrato digital 15 pulgadas con luz, ranura para tarjeta de memoria o USB. Funciona perfecto.', '5500', 'portaretrato.jpg', 'Tecnologia'),
(16, 'Electroporador', 'Electroporador Intacell CEC, con 35 programas pre-cargados, dos aplicadores para facial y corporal, tratamientos estéticos y de dolor. Funciona perfecto.', '30000', 'electroporador.jpg', 'Varios'),
(17, 'Pistola Mesoterapia', 'Pistola de Mesoterapis Dermotherap Gun, en estuche, con enchufe, funciona si estar enchufada a batería, buen estado. Tratamientos estéticos y para el dolor. Uso medico.', '30000', 'mesoterapia.jpg', 'Varios'),
(18, 'Raqueta Toalson', 'Raqueta Toalson, usada con estuche, detalles de uso en el mango.', '2000', 'raqueta.jpg', 'Varios'),
(19, 'Perchas para niño', '25 unidades de perchas plástico grueso de colores, para niños.', '500', 'perchas.jpg', 'Varios'),
(20, 'Lampara de plasma', 'Lampara redonda de plasma, funciona bien.', '2000', 'lamparaplasma.jpg', 'Varios'),
(21, 'Contador de Billetes', 'Maquina contadora de billetes con detección de billetes falsos, perfecto funcionamiento', '6500', 'contadorbilletes.jpg', 'Varios'),
(22, 'Funda asiento bicicleta con gel', 'Funda negra para cubrir el asiento de la bicicleta, con gel adaptable antiprostático.', '500', 'sillabici.jpg', 'Varios'),
(23, 'Insectocutor eléctrico', 'Insectocutor, mata moscas, mosquitos e insectos varios, doble tubo, excelente estado.', '4000', 'insectocutor.jpg', 'Varios'),
(24, 'Las 48 leyes del Poder', 'Autor: Robert Greene - Joost Elffers', '3000', 'lpoder.jpg', 'Libros'),
(25, 'El factor suerte', 'Autor: Dr. Richard Wiseman', '500', 'lsuerte.jpg', 'Libros'),
(26, 'Estrés como entenderlo, entenderse y vencerlo', 'Autor: Dr. Daniel Lopez Rosetti', '800', 'lestres.jpg', 'Libros'),
(30, 'Belgrano artífice de la nación, soldado de la libertad', 'Autor: Miguel Ángel De Marco', '1000', 'lbelgrano.jpg', 'Libros'),
(31, 'La nueva ley de Murphy', 'Autor: Emmett C. Murphy', '1000', 'lmurphy.jpg', 'Libros'),
(32, 'Administración una perspectiva global', 'Autor: Harold Koontz - Heinz Weihrich', '2000', 'ladministracion.jpg', 'Libros'),
(36, 'Adornos', 'Set de adornos en acero que se mantienen en equilibrio.', '1000', 'adornos.jpg', 'Varios'),
(37, 'Escritorio de vidrio', 'Escritorio para PC en vidio negro y metal, con porta teclado y porta CPU, de 100 x 60cm. Buen estado.', '3000', 'escritorionegro.jpg', 'Muebles');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
