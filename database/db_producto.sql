-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2022 a las 23:52:24
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_producto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_category` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_category`, `category`) VALUES
(1, 'Accesorios'),
(2, 'Fertilizantes'),
(3, 'Iluminación'),
(4, 'Parafernalia'),
(5, 'Combos y promos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_product` int(11) NOT NULL,
  `product` varchar(100) NOT NULL,
  `detail` varchar(400) NOT NULL,
  `price` double NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_product`, `product`, `detail`, `price`, `id_category`) VALUES
(3, 'MACETA DE TELA GEOTEXTIL EDEN AUTOPODA 80 LITROS ', '• Medidas: 48 x 45 cm (diámetro x altura).• Tela Geotextil 300 gr.• Cinta mochilera reforzada.• Auto poda radicular.• Doble base para otorgar aún más resistencia', 1590000, 1),
(4, 'MACETA DE TELA GEOTEXTIL EDEN AUTOPODA 30 LITROS\r\n', '• Medidas: 34,5x34 cm. (diámetro x altura)\r\n• Tela Geotextil 200gr.\r\n• Cinta mochilera reforzada.\r\n• Auto poda radicular.\r\n• Doble base para otorgar aún más resistencia.', 945, 1),
(5, 'MACETA DE TELA GEOTEXTIL EDEN AUTOPODA 15 LITROS\r\n', '• Medidas: 25,5x32,5cm. (diámetro x altura)\r\n• Tela Geotextil 200gr.\r\n• Cinta mochilera reforzada.\r\n• Auto poda radicular.\r\n• Doble base para otorgar aún más resistencia.', 685, 1),
(7, 'MACETA DE TELA GEOTEXTIL EDEN AUTOPODA 2,5 LITROS\r\n', '• Medidas: 15x17cm (diámetro x altura)\r\n• Tela Geotextil 200gr.\r\n• Auto poda radicular.\r\n• Doble base para otorgar aún más resistencia.', 305, 1),
(8, 'CARPA INDOOR GARDEN HIGH PRO PROBOX 240L\r\n', '• Carpa Probox suiza 240 x 120 x 200 cm.\r\n• Posee mylar 420D, 100% aprueba de luz.\r\n• Doble cierre reforzado.\r\n• Estructura sólida, varillas y base doble.\r\n• Tubos de refrigeración incorporados.\r\n• Caja cerrada.', 101485, 1),
(9, 'CARPA INDOOR GARDEN HIGH PRO PROBOX 150\r\n', '• Carpa Probox suiza 150 x 150 x 200 cm.\r\n• Posee mylar 420D, 100% aprueba de luz.\r\n• Doble cierre reforzado.\r\n• Estructura sólida, varillas y base doble.\r\n• Tubos de refrigeración incorporados.\r\n• Caja cerrada.', 78705, 1),
(10, 'CARPA INDOOR GARDEN HIGH PROBOX ECOPRO 100\r\n', '• Carpa Probox suiza 100 x 100 x 200 cm.\r\n• Posee mylar 420D, 100% aprueba de luz.\r\n• Doble cierre reforzado.\r\n• Estructura sólida, varillas y base doble.\r\n• Tubos de refrigeración incorporados.\r\n• Caja cerrada.', 46900, 1),
(11, 'CARPA INDOOR GARDEN HIGH PRO PROBOX 40\r\n', '• Carpa Probox suiza 40 x 40 x 160 cm.\r\n• Posee mylar 420D, 100% aprueba de luz.\r\n• Doble cierre reforzado.\r\n• Estructura sólida, varillas y base doble.\r\n• Tubos de refrigeración incorporados.\r\n• Caja cerrada.', 32380, 1),
(12, 'AEROCLONADOR PROPAGACION GREEN PASSION T-DIG MOD 15\r\n', 'El producto incluye:\r\n• Plancha de Goma 15 u.\r\n• Cajón.\r\n• Tapa microperforada.\r\n• Tubo Led 5 W.\r\n• Estructura y Micro aspersores.\r\n• Bomba 7 w.\r\n• Timer digital programable.\r\n• Cable interlock 1,5 mt.', 25355, 1),
(13, 'TURBINA EXTRACTOR GRANDE 6 PULGADAS 3 VEL\r\n', '• Turbina con gran poder de extracción y 3 velocidades.\r\n• Motor 2800 R.P.M, 220 Volts, 50 Hz, 155 Watts.Régimen de servicio S1 (Servicio Contínuo).\r\n• Gran poder de extracción\r\n• Funcionamiento silencioso.\r\n• Instalación Rápida y sencilla.\r\n• Montado con rulemanes\r\n• Caudal: 450 m3/hora.', 17464, 1),
(14, 'FILTRO OLOR CULTIVO INDOOR XXXL 6 PULGADAS\r\n', '• Diámetro: 23 cm.\r\n• Altura: 48 cm.\r\n• Peso: 8 kg.', 16595, 1),
(15, 'COOLER AGROLED TURBINA 6P RULEMAN CABLEADO CON ENCHUFE 2U\r\n', '• Modelo: 6\" RULEMAN.\r\n• Dimensiones: 170 x 170 x 48 mm.\r\n• Con Rodamiento: SI.\r\n• Montado: Ruleman\r\n• RPM: 2800.\r\n• Flujo de aire: 175 CFM.\r\n• Alimentación: 220V-AC-50Hz.\r\n• Consumo: 0,14A.\r\n• Potencia: 35 Watts.\r\n• Seguridad eléctrica IRAM Argentina aprobada.', 11995, 1),
(16, 'EDEN ROOTS ESTIMULADOR DE RAICES 500 CC\r\n', '• EDEN ROOTS es un fertilizante biológico líquido, que estimula el crecimiento radicular, posibilitando una mayor absorción de nutrientes, incrementando el rendimiento del cultivo.\r\n\r\n', 2720, 2),
(17, 'EDEN FLORA FERTILIZANTE DE FLORACION 500 CC\r\n', '• EDEN FLORA es un fertilizante NPK + micronutrientes para ser usado en todo tipo de cultivos para estimular su floración. Su formulación permite un rápido y eficiente aprovechamiento de los nutrientes para lograr mayor cantidad, calidad y duración de las flores y así incrementar los rendimientos.\r\n\r\n', 2345, 2),
(18, 'EDEN VEGE FERTILIZANTE DE CRECIMIENTO 500 CC\r\n', '• EDEN VEGE es un fertilizante NPK + micronutrientes para ser usado en todo tipo de cultivos en etapas activas de crecimiento vegetativo. Su formulación permite un rápido y eficiente aprovechamiento de los nutrientes para lograr mayor cantidad, calidad y duración de las flores y así incrementar los rendimientos.\r\n\r\n', 2345, 2),
(19, 'EDEN SUGAR AUMENTADOR DE VOLUMEN Y PESO 500 CC\r\n', '• EDEN SUGAR posee una formulación, que permite un rápido y eficiente aprovechamiento de los nutrientes para lograr mayor cantidad, calidad y duración de las flores.\r\n\r\n', 1480, 2),
(20, 'EDEN JABÓN POTÁSICO FUNGICIDA ORGÁNICO 500 CC\r\n', '• Insecticida fungicida natural. Con el jabón potásico de la marca EDEN podrás combatir plagas de pulgones, chinches, mosca blanca, ácaros, cochinillas araña roja, trips, hongos como el mildiu, oídio, botritis, peronosporales y podredumbres, etc. Cont: 500 cc.\r\n\r\n', 880, 2),
(21, 'EDEN TRICHODERMA COLONIZADOR DE RAÍCES 125 CC\r\n', '• Presenta una mezcla de la cepas especialmente seleccionadas de Trichoderma, extraídas de suelo argentino, que potencian con sinergia su efectividad a la hora de la aplicación. Cont. 125 cc.\r\n\r\n', 765, 2),
(22, 'EDEN REDUCTOR PH GOTERO 100 CC\r\n', 'Utilizado para disminuir el PH del agua gota a gota.\r\n\r\nUsos y aplicaciones:\r\n• Colocar x ml en x litros, controlar que la corrección sea la deseada.\r\n• Recomendamos ir controlando con un medidor de ph en cada aplicación.', 680, 2),
(23, 'GROTEK MONSTER BLOOM 500G ORIGINAL ENGORDADOR FLORACION\r\n', '• Monster Bloom es un estándar del sector a nivel mundial, y posiblemente uno de los mejores engordador del mundo. Cuenta con una enorme cantidad de nutrientes esenciales que todas las plantas necesitan a medida que intentan producir al máximo. Con su PK 50/30, le dará ese empujón final en la 2ª fase de la floración.', 12140, 2),
(24, 'GROTEK MONSTER GROW 500G ORIGINAL CRECIMIENTO VEGETACION\r\n', '• Monster Grow ™ Pro es un suplemento puro diseñado para aumentar el desarrollo foliar y radicular antes del desarrollo floral. Es una mezcla en polvo soluble en agua de nutrientes minerales y orgánicos esenciales para el desarrollo de la planta. ', 12140, 2),
(25, 'PANEL LED MARS SUNFLASH CRI 659 CULTIVO INDOOR 220V\r\n', 'El Sunflash 659 cuenta con fuentes Mean Well IP67. Es resistente al polvo y a la humedad para desempeñarse en ambientes reales de cultivo.\r\n\r\n', 352225, 3),
(26, 'PANEL LED MARS SUNFLASH CRI 225 CULTIVO INDOOR 220V\r\n', '• El SunFlash 225 cuenta con fuentes Mean Well certificadas IP67. Es resistente al polvo y a la humedad para desempeñarse en ambientes reales de cultivo.\r\n\r\n', 148610, 3),
(27, 'PANEL LED GROWTECH P1500 LÍNEA COGORDO\r\n', '• Cuenta con led OSRAM línea Duris de 3000K y CRI 80 y con suplemento de leds rojos 660nm para potenciar los resultados en floración siendo así un equipo perfecto para el ciclo completo de las planta.\r\n\r\n', 125850, 3),
(28, 'PANEL LED GROWTECH P1000 LÍNEA COGORDO\r\n', '• Equipo LED Growtech línea cogordo 1000P.\r\n\r\n', 62800, 3),
(29, 'PANEL LED MARS ORBITER 80 ALTA EFICIENCIA CULTIVO INDOOR\r\n', '• Orbiter Grow SL pertenece a una nueva generación de luminarias de cultivo enfocadas en generar luz con las mismas propiedades que la luz solar. Para lograrlo desarrollamos una tecnología que combina distintos tipos de LEDs calibrados para simular la luz del sol y permiten alcanzar un 95.5% de precisión. EL PANEL ESTÁ CABLEADO LISTO PARA ENCHUFAR Y CULTIVAR.\r\n\r\n', 44205, 3),
(30, 'PANEL LED 26 UV SERIE B FLORACIÓN CULTIVO INDOOR\r\n', '• La Serie BUV está fabricada con un espectro lumínico especialmente diseñado con longitudes de onda corta azul y ultravioleta, activando el sistema de protección que las plantas poseen contra el estrés abiótico, en este caso en respuesta a la luz.\r\n\r\n', 33305, 3),
(31, 'PANEL LED 100 W GROWTECH MASTER CULTIVO INDOOR\r\n', '• Genera menos temperatura/calor: por un lado se utiliza menos potencia para la misma superficie. Por el otro, el LED irradia calor de forma concentrada y en dirección opuesta a la que ilumina. Esto hace que sea más sencillo eliminar el calor en relación a un HPS Sodio, que irradia calor en todas las direcciones.\r\n\r\n', 14785, 3),
(32, 'PANTALLA ÁGUILA CANNALUM MODELO #2 ALUMINIO GOFRADO\r\n', '• Pantalla de aluminio gofrado que refleja entre 95-97% la luz emitida por la lámpara! Totalmente desarmable para un mejor traslado y guardado.\r\n\r\n', 6445, 3),
(33, 'LÁMPARA DE MERCURIO DE ALTA PRESÓN 250 WATTS\r\n', '• Lámpara de Mercurio 250W alta presión.\r\n\r\n', 4885, 3),
(34, 'LÁMPARA DE SODIO DE ALTA PRESÓN 400 WATTS\r\n', '• Lámpara de alta presión 400w Sodio, tubular transparente con rosca E40. Ideal para cultivo indoor, y floración en general.\r\n\r\n', 3935, 3),
(35, 'LÁMPARA LED PARA CULTIVO INDOOR DE CRECIMIENTO 50W\r\n', 'Lámpara Ditron para crecimiento de plantas cultivo indoor.\r\n\r\n', 3595, 3),
(36, 'LÁMPARA DE SODIO DE ALTA PRESÓN 150 WATTS\r\n', '• Lámpara de Sodio 150W alta presión.\r\n\r\n', 1995, 3),
(37, 'PICADORES GRINDER COGONAUTS LINEA COMPLETA 4 UNIDADES\r\n', '• Picadores Cogonauts 3D colección. Incluye motivos: Koko, Skup, Donn, Baku.\r\n\r\n', 13330, 4),
(38, 'PICADOR GRINDER COGONAUTS UNAKI ALIEN XL\r\n', 'Picador coleccionable impreso en 3D. Motivo Unaki XL.\r\n\r\n', 11615, 4),
(39, 'BANDEJA FAN OF HASH TAMIZ 150 MICRONES CULTIVO\r\n', '• FAN OF HASH tenemos el agrado de presentarles la nueva línea de bandejas para manicurado FAN OF HASH TRIMMER.\r\n\r\n', 9665, 4),
(40, 'MUÑECO EDGAR ALLAN COLECCIONABLE LION ROLLING CIRCUS\r\n', '• Muñeco coleccionable, motivo Edgar Allan de Lion Rolling Circus.\r\n\r\n', 6485, 4),
(41, 'PICADOR GRINDER STAR WARS BB-8 3 PARTES\r\n', '• Excelente picador de acero, se divide en 3 partes. Motivo Bb-8.\r\n\r\n', 4100, 4),
(42, 'PICADOR GRINDER CERAMICO 3 PARTES LION ROLLING CIRCUS\r\n', '• Picador de acrílico, varios diseños Lion Rolling Circus.\r\n\r\n', 3990, 4),
(43, 'PIPA MADERA INDIA GRANDE\r\n', 'Pipa de madera india, tamaño grande.\r\n\r\n', 3035, 4),
(44, 'BONG D&K PIPA DE AGUA VIDRIO BASE CONICA 12 CM MOD #8591\r\n', '• Bong D&K excelente terminación, vidrio, compacto.\r\n\r\n', 2650, 4),
(45, 'ZENGAZ CATALÍTICO RECARGABLE VARIOS MOTIVOS\r\n', '• Encendedor catalítico ZENGAZ.\r\n\r\n', 2495, 4),
(46, 'FAN OF HASH EXTRACTOR DE RESINA 90 MICRONES CLASSIC #3\r\n', '• Es un producto ideal para aprovechar hasta la última gota de tu cosecha, y extraerle todo su potencial. Podes extraer resina en seco de forma muy rápida y fácil. 90 Micrones\r\n\r\n', 2400, 4),
(47, 'BANDEJA MARCA RAW BRAZIL GIRL 27 X 17 CM\r\n', '• Bandeja para armar RAW BRAZIL GIRL.\r\n\r\n', 2385, 4),
(48, 'PICADOR GRINDER DISEÑO HAMBURGUESA 3 PARTES\r\n', '• Excelente picador de acero, se divide en 3 partes. Motivo hamburguesa.\r\n\r\n', 2280, 4),
(49, 'FUMANYI JUEGO DE CARTAS PARA ADULTOS\r\n', '• ¿Qué es? Fumanyi es el primer fuming game para jugar con amigos.\r\n\r\n', 2210, 4),
(50, 'SEDAS LION ROLLING CIRCUS WRAP COMBO\r\n', '• Sedas Lion rolling circus combo 4 unidades (chocolate, natural, blueberry, strawberry).\r\n\r\n', 1955, 4),
(51, 'MAQUINA PARA ARMAR AUTOMATICA METAL\r\n', '• Excelente armador automático de metal.\r\n\r\n', 1635, 4),
(52, 'ARMADOR RAW KING SIZE 110MM\r\n', 'Armador Raw tamaño king Size (110mm)\r\n', 1130, 4),
(53, 'PIPA DE VIDRIO D&K 9 CM BOLSILLO MOD #8320\r\n', '• Pipa D&K excelente terminación, vidrio, 9,5 cm de largo.\r\n\r\n', 1235, 4),
(54, 'SEDAS 4:20 LION CIRCUS CELULOSA PAPEL PARA ARMAR 1 1/4\r\n', 'Sedas Lion rolling circus, edición 4:20 celulosa (incluye 420 sedas).\r\n\r\n', 1000, 4),
(55, 'SEDAS RAW CONNOISSEUR CLASSIC 1/4 + FILTROS PRE ROLLED\r\n', '• Los papeles RAW son una revolución a nivel mundial. En este producto incluye filtros pre-rolled en su parte inferior.\r\n\r\n', 650, 4),
(56, 'FILTROS BIODEGRADABLES 8MM BOLSA 40 UNIDADES TUQUEROS420\r\n', '• Bolsa 50 unidades filtros biodegradables de tuqueros 420.\r\n\r\n', 680, 4),
(57, 'CENICERO BANDEJA LION ROLLING CIRCUS CIRCULAR CELESTE\r\n', '• Cenicero de Lion rolling circus circular. Color celeste.\r\n\r\n', 485, 4),
(58, 'COMBO COMPLETO CULTIVO EDEN\r\n', 'EDEN garantiza un óptimo desarrollo en cada etapa de la planta, maximizando el resultado mediante una manera de utilización sencilla. Son productos premium y casi obligatorios para fortalecer la planta en todas sus etapas, logrando resultados increíbles. Cont: 125cc\r\n\r\n', 5300, 5),
(59, 'INSECTICIDAS EDEN COMBO TRIPACK JABON POTASICO NEEM ARAÑA\r\n', '• EDEN aceite de neem, permite combatir plagas de pulgones, chinches, mosca blanca, ácaros, etc. • EDEN jabón potásico, es un fungicida que ayuda a combatir plagas de pulgones, chinches, mosca blanca, ácaros, etc. • EDEN Araña es un insecticida a base de extractos vegetales, especialmente diseñado para arañas rojas y oidio. \r\n\r\n', 1520, 5),
(60, 'KIT OLOR TURBINA EXTRACTOR DUCTO INDOOR 6 PULGADAS\r\n', '• Turbina con gran poder de aspiración. Toda montada sobre rulemanes. 6\". • Filtro Olor XL 6\". • Ducto 6\" 1,5mt.\r\n\r\n', 25635, 5),
(61, 'COMBO MEDIDOR DE PH DIGITAL CON REGULADOR EDEN LESS\r\n', '• Medidor de PH Digital Eteckcity y PH Less para bajar el mismo.\r\n\r\n', 3185, 5),
(62, 'KIT CULTIVO INDOOR JX200 Y 26UV 2U PROBOX 240L CON ACC - UP\r\n', '• Combo indoor carpa de cultivo con iluminación, poleas, timer y termo higrometro.\r\n\r\n', 357345, 5),
(63, 'KIT INDOOR COMBO CARPA CULTIVO 150X150 LED JX200 ACCESORIOS\r\n', '• Combo indoor carpa de cultivo con iluminación, ventilación, termo-higrometro, poleas y timer.\r\n\r\n', 266565, 5),
(64, 'COMBO COMPLETO JX 150 LED CREE CARPA ACCESORIOS\r\n', '• Kit cultivo indoor completo. Iluminación LED CREE, ventilación, carpa de cultivo, timer, poleas y termo-higrómetro.\r\n\r\n', 148150, 5),
(65, 'COMBO COMPLETO ORBITER 80 LED CARPA MOD. 80 GARDEN ACCESORIOS\r\n', '• Combo indoor carpa de cultivo con iluminación, poleas, extractor de aire y timer.\r\n\r\n', 93990, 5),
(66, 'KIT INDOOR LED ORBITER 80 CARPA CULTIVO SUSTRATOS MACETAS\r\n', '• Combo indoor completo incluye: carpa de cultivo con iluminación, ventilación, macetas, poleas, timer, fertilizantes y sustrato premium.\r\n\r\n', 75735, 5),
(67, 'KIT COMPLETO AUTO CULTIVO 1\r\n', 'El Kit Premium 1 incluye todo lo básico para tener un cultivo muy bueno, todo en una misma caja, con marcas de primera calidad y establecidas en el mundo del cultivo.\r\n\r\n', 4960, 5),
(68, 'PICADOR FILTROS 6MM TUQUEROS420 SAUVER SEDA CELULOSA LION\r\n', '• Kit de picador, sauver, sedas y filtros reutilizables.\r\n\r\n', 3065, 5),
(69, 'COMBO TOP CROP VEG BLOOM CANDY 1LT - DEEPER 250ML - BIG ONE 250ML\r\n', 'Top Crop garantiza una disponibilidad óptima de todos los nutrientes en cada fase de las plantas, maximizando el resultado mediante un uso sencillo de la tabla de abonado. Son productos 100% orgánicos como fertilizantes organominerales necesarios, casi obligatoriamente, para fortalecer la floración y aumentar tanto el tamaño, como la densidad de la planta.\r\n\r\n', 13545, 5),
(70, 'COMBO TOP CROP VEG BLOOM CANDY 1LT', 'Kit de Fertilizantes Top Crop (Veg Bloom) - Para todas las etapas de cultivo Top Crop Combo x 3. Para cada etapa de cultivo. Incluye Top Veg, Top Bloom y Top Candy.', 9315, 5),
(130, 'Nuevo', '•MODIFICADO.', 68444445, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`) VALUES
(3, 'admin@tudai.com', '$2a$12$vbwNnBLw5Cu2FhYtxvnyAeRZjFJG5YWap56/V0r6x/sEqrNlya6pi'),
(4, 'juanbertucci97@gmail.com', '$2a$12$QRTVa9bvAARaNIkmDGxVoedEE.XTD4SWvkWbxmZWfDPlvTpdRfmOC');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_category`),
  ADD KEY `id_categoria` (`id_category`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_categoria` (`id_category`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categoria` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
