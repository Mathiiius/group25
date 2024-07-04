-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql-silguagaitan.alwaysdata.net
-- Tiempo de generación: 02-07-2024 a las 04:31:32
-- Versión del servidor: 10.6.17-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `silguagaitan_esmeralda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cartas`
--

CREATE TABLE `Cartas` (
  `ID_carta` int(2) NOT NULL,
  `Nombre_carta` varchar(15) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Cartas`
--

INSERT INTO `Cartas` (`ID_carta`, `Nombre_carta`, `Descripcion`) VALUES
(1, 'El Mago', 'Representa habilidad, poder y habilidades creativas. Es el maestro de las herramientas que tiene a su disposición para manifestar sus deseos.'),
(2, 'La estrella', 'Representa la esperanza, la inspiración, la guía espiritual y la renovación. Es la fe en el futuro y la conexión con lo divino.'),
(3, 'Los enamorados', 'Representa las decisiones difíciles, las relaciones amorosas y las opciones morales. Es la elección entre dos caminos.'),
(4, 'El Colgado', 'Simboliza la suspensión, la entrega, el sacrificio personal y la percepción desde una nueva perspectiva.'),
(5, 'La Papisa', 'También conocida como la Sacerdotisa, simboliza el conocimiento secreto, la intuición y el misterio. Es la guardiana de los secretos y la sabiduría interior.'),
(6, 'La Emperatriz', 'Representa la feminidad, la fertilidad, la creatividad y el poder maternal. Es la madre que nutre y da vida.'),
(7, 'El Emperador', 'Contraparte masculina de la Emperatriz, simboliza el orden, la autoridad, la estructura y el poder paterno.'),
(8, 'El Sumo Sacerdo', 'También conocido como el Hierofante, representa la tradición, la enseñanza formal, la sabiduría religiosa y la guía espiritual.'),
(9, 'El Carro', 'Simboliza el triunfo, la victoria y el control. Representa la habilidad para avanzar y superar obstáculos.'),
(10, 'La Justicia', 'Representa el equilibrio, la objetividad y la ley kármica. Es la búsqueda de la verdad y la justicia imparcial.'),
(11, 'El Ermitaño', 'Simboliza la introspección, la soledad voluntaria, la sabiduría interior y la búsqueda espiritual.'),
(12, 'La Rueda de la ', 'Representa el destino, los ciclos de la vida, los cambios inevitables y las oportunidades que llegan y se van.'),
(13, 'La Fuerza', 'Representa el coraje, la fuerza interior, el dominio de los impulsos animales y la energía vital controlada.'),
(14, 'La Muerte', 'Representa el cambio, la transformación, el final de algo y el comienzo de algo nuevo. Es la renovación y la regeneración.'),
(15, 'La Templanza', 'Simboliza la armonía, la moderación, la paciencia y la búsqueda del equilibrio interior y espiritual.'),
(16, 'El Diablo', 'Representa la tentación, la adicción, los deseos materiales y la ilusión de estar atrapado. Es la libertad a través del autocontrol.'),
(17, 'La Torre', 'Simboliza la destrucción repentina, la revelación de la verdad oculta y el cambio dramático que conduce a la renovación.'),
(18, 'La Luna', 'Simboliza la intuición, los sueños, los misterios ocultos y la ilusión. Es el mundo del subconsciente y lo desconocido.'),
(19, 'El Sol', 'Representa la alegría, la felicidad, el éxito y la claridad. Es la iluminación y la energía positiva que trae vitalidad y creatividad.'),
(20, 'El Juicio', 'Simboliza el despertar espiritual, la evaluación, el perdón y la recompensa. Es la resolución de conflictos internos y la aceptación de responsabilidad.\r\n\r\n'),
(21, 'El Mundo', 'Representa la realización, la integración, el éxito y la culminación de un ciclo. Es la unidad con el universo y la consecución de metas.'),
(22, 'El Loco', 'Simboliza la espontaneidad, la libertad, el potencial ilimitado y el inicio de un nuevo viaje. Es la inocencia y la búsqueda de la verdad.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE `Clientes` (
  `ID_cliente` int(10) NOT NULL,
  `Nombre_cliente` varchar(40) NOT NULL,
  `Correo_cliente` varchar(40) NOT NULL,
  `Nacimiento_cliente` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Datos de los Usuarios';

--
-- Volcado de datos para la tabla `Clientes`
--

INSERT INTO `Clientes` (`ID_cliente`, `Nombre_cliente`, `Correo_cliente`, `Nacimiento_cliente`) VALUES
(1, 'Juan Perez', 'jperez@gmail.com', '1988-06-22'),
(2, 'Silvina Escudero', 'silvi_escudero@gmail.com', '1986-07-05'),
(3, 'Tobias Ceron', 'cge@yahoo.com', '1998-05-22'),
(4, 'Bruno Diaz', 'batman@hotmail.com', '1980-11-01'),
(5, 'Clark Kent', 'super@hotmail.com', '1983-06-06'),
(6, 'Mirtha Legrand ', 'almorzando_mirtha@gmail.com', '1927-02-23'),
(7, 'Peter Parker', 'spider_m@gmail.com', '1999-12-25'),
(8, 'Angelina Jolie', 'angie_the_best@hotmail.com', '1975-06-04'),
(9, 'Cristiano Ronaldo', 'cr7@hotmail.com', '1985-02-05'),
(10, 'Lionel Andrés Messi', 'lio_lapulga10@hotmail.com', '1987-06-24'),
(11, 'Pablo Marmol', 'pablitom123@hotmail.com', '1966-05-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Consulta_cliente`
--

CREATE TABLE `Consulta_cliente` (
  `ID_consulta` int(100) NOT NULL,
  `ID_Cliente` int(10) NOT NULL,
  `ID_Evaluacion` int(3) NOT NULL,
  `ID_Carta` int(2) NOT NULL,
  `ID_Servicio` int(3) NOT NULL,
  `Motivo_consulta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Consulta_cliente`
--

INSERT INTO `Consulta_cliente` (`ID_consulta`, `ID_Cliente`, `ID_Evaluacion`, `ID_Carta`, `ID_Servicio`, `Motivo_consulta`) VALUES
(1, 1, 111, 6, 1, 'Dinero'),
(5, 2, 222, 13, 4, 'Amor'),
(7, 3, 333, 1, 5, 'Amor'),
(9, 4, 444, 5, 3, 'Salud'),
(11, 5, 555, 19, 7, 'Dinero'),
(13, 6, 666, 1, 4, 'Amor'),
(15, 7, 777, 13, 2, 'Dinero'),
(19, 8, 888, 8, 6, 'Dinero'),
(21, 9, 999, 8, 5, 'Amor'),
(27, 10, 100, 7, 1, 'Dinero'),
(29, 11, 101, 14, 1, 'Salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Evaluacion`
--

CREATE TABLE `Evaluacion` (
  `ID_evaluacion` int(3) NOT NULL,
  `ID_cliente` int(3) NOT NULL,
  `Testimonio` text NOT NULL,
  `Calificacion` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Evaluacion`
--

INSERT INTO `Evaluacion` (`ID_evaluacion`, `ID_cliente`, `Testimonio`, `Calificacion`) VALUES
(100, 10, 'Recomendaría este servicio a cualquiera que busque orientación espiritual y emocional.', 8),
(101, 11, 'No sentí que la lectura del tarot fuera personalizada; parecía más un guion preestablecido.', 4),
(111, 1, 'Excelente atención al cliente y interpretación clara de las cartas.', 10),
(222, 2, 'Me sentí escuchado y comprendido durante la consulta. Las predicciones fueron claras y útiles', 9),
(333, 3, 'No sentí que el tarotista entendiera realmente mis preocupaciones.', 5),
(444, 4, 'El tarotista fue muy empático y acertó en muchos detalles de mi situación actual.', 8),
(555, 5, 'No sentí conexión con la tarotista y las predicciones fueron vagas y poco útiles.', 5),
(666, 6, 'El servicio fue profesional y la lectura del tarot fue muy precisa.', 10),
(777, 7, 'No recomendaría este servicio; las predicciones no se cumplieron en absoluto.', 2),
(888, 8, 'Me dieron consejos prácticos y específicos que me han ayudado a tomar decisiones importantes.', 8),
(999, 9, 'La sesión fue corta y no profundizamos en temas importantes para mí.', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Servicios`
--

CREATE TABLE `Servicios` (
  `ID_servicio` int(3) NOT NULL,
  `Nombre_servicio` varchar(30) NOT NULL,
  `Descripcion_servicio` text NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Servicios`
--

INSERT INTO `Servicios` (`ID_servicio`, `Nombre_servicio`, `Descripcion_servicio`, `Precio`) VALUES
(1, 'Lectura de tarot', 'Se emplean cartas de tarot para realizar lecturas predictivas, introspectivas y de orientación espiritual.', 6500),
(2, 'Péndulos', 'Se emplea un péndulo para realizar una sesión de radiestesia para obtener respuestas de sí o no mediante movimientos oscilatorios.', 5000),
(3, 'Cristales', 'Se utilizan cristales y piedras semipreciosas con propiedades energéticas y espirituales únicas para potenciar o equilibrar energías.', 5500),
(4, 'Incienso', 'Se emplean inciensos para purificar el ambiente antes y después de las sesiones de lectura, y para limpiar las energías negativas.', 5500),
(5, 'Muñeco vudú', 'Se utiliza muñecos vudú en hechizos de sanación, protección o atracción de energías positivas.', 6700),
(6, 'Consultoría espiritual', 'Sesiones individuales donde se ofrece asesoramiento y orientación espiritual personalizada sobre temas como desarrollo personal, crecimiento espiritual, manejo de energías o conexiones con guías espirituales.', 7500),
(7, 'Hierbas místicas', 'Se utilizan hierbas especiales para limpiar y purificar el espacio de energías negativas. Estas hierbas pueden ser quemadas, o bien ser utilizadas en saquitos de hierbas o en baños rituales para promover el bienestar espiritual.', 8000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Cartas`
--
ALTER TABLE `Cartas`
  ADD PRIMARY KEY (`ID_carta`);

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`ID_cliente`);

--
-- Indices de la tabla `Consulta_cliente`
--
ALTER TABLE `Consulta_cliente`
  ADD PRIMARY KEY (`ID_consulta`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Evaluacion` (`ID_Evaluacion`),
  ADD KEY `ID_Carta` (`ID_Carta`),
  ADD KEY `consulta_servicio` (`ID_Servicio`);

--
-- Indices de la tabla `Evaluacion`
--
ALTER TABLE `Evaluacion`
  ADD PRIMARY KEY (`ID_evaluacion`),
  ADD KEY `ID_cliente` (`ID_cliente`);

--
-- Indices de la tabla `Servicios`
--
ALTER TABLE `Servicios`
  ADD PRIMARY KEY (`ID_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Cartas`
--
ALTER TABLE `Cartas`
  MODIFY `ID_carta` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `ID_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `Consulta_cliente`
--
ALTER TABLE `Consulta_cliente`
  MODIFY `ID_consulta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `Evaluacion`
--
ALTER TABLE `Evaluacion`
  MODIFY `ID_evaluacion` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `Servicios`
--
ALTER TABLE `Servicios`
  MODIFY `ID_servicio` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Consulta_cliente`
--
ALTER TABLE `Consulta_cliente`
  ADD CONSTRAINT `consulta_carta` FOREIGN KEY (`ID_Carta`) REFERENCES `Cartas` (`ID_carta`),
  ADD CONSTRAINT `consulta_cliente` FOREIGN KEY (`ID_Cliente`) REFERENCES `Clientes` (`ID_cliente`),
  ADD CONSTRAINT `consulta_evaluacion` FOREIGN KEY (`ID_Evaluacion`) REFERENCES `Evaluacion` (`ID_evaluacion`),
  ADD CONSTRAINT `consulta_servicio` FOREIGN KEY (`ID_Servicio`) REFERENCES `Servicios` (`ID_servicio`);

--
-- Filtros para la tabla `Evaluacion`
--
ALTER TABLE `Evaluacion`
  ADD CONSTRAINT `Evaluacion_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `Clientes` (`ID_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
