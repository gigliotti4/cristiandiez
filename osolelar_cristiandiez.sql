-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 192.168.0.63
-- Tiempo de generación: 13-03-2023 a las 16:00:25
-- Versión del servidor: 5.7.33
-- Versión de PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `osolelar_cristiandiez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `orden`, `titulo`, `imagen`, `texto`, `created_at`, `updated_at`) VALUES
(1, '01', 'Cables de potencia', 'imgcat_01.jpg', 'Constituido por conductor de cobre recocido aislados en PVC o LSOH', '2020-09-03 18:10:22', '2020-09-24 16:18:48'),
(2, '02', 'Cables para comando', 'imgcat_02.jpg', 'Constituido por conductor de cobre recocido aislados en PVC o LSOH', '2020-09-05 21:52:14', '2020-09-24 16:20:18'),
(3, '03', 'Cable de comunicaciones', 'imgcat_03.jpg', 'Constituido por conductor de cobre recocido aislados en PVC o LSOH', '2020-09-05 21:53:26', '2020-09-23 14:53:49'),
(4, '04', 'Cable de instalación domiciliarias', 'imgcat_04.jpg', 'Constituido por conductor de cobre recocido aislados en PVC o LSOH', '2020-09-05 21:54:04', '2020-09-23 14:54:07'),
(5, '05', 'Cables de Instrumentación', 'imgcat_05.jpg', 'Constituido por conductor de cobre recocido aislados en PVC o LSOH', '2020-09-05 21:54:52', '2020-09-23 14:54:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificados`
--

CREATE TABLE `certificados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `certificados`
--

INSERT INTO `certificados` (`id`, `orden`, `titulo`, `archivo`, `created_at`, `updated_at`) VALUES
(2, 'Certificado de Calidad', 'Certificado de Calidad', 'Certificado de Calidad.jpg', '2020-09-24 19:47:04', '2020-09-24 19:47:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `orden`, `imagen`, `created_at`, `updated_at`) VALUES
(2, '01', 'clienteuno.png', '2020-09-01 22:18:13', '2020-09-05 23:31:57'),
(3, '02', 'coca.png', '2020-09-05 22:58:41', '2020-09-05 22:58:41'),
(4, '03', 'mecan.png', '2020-09-05 22:59:19', '2020-09-05 22:59:19'),
(5, '04', 'logocliente_04.png', '2020-09-05 23:34:36', '2020-09-05 23:34:36'),
(6, '05', 'logocliente_05.png', '2020-09-08 21:35:23', '2020-09-08 21:35:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dato` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `dato`, `texto`, `created_at`, `updated_at`) VALUES
(1, 'telefono', '4205-8002', NULL, '2020-09-05 00:21:36'),
(2, 'direccion', 'Pte Sarmiento 1535 - Gerli / Avellaneda', NULL, '2020-09-05 00:22:06'),
(3, 'email', 'Info@cristiandiez.com.ar', NULL, '2020-09-05 00:21:25'),
(4, 'linkedin', 'link', NULL, '2020-09-05 00:27:55'),
(5, 'instagram', 'link', NULL, '2020-09-05 00:32:10'),
(6, 'facebook', 'https://www.facebook.com/CristiandiezyCiaSRL', NULL, '2020-09-24 19:43:55'),
(7, 'youtube', 'link', NULL, '2020-09-05 00:32:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_id` int(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`id`, `orden`, `titulo`, `imagen`, `archivo`, `tipo_id`, `created_at`, `updated_at`) VALUES
(2, 'aa', 'Capacidad', 'imgdesc_01.jpg', 'Capacidad.pdf', 2, '2020-09-07 03:49:21', '2020-09-25 18:58:16'),
(3, 'ab', 'Dimensiones', 'imgdesc_ab.jpg', 'Dimensiones.pdf', 2, '2020-09-07 04:00:47', '2020-09-25 19:11:04'),
(4, 'ac', 'Factores-conversion', 'imgdesc_cc.jpg', 'Factores-conversion.pdf', 2, '2020-09-07 04:12:50', '2020-09-25 18:58:27'),
(5, 'ad', 'Tabla AWG', 'imgdesc_dd.jpg', 'Tabla-AWG-MM.pdf', 2, '2020-09-07 04:13:15', '2020-09-25 18:58:37'),
(6, 'ae', 'Abreviaturas', 'imgdesc_gg.jpg', 'Abreviaturas.pdf', 2, '2020-09-07 04:15:07', '2020-09-25 18:58:44'),
(7, 'af', 'Tabla-comparativa', 'imgdesc_HH.jpg', 'tabla-comparativa.pdf', 2, '2020-09-25 16:18:45', '2020-09-25 18:58:50'),
(8, 'ag', 'iconos', 'imgdesc_ii.jpg', 'iconos.pdf', 2, '2020-09-25 16:19:50', '2020-09-25 18:58:55'),
(9, 'ah', 'Ficha-Recomendaciones', 'imgdesc_jj.jpg', 'Ficha-Recomendaciones.pdf', 2, '2020-09-25 16:20:58', '2020-09-25 18:59:02'),
(10, 'ba', 'Comando', 'imgdesc_ba.jpg', 'Hoja 3 C (1).pdf', 1, '2020-09-25 18:58:09', '2021-03-29 19:27:39'),
(11, 'bb', 'Comunicaciones', 'imgdesc_bb.jpg', 'Hoja 2 C.pdf', 1, '2020-09-25 18:59:50', '2020-09-25 18:59:50'),
(12, 'bc', 'Instrumentacion', 'imgdesc_bc.jpg', 'Hoja 3 C (1).pdf', 1, '2020-09-25 19:00:22', '2021-03-29 19:27:59'),
(13, 'bd', 'Domiciliarias', 'imgdesc_bd.jpg', 'Hoja 4 C (1).pdf', 1, '2020-09-25 19:00:48', '2021-03-29 19:29:05'),
(14, 'be', 'Potencia', 'imgdesc_be.jpg', 'Hoja 5 C (1).pdf', 1, '2020-09-25 19:09:21', '2021-03-29 19:29:56'),
(15, 'ai', 'Caracteristicas Tecnicas- Multipares', 'imgdesc_ai.jpg', 'Hoja 6 C.pdf', 2, '2021-04-21 00:46:03', '2021-04-21 00:46:03'),
(16, 'aj', 'Caracteristicas Tecnicas- Multiternas', 'imgdesc_aj.jpg', 'Hoja 7 C.pdf', 2, '2021-04-21 00:47:35', '2021-04-21 00:47:35'),
(17, 'ak', 'Caracteristicas Tecnicas- Multipolares', 'imgdesc_ak.jpg', 'Hoja 8 C.pdf', 2, '2021-04-21 00:48:33', '2021-04-21 00:48:33'),
(18, 'al', 'Caracteristicas Tecnicas- Multipolares Blindados con Malla de Cobre Estañado', 'imgdesc_al.jpg', 'Hoja 9 C.pdf', 2, '2021-04-21 00:50:52', '2021-04-21 00:50:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iconos`
--

CREATE TABLE `iconos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `iconos`
--

INSERT INTO `iconos` (`id`, `icono`, `texto`, `created_at`, `updated_at`) VALUES
(1, 'method-draw-image.svg', 'Cables Especiales', NULL, '2020-09-05 00:00:44'),
(2, 'method-draw-image (1).svg', 'Certificacion ISO 9001', NULL, '2020-09-05 00:00:52'),
(3, 'method-draw-image (2).svg', 'Laboratorio de Ensayos', NULL, '2020-09-05 00:01:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `icono`, `created_at`, `updated_at`) VALUES
(1, 'LOGO CRISTIAN DIEZ.png', NULL, '2020-09-05 18:15:13'),
(2, 'LOGO CRISTIAN DIEZ.png', NULL, '2020-09-05 18:15:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `seccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `keyword`, `descripcion`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'cristian diez,fabrica de cables,conductores,cables conductores,industria nacional,industria argentina', 'Fabrica de cables de cobre, conductores eléctricos y de aluminio.', 'inicio', NULL, '2020-09-25 16:11:50'),
(2, 'cristian diez,fabrica de cables,conductores,cables conductores,industria nacional,industria argentina', 'Fabrica de cables de cobre, conductores eléctricos y de aluminio.', 'empresa', NULL, '2020-09-25 16:12:40'),
(3, 'cristian diez,fabrica de cables,conductores,cables conductores,industria nacional,industria argentina', 'Fabrica de cables de cobre, conductores eléctricos y de aluminio.', 'productos', NULL, '2020-09-25 16:12:49'),
(4, 'cristian diez,fabrica de cables,conductores,cables conductores,industria nacional,industria argentina', 'Fabrica de cables de cobre, conductores eléctricos y de aluminio.', 'descargas', NULL, '2020-09-25 16:12:57'),
(5, 'cristian diez,fabrica de cables,conductores,cables conductores,industria nacional,industria argentina', 'Fabrica de cables de cobre, conductores eléctricos y de aluminio.', 'calidad', NULL, '2020-09-25 16:13:07'),
(6, 'cristian diez,fabrica de cables,conductores,cables conductores,industria nacional,industria argentina', 'Fabrica de cables de cobre, conductores eléctricos y de aluminio.', 'presupuesto', NULL, '2020-09-25 16:13:21'),
(7, 'cristian diez,fabrica de cables,conductores,cables conductores,industria nacional,industria argentina', 'Fabrica de cables de cobre, conductores eléctricos y de aluminio.', 'contacto', NULL, '2020-09-25 16:13:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_10_195131_create_roles_table', 1),
(5, '2020_05_13_040234_create_metadatos_table', 1),
(6, '2020_07_06_045002_create_sliders_table', 1),
(8, '2020_09_01_155956_create_iconos_table', 2),
(9, '2020_09_01_180752_create_seccion_presupuestos_table', 3),
(10, '2020_09_01_183824_create_clientes_table', 4),
(11, '2020_09_02_162114_create_texto_empresas_table', 5),
(12, '2020_09_02_173901_create_categorias_table', 6),
(13, '2020_09_02_174647_create_sub_categorias_table', 6),
(14, '2020_09_02_175020_create_productos_table', 6),
(15, '2020_09_03_175939_create_ventajas_table', 7),
(16, '2020_09_04_163544_create_descargas_table', 8),
(17, '2020_09_04_164400_create_texto_calidads_table', 9),
(18, '2020_09_04_191158_create_certificados_table', 10),
(19, '2020_06_11_010653_create_contactos_table', 11),
(20, '2020_09_05_150944_create_logos_table', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen_dos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fichatecnica` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ventajauno` longtext COLLATE utf8mb4_unicode_ci,
  `ventajados` int(11) DEFAULT NULL,
  `ventajatres` int(11) DEFAULT NULL,
  `ventajacuatro` int(11) DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `prodrel_uno` int(11) DEFAULT NULL,
  `prodrel_dos` int(11) DEFAULT NULL,
  `prodrel_tres` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `orden`, `titulo`, `imagen`, `imagen_dos`, `texto`, `fichatecnica`, `ventajauno`, `ventajados`, `ventajatres`, `ventajacuatro`, `descripcion`, `category_id`, `subcategory_id`, `prodrel_uno`, `prodrel_dos`, `prodrel_tres`, `created_at`, `updated_at`) VALUES
(5, 'aa', 'Subterraneo Comando Señal', 'imgprod_aa.jpg', 'cables_0001_Capa 8.jpg', '<h6 style=\"font-family: Roboto, Arial, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 3px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102);\"><span style=\"font-family: Montserrat-Medium;\">Multipolar - PVC/PVC - 0,6/1kV - 70ºC - IEC 60502-1</span></h6><h6 style=\"font-family: Roboto, Arial, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 3px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102);\"><span style=\"font-family: Montserrat-Medium;\">IRAM 2178-1</span></h6>', NULL, 'Cuerdas  Flexibles,Instalación  Industrial,Marcación  Secuencial,No propagacion  de incendio,iram,cidet', 10, 6, 11, '<p><span style=\"font-family: Montserrat-Medium;\">APLICACIONES</span><br></p><p><font face=\"Montserrat-Medium\">Equipos de control, señalización, medición, protección y comandos eléctricos de instalaciones industriales.</font></p><p><font face=\"Montserrat-Medium\">Apto para instalaciones aéreas en bandeja, enterrados en ductos o directamente enterrados.</font></p><p><font face=\"Montserrat-Medium\"><br></font></p><p><font face=\"Montserrat-Medium\">CARACTERISTICAS</font></p><p><font face=\"Montserrat-Medium\">Temperatura máxima: 70ºC de servicio, 160ºC de cortocircuito.</font></p><p><font face=\"Montserrat-Medium\">Tensión nominal: 600/1000 Volt CA, máxima 1200 Volt CA / 1500 Volt CC.</font></p><p><font face=\"Montserrat-Medium\">Norma constructiva: IEC 60502-1 / IRAM 2178-1.</font></p><p><font face=\"Montserrat-Medium\">Norma de fuego: IEC 60332-3-24 / IRAM NM IEC 60332-3-24 - No propagación de incendio.</font></p><p><font face=\"Montserrat-Medium\">Norma de conductores: IEC 60228 / IRAM NM 280.</font></p><p><font face=\"Montserrat-Medium\"><br></font></p><p><font face=\"Montserrat-Medium\">DESCRIPCION</font></p><p><font face=\"Montserrat-Medium\">Conductor: Cobre electrolítico recocido en formación clase 5.</font></p><p><font face=\"Montserrat-Medium\">Aislación: PVC.</font></p><p><font face=\"Montserrat-Medium\">Identificación: Color blanco con identificación alfanumerica en negro.</font></p><p><font face=\"Montserrat-Medium\">Cubierta: PVC violeta, no propagante del incendio.</font></p><p><font face=\"Montserrat-Medium\"><br></font></p><p><font face=\"Montserrat-Medium\">OPCIONALES</font></p><p><font face=\"Montserrat-Medium\">Blindaje: Cinta de cobre recocido aplicada helicoidalmente con cobertura 100% y solape del 20% (W).</font></p><p><font face=\"Montserrat-Medium\">Armadura: Corona helicoidal de alambres de acero cincado o doble fleje helicoidal de acero cincado.</font></p><p><font face=\"Montserrat-Medium\"><br></font></p><p><font face=\"Montserrat-Medium\">INSTALACION</font></p><p><font face=\"Montserrat-Medium\">Montaje: Radio mínimo de curvatura igual a 7 x diámetro exterior del cable para cables sin armar y de 12 x diámetro exterior del cable para cables armados.</font></p><p><font face=\"Montserrat-Medium\">Tracción máxima: 5daN/mm2 aplicados sobre los conductores de cobre. En cables armados con alambres se puede usar 10daN/mm2 aplicados sobre los alambres de la armadura.</font></p><p><font face=\"Montserrat-Medium\">Temperatura de montaje: Igual o mayor a 5ºC.</font></p><p><font face=\"Montserrat-Medium\"><br></font></p><p><font face=\"Montserrat-Medium\">ALTERNATIVAS</font></p><p><font face=\"Montserrat-Medium\">Conductor: Bajo pedido los cables pueden ser suministrados con cuerdas semirígidas en clase 2.</font></p><p><font face=\"Montserrat-Medium\">Identificación: Uno de los conductores de cada cable aislado en color verde/amarillo. Usar otros colores para identificarlos como por ejemplo el negro, gris, azul, etc.</font></p>', 2, NULL, 5, 8, 11, '2020-09-22 18:10:08', '2020-09-24 20:03:01'),
(6, 'ab', 'Cable Potencia LSOH', 'imgprod_ab.jpg', 'cables_0013_Capa 2 copia.jpg', '<h6 style=\"font-family: Roboto, Arial, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 3px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102);\"><span style=\"font-family: Montserrat-Medium;\">Unipolar o Multipolar - 0,6/1kV - 90ºC - IRAM 62266</span></h6><h6 style=\"font-family: Roboto, Arial, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 3px; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102);\"><span style=\"font-family: Montserrat-Medium;\">Libre de halógenos (LSZH-HFFR)</span></h6>', NULL, 'Cuerdas  Flexibles,Instalación  Industrial,Marcación  Secuencial,No propagacion  de incendio,cidet,Bajos Humos,Espacios Públicos  Cerrados,Libre de  Halógenos', NULL, NULL, NULL, '<p><span style=\"font-family: Montserrat-Medium;\">APLICACIONES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Instalaciones en espacios cerrados con importante afluencia de público (Estaciones de trenes subterráneos, aeropuertos, hospitales, teatros, salas de cine, shopping, túneles de minas, túneles, entre otros).</span></p><p><span style=\"font-family: Montserrat-Medium;\">CARACTERISTICAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura máxima: 90ºC de servicio, 130ºC de sobrecarga y 250ºC de cortocircuito.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tensión nominal: 600/1000 Volt CA, máxima 1200 Volt / 1500 Volt CC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma constructiva: IEC 60502-1 / IRAM 62266.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de fuego: IEC 60332-3-24 / IRAM NM IEC 60332-3-24 - No propagación de incendio.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de halógenos: IEC 60754-1/2 - Ausencia de halógenos.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de humos: IEC 61034 - Transparencia de humos.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de toxicidad: NES 713 / CEI 20-37 - Ausencia de tóxicos.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de conductores: IEC 60228 / IRAM NM 280.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">DESCRIPCION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Cobre electrolítico recocido en formación clase 5.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: XLPE (polietileno reticulado).</span></p><p><span style=\"font-family: Montserrat-Medium;\">Identificación:</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">- Unipolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Bipolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Tripolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Tetrapolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">Cubierta: LSZH-HFFR (Low Smoke Zero Halogen - Halogen Free Flame Retardant), color negro.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">OPCIONALES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Armadura: Cables unipolares con doble fleje helicoidal de aluminio. Cables multipolares con alambres helicoidales o doble fleje helicoidal de acero cincado.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">INSTALACION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Montaje: Radio mínimo de curvatura igual a 7 x diámetro exterior del cable para cables sin armar y de 12 x diámetro exterior del cable para cables armados.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tracción máxima: 5daN/mm2 aplicados sobre los conductores de cobre. En cables armados con alambres sepuede usar 10daN/mm2 aplicados sobre los alambres de la armadura.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura de montaje: Igual o mayor a 5ºC.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">ALTERNATIVAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Bajo pedido los cables pueden ser suministrados con cuerdas semirígidas en clase 2.</span></p>', 1, NULL, 7, 9, 12, '2020-09-23 05:16:52', '2021-03-03 21:16:18'),
(7, 'ac', 'Cable  Subterraneo Potencia', 'imgprod_ac.jpg', 'cables_0015_Capa 1.jpg', '<p><span style=\"color: rgb(102, 102, 102); font-family: Montserrat-Medium; font-size: 14px;\">Unipolar o Multipolar - PVC/PVC - 0,6/1kV - 70ºC - IRAM 2178-1</span><br></p>', NULL, 'Cuerdas  Flexibles,Instalación  Industrial,Marcación  Secuencial,No propagacion  de incendio,iram,cidet', 10, 6, 11, '<p><span style=\"font-family: Montserrat-Medium;\">APLICACIONES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Apto para instalaciones aéreas en bandeja, enterrados en ductos o directamente enterrados.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Redes fijas de distribución de energía en: fábricas, depósitos, salas de máquinas, distribuidoras de energía, etc.</span></p><p><span style=\"font-family: Montserrat-Medium;\">CARACTERISTICAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura máxima: 70ºC de servicio, 160ºC de cortocircuito.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tensión nominal: 600/1000 Volt CA, máxima 1200 Volt CA / 1500 Volt CC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma constructiva: IEC 60502-1 / IRAM 2178-1.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de fuego: IEC 60332-3-24 / IRAM NM IEC 60332-3-24 - No propagación de incendio.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de conductores: IEC 60228 / IRAM NM 280.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">DESCRIPCION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Cobre electrolítico recocido en formación clase 5.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: PVC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Identificación:</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">- Unipolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Bipolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Tripolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Tetrapolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">Cubierta: PVC violeta, no propagante del incendio.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">OPCIONALES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Armadura: Cables unipolares con doble fleje helicoidal de aluminio. Cables multipolares con alambres helicoidales o doble fleje helicoidal de acero cincado.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">INSTALACION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Montaje: Radio mínimo de curvatura igual a 7 x diámetro exterior del cable para cables sin armar y de 12 x diámetro exterior del cable para cables armados.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tracción máxima: 5daN/mm2 aplicados sobre los conductores de cobre. En cables armados con alambres sepuede usar 10daN/mm2 aplicados sobre los alambres de la armadura.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura de montaje: Igual o mayor a 5ºC.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">ALTERNATIVAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Bajo pedido los cables pueden ser suministrados con cuerdas semirígidas en clase 2.</span></p>', 1, NULL, 12, 10, 12, '2020-09-23 06:58:58', '2020-09-24 20:03:45'),
(8, 'ad', 'Cable Multipares- Multiternas', 'imgprod_ad.jpg', 'cables_0009_Capa 4.jpg', '<p><span style=\"color: rgb(102, 102, 102); font-family: Montserrat-Medium; font-size: 14px;\">Multipar y multiterna blindado - 300 Volt - 105ºC - PLTC - UL 13</span><br></p>', NULL, 'Directamente  enterrado,Marcación  Secuencial,No propagacion  de incendio,Resistente a  hidrocarburos,Resistente a la luz solar,UL,cidet', NULL, NULL, NULL, '<p><span style=\"font-family: Montserrat-Medium;\">APLICACIONES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Circuitos de instrumentación electrónica, señales digitales y analógicas (4-20mA).</span></p><p><span style=\"font-family: Montserrat-Medium;\">Circuitos de seguridad intrínseca.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Detección de pérdidas de gas y/o fluidos.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Medición y monitoreo de presión, temperatura, volumen.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Monitoreo de señales de alarma.</span></p><p><span style=\"font-family: Montserrat-Medium;\">CARACTERISTICAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura máxima: 105º C de servicio.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tensión nominal: 300 Volt.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma constructiva: UL 13 tipo PLTC - UL 2250 tipo ITC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de fuego: UL 1685.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de conductores: ASTM B8 clase B.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Código NEC: Art. 725 PLTC - Art. 727 ITC - Art. 800 Comunicaciones - Art. 501 áreas clasificadas Cl1 Div.2 y Cl2 Div.2.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma hidrocarburos: NFC 32-200 - ASTM D 1239.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">DESCRIPCION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Cobre electrolítico recocido en formación de 7 hilos, clase B.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: PVC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Paso del trenzado: 50mm (20 torsiones por metro).</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor Comunicación: Conductor de cobre 22AWG aislado en PVC (Para más de tres pares o ternas).</span></p><p><span style=\"font-family: Montserrat-Medium;\">Blindaje: Cinta helicoidal de aluminio-poliéster general o individual y general más conductor de drenaje de cobre estañado en formación 7 hilos clase B.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Cubierta: PVC negro (azul para seguridad intrínseca), no propagante del incendio, resistente a la luz solar e hidrocarburos.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Desgarre: Hilo de poliamida debajo de la cubierta.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">OPCIONALES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: Polietileno de alta densidad, cables UL Listed PLTC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Cubierta: No propagante de incendio y resistente al aceite mineral.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Armadura: Corona helicoidal de alambres de acero cincado o armadura de interlock de aluminio más cubierta de PVC negro (azul para seguridad intrínseca), no propagante del incendio, resistente a la luz solar e hidrocarburos. Estos cables están listados para ser instalados directamente bajo tierra (Direct Burial).</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">Ver nota técnica Nº 8 “CABLES ARMADOS”</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">INSTALACION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Montaje: Radio mínimo de curvatura igual a 7 x diámetro exterior del cable para cables sin armar y de 12 x diámetro exterior del cable para cables armados.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tracción máxima: 5daN/mm2 aplicados sobre los conductores de cobre. En cables armados con alambres se puede usar 10daN/mm2 aplicados sobre los alambres de la armadura.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura de montaje: Igual o mayor a 5ºC.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">ALTERNATIVAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Normas constructivas: ICEA S 73-532 (300V y 600V), British Standard 5308, EN 50288-7, NBR 10300.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Materiales: Los datos consignados corresponden a la versión estándar, pudiendo ser utilizadas a pedido todas las variantes de materiales o construcciones que figuran en nuestro apéndice técnico.</span></p>', 5, NULL, 12, 5, 6, '2020-09-23 07:02:55', '2020-09-24 20:05:27'),
(9, 'ae', 'Cable Multipares Simples', 'imgprod_ae.jpg', 'cables_0011_Capa 3.jpg', '<p><span style=\"color: rgb(102, 102, 102); font-family: Montserrat-Medium; font-size: 14px;\">Par, terna y cuadrete blindado - 300 Volt - 105ºC - PLTC - UL 13</span><br></p>', NULL, 'Directamente  enterrado,Marcación  Secuencial,No propagacion  de incendio,Resistente a  hidrocarburos,Resistente a la luz solar,UL,cidet', NULL, NULL, NULL, '<p><span style=\"font-family: Montserrat-Medium;\">APLICACIONES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Circuitos de instrumentación electrónica, señales digitales y analógicas (4-20mA).</span></p><p><span style=\"font-family: Montserrat-Medium;\">Circuitos de seguridad intrínseca.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Detección de pérdidas de gas y/o fluidos.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Medición y monitoreo de presión, temperatura, volumen.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Monitoreo de señales de alarma.</span></p><p><span style=\"font-family: Montserrat-Medium;\">CARACTERISTICAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura máxima: 105ºC de servicio.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tensión nominal: 300 Volt.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma constructiva: UL 13 tipo PLTC - UL 2250 tipo ITC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de fuego: UL 1685.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de conductores: ASTM B8 clase B.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Código NEC: Art. 725 PLTC - Art. 727 ITC - Art. 800 -Comunicaciones - Art. 501 áreas clasificadas Cl1 Div.2 y Cl2 Div.2.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma hidrocarburos: NFC 32-200 - ASTM D 1239.&nbsp;</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">DESCRIPCION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Cobre electrolítico recocido en formación de 7 hilos, clase B.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: PVC.&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Terna:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp; &nbsp; &nbsp; </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Cuadrete:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">Paso del trenzado: 50mm (20 torsiones por metro).</span></p><p><span style=\"font-family: Montserrat-Medium;\">Par sin blindar: Encintado de poliéster.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Blindaje: Cinta helicoidal de aluminio-poliéster más conductor de drenaje de cobre estañado en formación de 7 hilos, clase B.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Cubierta: PVC negro (azul para seguridad intrínseca), no propagante del incendio, resistente a la luz solar e hidrocarburos.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Desgarre: Hilo de poliamida debajo de la cubierta.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">OPCIONALES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: Polietileno de alta densidad, cables UL Listed PLTC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Cubierta: No propagante de incendio y resistente al aceite mineral.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Armadura: Corona helicoidal de alambres de acero cincado o armadura de interlock de aluminio más cubierta de PVC negro (azul para seguridad intrínseca), no propagante del incendio, resistente a la luz solar e hidrocarburos. Estos cables están listados para ser instalados directamente bajo tierra (Direct Burial).</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">Ver nota técnica Nº 8 “CABLES ARMADOS”</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">INSTALACION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Montaje: Radio mínimo de curvatura igual a 7 x diámetro exterior del cable para cables sin armar y de 12 x diámetro exterior del cable para cables armados.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tracción máxima: 5daN/mm2 aplicados sobre los conductores de cobre. En cables armados con alambres se puede usar 10daN/mm2 aplicados sobre los alambres de la armadura.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura de montaje: Igual o mayor a 5ºC.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">ALTERNATIVAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Normas constructivas: ICEA S 73-532 (300V y 600V), British Standard 5308, EN 50288-7, NBR 10300, UL 1277</span></p><p><span style=\"font-family: Montserrat-Medium;\">Materiales: Los datos consignados corresponden a la versión estándar, pudiendo ser utilizadas a pedido todas las variantes de materiales o construcciones que figuran en nuestro apéndice técnico.</span></p>', 5, NULL, 8, 7, 10, '2020-09-23 07:04:29', '2020-09-24 20:06:01'),
(10, 'af', 'Desarollos SB-Linea Arbus', 'imgprod_af.jpg', 'cables_0003_Capa 7.jpg', '<p><span style=\"color: rgb(102, 102, 102); font-family: Montserrat-Medium; font-size: 14px;\">Cables Blindados para Automatización Industrial</span><br></p>', NULL, 'Directamente  enterrado,Marcación  Secuencial,No propagacion  de incendio,Protección  interferencias  electromagnéticas,Sistemas  Informáticos,certificado', NULL, NULL, NULL, '<p><span style=\"font-family: Montserrat-Medium;\">APLICACIONES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Circuitos de distribución de control de procesos, aptos para canalizaciones aéreas y subterráneas, para automatización industrial PLC y DCS.</span></p><p><span style=\"font-family: Montserrat-Medium;\">CARACTERISTICAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura máxima: Según modelo de cable.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tensión nominal: 30 / 300 / 600 Volt según modelo de cable.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma constructiva: UL 13 / UL 1277.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de fuego: UL 1685.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de conductores: ASTM B8 - ASTM B 33.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Código NEC: Art. 725 PLTC - Art. 800 Comunicaciones.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">DESCRIPCION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Cobre electrolítico recocido estañado en formación 7 hilos clase B.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: Compuesto termoplástico.</span></p><p><span style=\"font-family: Montserrat-Medium;\">El resto de la composición de cada cable se puede observar en su correspondiente tabla.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">OPCIONALES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Armadura: Corona helicoidal de alambres de acero cincado o armadura de interlock de aluminio más cubierta de PVC gris, no propagante del incendio, resistente a la luz solar e hidrocarburos. Estos cables están listados para ser instalados directamente bajo tierra (Direct Burial).</span></p><p><br></p>', 3, NULL, 12, 11, 6, '2020-09-23 07:08:33', '2020-09-24 20:08:35'),
(11, 'ag', 'Cable  Electronica y Comunicacion', 'imgprod_ag.jpg', 'cables_0005_Capa 6.jpg', '<p><span style=\"color: rgb(102, 102, 102); font-family: Montserrat-Medium; font-size: 14px;\">Multipolar blindado - 500 Volt - 80°C - VDE 0812</span><br></p>', NULL, 'Doble Blindaje,Marcación  Secuencial,No propagacion  de incendio,Protección  interferencias  electromagnéticas', 6, 11, 18, '<p><span style=\"font-family: Montserrat-Medium;\">APLICACIONES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Transmisión de datos, señales digitales y analógicas con protección contra perturbaciones electromagnéticas.</span></p><p><span style=\"font-family: Montserrat-Medium;\">CARACTERISTICAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura máxima: 80ºC de servicio.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tensión nominal: 500 Volt.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma constructiva: VDE 0812.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de fuego: IEC 60332-1 / IRAM NM IEC 60332-1.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de conductores: IEC 60228 / IRAM NM 280.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">DESCRIPCION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Cobre electrolítico recocido estañado en formación clase 2.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: PVC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Identificación:</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">- Bipolar:</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Tripolar:</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Tetrapolar:</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Pentapolar:</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- 6 y más conductores:</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Montserrat-Medium;\">Blancos numerados</span></p><p><span style=\"font-family: Montserrat-Medium;\">Blindaje: Cinta helicoidal de aluminio-poliéster más trenza de cobre estañado con cobertura del 85%.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Cubierta: PVC gris, no propagante de la llama.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Desgarre: Hilo de poliamida bajo la cubierta.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">INSTALACION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Montaje: Radio mínimo de curvatura igual a 7 x diámetro exterior del cable.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tracción máxima: 5daN/mm2 aplicados sobre los conductores de cobre.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura de montaje: Igual o mayor a 5ºC.</span></p>', 3, NULL, 7, 8, 9, '2020-09-23 07:10:33', '2020-09-24 20:06:34'),
(12, 'ah', 'Cables Tipo Taller', 'imgprod_ah.jpg', 'cables_0007_Capa 5 copia.jpg', '<p><span style=\"color: rgb(102, 102, 102); font-family: Montserrat-Medium; font-size: 14px;\">Multipolar - PVC/PVC - 300/500 Volt - 70ºC</span><br></p>', NULL, 'Conductor  de Tierra,Cuerdas  Flexibles,Instalación  Industrial,Instalación  Domiciliaria,Marcación  Secuencial,No propagacion  de incendio,iram', NULL, NULL, NULL, '<p><span style=\"font-family: Montserrat-Medium;\">APLICACIONES</span></p><p><span style=\"font-family: Montserrat-Medium;\">Instalaciones móviles industriales y domésticas, maquinaria de mano y aparatos portátiles en general.</span></p><p><span style=\"font-family: Montserrat-Medium;\">CARACTERISTICAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura máxima: 70ºC de servicio, 160ºC de cortocircuito.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tensión nominal: 300/500 Volt.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma constructiva: IRAM NM 247-5.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de fuego: IRAM NM 60332-1.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Norma de conductores: IEC 60228 / IRAM NM 280.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">DESCRIPCION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Cobre electrolítico recocido en formación clase 5.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Aislación: PVC.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Identificación:</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">- Bipolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Tripolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Tetrapolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">- Pentapolar:</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\"> </span><span style=\"white-space:pre\">	</span><span style=\"font-family: Montserrat-Medium;\">&nbsp;</span></p><p><span style=\"font-family: Montserrat-Medium;\">Cubierta: PVC negro, no propagante del incendio.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">INSTALACION</span></p><p><span style=\"font-family: Montserrat-Medium;\">Montaje: Radio mínimo de curvatura igual a 7 x diámetro exterior del cable.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Tracción máxima: 5daN/mm2 aplicados sobre los conductores de cobre.</span></p><p><span style=\"font-family: Montserrat-Medium;\">Temperatura de montaje: Igual o mayor a 5ºC.</span></p><p><br></p><p><span style=\"font-family: Montserrat-Medium;\">ALTERNATIVAS</span></p><p><span style=\"font-family: Montserrat-Medium;\">Conductor: Bajo pedido los cables pueden ser suministrados con cuerdas semirígidas en clase 2.</span></p>', 4, NULL, 7, 10, 11, '2020-09-23 07:11:45', '2020-09-25 19:31:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre_rol`, `created_at`, `updated_at`) VALUES
(1, 'administrador', NULL, NULL),
(2, 'usuario', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion_presupuestos`
--

CREATE TABLE `seccion_presupuestos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seccion_presupuestos`
--

INSERT INTO `seccion_presupuestos` (`id`, `texto`, `imagen`, `created_at`, `updated_at`) VALUES
(1, '<h6><span style=\"font-family: Montserrat-SemiBold;\">Pedí tu presupuesto a profesionales</span></h6><h4><font face=\"Montserrat-SemiBold\">FÁCIL, RÁPIDO Y SIN CARGO</font></h4><p></p><h6><font face=\"Montserrat-SemiBold\">Ingresá al formulario para enviar una solicitud de presupuesto sin cargo</font></h6><br><p></p>', 'nuestraempresa.jpg', NULL, '2020-09-25 16:07:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci,
  `pagina` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `orden`, `imagen`, `texto`, `pagina`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'strtwse_0008_Capa 31.jpg', '<h1 style=\"text-align: center; \"><font face=\"Montserrat-SemiBold\" color=\"#e10915\">Fabricación y Sustitución</font><font color=\"#00ff00\" face=\"Montserrat-SemiBold\"> </font></h1><h1 style=\"text-align: center; \"><font face=\"Montserrat-SemiBold\" color=\"#f7f7f7\">de Conductores eléctricos</font><br></h1>', 'inicio', '2020-09-01 18:57:55', '2020-09-25 17:45:29'),
(4, 'aa', 'strtwse_0001_Capa 38.jpg', '<h2 style=\"text-align: center;\"><span style=\"font-family: Montserrat-SemiBold;\"><font color=\"#ff0000\">Fabricamos bajo</font> <font color=\"#ff0000\" style=\"\">normas </font><font color=\"#f7f7f7\">Europeas y Nacionales</font></span></h2>', 'empresa', '2020-09-07 00:47:22', '2020-09-25 17:47:15'),
(5, 'aa', 'strtwse_0006_Capa 33.jpg', NULL, 'calidad', '2020-09-07 04:51:13', '2020-09-25 17:48:15'),
(6, 'ab', 'strtwse_0007_Capa 32.jpg', NULL, 'calidad', '2020-09-24 17:59:29', '2020-09-25 17:48:25'),
(7, 'ac', 'Sin título-2_0002_Capa 4.jpg', NULL, 'calidad', '2020-09-24 17:59:38', '2020-09-24 17:59:38'),
(8, 'ad', 'Sin título-2_0003_Capa 3.jpg', NULL, 'calidad', '2020-09-24 17:59:49', '2020-09-24 17:59:49'),
(9, 'ae', 'Sin título-2_0004_Capa 2.jpg', NULL, 'calidad', '2020-09-24 17:59:59', '2020-09-24 17:59:59'),
(10, 'af', 'Sin título-2_0005_Capa 1.jpg', NULL, 'calidad', '2020-09-24 18:00:10', '2020-09-24 18:00:10'),
(11, 'ab', 'strtwse_0005_Capa 35.jpg', '<h1 style=\"text-align: center;\"><font face=\"Montserrat-SemiBold\" color=\"#e10915\">Fabricación y Sustitución</font><font color=\"#00ff00\" face=\"Montserrat-SemiBold\"></font></h1><h1 style=\"text-align: center;\"><font face=\"Montserrat-SemiBold\" color=\"#f7f7f7\">de Conductores eléctricos</font></h1>', 'inicio', '2020-09-24 19:14:59', '2020-09-25 17:45:47'),
(12, 'ac', 'strtwse_0000_Capa 39.jpg', NULL, 'inicio', '2020-09-24 19:15:11', '2020-09-25 17:45:58'),
(13, 'ad', 'strtwse_0004_Capa 36.jpg', NULL, 'inicio', '2020-09-24 19:15:27', '2020-09-25 17:46:08'),
(15, 'af', 'strtwse_0003_Capa 37.jpg', NULL, 'inicio', '2020-09-24 19:15:54', '2020-09-25 17:46:20'),
(16, 'ab', 'otro_0001_Capa 4.jpg', '<h2 style=\"text-align: center;\"><span style=\"font-family: Montserrat-SemiBold;\"><font color=\"#ff0000\">Fabricamos bajo</font>&nbsp;<font color=\"#ff0000\">normas&nbsp;</font><font color=\"#f7f7f7\">Europeas y Nacionales</font></span></h2>', 'empresa', '2020-09-24 19:20:59', '2020-09-25 16:10:45'),
(17, 'ac', 'sliders_0004_Capa 12.jpg', NULL, 'empresa', '2020-09-24 19:21:11', '2020-09-24 20:14:15'),
(19, 'ae', 'sliders_0008_Capa 5.jpg', NULL, 'empresa', '2020-09-24 19:21:31', '2020-09-24 20:14:43'),
(20, 'af', 'sliders_0009_Capa 4.jpg', NULL, 'empresa', '2020-09-24 19:21:43', '2020-09-24 19:21:43'),
(21, 'ae', 'sliders_0000_Capa 40.jpg', '<p><br></p>', 'inicio', '2020-09-28 17:37:25', '2020-09-28 17:37:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_categorias`
--

CREATE TABLE `sub_categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `texto_calidads`
--

CREATE TABLE `texto_calidads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `texto` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `texto_calidads`
--

INSERT INTO `texto_calidads` (`id`, `texto`, `created_at`, `updated_at`) VALUES
(1, '<h5><span style=\"font-family: Montserrat-Regular;\"><font color=\"#ff0000\">Políticas de calidad</font></span></h5><p><font face=\"Montserrat-Regular\" color=\"#505050\"><span style=\"font-family: Montserrat-Medium;\">En Cristian Diez &amp; Cia S.R.L. tenemos el objetivo permanente de asegurar la calidad en nuestros productos y servicios, junto a la participación de todos los integrantes de la organización.</span></font></p><p><font face=\"Montserrat-Regular\" color=\"#505050\"><span style=\"font-family: Montserrat-Medium;\"> Para lograrlo, asumimos el compromiso de cumplir con los requisitos acordados de nuestros clientes y con los de la Norma ISO 9001:2015. </span></font></p><p><font face=\"Montserrat-Regular\" color=\"#505050\"><span style=\"font-family: Montserrat-Medium;\">Nuestro trabajo continuo sobre el sistema de gestión, la capacitación permanente de todos los integrantes de la empresa y una constante actualización tecnológica, nos posiciona como una de las empresas líderes en el sector desde su fundación.</span></font></p><p><img src=\"data:image/png;base64,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\" data-filename=\"iso-9001-2015-logo.png\" style=\"width: 174px;\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAY4AAADYCAYAAAD8pAQiAAAABHNCSVQICAgIfAhkiAAAIABJREFUeF7sXQV0FNf3/jbu7sSFENzd3V2Laym0UDdKaUtbaIuWOlZcCrRQ3B2CSwgQd3f3/Z97JxuByC4J0t//3XNyINk3M2++mX3fuy4rLCyUQ4hAQCAgEBAICASUREAmiENJpMQwgYBAQCAgEGAEBHGIF0EgIBAQCAgEVEJAEIdKcInBAgGBgEBAICCIQ7wDAgGBgEBAIKASAoI4VIJLDBYICAQEAgIBQRziHRAICAQEAgIBlRAQxKESXGKwQEAgIBAQCAjiEO+AQEAgIBAQCKiEgCAOleASgwUCAgGBgEBAEId4BwQCAgGBgEBAJQQEcagElxgsEBAICAQEAoI4xDsgEBAICAQEAiohIIhDJbjEYIGAQEAgIBAQxCHeAYGAQEAgIBBQCQFBHCrBJQYLBAQCAgGBgCAO8Q4IBAQCAgGBgEoICOJQCS4xWCAgEBAICAQEcYh3QCAgEBAICARUQkAQh0pwicECAYGAQEAgIIhDvAMCAYGAQEAgoBICgjhUgksMFggIBAQCAgFBHOIdEAgIBAQCAgGVEBDEoRJcYrBAQCAgEBAICOIQ74BAQCAgEBAIqISAIA6V4BKDBQL/fxGQy+UoLCxATk4O8vPzkJ+fzz/0t8LCQhQV0Y8cAP1IoqamDjWZDOoaGtBQ14CGpiY0NTWhpaXNP/R/If89BARx/PeemZixQOA5IyBHXl4ukpISkZyUiJTUZKSmpiA9LQ3ZOVnIZeIg0iDyKEBBYT6KCotQVEQ/hZDJZCXzk6mpQQYZNDQ0oK6uAU1NDWhoSMShra0NXT09GBkaw8jIBCampjA1NYOZmQW0tLQAlJ7nOd+wOL2KCAjiUBEwMVwg8L+CAGkQCsnISENISBBCQ4MQFhaCxIR4FBTko6BA0iYUWgUdo+AFxeH0e9n/ly748pK/S38rvV6pRiJjrYRIRV1dnQlGTV0dVpbWcHR0hpOTK1xc3aGnZ8DXpeuUJab/lWfxX7sPQRz/tScm5isQqAECRASkTWRnZyM6Khx+fg/h7/8IcXHRxWYmlCzgpBkoNAVDIyOYm1nA1NQcxiYmMDI0gr6+IfT1DaCrpwtNTTI7kUahBZlMjWdIZEPXI80kLy8PWVmZyMrMQEZmBtLSUpCSnIzk5EQkJCYgOyurzHgirHxIJCVjsrC1tYW7ez14etZHHXvHEo2FCEfIi0dAEMeLx1xcUSDwQhGgBTglJQnRURGIiAhDSEgg/5uRkc7zoMXX2NgYxiambDYic5GFhRXMzC1gZmYOE2NTaGnrPNc5E6mkJCchMSkBSUkJSEiI49/T0lLZTEYakeQ/AfT09OHk5MLaiL29I2zt7GFiYiY0kef6hMqfXBDHCwRbXEog8CIQUJiT6N+oqEjcv38LQUH+iImOQmZmOi/Aurq6cHBwhoOjM+xs7Zk0jI1JkzCGlrZ2ldNUaAKq3YvCTEUahKRJVCVyeRFrRQriSE5KQGRUOMJCgxEeHgo55Ow7MTAwhI2tHVxd66JJ4+awtrGFmhppPMI/otrzUW20IA7V8BKjBQL/AQTkSExMwOnTR/DA5x4yMzPYT0Hi4OCI5i3awsurIS+65IQmk5QyCy2dg0xLsbFRcHPzhI6OrtJYZGVl4Pbt62yusrNzQIMGjZW6puICRCTkkM/LzUVaeipu3fTm8yUnJ0lak4Y6DPQN0bBhE/TuMwgGBkbVkpPSkxcDn0JAEId4KQQC/yMIkE+BzE/e3hdx7uxJZGdnsePZwECfd+QdO3Vj807lfgE5L85ZWVkAiqCrq8++BIWcPXschw/9A1rE58x5Dy6uHkojl5OThb/37cS1a5dhYGCAL79aUawZkMNbjsePHuDixdNscurTV7mFPzc3B76+93D+3CnExcUgJyebz0V+me49+qBNm06sRZHPpToNR+kbEQMZAUEc4kUQCPznEZAjLTUVPj53cOnSWURFRfDiaWNjx87kps1aoU4dB97hSxaiysw4cl6I9//zFyMydNgYeHk1KkGHdvh792zjBXr0mElo3bqD0sjRgn7q5GEcPfovE89nny2BqZk5H09hvJs3/Ya7d2+x72Le/E9KSOXJC9BYyRRFIpm/yPTm5+eLO7evs6M/KTkRajI1vue27TqzCUvfwFDpuYqB1SMgiKN6jMQIgcAriwAtyEFBfjh79gQCA/x4UTc0NEK79p3RqFFT2NjYc5SUciLnhffXX1ZwjsWw4ePKkUNwsD+2bF6LlJQU9OzVF/37D1futMWj7t69gT1/bWNz1azX58PTswEv/omJ8Vi+bDFHXo0aNQFt2naq8LykYZw7ewJGxiZoUL8xDI2My42jew8PD2ETFpmy6Hx0H2RW69ylBzw86pVEfKk0cTH4KQQEcYiXQiDwH0WAQlbPnTuBM6eP82JM0rhxMwwYOBwmJubPlJVNYbJfLPqAz9W//1B079GvZIdP0U5//LEasTHRaNasFSZNfl0l5EgT2vTnr0hIiGdtplOnHmxaOnhwD9+Dg4MTxk+YASsrmwrOK5Hazp1/IiszkxMGaQ7tO3SBkZFxcX4HHSZDXm4OQkID8e+/+xAZEcrnMjI2RbduvdCuXZdy5jeVbkAMLkFAEId4GQQC/zEEaLElJ/WxY//i5g1vztY2MTFF12690a5tZ2hqadYgUU6Ozxa8jczMTHTs2A0DB42AdnEoLuVkrPnxO4SHB/Muftr0OewHUVYof+S3X1dwOHD79l0xctQEZGdnYvFXH7N20KNnP/TqNaDYWV/+rIWF+Th27CBOnTzCZEO+Fzqfto42mjdvjbZtO3MIsY6OTok/gyKyjh7ZzxoIlUkhzatt207o228IBwYIeXYEBHE8O3biSIHAS0EgODgAx48fhN9jX15E3T080bNHP7h7eJWz/6ekJCM2Nhouzu7VhtiWvZHffl2Ox34P0bBBU/ZlkOlLEjk2b/4Dd27fQJ06jpg4ibQDWxUwkGPPX1tx+fI5NlNNn/Emrl2/jL92beFF/7Xx0+Di4l7h+RLiY7Ft2wbObLeyskbnzj3x2M8X4WEhHFlFhEH+nH79hsDapk7JOShg4Pq1Kzh//iRiYqL5Htzd66Jf/2HsT6HgASGqIyCIQ3XMxBECgZeAgFS+4969Wzh29ABiYqLYAd6mTUd07doL5hZWJXMi53NAgB/OnzvBiX4NGzZFr94D2aSjjPx74C+cPn0M9g6OmDJlDszNLUqIg7ScY0f/hbm5JcaOnQw3d09lTlly/PXrl7Fj+5+cuDdmzCT8++9ezl5v0bItRo+eyJnnFcntW9fYTEVRX+Nem4KWLdtx9BclNQYGPsa9e7eRm5uLCRNnwNnZ7alTkB/oxPGD8Pd/zM54W9s66Nt3MOo3aMzkIaKuVHiMIqpKNbDEaIHAy0KAyODmTW8c/HcvJ8XRAtu1Wy906dILenp65SKlaJdNJh1a5IvkRRxhVK9eAwwbPhYWFtbV3sLNG1exdes6GBgaYu6c92Fjq9jBy9nsQw5yKjUyfMQ4NGvWutrzlQ6QIy4uFkuXLORCho2bNMOtm9c4hHj27Hfg7lGvwnORVrV+3Ro8eHCPF/iBA4dztBRlkNNnZEKjUiaZWRlMaArTWtmTEX6U20JRYY8f+1LBK5iYmGDE8NeYPBRlUlS4mf/XQ4XG8f/68Yubf/URoFLmRXjw4C7++XsnyPykpaWJ9h268Y65bJ6F4l5okaQFftvW9WzLp8Q9cp5TDgct9rTbl3bYFYflUoLf0iWf85i5c9+Hq1vd4vFyhIYEYfXqpUxcQ4eNZmezKkIL/RdfvI/srGxoa2uxL4XMU2++9WHFu365HHHxsfj+u0WsKdCc6F+6rzZtO7DmQbkfZKqSpOqMcUpE/HPjbxyJxhn0enqYOuUNuLl5gCr5Vne8Kvf6vzxWEMf/8tMV9/afR4AW2kePfLBv73beMVP/CopG6tV7AIeaVrzQyREY6MeaAQmZhA4f/geRkeGwsLBE/wHDUL9+40qji8iR/PXijznjvEePvuxMpuxyIp8L50+xJkML98hR49G4cQuVMd6+bT1u3LjCpjcqjPj66+9UavIiEty2bT0HAVAAgEddL65lFRUZwQmOlEzYtGkr1qaU81fI2cT11+7N8PG5y9oKaU9k/qKcFeXOofIt/88dIIjjf+6Rihv6X0IgIOARdu7YxIslRQVR5FTvXgOgWU2/CnKK79i+AWFhwZg3/2POlTt4aB+Cg/w5Eqpjp+4cNVVRdBGF+e7csRG3bl1nc1A9rwZczoOc0AEBj3nBbtmyLQYNHglDQ+X8JmWfya1b3kxqpD2QCW3GzHmVJvyR9rNyxdfIzc1Dq1btMGToaK5hRfkajx76cMJiw0bNmByV1hbkciQkxuGff3bjoe99NndZW9tg6LCxqFvXS5itlPgCCeJQAiQxRCDwMhCgxZ8yqqlQIS2yrVq3x6BBI5UKJSVt4a/dW3D37k306tUf/foPRVxsNDZu/JX9DKS5NGveGoMGjSjudVHexBMTHYl//tnFuROKbO0iuZxNQl0690TnLj2ZVJ5FMjPTsGvXVqSlJrO5rZ5Xw0o1p0OH9uHkiSN8Lcr9IMIifwQt9hSOS5VzSfMyNjZVaiqlpdrliIwMw47tGznTnrLRnV3cMHbsFFhaVu8HUupi/8ODBHH8Dz9ccWv/XQTIYfz3vh3sqyBxdnbF6NGTuBKsMjtrWiApOooSBK2t7TBx0kycPnUUd+7cKHYFyFCQn8877HGvTeWF98nIItI8KPw1PCyUL0kLqouLB/T0FMUNn60CraKBlNRrQ9EY6ulzpaelYO3aNVwNl8xJlOfRtGlLLmBY2nK2tOpuVU+byI/qWd28eRXduvWRSE8uh8+DO9i6ZT2TEKllVN9q+IjXnil58r/7tqk+c0EcqmMmjhAIPFcEyO5+6dIZHDm8H1Rmg8xJY8ZO4rBaZUhDMbkrl8/hwIE93EiJemxQrwvKyqbKtLSQ3rh+lSOaKNt8zNipxdFZz/XWVDp5amoy53xQFBRpQJQkSCalBg2bwsO9HurYO3AzqapDaeXc1va+zx2cPnWESYgyzokciIyIuM6cOcpYE+5kDhw6dDQ6dOwmTFZVPK0XQhyFGRlIv3gT+THxKr04YrBA4P8VAsWb5wRDNezx9S4pGU7hp1269oa6OplolG+dSv6RrVvWcfgumZiaNG2J1q3bw8nJjQmJciOoICAREpX7UL6bnjRRitYifwPViKIdO+VYECGVFZqzosc49QDR0dHj+yBR3EtV/TkoK55KlJCvhvwZjx4+YB8LVb2lfiLkp/GsV79CQqXzUmY6lTMhZzxFpJEQ0ZD20rv3QI4OI81q967NuH79KheBpHmOadEVtmlFqvD0S31VZeoa0GvRAHr1la9YXJMJvxDiyA2LROib3yL9/N2azFUcKxD430ZALkeRhgwnx3oiXktaXKlvxpSpb/ACR4sgheYqWy4jLTUFP/+8jBfe1m3aY8iQMewPUOzQacEk80x1/TgoL4T8LdHRkfxvfFwsklMSkZGezrt0WqCfJIwnHxT5EOi6RE6GhgYwM7eEpYUVrKxtORnP0tKmSvMQRVdRgl9SUiKueV/k8uxEVlOmzJY0sQoaQ8XHx7KfhjLsieRIw/Cq3xA3bnhDv9hn0qJFGyadqMhwbNu2DtHRUXw/NukF6HgsBDoZhNGzmeRe5MuqpqsNu4WzYD1nzAu57IshjtAIBM/8Eumnbr2QmxIXEQj8FxGQqwEP29vgbnPyYwDU53vWrPnc+IgWzjNnjvNP794DOCRXmWznX35ZBn+/R2yemjLlDWhoUtOmp4XOr+hHTuG4ERGhCA4K4GKBkRHhJY2gnheu5LOws6vDuSbUO4TMUNQoivJUJH9G2cVbziY2cty7udXlgodlhUgiJCQA//y9i0OQScg/Q3kn9eo15CRKqiZMGguF4VLZFLr/ixfOgJzxpDlpFBah4Y1o1LsRB1mhwo/yvO6+5udV09eB/eK5sJ7/Ws1PpsQZBHEoAZIYIhB4EQgk1dHHhb4uyNKnrnwa7MTt2as/axvR0REclhsRGcpO8jbUC6Oa9qs050MH9+LkySOc4DZh4kxOlisrtGCSRkIRRmQOCg0N5t03mbJIyJxEogxJ1QQjhcNccQ4iDbs69kwkFBhga2vPpU+kPAtpUhWZ7TIz0nH7znWcPHGYI64U/Uc6dOiKwUNGMQnl5xdg/fqf4O/3kKO6CGO6Pwo33rnjTyYkEpOkbLQ9GQrTGGps9WqLII5X+/mI2QkEngsCeTpquNvJHoGeZpCrqfGOe9y4qaxtkKmIIqKosKG7O1WlncsmH4p4ovpTUi2pis0pPvdv4+TJw5z/4eXVuDhpUOq6FxcXzVFGAf6P2QRF/opXT+RcQoSIo27demjRsl2F4bJ0P3QPZ04fxa1b11h7ooRBihq7ceMqF2ocPnwcGjVuxlhRLgll1tepY4+331nAeNI5KHyZ/ELkW0FREbx849H4bCTUyrtuXjmYBHG8co9ETEgg8PwRiHU2xNVezsjS1eRFrFfv/ujZcwDvhFNSErF61RKOKpo5ax6X6KBcjD17tiEhIQ4TJ84sripbalJR7MYpoopMT2TfV1OTyKWosJA7BZ4/fxopKUnP3QxVW+hRxBMRAJEgaRBSgyrpnug+iVjJEU6LPlXbpWxyV1d3bnd74cJp2NnZY+y4yUxClL9BBENO9gWfLWENj4RIeu0fP3IkF2GvUVCEfnsewiCOwnVfXRHE8eo+GzEzgcBzQaBASw23ejgg0ENqpWpsYor58z9msxLZ6/f8tQXe3pfQtl0nTgCkGk+XLp5jx6+pqSk+/Ogr9gXQjjk0NJBt/rQgPhklRYRBIbmUH/LwoQ9f63mboGobMIVJy6t+IwwePJL9E1IrWTk3mNq5axPf0/jXpsHcwrKYDIqwYvlXnEhJJjANDXVkZGQw8VBo7thxU8t1SYyJicCK5d+UOP4dotPRcV8gZEWvrq9DEEdtv2nifAKBVxoBORIdDHB2oDvyNKXeENQ8qVv3PtQhnHtp0w6Y8hUol4PqKVGrVfobhdKOHPlacXtXGZcl2bjhZ2RlZXOvDGfn0t4WpK08fuyDw4f+RmxszCuNiDKTI3KgnuJ9+g5C/fpNSgiQnPrkCNfW0i7nAyKyPH/+FCwtrbiwIpEGlV/v228wayDlCVSO7ds2sImLQ4UBdDsSCOuAVH4mr6II4ngVn4qYk0DgOSFAkVQXh7khoo4x5JDDwtwS77z7GWc2U9mQTX/+BsrHoPpStDum3tmXLp7B+fNnUL9BI+6JQfWiFH4Q8mdQyfLZb7wjleGgUFmqlnvrOo4e3c+FEl99oZ29cgs0+Xf69BnM/Twq057I97Fh/c+cOT58+FjGh4iDGj6RH6Si4whzqqKraMlrF56K9keCoZnzajo7BHG8+m+1mKFAoNYQiHc1xKn+buwQp90tmV+6de/L56f+3/v/2c22eCkHQh16+vpc3VVHW5uzn6kyLH0WFRWG7ds2cvjp1KlvoFHj5vx3Oic1OiICop32f0FozmSCKygsRGZGBt9DZUKfaWvrYty4SZzg+CThBAX5g6rxEmFS9vzkKbM5Uqs6oXDfPXu24t5dKYVAJzsfbc6Fw84vpbpDX8rngjheCuziogKBF49AkboMl4a4IbyOVDbDxNQUc+a8z47dEqGy6o8fcO9sSsAjkxONpUWQTFqUl0AhporGTZQwOHPW/OLD5XzMmh+/5+zuV12IGKmj4IgR47jhFHcy9H+Ev/6SggCq8sdQA6fxE6YxKSiaMpGZb9fOzdyfXVdXj4s9UlVgKeGxOpHD2/si/vl7N4cmc4vex0lofi4cGrmvntYhiKO65yk+Fwj8jyAQ52yAS71ckK2jwQ5eihQaMHD4Ex3spJaxmZnp3AGQ+n1TSXFymlMWOJUUr+/VkFuw0t8ok5oaL5HQgknRQ5SXUNmiS9FE1ja2SE5KKjHLvAx4FSXWR46awKRYVuLj4/DrL8tLSoZUOD+ZDI0aNmEtTFEp19/PF3/9tRXZOdno1WsA2rXrXEEyYeV3S6YtCs0lvwmZEY3S89D+WDDMol69vA5BHC/jrRXXFAi8YAQKNWS426kO/BtYokhNBn0DA4wcOQGNi01MFU2HynrEx8dwzSbvq5fYZk87YaqtROU4iHioSRNFDlE5Ecr9OHXqKIeqViSUA9KlS08mmq1b1r5U/weFCw8bNhZNm7WqsDfHnj1bcPnS+SqfEiVKDhg4DJ0792CTVWFBAW7cvMIRZ4Rr2fBdZR43RaHtP/AXLl44JSUbyuVofCMaXt6xr1yElSAOZZ6oGCMQ+A8jQLvXNEs9XO3lhCQL6hcOuLp6YPz46TA1k0JyqxLSLCiC6uKF07h69QKbryytbDB27CQu10GhqRER5PPYgJiYqApPpaWlxZ39qEhgQUEhPl/4Tkn46csI0aV2tlOnzYGpacX3f/zYvzh69EB10HAY8kcff8VaG90HBQ1IdbKk2l/VCT2bUre8DMHBAfj55+UoKizgQ43Tc9B7y0OoFxS9UhFWgjiqe7Lic4HAfxyBIhkQVt8M3t0cUaSmxjvhzp17ckc9VUTK2wjiEFsKTaXjqSQHLZZnzx7HoYN/V3o6R0dnjJ8wg0NXyYa/dMlCbqhEHf4SE158FesmTZpj8uTZFZZRIU1r+/YNuHXTu1p4CBNqq9u//1ClI7PopHSNnJwsDi64ePEMH099TMjPsnzZYm72RELn73ImBHY+SYI4qn0aNRyQK4oc1hBBcfj/EgL5Wmq41tcZYc5ScT4yNU2bNrfSvtvV3TtpILT4Kzrypaen4pdflnNCXGVCFWUnT3mdkwTpeB+fO1yeg3Idjimxs69uTsp8TlpPUZGczWr9+g9Br14DnzqMFmpycm/683elHfyE5/sfLKpUeyl7Ebo25bVQUUSf+3cQGOiPgoI8dOrUHUOGjmFNharx7tq1ueQwy4RM9Nj9GDJJCXklRGgcr8RjEJMQCDw/BNIsdXBiZF3kaUr1kRwcnfHmmx+CFtKaiKKb3pUr59kpXFwLsMJTNmvWEhMnzSqzK5dCXilsdemSz7h8+/MUmZqM81KosdSxo/8WFxuUSqwo7oNKpVDHwpMnDnE5deVFjn79hrLmUVE+CJ2falmFhgTi3r1bbI6iXA+qiktiZmaO9h26oCv3QFHnGl7ffruAQ4NZ5HL0/scP5uGvTnizIA7l3w4xUiDwn0TgQSdb3G1qU7JIkompe3HuRs1uSM7aw5IlnyExIaHSSCrq50GNmxR9PkqvSRFccvz00/cIDgqs2VSqOZoW59FjJnGNrWPHDsD3wX2MHTcFjo4uHEF2984NjiKLjApHbk6uSqVR6B7oPNNnzH2q5DqZpCiD/ty5k9wSl8KU6W9EWJRVTj6fxk1acDdEcrYriGfH9vW4du1KyTPzfJyIFsfDnitGqpxcEIcqaImxAoH/EAK0p5erA4emNUS6jmZJUt9nn30LYy53LjVESktNRUJiHGsgpqYW3LhJOYe1nHfQlPFclVCP8cuXzmLU6IlcffdJoWKBR47sVzJ3+9kegKdnfa7yS4sz3fPaP1YhPT0NaurqiAgPVanTYUUz4Cit4eNYqyHsyPzk++AeTpw8zP1FSOjv1BmRHPIUXda4cQto6+hUeEP3Cdc/f2NipR/j5Bz0OBAAnTRJS3nZIojjZT8BcX2BwHNCgCJ2Yuua4HQfSlKTYnfc3evijTnvl+xkfXxu498De0Hd66iaLSW0DR48Cs4upXWnKpse2es3b/odPj5Vd9r8+puVuH7tMvT0DdC8eeuSkuLU45sWXAr3pUxzZct+qAoXLbxNm5KpbGZxfw0gOMgf24ozvBWLuqrnLTue8KWikIQdRVhlZWVwYyeqP0VCJjKqVdWgYRPuski+nqrImUrQr1/3EyinhOavk1eIlhfC4egrtaN92SKIQ9UnoK0OdWNdyHPzUZSeC1RjmlUz0YZMSwNFGbmQZxdUaQdWdSpivECgKgSIOLwHuCLYzbRk2IgRr6F9h668aFFeBi3YlO1NvEK5A7RIubi4sVmHEvkK8gtgZmYGaxs7rp6rCDulE1Ki2ob1v3Cp9Kpk+Yrf2ZlOjY7Mza24pDhFD12+dI77e1BkFjU6el7Cfp1iUxnVjSKhNrCk5Vw4f6raNrTKzsvGtg4mTZoFGxuKjpLjzu3ruHHzKjzcPdlEZmNrx+VKlBGqG/b33ztLIrsop6OuTzyaXIyCev7z9QcpMz9BHMUokVpv/90M6DelRvRA/Ib9SN5zHqA2juoyGHRqDOs3R0O/WSNAU4ObruSGhCH2p51I3nsOMrm0o6Mvq7quNoyHdITV7JHQdnaCTF2GopxcZNy4j+ilG5F9N6jy0Do6jRxQM9SBflsvaDvaIT8xBZneviiIpi9oadS3moEWz0vTxhJFWTnIuvEQOYHRxSNkPBeZuhoMOzeGlpMd5Pl5yLrrj2yfUJ5rSeVNGSDT1oCWgyXUtLVQlJ2LvNA4yAte/guqzEssxlSMQJaJFk4O9UCmkTYPIDPJvPmf8MJGL9nZM8dx5PB+6BnoY8KEGUhLS8Xf+3ZyRjeVIaEOdTSOdse02FPuw9ixU2BkTNFZcpw+fQzHju7nDndVyfff/1zcQrZ8IUFqYvTgwR3Y2zvxdZUzj6n2tBX+B6rDRdpAs+atS05AhQW3b9+IFL7Pmgvlb4yfMB3NmrbiMF9yfpNWRmQrlWKvTqSsfYWcP3cSBw9KGfokVjEZaHMiFAbJL79XhyCOMs+y7vFVMO7Rib8U4Z+uQOzyHZDLZTAZ3gXOP30CDXMz3pbJ8/Iho77EajLI8/MR/tEyxP20D6D6+ZrqsHnvNdT5/A3ItLQgp4deUAiZlia/TEU5OQh87UOk/nultE9m2fdJJmPCcPr5Y+g18iqJM89PSET4RyuRtPko/82gYyM4/7qCPRbuAAAgAElEQVQAOp5uJUfLCwsQu2YLIhf8DnluAXQbucL97x+YvCSikBSe+D/3IvyDH1GULEVpqJsZwOa98bCeNxHqerrIvOULv8Hzi4mqupddfP6qIhDWwAzXOtojX1tqGuThUY+bMBkYGrEpZffuLbh75yaGjxiHjh278/uxbt0aPHhwj0tlkMOW0tPy8/I4G7xlq7YYMmQMZ4pTy1SKpCIfR3Wy8POlxWU9yhNHfFwMzyEvPxdhoSG1ThxERJToSM2oqKVtSmoKhg8bx/1HSEgL+uP3VQgOrj3HPPk4KF9FOaIoRY6aQVHJFoq28vQkU5Y6/B77YufOP0tKn2jnF6DD4WBYh6ZXB/lz/1wQR1niOPkjjLt14L+EL1iJ2GXbIdPRgcfBZTDq1Ib/nnz4DDKv3Idh5xYw6toGMk0NpF24gaDxnyI/MhHaHnbwurQJmuZmKMrNRcLWA8gNioZx73YwaN8UMg0NpNP4iZ8hP+LpktMyPS3UPbQKRp3boCAlFWmnr0G3vht0PF3494cdJqEwJROOP34Is+G9IC8qQsaVO9Cys4K2iz2TUeD4D5F65ApctyyGyaDuKMrKRrZPANTNjaDr7ozC1DSEvb8MCX8egm4DF1i9NRbmY/tDXV/KKibi8B8yH/lRtbMTe+5vsbjAUwgUqgN3u9jDr74FV8Il6dmzL3r1HsykQPWnKMmNakZ9tvBbdoiT+YYKFJLpikiCwkNp8Y2JjuSENCoVUrduff4bJQJSFViywVcnM2a8ifoNGj/lw6Dr/bj6O660W1E/7+rOS8UDKfmQnN3q1FGPSroXSVoyLdzU9pZI0dLCGle9L2L/P7vQvEUb9OzRD2bm1HRJzrW1rl+/Ut2llP6cSrl88sli6OkZKH0MDSR/D82FqusuoOAFY1OkpiSzg5ywVkjT61Go5x0D2Us2BgjiqIY41I0M0Dj0INR09YDCAtx17Y/8yCQYD2wHl7VfQtPKHFkPAhA89Qtk3XwIq7dHwXHZR/zlSjvvDb/+8yHPyYdRnzZwWfsFL/B5EdEInv010o5IjrOyotfCA16Xt0BNQ5M1g7B3VsB0WDc4/7wAarq6iFz6G5vG3HcugbarE7J9/RAw7H0YD+iAOovegLqxERK27Efcmp1w27YUOnWdkXn7IYJnLIJuQze4bVrCX7DY33cj4uM1cFw5HxaTR5RoNjRvQRwqfedfycGZJlq41tMJMXaGPD8yU1FBv2bNJFPN3bs3eKFycnbBG2+QsxwICQnkCCkqKTJn7rtsQirvsJb6VpD55/q1S6xxKMwoVYHQqXN3DB06tgKNQo7ly79GZISqYaYy1KvXAM2at2KyiwgPg4OjE5+f/CaRkWFc7XbM2MnsWwgO9mfNJj4ulm+na5deGDxkNBPHoUP7cOrk0Vp7hmQeJrNfixZtVTonaT//HvgLly6dw2uvTUWr1h2YBHfv2sTEpij1bhObgc57/KAuWa9emgjiKEscJ1bDuHtH/kv4pysRu3w71I0N0STmhFR7Ri7H/YZDkPM4Clr2FrCYOhQapkYoiEtG4o6jyAuNhsv2RTAfPUjqWfDtr4hYuJZ9CZq2pqh74jfoebmjMDMToW9/h8QNh5568JZvDIHTmoV8fPDsLxG/dj/0WzeEx18/QMveGmkXvBH15Tp4HFjNRJK4cz+CJyyGYbfmcNnwJbQcbFmjiVu3C07ff8T+j5SjF+A38G1ou1iiib/0JUk+eAahc5bA6ZePYNCmKTLvPoBBq6bQMDYSxPHSvo61d+E4JwNc6e3CPcVJyK+hyFsguzs5hqkoIYXgOju7ci4BlRKnhdeujgPeeuvDkgikJ2dFtvs9f23F9euXlZow1XP6mOo56ZR3DNNi+ePqpazhKCtSAqMTZs6cx1oS/U7zIS2KWIGyvn//bRWHufbtMwhOzm7YuPEXpKellUSS1fWsjzfeeJeJ49zZk9i/f7eyl692HM2nbt16HLmmmsi5FtiBA3vgVb8hpk6dy4dTbbC9e7aVELR6UREGb/GBTurLTSMXxFENcajp6cLr2p/Q9ZCasWQ9CkDQpAXIeRDKmsST4nnyFxh2bc0vacjcrxH32z4mDpm2GrwubYZ+My/ICwoQ9v5yxK15+oW1+XA8HL59hzWA4OkLEf/nIYk4dn8PLQcbZIcEIeKdVfD4+0f+0sT8/Cci5v8Eg/YN4br5GzZXZVy7j6S9x2D38UxomBojad8xBIz6FBqW+mgeI1X8TDt/A8HTvoDZ+B6s+eh4uMBp9UfQsDAVxKHaN/6VGy1XkyGwiTmud3Isnpuc+2i8Nn4aDAyMkJuTgy1b1sLf/2FJ9rLiJuidatioCQYMGA5DQyMupa6hUZphTp9nZ2dixfKvlc6uJrMRVaJt175LGdu/HEFBAVwlNyVF+RBTChmeN/9jODpW3ByJ5rdly++4c/smV6klciANquz9UWguNVgiuXnzKrZtXV9rz5CuT/f75VfLmNgqCzGW8jOKeG75+blIS02D97VLXG6Ejvn66xUcUEA+D6pdReSoyHJveykcrrdebmdFQRxliaMCHwct4FZvj0GdBa9D3dCAF+u8yGgkbDmIlL2nkHUnoFyIbb1z62DYsRmfNWjKAiRsOVoSB1X/2lbot/Diz8I/XIWY5VueemEt3xgKpzWfSRrL0j8Q8dnvMBnQHm5bl/D18+JjEfbuMrhv+YGPjf5pIxOHfmtPuG5dCh03R2Te8EXK4QuwmT8e6sYGSNx9EEHjFkHNRAstEiV7bsa1Owia9Dly/amYmgxmY3vB6cePoGEuiKPWVpGXdKICLTXc7OmIIHepzwS9Sx07dSsxF5EJhMw5ZE8PDwvhHA7qK06d/hQmETJtURQVmXocnVzZtyGVKKEF3x8/rZHeP2WFiiIOGToa1ACJhJztF85L1XaVMXcprkPnefc9SSOvTGixJWIjM5bi/ssSBzWk6tGjH9/LQ9/7WLt2jbK3odQ4wnDChOlo3uLJ9rJyUFkTIkpyhJPpLCIyjBMQKTSacFCERb/55gfsUyJy+W7pIv5ccc92Menosttfqbk8r0GCOKohDgpJ1bAyhvX8sbB6Yxw0jCWbcVF+PrIf+CN+3T7ErzsA5EtGx3rn18Gwg0QcgRM/RtKOExKxyAAmjubFxPHRasQsKy1kppiGbhMX1L+yDWra2sgNiUDCln9h0Kk5jLu0lkL8EuI5usp1/bd8iII49Fp6wG37d9Bxc0LmTSKOS7CZN648cZhqo0WCZF7IuH4HQRMXFRMHBHE8r2/YSzhvrp4GTo2pi1RDKSuZsqVHjhqPVq3aPzEbaTeelJjAZiqJTAIQFhbM/TYUYmFhiffeX1icgyBn0w6ZeFQRihKiEhsU0UVCO2haDLOzVGtS1LlLTwwdSv6JyomDFuDVq77lUu9PCi3qb771Idy4+dSzkaAy992qdXsOXVZoCUQOvg/vISY6ikvUU+5LxhNtaikZkr+bGelcS6tP38H8+99/78D5c6dKiEOjsAhDNvlAK+PlmasEcZQljgp8HIpcBjU9bc6ZcFz1HnQ8pKxarr+flo6IL35G3I9/MUGUJ46PkLT9hPSSP0EcYR+sROyKrU+9g5Qs6LT2E1iMH8KfyUnNpm2IDFDT1KqaOLZ9Bx13J2TeeoiUQxdVJw5hqlJmTXilx5BzNtVOH0dHeEJevCunKrZz33wftrb2Vc6dCvHRLp1MUX6PH3KoLZU9b9S4GSZOnFW8cMnxzdefqtSEqW27jlzL6elVHFxa/MCBvUpjSuVLWrVqVwVxUGRVIVatXFIpcSz+emWxGYmSGMOwYvlipa+v7EBKOJw1az702Vwlx6VLZzmTnKLA+HtNjZpkMphbWMKzrheXmKdyLFTKnfxPbu51MXv2u2z2evToPn7/bXU5LavrsUDYPqZ+5JUTqLJzfZZxgjiqII6Y5dukBEC14uQ+sl9qacD2k8mwmj0WmuamvKhn3PRB0MQFyH0cgXrn1sKwY3M+a/CML5CwkZrB0KovQ33vLaxxUAgtEUfcqu0VfJfk0LAwgsWk/tBr2gD58QnIvvMYdb56C9qOtsiLi0XYOz/AfdsyPjZ6zUZEvP0T5364baFIKwdk3iTiOF/GVHUIQeM+h1pZjYNNVU9oHII4nuU79EodQ8rt43Y2uN2KkvwkIY2Bmg1RIp+yoqgYS7ticmKbm1PGtQwJCbH45usFKuVcjBs3BU2bteYkQoW5hc5PCzwlGy76XHlHMpUsoSS7qholUXgv+QXKJtMp7puu//U3q7gnOAlpWTS2toUaZI0fP40bXdG9ShFrv3J+hq1tHVDtLE/PBrCwsoaajBo/0QxkCAsL4pBoKso4Y8Zb3DCLyPyzBW9zhV2FePnEocnp8JfWo0MQR1nieMLHEbNsG7QcbdjHQJIXGYuUfRch09GE5exhsF80FxSumxsRjZDXFyPtqDfcD/wAk/7d+AsS9uEyxCzfzg9XzUQX9c6uh34jTxTl5iDsveWI/3WfUu+rfqsGcNv9PbQdbZD18CEiPv0VHntXMWnF/r4V4XNXwaBjY7j8uRg65Bz3vlfqHDczQfKBk/Af9iE0bY3RLOIMXzPt/HUET/sSecFSDwXh41DqUfwHBslxdlRdRNtKJlUSysl47bVptbI7vXrlPPeKUCXLu0GDxlynqXHTFpxTQZKdncUaTXRUJM6fV97sReQz6/X5cHevV+GzIDPV5s2/4f69O099TgmNtFhTORXK5n6exEFBBZSpTgEBivulXBhqZGVkROa6ijWFvPw8rFy+mKvsUoCCo5MLEw9Fn5XN57CKzUDXff5Qzy+Tav4C305BHFUSx3YY92mPugdW88PLvHkPvm2m8iPXbeoOj32roO1kh7yoWIS88TVSD16G/fI3YTNfsm3Gb9qH4OlfQyYHdBo683hyXhckJiPkrSVI3nXqqUetYWXEOR/0YuU8CkHWdT/ot2kA9z0/QMvOGskHTyFmxU54HFgJdX19JP1zDIEjP4Vx7zZwXrsIWnWskX7mGmJ/3wWnVR9Dy9YKqaeuwG/APGi72aLxA6kdZtKBUwib8x3yo6W+A4I4XuC37jleqkBXDX9Pa4QCdfWSq4wdOxmt21Bia03NGnKOQKJIJFXPRRFalEfSqJHk/yOH/K6dm9jRrprIYVfHEbNmzXuqhDmZhKgx0m+/rihxuEuakwy2tnbo1LknX1/hS6DrUr0tcqTXttA1qQIu9WSnREVVhPJOKDufAgkUkWFk5qKmVwoxSM1B1yPBMIzLVuXUtTZWEEdZ4njCx0GmKt2Gzmh4cw8TB5ULedhlCrLvBMB88gA4/vA+NEyMkO0XjJAZXyDjkg8MezeH5+E/+GUtSE6Gb5epyPWPgs07Y2G3YDZnZ2c/DETQlIXIuvH4qQep28IV9U5tZC0l9cQFBIxeANOhnTiZT01bB2EffIe0U7fgtv1b6Hi6Ii8yCve9RsBi6iA4fDMfavp6iN+wB3E/74b7rh+gU9cFmXceIWDMBzBo1wBufy7la8b8tA2Rn/yMoizJCcrEIUxVtfbFelknSnAxxPGB7uU0gk8+XcwJcapoCRXNPy83B6tXL0FUFBVFVI2EKM9i+PCxaNO2M5+aTESUeR4dXXGP8srwk4hADZ07d8egwaPY9KMQKmW+efNa3L93u8QfQ4svJeMRcVI+SXlznZw7EVKhxuchjRo1xYiR4ysgOFWvJsetW9ewdcu6kgO1swvQ5lwY6viRn+PFiyCOKoiDEgBlOtqoe/InGLRsIkVIFBaiIDkR6kYmXK9KXliE5H3HEPL6tyhKy4ZMVwt1j66GYbsWVPeAs83zU5OhaWIGmboGivLyWRMJm7cMyHu6boCagQ4a+f0NLWsrJqvsRwGcv6Gub4C86Dj4NBkJmVwNDj/Mg8WkoZCpqyM3Kpq1D0reK8zMQsDY95B2/AZcN38Bs9H9uSBjXmws1A0NoW5ggPz4RPaTJO8sNREI4njxX77nccWH7W1wu6VdsW4hZyfwV4tX1sqlaLFfv/7nZy4K2LffEPTs2Y8TC2lXvXnTH1wx91mEqupSf48GDZrw4WSiOnXyEE6ePMK+ANIqKAS5S+ee0Cn2Z5S9DpGMn98j7Nu7g6OcnofY2dljwsQZsLGpU+PTk2a05sfvSvJu1AqL0PhGNLyuxQDFBVZrfBEVTiCIowxYrtsXwbB9K46CiPp+A+J//4cjpQy7t4DtR1Oh19iDS3pQG8rCrGzkxyYi8/oDRC9Zh5wHxaF/MkC/lRdsPpoC/ZYNoGlpCpmGJoqys5EfHc+Jd5FfreU6VSXVacs+MDUZLKYPgvXs0dB0suHiiPKcXOT4hSFm5WYuN0Ki39oLdp9Mg36bxlA30IU8vwB5kXFI+us4opdsgrygEDpejnBY+jb0mnpC3cSACYRMUzQmdsV2FKaWtqI0GdwRdb58gxMGs3z8ETz9SxTEPtuXWoX3TwytZQQuDHdDeB2jkh23V/1GmDlzPl+FMsYDA/14162vrw99PQPo0YZDSVPK7Vve2Lt3Bzu0n0Vat27PfbXJMU2RQhs3/sYFFJ9FaBPXv/9QdOvetzipUI6rVy/i3wN72Jk/YOAwdOrUgx3yT5rVKIeCopco0ik5JUlpB7OOri4HtpQNVa5q7tzbffqbxaG/z3KXpcdQuPSGDT9zOC+LXA73h4lodj4cGnkv3s8hiKPk2cih28yDF06S3MAI5IXFSjkY6jJoOdlAt54z1E2MWJOgwoFEHNk+gShKfSIWXQZo2JpB18sFmhZmXAiRiCMvKgHZ9/xQmJlb5ctKzneduo58Ta6wm5uLnIAI5AVGQl6cL0JbSi17S+jUd4GaoR7keQXIj4xH1h1/1oIUhgR1K2PoN3Jn4pAXynnOVFpdnlX+C6thbQodDwcmqqL0LGTe8wdyX16ceM2+Zv8/j87XU8ex0Z5IM9QuyR/o03cQ+vaVQrvJr7Bxwy+8sNKOnMJ06YeqxZqamoF6VVA0j7W1bYURWNSpj/pxl43uUQVpExNTNG3WCu3bdUZoWHCNM7bbt+8CSuYjfwAJdfQjTYYSGRs3bs73VlYoOomaTl29ep6jnKjXSHViaGQE+zpOcHJyAfXboMxuqh6sjKmOrHljx1H48JP5M9Vd9enP6d527drEXQUVYheehlanQqH3EroCCuJQ/RmKIwQCryQCyXZ6ONffDdl6kjOWTJ3Tp89Fw2KHNJUYoVIjGelpxXkE0m2Q6UjquaHOrVTJLzBy5PjiIofSGNJW9u7dBu+rl1S+dwo9pbyGtPQ0PHr0AGoyGZPT48e+Kp+r9AA56nk1Ajn+KQKprCgc4mXHpqSk4PChfbzoU0TXk+N1dXW4yRRFPZmZW+DSxTNc/+q18dO5KyIlUZL2snvXZs52V1a6de+NgQNHMtFQKXvqYaKhrgFnFzfOzOd6W+V0okqirfJyuTfHxQtSVCSJSWoO2h0Nhknsi3eQC+JQ9g0Q4wQCrzgCYV6muN7FEXlaksOYSo1/8P7nsLK25d8psS8qMhyRURGIiYlkx3RaagprEPRDyWmU0U0lSahQHy2aVN6bhHwRVKn14UMflVCgBXPpdz+xOYx24HSev3ZvYf8CkdGzCC3gFE7bo0dfdOzUvVpTG93P0aP7WVuqKBqMclQ+XfBtsZZGMyrCF4s+4KnNmDmPSU8hqhKHl1cjTJ/xJpvTCN+1f/yIx36+bMkgxz4lADo5unKhSXsHRxgZmTJhKYhK0deDyPDsmWM4eHBfSVkY7s9xKAjWYRnPAmONjhHEUSP4xMECgVcHAd92NvBpYYvC4oRVKvHxxpz3uOVrZZKTncV2/qSkRCQnJTCZ3Lzpzbtryncgkw8JVbDdsWMj11VSVd7/YCFnRStaiRE5kdnryuXzKvlLiCxop+7i7MqtbD08vJ4yR1U0N/IPrPlxKdLTK26ARBoW9cBQCC3SX35BSYkyTJ/xVo2Ig0jpk0+/KSnueOb0UY7kom6LRKJlzX5EsuT0p/7kRPZWVtZcI8za2obncvPGVezbt6OcxtTuVAicfZNeeEtqQRyqfgvEeIHAK4iAXF2GGz0cEFjPgk0fJKQ1jJ8wk6vcKitSyfTNuHHDG0OHjZE6A8pkCAr0w9at61SqZKu4JhFQ27bUrqDUDEPmonPnTuDc2RPVOptpISdHM2kXHTt0K25dq+wdobhZE5nYKjYDPU/iIK3iq8XLoKsr1aEi/xKVeI+Pj8GpU0e4NljTpi04Koxa9dJPRmY6EwHh3qfPIPTqPZCJhzoC7tq9GclJUu4VSaPbMWhwKRoy6j76AkUQxwsEW1xKIPC8EMjT08DVHo6IdCm197dp04GjmBTOY+WuLcfly+e53wZVs6XIJFq0Hjy4i01//vZMjvF69epj5qy3n3Iok7P60MF9uHDhdJVTI+Igk8/EiTOg+4TDW5l7+nzhO6xtVObQfp7EQfN7a96HXGW4LHFJNbr24OqVC3xf5K8h8iBMrlw5x0UkicRbtmrHxRKJgKKjI7B163pER1FFa0mcA5PQ5mgo1Kg00gsUQRwvEGxxKYHA80Igw1wHV3s6It66tGVpnz4D0aNnf/YB5GRncwVcCiml8ui0EJE5SnKKK2pYybh+FHXLu33rGmd6U0QQlfb2vnqR//4sQteikidUyI8c8JK/g9rZynmxpBa21Ptc0fb1yWuQiWrqtDfYbKOq5ORk49NP5lV5WMNGTTFt2pyShb0qU1VkZChrA4lJCdi44VeloquoMnG7dl3KjS0qKsCxYwdx/NhBUH5Lu7Yd4ef/CKdPH+VWvRSwQP6lzp17oFNnibzT01O5Q2NwcEDJ/VgkZaH7Tj+oF7zYXrKCOFR9E8V4gcAriECSrT6u9HJEmokUmkoNj4YPf41rJdFOW+oRvoH7QNCCRGG3pqbmMDUz41BcCs/V0dFjcqGkOAqdpY6BtFMuLMznRe7kicPPdOe0EJO5jCq+mhibgnpquLp58nXJYU55Efv2bsedOze5T0dZoWZG1CO8V68BkBX3TldlEtRbfeWKbyo9xNDQEHPmvg9r69KikFURB59ILofvw/tYp2Qfjw4du2LEiNeeasNLEVIHDuyGlZUU/kxJfiTUrZFa47Zs2Y59OQoHOTnXN2z4hXuIKEQnrwCD1vtAI18QhyrvRYVjc0MjEDzzS6SfulXjc4kTCAT+CwjEuBjhSi8n5OhIobjUiGn0mMmgbnckfn4PsW3rOs51eFJo8aakPCKOzMx07tHRpk1HNlXRbp861O35axv3vq6JUOipZ70GSIiPZSLp3WcQ6tSRuhSmpSbj5KkjuH7tcknHPtKEyK/Rr9+QYi1FtTInpBp4e1/Erp1P972RyFUNlOfSq9fAcrdVLXEA8PW9pzRxuLl7Yu7c98oRR2xsFBPx7dvXSzQtC0srtGzRFvXrN4atXZ3icirl75lyOSiXpLTyrxxDtj2AXuKzJVI+6/MUGsezIieOEwi8IghQD44IT1Nc7uWMouJdOWsMY6eA+muT0E6eOs8lxMcVh+JSOG4kN1MiWzotsorFyNXNnftvKKKxcnOzsXHjr9yjoyZCYa3jx0+HlrYO9u7Zyib/UaMmluRhkOOYnOUUOks78A4duqJ3n4HQ01OY3+QoouRWNSpDrgyJyLF373Zcunj2qWlLvcG9MGbMJJgVdyVUDFKGOB4+vM+htcoI1cha9MX3TBx07vPnT+DM6ePIzMxgnxERZNduvZisTUzMy5gOnz77saP7cfz4oZKQXBrR/aA/rILSa1zCUpl7UYwRxKEKWmKsQOAVRKBIDQhqaoFrHRxKFlRKsKOmR2UbKCl6bNAtSI2EqApNERIT4hETE4UkNmOZcAiuZB6RFmeKgPppzfdMNDURO7s6mDptLpur9uzZCm/vSxg0aDiXDVFci+Z448YV7rXds2d/1ngUJJGRkYYjh//BsOHjqs3doHlSnghVyqXIpSeFkgaHjxhbHG5cnoRoDl8sknqEzJhJ4bjOTx2vCnHQ+X5Y9ivPmf6/e9efuHbtCpd9qV+/Efr0HcIkrejJURXG5Dgns15hYalpqrV3BNy8Y1WuWFyTZymIoyboiWMFAq8AAoUaMvi2tYVPc4r3l8TR0RnjXpvGGdo1Fcp4XrpkIbc6rYlYWdtg5sx57GPZsX0jbt/2Zm3ijTnvst+jqlLttDs/cULK/SBnMoX36uqWLyny5NxIm9q44WfExsaUfEQLN5EiFVvs2WsgJ9s9KTSGiLKgsADUhKqiIoWqmKrofAsXLmHNhv5/zfsSQkIC0KJlW+5TomytMJonRbdRQ6iyfdq9HsSh6alwQRw1eTnpWOHjqCmC4vj/EgIFWmq4080B/p7mJdN2d/fkzG8yWdVUKFntqy8/rDTqSdnzUy2s12e/zU7xrVvW4t6923you3td1kQoV6Mi8uDKt6cOc4gqaT/kvyEzE0V8URFHikCqSB49vI+dOzcjLa20WCct3E2aNMeo0ZPK9eV48nhyVJMZqY6dAzS1tJ46vSrEQQfPm/8RnJ2lltNEgorsd2WxU4yjIIeff/qhXFi0Q0QqOuwLULpYo6rXrGi80DhqA0VxDoHAS0SASox493VChHNpDkf9Bo0wfvyMkhapNZledHQ4fvj+yxrvaMkMNvuNd7kNLeWEUN0oEtIA+vYdzKHDFfkuTlBxxZOHS0qK0zEKAhgxckKlCY5UAZcyrctW86W2rRRFVbaZ07Ngo6qpavqMuWjYUGpiVROhEvCk/ZXNODdLzULvTY+Ej6MmwNKxQuOoKYLi+P8SArm66rg4zB1xFqWmmyZNWmDChBlcr6qm8uiRD37/bXWxDf7Zz0aL9dw3P+Aiihs3/oJHZepekWZEyYoNGzaFuroa50qQdkF5DadOHa3wohSZNXPWvHLFGMsOJL8NmXXIZEVCOSTUzpXyScj5ToRFNaGerKJb2R1STkhIcCAio8IQGOAPwkU5kXOEW/NwNsQAACAASURBVNu2nZQbXsUomsOiz98rR6I68iIMW0PamzIBAzWegkT2+jqwXzwX1vMpzPj5i6yw8PmnOArieP4PUlzh1UEgV08Dp0fWRYqJ1EebpFWrduzjqA25eeMKtm1bX+OFiUxRb837mIlj3dof4e//qNz0LCysOIqKSI9KwFOrVEpElKK+nhbSOkaMGIeOnXpU+DklM5JJjPJDJFFkV8vY6U7zqWPvgMmTZyvlZ/D388XOnZs4F0aVRZrmOWjwSHTnIICaCQUzfLbgbRCBKIToYvRvt6H2AvtyCOKo2XMURwsEXjoC2foaOD7BC1nakqOXdtIUyjps+FglFzg5mz5oF16RqejC+ZPYt2+nkiGwlcNBGeTUwpUaSN265c2FFZ8U0iLIP5OQGM+VfMs6gZ8cSwsytWelZkkVixzXr1/Gju1/Vko8hNWkSbPQpGmLarG6fPksDuzfw2VBVBM5m+EGDBhe7jAiNiJIwpwKGyrIiKLByLxGuTWkEZUViob79puPkZhYih3hMHz7A+i8wFwOQRyqvQFitEDglUMg20ATh6c1QB4ohFYq1921W+8yCxXlaMgRERHGu3xyzJJJiDLHHz9+gKNH9oNCXSmDuWevAZwtXpZAjh87gKNHD1S7sCoDjKJHOO2caU41ETq+U6duGD5ifKXEQQmPiz5/n69VWe4HaTofffQF1KvohEhaz6FD+3D+XGm7ZWXnzvPs3J0z+RVCtapOnzrGxNasWSsMHjKKP7p79yYOH/4Hebm53Kuje4++aNKkJVcCUOSBrFzxNT9LhdD5B+56BKO4F9eXQxCHsk9fjBMIvKIIZBpq4d+pDSAvtnETMVCJDqqqSkI723t3b2HPnm0c0UNCyXjNm7dmH0JGRnpJ8p+2tjbmv/0JbG3tS+52//7dnJj3KglpCvUbNMaIEeM596RykWMFLbThpQvtk2OrIpXyu/3KyacqbOj81Da3rOnw3LmTOLB/N5MZmRXJB0KNtijLnRzgdH90HBEtOdY9PRuWEB9FVVEL4FKRo9c+P1hEPFtL32d5roI4ngU1cYxA4BVCIM1WBwdHepUsLJQX0Lff4BKbem5ONnbs+JN3sxaWlmwqSkxM4Gxy2vlTEyHabVOvDSrp3a5dZ4wePankDqmB05WrF1+g67V6cIn4qAhjRcl5Tx598OAenDp5tMamtupnVfEIIoBmzVpi0uTZ7GfJzy/Ad0ulvBgqqd62bWf2tZBWd4Y6BGqoc4vdpMRErjFGUWjvvf95sdlKjrVr15SrV0Xn7348CDaPU591iiofJ4hDZcjEAQKBVwuBJBcDHBvkUWJKoqS2/gOGoUuXXjxRSuD79ZcVHKVEWdfknL5y5TybXRo0aILhIygTWwNnzhzj1qQ2tnZ4773PS26SalxRc6fqhGzyZHahf2tLKHIpMpKS20qFqvtSKfL6DZoUV9mt+mp3797gqrIUudWgYRPo6tTe/KgpE2W5V6dxNGzYhJtCEXFERUVg2Q9fcS7KqNET+XlQrgl1F6QQ5UaNmmHS5Fl835QoSef/4MNFxc2wgE2bfuNqwgphU9iZUDj4JNUW7NWeRxBHtRCJAQKBVxuBOHdjnOznWrKjfpI4yH+xcuW3sLay4aRAsp3fuX2NezsMGDgc3br14Rskh/XePdv4c+pap5CtW/7ArVvXqwWBFkAq0UE75NoSqjVFJd3LLpJ9+w1Cr54DuT+6MhIZGcYLtYuLK8aOnco9xWtDyEWzY/sG3Llzo1ri8PJqiFmvv83E4fvgLtat+xlUNZfCg8kBTk5yCh0mUlHkfFDtrvXrfmK/1KzX58HLqzFfZ8vmP7g4YllMOpwNg9P9p4MNauM+KzqHII7nhaw4r0CgCgTkMkBWM99wydljPExwup9LSeYwZToPGTIK7dt35THkw1i18htQ8tvYcVM5+e3evVscqkpOWeryR3Lv7k3uuaGnr49PyxAH5Vzcv0eVpqvOE7CwsMTrs9/hHXRtCfUnJ+1IIVRKhUJ6FU52Za5D1Xi/+WYBXFzdOSmyNomNMLx161q106Ay6QrioErFv/26Em3bdcLQoaOhqanNJUh+/20VR5F9+dUyLsWSkZ7G+S5Ua4uSFj086lVIHPTHVqfD4O6TUO08amuAII4ySOp4OkDL3rpCbOUFBShITEVOYATk2aVx5TJ1Neg2cYe6qRF/rfJjEpD9IKTkHGp6mjBo16Tk98ybj1CYkgF1EwPoNnCFms7T5QzkRUUoSEhGjn8E5Dml19L2qANtx6prD+X4hSIvPL7cPagZ6EK3oSvU9aVeDSR5EXHIDYiAvEyxNPq7jqc9tOylmkeF6VnIvO5brp+xUfeWJetHTnAk8oKeVtPV9LSl6xlKCWn58UnIvhdUbk4aFkbQqecMNW0tyPMLkOMXxnPRbegGWXHP7IoeREFKOrJuPoa6kR506ruUuyfFeHmRHAVJqcj1D0dRVmnopJazDbRd6vD5CzOzke0bDA1TI+i4lzqCq/pi5QZHITckGiiSQ91YX7q+XmnuRG54DHIDosgb/fRp1GTQsreEjpcLNC3NIKPnXlDI88x+GITcQDru2Zgkuq4JzvRxqULjSOeeFFQrivpCUMLb/fu3ucsfZWy3at2B50tlNP49sAf6BgbliGPtH6vxsEyyXmUYPW/iIBPYa+OnoUED2nkrn+wWGhqIVSuXwsXVjZMiqfRJbcnWrWtx62b1xOHp2YDLrZCQWerrxZ/A1s6enwfN58iRf3D50jnY2ztg/tufIjs7G2Rio9LrWdlZ+OyzJdyPnORJjYP+JoijFp7osyQAUmnqOl/NhOWkoRXOoIiIIykVWXceIXb5FuQ8lto3qulqw/nPBTBo05xf5eR/TyP0reW8+6NlQMvRBPXPby05p/+oD5F5/QEM2tSH46oPoWX79O6MiCM/IRmpJy4j+ou1kOcXUdFr2H06GVazRleJUMRXvyBxQ/mGO3otPOGybiE0TEujT1KOnEfkwt9RkFDeoWb31RRYTBrJ95LtGwS/AfPKEUfjoAMlDXWi12xG3Ird5T6nyWnamMH++zdh1Lk1zzX9+j0Ej/8M8rzSBdV4SEfYfzUHGsZGyIuNR/iHq5hEnX9aAJlm5dnOGdcfIGDUh9Br5AqHFe9B1+PpyqVk86VnlXbGG1FfrkVReg7Pw3LOMNi+M5nPnx0UivB3lsOgbVPYfVJ9ohw9y9gfdyBuzS4mOsNuzeHw3TxoWkmLEH2ecvgsIj78GUUZT4RFqstg1LMVrOeNg14TT2hYmEJNUwvywkIUpKYh2ycAsWt2IGX/eeAZ8mOjPExwtm9Z4tDCoEEjuJcFCWkcFMJJIaV17B2hoa6O5ORkREWFc/6AqZk53wB1mCN7Ov1eVuOgZD3fMs2DXhZxUK7FyJHjoa9vqNIqcfHCKezdu4M1jleBOGjyv/6yDIGB/ly9WFdPD4EBj7kPSbfuUhg1maIo6orCiVu37oAxY6eUbAwEcaj0+JUf/CzEQSul44/vwnqOFBNeNkSv7P+LqKn8PycROvtbFCZlQE1PBx4Hl8OoS1s+LnH3IQS99nnJYqrlao4m/sdLJv+wywxkXLoNw85N4br5G97dP3ktGkxhekW5uYj4/EfELNvJC7n993Nh+560yFUWQhj67lLErt5dWvBMBphPHQCX378o10Et0+cRgsYtQLZvSLm9m8OaebCZM5mvkXX3MR60GC/V4C6WlnnXQVoWSeQ3PyPqi41P7ZRZjV0yF9Zzpbj1LN9A+A+ZX6qdqMtg8+FE2H/1JmRq6sjyDYD/wDeh17we3Lf/AJmWVH66orj79Au38ajrdOi1qAfXP7+Cbn33yvHLy0PUd2sR9cUGnoftJ5Ng//kcPn/240AET/4chl1bw2Hp/JL7U+QW0LXL/p/vd/EfiP52A+SFBbCaMxyOyz+CrIydPTsoBA/bTUNhAhXVK90RazpawfPoGujWdWOCofLZZVMYaGQGkeusxci5H6z8i148MqauCU6X0zi0MGjwcHTsKGVUk8lj5cpvkJysjPNUDgtL63LEsWXz77h9u2o7Pl3neWgcZDq7euU89PT0MHTYWLRo0Val6ChKplv2w2JQ4yQXFzeMn0CmKuVNadWF6qpuqpIe2uPHPti6ZT2TukIsLa0xYcJ0ODq5Fjeg2gRyqhNplK2tVZGPo92ZMLj4CB+Hyl+esgfUBnHkhkUgYeNBFKZmQNPeAmYjekHb0Y6/+HlhUQiZtRhpJ6/XCnEU5eUhef9pZF7xgZaTBSymjoCGkSEvXPkJCbjrOADIL4T9d6XEkRsRjcTNB5/SGNLO30D2bYrxLl641NTgsnEBzMcPgYybMNBHakxKfkPmI+3E9SeIYz5s5kihmNUTxy/SolyBicVqzgg4/PAu1HR0kBsZi5AZi5B2XHLoqZsZwnHlu7CYMJh/Tz54Cv5DP4Tp0M5w3/49L+yFOdlI2HiAzU1lJS8yDkl7TkK/DHGQNph28grSjntDw84EVjNGQcPEmPErykjHbeueKMotrJA4NKwsYf5aaSkIg47NoFXHihenvOhYZFy6B3lBoTTPv08j5Z+zXKfHYeU7sJw8jP9OmgMRCF3vYaeJyLjiW65SqeUbQ+C0ZqG0GSgoQPhHPyD5n9Owen0UbOZNhpqONoqysxE04wsk71Q9wSzRzQDH+ntUaqqiLOStW9chLVWZcE05TE1NMX1GaZ9uZZ3jBgYG6Ny5J5u6aksomiso0B9Ozq6YOHGmSmYm2sFTVd0TxY2PiNjatO2odIFDyqXQ0NCqkqhImwkJKW+GrejeqT7WrFmlGxTKrQmgHuNnjiM+LgY2Nrbo3qMfXF3r8vUSE+ORkpLEGsmT2eMVEUfHs2FwFM7xmr12z04c78F6jrRLzrxxFwEjPmZfANRksJg2EA7fv8umlcK0NIS8uRRJ2449A3FMR8alOzDo1ARum7+FloMNinKyEfbecsT/9jegriZpFm9PkRalvHzcbzgUuUExbP6xfXeqNL87DxA49lPk+ksms8pEpq2Bhg/3QNvRHnmR0SBfjbaT1PAn4utfELVoXblFzmGNisTx5YYKzStGvVrBee0iaDvYoiAjExGfrEb8L3t5mtqudnDd+S0MWjTi3xVakumwLqXEkZGGgOEfIO1UxTtdMr+VaBz5eYhashZRX26QTHoLp8L+Cwp9lOR+gyHIfhQB248nwn7R3HIaR+b18vWS3Pctg+mQbnxcyvHzCBy9AEXpWeXg1XKwgsfh1dD18kBRZgZygiKg39iLx0R99wciP/293Hin3z+E5fTRjHlOeBjuuwxjjVSnvgM8T66HlrVUDj1k/jeI//Vvlc1VKU56ODzYszxx9B+KLl171+yLVHz0jh0bcM37sko7/Vq5cPFJCLfOXXpyBJJynf+odHk6rly5wCHG2Vnln19tzk2Zcykq+U6ZOqfC4aQVqdKTQwpWkErSk9A73/VkCOx8k5WZTq2MEc5xBYxsqqqEOAAYdGoE123fQbuONdulQ99agqRtx2udOORqMli9PgTOPy3kmRXl5sGn6SgmiGchDr22nqh/gdp0ypB84CTyYxNgNXMsfwHTznvjcbc3yplVaos4tJyt4b77B+g1r892mdgftyLik59QlFcA/db14Xn0F6gbSbZqn+YjkX0vGLVDHIDZyC5w37VC+lLJ5fBpMpIDFmqDOOhLatipMTyP/wGZpibSL1xFxjVfNiESplkPHsKn8fhyZOy0/hNYTh7BnxekpuJB8zHIC4mDmoE2zCf2BwUvkKSfuYGsWwEqO8kzzLRwYHyDMgmAGujTZxDXR6oN2bt3W4XtV2vj3Mqcg2povT57Ptzdpaii6oR26lRG5f79O5y7Ura0SSnxsNGwwlOVN0+VjqvObFXZvOi4Fi3aYMLEmdVNXanPKSLLz8+3lDjkcvQ8EgCrgFKzl1InqsEgQRzliKPUx5Fx/S4CRxZrHDLAYjppHO9Dw9gQOUFhCJn1FdLP3H4G4njax8Eax7vLEP/7P4CGGuy/ng3bD6ZLppb0DNx27A15Rl45U1XWnQcIqEbjoEXOYflbsH17qlSraOFqZPsGwGPvGl5kCnNycNeuBwpTJecxicrEUYmpijQnt7++hengHpykRX6hkDlLkB+bAovpks+Fvri54ZHwcR/KEVUmtaRx2Hw0AY7fvsv3LM/Pwy3rbihKy4HtJ5Of8HEsQub18n20n9I4xixAUVrZHasctl9Mh/3CuXz+yMU/c7BD3QO/MKbk/yANJ9e/tOuc1fyRcFz+sfS5XI70yzcROvtrZPuGQ6Yh9c+mZ8WO8WeIrMoy0MTBaQ1RWLwQUqhqjx79uFNebci//+7F6VNHlN7t18Y1y57D0MiYO+gpsyunsNbt2zYiKSkeRcVYurq6c88OCnWV+ljI+f8xMdHsfC4rhB2NoWdCrV3J3EVBBQrCKUtCyt4nHdO+fWduHlVzkePHH5ciJLjUPEbn77f7MUxjX5xmJYijEuLIjYhE4g7ycaRD09YaZkN7QauODQozMpC47SDC3l8NeVZerRAH2fOjv1mLxO3HoOVqDbet30HL2hJF+fmI/XU7It75kTdHZX0c+UlJSL94HYXpxfVpaN1JT0X4mz+VvpsaMjR6vA86zo5sovIb8hYyrtxFs6gzbFenFy5o8kdI2naq9okDgM3HE1Dny3lQ01BH5m1fBE36DDm+oXDesACWk4fz9WN/3Ybwt1by9U2Glfo4ivLzWCPKjykfWhz99Ubk+EVBv4ypisbG/boTsat3QbOOGdx2fg9tO1sU5RcgYfM+hM76js9v85RzXAnieMJURfkX9a+sh0GrppDLi/Co90zkBceivvcmaJqb8z2FzluM+F/2l2AqOcd/go6HS0mAQm5kDGKWb0TS7tPIj03mEF6KxHsWoSKHRyfXR06xo55s81269MSgwVLhvJrKqZOHcfDgvpdGHFTnacy4KVXgQ2U88tl8Q3W1qGNhWZPWws+XwNS0fAguaSW7dm3C40fSzp0wo/a1zZq3wv5//mI/z5Aho5Gbl4e9e7ZyJFfz5q3g8+AeYmOiVcKC3gkqOknnq7nI8d3SReWy1en8Q3Y9hH5c6Qaw5tep+gyCOMoRR6mpqqJIJ9q9Jh86jfB3VyEvLJ5fZNWjqp72cfAupiCfd6syLSkvID82HskHziDi4zW8W2biKOPjkOZHI6XFhh3p8bG4azug5InrNnZGg1t7+CUnv4//sPeQdS+gdOGDHMn/nkTg0I+fnTgq8XHQCQ26NIbn0T+gpqWJgqRk+I94DxkX76Kh71/Q9XCVFt6+s5BxUrLXliWOJ+9PMUHfrpORceF+Oee4hF8B5IX5kGlps1muICEJKYfOI+KTNSiIk3aVNrXg49B0NEdjv4McTpufmAifJmOBwiK47fwWRl3a8HNIOXQaAcM+KtEeSKswHtAedb6aA936HkwePGe5HBlX/6+9q4CO6uq6O+5CnCQkIQmE4O5WijsUp1ihQKEt9ZbCV0PaQqFQgUILFHd3d7fgFveEuNvM/Oucl0kmyYTJJEHKf+9aXW0z79133543d79j+9xEzOINSD58qSBtWNsffZapPo4N90GqmRGfSt93q1btMGjwKG2nUnv8pYunsWVLYUp5WSclGRMbG1skJSXym7tykJCiq6s71yWQpZWcnISoyIgiPSZUr/H2qAksyFiaa4kCzadOHsGpU0cLLAhtiIOObdiwKbv2qMZi+bJFaNe+MxdR0mebN63m6u1hw8ZA38CApdVJQ6qsg75r0g7r1k1KBqnYULDar6qlRPMP/vcODFLJmnoxQxCHEudiMQ55TjZvdpDLoGNkBH3rKpw9kx0aiYSNBxC9aBPkSemVQhzFv2raUOlNO2HbEUR8+xfk5EoqRhwyCso+DoI8S/mDVCAvMRH+fQpJwOGToXCb9zk//MknLiJ4wg/IDo2F++KP4Tj1bf7RylLScLt6T8iSJDNXa1fVM4hD18oE9QP2wqBKFVBtSuCEbzgVud693dDV10dObCzu+A6EPEmqeyhiceTlIftxIPKSi/ptQ6b+iIxbQUUsjhI/Fc5Gi0firuOMX15M5RGH/eS+cP/jGylGdPoK/Ad8xplSlH7sNHUkE0J2cDinDOeGF6ZH6hjqw7RZLThMHgSbwd2YeJQj52k8ouetwtOl2yHPLNxgy7oFZJvo4/RbNRBvU1jg2bhxC4x8e7xWb8alXY+qxleulFxxmgbdP72t16jhy/LsTlVdQI2gzp8/xRs/pZVSUyNPzxqwsqLMNyqIS8a9u344ceJwCdcRXe9/3/zEfcpLIw5yO+3YsQEXLxRWmKuuU5PFQff19YzZsLV1AGlPkcwH1cFQlhONM2eOMTENHToaNX3q4OnTaKxd8w+oL3lZMRk4cDjatVffcEoTpqqfUyCdGjmpErG+Qo5Bf/pBR03dqTZza3OsII4ixFEY40i/dQ/B785BblQ8KDPJftJbcJw6HHqmJsiJjkXwlLlI3n22HMShJsaRk434tXuResEP5m3qw25Uf95YKE336ertCJn8C1sXqq6qjLsPETxhNqiauWBQxXlC/karC3jv/AXWvTrywx27fAvCvlgMWWombEd2gdcayX1D41HPSUg5LGUvaU0cpcU48rM9auz9BVV6SoVo0YtXIysgFO6LZ/KaEvceR8CQ6VDkSOmuqsQhS0tF0LhvkXrGr8jzTFX3lB6rmlUlz8tF0q7jSNp/FqbNa8Nh/CDoGhqxqy9h2wEEvv0D22UVd1UpUOPQr7Dq3J7XH/PHOoR/9QdkWXlwmNgP7r99BR19sq6SEPjO/5C890LR36IOoGthyokWrnM+hGldH0aJYkDZwWEImvA9x820HTnGurjY2xORzpYFp5JQHhGHIVlgFRxBQf74bfFPGjdJavlKcZWmTVvB2NgEJEZI9xYVFY55P3/H+z4V8LVu3aGEOGF2VhZ27tyEK1fOF1ktpfb+8MNCjdeOCA8FZX9FRkaUuFvNxKGLuT/+BrKEqD8JBZ979xmIN9+UkguIOEgQcvjwcfDypu8M2Lp1LVd6l5U4SJSxcROp1qsiIzUlGbNmTQcRiHJY5Oai91Lq366Z2CtybdVzBXEo0ShWAKgaHKc3c+OaLqi5fwmMPatJgeZvfkfMvLXQMTR8ZgGggactGhYpAJRcVaoFgLLMDIR9ugCxy3ZyPUC1BdPg9MHbUnA8MxN+Tp0gz8jVKjhuWMMZNbYv5AI5dYE91Qc+cv4/iPhq6XMhDvtJfVF9yXdSUPjMZa4fserSnh/x0K9/RcyCDQXpp0WJo+zpuGQdRv70DyK/p/amgPN3E+D6vylScFwhx02btpCn5pSPOFSC4/pO1qhzcysM7KsUBLqL/xA50E2Fh/NWIPK7fzjtVt/eigsdacjSMyBLy4ShmwPcFn4M6z6dOQZEI+zrRYhZuAGKXIlIyzpyDfVwrbMbgr2rFJzi41ObicPcvJBMyjpf8ePi42MxZ/aMMpyugJGRCV+XGkUpB2U2fT39Qw5QT536GRydSDan5CZ38eJpljzJypJ89fT9kWz6J5/O1HhtsjqOHNmLE8cPlegaqIk4aC1zf1wEY2NTrp/4ce5Mdo2RkjDJnBBxXLl8HmPGToK9vSTHs3HjqvwUZY1L4/uYMuUT1KhZW/PBGo6IiopgFQApyC8Nx6hUvLH1cbljZOVZlCAOJWoa0nENnKvA5/g/MKkpSVxE/bISkd/9zf507z2/wOqN1vz3xN1H8WTgl/lfogKGtaqiwb39Bd/Ng7ZjkXrxDizal1LHQZXeo7vCc+WP0o8nOwd+NXogLzJJq3Rc64HtWb7DwFGzLg+5sfz7fwp5ejZcf30fTh9I8gaZDwNwt97QwkwfIz00Tb1UUDke/v0foGA1SjGRWXKluj0aPNgL6OsjLzEJOgZ60DO3gCw1Ff5DPkfK0WsFW0h5iYNiT6p1HFbdm8Jn//ICzP2qd0FuaEKFYxzWA9vBc9Vc6JlrluWO33EUIRNnQ5aYhhpHFsDA1oHXE7d2H2IXbeKN06R+dfgcXgYDB6mOI/qPdYiYvqSIvlZZftQyAx3cbu+Ch3Wka9AgNxHpOmlTJV3ataj506wfviziHintWNokHR2d8NX02QWHEHHM+HoaxztIBJEqpNUNklDftHE1xxn42VfbGlaB+LinsLUrvFflXNQIiWTIKaaiOjQRB1nzX3z5PRwdnflFY/PmNSz42KxZa4573L59nYvxevToz+KKtGkvXDAbUVGR+XHGZ39LdB+qsuhl+U5LO4aKBpctWwyZrJA4vAIT0GxfkCCOigBL51ZGASBbHIOldFz64q26Nkf1VbNg6CTJFUTM/gtRc1ZxoNNj5UzYDpWC0ln+QbjbZCQUadJbk83orvBa9ZP0Q5DLccu7B3JD4mD+DOKoMuwNeK/7RTonJxe3a/flvP+idRx3ETBsBgsVFhkUNNfXQ9Wvx8H563e51iA7JJIzxBRZ+Q+bDmDRvgksOzbjKvLMR0EIeHs6Mm88gcNHg+D2i5Q6SnGUO7X6IzeSpCp0YNrUG3UubqQUFMYk+L0fEPfPnhJaVUXWowvUvbsZxj5eBQ82nUtZViT5kXW/UBBSlTjyUpPh/9YXSD1RrACQrAigaHBchTjo2uZv1IPvscI+07dr9Ub2k6iKEUd+jMnpw1HQ0ddnUk3ae4rJVhoKWHZpCfNWjfiZSPd7gKB3vkPmLX/UfbQFxl6S7Hn8toMIGCq9vRs4W6PO5U0wdJY2QeXLiLZxDrke8KiZE242q1pgXTo7u3LHOcoUquigyvOFC2ap7RGubm4TExPMmftbwUdK4iASmzTpI9jZl9z06eCwsGCs/ncZd8BjRBUKtGzZDkOHSRI4SpxJw6l7jwHsClMd1Hfkr6ULERYWqnVW1eAhb3NDJfqOqHiQssio8VWD+o05NmFhYcUWE33PpIa7fv1K/j2XbSgwjFvt0AAAIABJREFUa/avWmtsqZubrk1S7qq92BvcjILv2agX6KgCqye4zpoKx2mF7XDLhkX5jtKRycqh4qbltcpPHIUxDpYc+Xc/S47oV7WGde8OMKF0Sj09yNLSEfLRPMT/u483UYepb8F94ZdsfchzchHzx1o8XbEDRp6u8PjrWxi5VOUfQbrfHTxoPo7f4C06NCrQqipSx6EDVBnWCd7r5ks/HqocbzQE2Y9Ci0qORJDkyP4SkiMZ9x8j8+YTuP3xBWwHSVIatFkFjfm+iECS3dheqPbTx1yER5ZA6MfzEb/2EAy9HFH//m721dOaU05dROgXC5mMXL+bAutuHXjOnOgY+A/6HGkX72p803Ff/iXsxw8uclzcpv0I/XA+ZPGFwe8iFgdJjvy7t4TkCLm6ni7dVlSrqjhxdKwH3+OFxEEFlBl3AtVIjpQhHTffVUVqvtVX/wDr7u0Yx9hVO1gkUdWtZD++L6rN+xS6JsbIS0lB0OhvkLT3LLy2/4gq/brwpkRV9METv0H69fuwG9UXTp+Og56JMadLB78/B3Er9mpdy0EpwsF1bHDpDXdJCAtg6fDhI8axhEVFBym1/r18UZmkNeha5N6ZM3dxwWWzsjLZVUWSH+9OnFaqxREdHY6VK5YgLk5KwdbV1cOQoaNY5K+ANhQK/P7bj5wx5uxclBTpeV218k8u/NMmq4rOIwFEikMo03YpYL9v33b43bzKgfyx497juE1iYjxbG8oWvGXBlvqj/PjTH5zyW9Fx6tQRUF2NKmm1PRaEavell7sXNQRxKJEuFuMo7Qug2oCUk5cQMmUu5+/TMK7tDo9lpJDbsIjoXcHDTkHrpBQEvfstkndJTWksOhSKHKoSB20CVQZRPcMCKW0zNxf3O45DxuUHRYijtPU9XbsdMQs3wXP9XJjWrsGbUPBnP+Hp4m1FTjFvWxeeq2bDiGI2cjmiflmFiG/+Yk0st6VfcJ0FSZ4XHxx3oc37722I/GYZZEWK49SvymZUV3bxFMRacnMRMXsZW2xsPuQPVeIo7f5kacm4Yd0Jpo1LkxwBzNr6ovbJNQU1Ew86vYPU037lKwDMr+Mwa1EbHiu+hamvN8cpwmf+htjfthZZpmkzH/gcXAr9KpL8dfi3vyNq3lpYdmkK742/QM9MvYuLsvXSrtzmZ6q4/HxZN4KIGta42MUdufnxEgoqDxs2ljv8VXRQQ6EN61eyFHtZRmnEQb3B35vyCRwclK0BpC+fWqlSYD0uLpYzmp4+jYWujg6aNGuJfn2HwNRMVftKgT/+mMdk0rx52xLL2bF9A86ePaEVcdAk5IKi/hg9evSDiYmZlDWXkoxt29Zxxpevbz2WPDl8eC9bHGUJiisXR31QPvv8W63OKQ3n3bs34/SpQj0z+j322vUYVmHUS14QR1mez1KPKZfFQUHVHyaolVXnIGtODvfjSL/1CLFLNuermCqFBMHZUA7vD4V5s7ocV6AUXkrlzUtMZnny+DV7kbD5WIH/2qyFL9wWfQ7Dqg6QZ2cictY/iF93mPdRi1b14P73DOiZm3GNQPDUWUg5dBVVyyCrHr/jIJL2nIPHXzNZYJCI48ngT5B53b8IXnr2lvCkjbC+j5RLf+Q8wmcsQd7TZBhWtYXjpyNg1aUNjDyqQtdU6qshT0tjt1fS4QuI/XMLckOLFueV9oWY1PeC54Y50M8Xv6Oso/Bv/kTyvotFTrHs1hzuf0yHroFBqd+tLD0Fd+uO4H4f1RZ8wjEnLgBcsgkxv25h/IxrVoP3tp/ZmqJam5CPf0TiznOsaOv08WjoGuhz9X/oxwuReSugyLU8ls+AVVfKfpEkWUKmzIc8LQtWfdrAdc77LD5JkvchH/6E9Av3ipyrY2YIn8N/wshV2hiTjpxF2CeLQf1BHN4bCNuRvWDs5Qpd3ggVUGRlc68SEpOM+XMzUkmXq6zej2IIPa1mzsSRbi5lUVENxZAho9C0mRR7q8ig3uR7927jtrJlGcWJQ+mqkojjU5Zyp0GZQSSdERwcxFXa1Hnw4IFd7BKzt3dg4iNLQHVDpN/i3j1buV8FtV0t/hZPUiMUJFc9R1OMg9ZC6b7UWtbd3RPduvfhID8NqjHZvWsz9yqhY5KTk5GVRanrZd+kGzRogjFjqd94xQbdu1LgUElcego5Bqy4A4MM7RIqKrYS4apSwY8yp6rBQF0jJ1KCYOJI4vRXRXZeCfcMbb4GDtZSox5HW+gaGUNBxJGUjOzHocgOigLyCncFPWszbuSkQ2/1Mhmy/MORGyH5drlJUV1q8iRtAlkPg5ATGQ9jbxcYamjklBP9FPLEVBj7ehbcW+p5PyC76IOl0AXMGtSAnrUl/waoQp4k1hX5dQSko2Ts4w5D96rQyycOqprPCYvmBkiqzaw0PYQ6ZkYwbVCj4H4o4E9kKkvMr3rPn0Df3hImdb0L3C3q5iWXTuqZW9CzMIFJ7erQpeZUcjmyQ6KQEyTJfOiaGHJzLV1T6cef5R+K3NBYGLo7svuQXYrUyOlBcDE5EcCknif07aylIsKEJGTeCWQ5FEMXexjXdOO/0/rTbz2GIq2wSZRyraZNfaBnYS5hmpLGMQ5yZ+mYGMLYx42vr2dmxmStyM5C7tNEZD8MRm5UxVwNyQ4mTByJtoVWDdVLUAU5uXwqMrjA7tRR7NsriVRqGmUljsDAJ9i08V+2NIgAKIaQnp4Oul6bNh253qO4zAhtnoEBj9mNRJuxtTXVdxSOY0f348CBXUX+Vhbi6Ny5BxPX0aMHUK9eQ+7ZrsxIo5jH4UN7uROhamxBEw7Kz0k3jMhIG7JRNze5/Fau/BNPHj8ssF4s0rLRfe0D6OeW842jrDdR7DjhqioncOI0gcCrhECGpSEud3ZDtGth+i2RRo+e/SuhlkOBmzeuYO3af8p0y890Vb33CRwcJYuMCvb27NmC7OxCAiZiMDQ0wPsffIFq1aqruZ4C1Iec5EXIoqpdrBugeuIoWUBYVHJEB1999T3LwVOrWoqR1K/fCAMGDAfpZHHAPC2Vu/RdunSOiU0bEqA03gYNmpYJu2cdRKnCa9YsR1hoYUKJc2QK2u4KhJ7KS2mFL1SGCQRxlAEkcYhA4FVHQGaki8ud3RHiVVjL0aBBYxbWo1axFRsKPHr0ANTQKaMMEuXqiIPScclVNZmII99VRdXkVLeRk1OUOKj3xrRp00vEBOht/+qVc9wXnTbzzp17oUvX3uyWUw51xEGBesr0Ut3si2tVzZg5B7Y29sjKzsS/q/4CWUNESn37DIJNfuOn9LQ07NixEX5+V4so7mrClqrS7ezUpyBrOlf18+DgAGzauAqxsVJslYbPg6doeCIcus8/56jIUgVxaPPNiWMFAq8wAn4dXPCovgPk+ZlV1dw8MH78VFhaFrYMLu/y6S13/foViI0tVP0tba7ixEEWxerVf8HE2AR9+w1hAqFBxLFv77ZiFgcwcOCwEvIccrmcq7q3bV2LhIQEJg5vbx/OHKtSRaqDoaGOOObOXQxjk6KJCarEQVZO336D8916ulyvsmfPVg6Ce1b3Ru/eA1k6hYiHsqmoavz2rRtlgpII6/sfFkKfkxbKHhdRN/ndOzexdeu6IrIsTc6Ho8aNWOiUr119me5B3UGCOMoNnThRIPBqIeDf2A43W7oiT19K+yTXy0cfzeDU3IoOikNQPILexDWN4sRBGzMFmbnWxdK6IKCtzuKgzXXmzDkFb/nStRRMWGRpBAX6F7ztk0QIEaN3DamJFo2jR/fhwP5dRawVTcRB55EVNGjQCJYUkVxTaVwxThlaZC307Tuo4LPk5EQs+nVu/j09Gw03Nw98OO2rCseZ6CoXLpzC7l1bWAmYhp5CgbaHAuH8pCydHTV9a9p9LohDO7zE0QKBVxaBaE9LXOjsgWzjQtfNtGlfwd3Dq8Jrpswo8v/7+WnuPV6cOEq7+LlzJ9niUBXso+ryGTMpdbuw5oEqtSmz6cKF0yVcRBTH6dd/aMElTpw4iL17tmtNHEQWVZ1dMHz4WLi4uPF8tC4itz27t3JrV+p5XrNmbZ57zepl7LLSZEU0bdaKNa60Sd9VhxdVih85so/b4CqHWXoO2hwMgm1k0SSTCn/ZZZhAEEcZQBKHCAT+Cwik2xjiaP+ayDAzKNDSooro1q07Vnj5ZDVQxfaZM8c1+vcl4likcVM9ceIQDh3ajbzcQvkMEmekYjvVjZZSYam+g6XoVQb9PxHN1zPmcB0GbeIkyLh0ycIiIoDffPsTjIxMi8iDkKuKRBUpQ0l1EEGMn/ABz6skLxJe3LVzM7vYSMbF1dWN13Pv3m2NhECZYR07dtV4nKYviKr3d+3chGvXLhUcah+bjhZHgmGRUDK7T9N8Ff1cEIcaBCl1kvpK69uSOJ0uSJGV0j0pn/95Dx1DPRg423LaJynZyuIKO5TpWpjAoKqNpMAakwBZSjoMXKRj5elZyKMqbNmLScsjzSl9B2uQXLgiOxd5scmsWivGy0NAoa+Do0N9EGdjkr9RSZIdQ4aqSnaUf33nz5OFsANUEPisYWxsjOlfz2aZjtIGWRFkbZArSJUQOnfuyZlgSuJITIzDH7//whXbxYfyvI8/+RpubpSBRTEEBY4e3c/psxQXoUFJAtR+VnXk5GYjNCSYi/yKDgW7pqhGxMurJrvV6Do3b17hGhP6W5u2b+DPP+Zr1O6iNOhx77xXKUWYiYkJWLfub3bVKYd7QCKangyF4Quu4aDrC+Io9tgYVLOD0+ejYdaoNvRtLamklIkj4+Z9RM1fg5yAqPL/8spwpqGXPar//T2TQdL+84j+ZS3XjJg08ILDB0Nh4lOd9adil2xByskr8Fz9Ax+beu46YhZuLFEbUYZLlusQA3d7uHzzLleeZwdGIGLmUpagF+PlInC9mxse1aS3ZWkTJa2qTz/7tlIW9fjRfQ6QF2+3Wnxyevvv1Xsg2renGhL1MhsUs6AGSWQhqA56o2/aVCrApI2fKqXPnjmhdv2sIWdljWkffZUfIJfumYoDf5n/PWRyGSvt5qik+z4LCMKsZk1fPH78AE5OzlxHQq4pugcqVqReHWfPHIdMLkdoSJBGTKlgcOy4yaWkFWs8vcgB0dGR+OuvX5HCsSIW8kLt27GodzYCui/mXbHIegRx5MNBBVm6RvqoeWIpzJvUZyG7/G+IH2J6m046fAr+/b7QqM1U9kdCAYWuDow8qyIvKpGtBuN6rqh7UwruPV2xC0ETf+B+IK7fT4bjx6MlSRO5DGFf/8Yie9QUiY5N2HUUIVN+Rh61Ia3kQdgQeRnX80DW3RB+aI18XeG9cR5M6/kg444//Ad8XLQ3SCWvQUxXNgRCGtjifHu3AlcVSXlQrwkDQ6MKP7f01r/kz19YS0qTz5429J49+6NR4+Yq6bJSz3WqRN+5cyOuXrmUXxMh3RvNSfUb1atTTEYHERGhnI0V91S9QgHNRTEOij0UDimQ/sfv89G5S0/4+NRhq+bihdNMRM9ad42atfDWWyMQFhbCpEZJBcOGj4O7e3VuOEXnk1LuurX/aHTX0Xq8vGpg6LCxsFOj5Fu2b1N5lII7EFKfEKWVZZCbh8bnI+F5WyoaftFDEIcKcdiN64nqf8/iv+SERiBs+iLkRsfBc/UcGLo689/vNhiAzHuhFf4R6hgbwKp7Czh9MQqQGyJw+FfICYuBrq0Z7Ef2Zas7424AUo9fhl4VK7gt/hy2I3pwF8KgSd8g/t9D0KtiDvtRfdjioAZJqSeuQp6hfQc5TQ+dSQNPOH0+ClX6dsbNKh24klrPxhxWPdrCwK4K8uKSkLTvDGTJLz5Ip2nt/98+T7czwp7htaUK9/yYwJSpn6JGjVoaYw6asSKdqPkI8H+skTjo2vSmTllFvr71Wa6DCudiYqPgd/May5QXDyxT5Tatld72aekk6EcSIsosInXre2f8FNSt26jgI4oFLPlzPr/qjBgxji0umuva1QvYtWsLKMivblAb24FvDUe9eo3Z4XX12gUOilO8ZsK7H7AwI8U86L4oLnPs6AGN5EG90ilwT3NUbChw8uQRrnlRDtO0HLQ+Fgz7UNKoevFDEEcB5gp4bpoN28E9+Y06asEqqd+GAnD78zPYj32Ljwwc/zXi/z1c+E3pADomBoCeDhQZuQVNiUr7KsnC0DXSY2kL743zYeThirTLdxAw7CvkhKrPkde3sYTbb1/Cdnh3KHLz8LDrO0g7U1QnSe31aG1mhpLnNysPilKqSxV6OtA1MeDjZEQ88qI/ac+ts2EzoDtvFtcMmzFxaByMiz6r6rJMOEsiPCOPXV8HRKaKrFwg7wUnpWu8mf/OASSSuX98XaSaFgpUduveG9260stIxeoICIUDB3bwpqkpm6g8iNEmT4Fxkl+negkSLLx5kzKX1A8qbKSCQgpW0yBJjv37d+DSxbMYMHAYWrWiToPSPVORITV5og2YLB7VQWTQtFlLDB48iqXaybIIDPRHbGwUZzGR6410s7y8a/J8lG1FzZ6o70dpFgzFNwh3itmoZoiVBxdaH2Vxkcy7cljHZ6DTbn8Ypb24PuOqaxfEoURDB6h9ZQ3MGtdhRdqQj37G0/yOfNQfw7pHe/7hxa3axc2HuD9Fcx/YDOoCI3dnlleXJacg9cx1JGw7UfDmb/9uH5j4evJbedqlO6gy8E3omhqBGgTb9O/GQnykL5V04BSiF6xlfaOqn0nBzPTL95C44xRc5k7k9qvGtTxZyTZ+2z48/WsXsh4EoepXdKwOMu48QeK2U5CnZkJHXxemzX1RZWAnGLk5S7pL8UlIOXEZCVtPFhYL6enAekAHWHVpCX0bKybJvOQ0pJy4guR95yBPzYDrgg9h3bs9jL2q848k+rfVSLt6F6nHr8NudE8YVLVHTlQc4lfsQ15CCmswGftUY+vIuKY7CwrmpaQj5fRVJO8iqySDA+pWvVrBop30pph6/gbMmzeAYXUXvmb8uv1IOXmjwlZdeX6k//VzCP9rPTzgX6OwKI42vKlTPqsU4iBRQspa0uSqKg+OzVu0Qb9+Q/gNPSYmkhV5yW2kbtBmSoKEo0a9C1s7qUfO7ds3WM3Wy7MmFwYWb5tLLqxVK5cgJqZknPLdiR+yAi79CKjQ8Py505ya++DhPWzftp7rPEjinZRu6fe2csUfJeTbVddJ1hO1ya3foEl5oChGbHLMnjUdFCBXDrfgJLTZG/jsXjgVvnLpEwjiyMdGx1wftS9tgKmvF0jML3jqXCSskywLehPWMZRSHGWZWVDk5MGiTT24L50B45rVWc2V3QIKBWSpaYhdshER3/7NGU7ee+bDunt75CWlcm8NfQc7Frcj0UQDqqAll4Jczv886jMZeZFPUff6Nn6he7pyN0KnzUe9oF0wJFM5P8NDkZONsK9/R/LBM6h7ewe/SCbuPo6Q9+cjLyYJps1rwXPVDzDycuNYDa2bXFyytAxE/boCUbPW8KZsP7EPXH/6lDvakcIskZ8uZWwlpSDqp38Q89tmNEk5Dx0Divfo8DzU3ztu/S5Ez1sHr/U/wrReDWTcDYT/wM+QExwJXSsT+J5dCWNvD+gaGhTcnyw9E9ELViF67mrG02X2e3CcMozvMzchCfpWVhz0Jwwzbj1E4KgZyHoQ+hwf/ddzarLVImpXwdnOhTpPJB5Ist5SI6KKDXpznznzoyIptBWbUTqb4gn0xl+jpi8/Z8FB/li9etkzi+zateuEXr2poZMxWxTkWqJ01elfz4KVVaH0inJ91N1v7Zq/2YpRJT767x9mLchvtKRgUkjPyMDkyZ+wuy0kJBDLly3m6nLql06DKtjPXzhd6ssNdUEk64m6ClZ0xMXFYO6cou1zm14KR40rJD1ScSuyPOsTxJGPmq65AWpf3gCTWp6QpaQgeOocJGwo1L1XBVfHWB/V5k+Dw+RhQJ4MkfOWI+XkVXgs/QYmNT2Ref8JAsb8jxsq1di3ANbdO0r9r7NzkBufhMx7j5F67hKcPnwHBna2yHwcjJjf1iBx1yno21mgnt9uvtzTlbsQPHk2bEZ1guN7I2HetAHkeXmImP0bEreeYsuh3v09fCy1rKXgeG5sEqot+ghOU99msgj5aC5yI5/Cde40mPh48cZ/27sXcmMTUXP3Ilh0aIbcqFiEfPATMh8Got6DvUxQyUfOIXjiHJi39oXjJ6Ng3rQR/9j8R37KBCFLyYTXhp85OJ55NwBP+n/EwXHnORPg/OVkbkxEHe2Sd5+C+/L/wbSeL2TJybjt3ZeJ13XOVDh+MJLXHrdmJ+LW74Pbgi9hWrcmcmPjEPTerILeJeV5sP+/nkPEkWllgANv10Yu1zYARkbGnBZKGUIVHgoFli1fjEcPy+AqLePFTExN0Lv3W2jVqn3BRkgZXP/+u7Sg/3jxqajOYsjQ0QX3RGm1JAVC2+i4d6aWahFRCvDx44eKEQcwa/Yi1vSi3+ncOdNhaVUF7733SYE67ycfvwtJ5bYvL2Xnjo0cdC9tUExp4qRpJdKAywhJkcPOnTuB7ds2FCQ80D322vYQllGZ5ZmuUs4RxKFCHHWubISxT/V84piLhA1H1YJs4GoHj6UzYN2zPXcDvNdsGLIeR8Dz329hN6ofcuMSEDJ1LhK3nyxCHLHLNyN6/mrkxiTApJ4XvDfMk2Icl25LMY6waBjXq1aUOCbOgr6jNTyWTEeVfp0hz83Fw67jkXbmLkx8XEsSR1wyfC+s4Myw7LAI3PLowxLkzt++C9tB3diyCXr3G6RdvAfbUd1h6OoIsmCSj1xGXlwq6tzYAD0zC1DrXOpgR3LvXtvmwra/1E3wqmEztqSMa1dTSxy1r/8L0wZ1kR0agYAhXyLj2gM4TR8D11kfsmX0sNu7SL94vwhxBIyejoRNR1FjzyJYd28riKOCP+0cYz2c7+uJaCcLnol0krr36I9OnaTvsCKDNtZLl85g65Z1FZmm4FzKvureoy+aN2tT0HiLYgynTh5meXRlLYbqxcgKaNvuDSYbkl2nNRGR7d69BfXqN+Le4KW50mjDpyLG4p+TG6pJk5Y83/9mfsSWAjWdUsq6f/zRu+jStRc3eqIqbkpLvuVXGHMoDgbJqHft2qdSXHrLly0C9WPn7E6FAhZZeei96i50XmIsUBBHOYiD+nZ4/P0NLNo25jfrhJ3HOaZh3qIOWyzyjHSETPsZcav2FxCHPCsDDztNQvrl+3xFsxY+8FISh0pwnNJxi1gcE2fBwKkK3P/8iolDNThu7OOihjhSUD9wJ4xcXJDu9wj3m4zgwL2RtysMXRzYFZR5LxB5sUmgniD2E/vBrHl96FlZgIr6zFtRF0N9pF+/jcBR3yD7cTi8ts+BTT5xKIPjpRFHw5hD0Le1Q+b9xwgcOZP7WdiO643qf3/HP6LAiTOQuOlkUeIY9RUSNhJxLIZ1TyKOeARP+QFJO6VuiWJoh4BcXwf3WlXF3UZSwyQajRs3x7DhY6CvX7Kro3azAyTvPX/e90VUbbWdg46nOEDvPm+hWbPW+XF7qQ4jKioCfy//jYPP6gZt5lT0Z1PFluMVDx7c5cAxEQrFFTzy03mLnyuT5WLFP3/y8arEIdWDVEGXLj3QtFkb/PTjTI6zjHtnCmdTUVrwgl9moXv3vmjVugPrYV2/dhmZmZRFqN5V9OG0L+Hu7lVh4qA+6nPnzABliymJw/dhHBodDSsP5JV2jiCOfCh1TPRQ+8oGmNb2how2/qlzEb/mED8XBm52MKnrwf767OBo6OTpofqKb2Hesj6frUx7VD6M1AqWiWPF3gLiyEtOwsMOE5F5R+o4x8RBWVXuLlJW1dAvOR23dOL4kvtWl4U4GoTv5ZhIut9D3G8iuYNKDF2g2q8fw378IG6wlBcfj+yAcJg2rs2xhvRrRBzfIvtxGLy2z+VAPg1NxNE44wL0DA1Bvc8DR8xE5t1A2IzuAc+Vs/hHFDT1O8SvPYJqKq6qAHXE8d4PSMpvs1tpT/v/o4nCalrjUhcP5OlJBXgeHl4cMKaNsKKDKsdpYy+L4GFp16JnoUPHzujWrR9IrFA5qNDu99/nFek5UXwOOldK75Vzqi5ZAE2atuTmT9SWtrSiw9DQIK7BIMFGdYMq3ju+0RVXLp9DUlISWrVuj8aNW2Dd2uVcYd6kSQuOuVBNhVxeeuYfxZK++fbnSnFTUaD+n7//4HtU7jXd9zyBTcjLScNV4iaIIx8JegzIxWPRomF+bGAeni7dxgV3DtOGwG3eZ3xk9NJ1iF28DdX/+R8s2jaRXFWtByM3Ool7SlMgmdxBsrg0yNOyVYgjEQ87THruxJEXl4x6bHG4cpvb+41HMOHp21hA19xUypyKTwJVyHtvmg+TujWQ9SgQASOnI8PPH40TjkPP0jrf4ihJHJpcVQ1jDkLf1h5ZD54gYMQMtjjsJvaHx5KZksUxeSYSNpzQTBzC4qjQ/p7kZMLEkVhF6oJIb9TDho2BT606FZqXTqa+GMeO7sPhw/vKPRe1aaUYRS1ej/TWLs27H4cO7dH4pk4va8oXtcFDRqJ583bct7w0C4DqN8j1pSwEVLdwfgHUAXR1dJmUqM8HkVBh+q5kEfFhz0htJkLs169QeLG8IEk1I3tw/NiBApedeWYOeq66/8IbNxW/B0EcBcShgMfyr+Awfgj/JXbFNoR/thjy7DxU++UDOE4ZwX8P+WIeEjcfh8dfMzhFV56egfvtxiDzdgCcv5sI0/q1OKU2dtk2pF+882zieB6uqqfJ8L24EuZN6iE7MhK33PtAz8wY1X5+H3Zj+nH/68AxM5EbGQ/PNbNh7OWG1It+eNxrChS5cjR+ehK6xiZIu3ZLravqqklzIEf2jBjHKpg2qIeciCgEDPoS6Vfvo+rMsXD57n3+sT3oNoFjHBotDkEc5d1v+LwcEz1cfdMNIdWtGXfaAPv1H4I2bd4o9Y1cmws+eHCH395LK6jTNJejY1UWDKxWzUM6VEHV0Q+CZVGxAAAd3UlEQVSwceO/nHaqTbqvsYkxBvQfhjp1G6ptWkUy6KSzRdIlqt0GNa2xPJ8TzuRGc3FxL8/pRc6hTLHV//7FrjXl8HqSgCZHgqH3kmXhBHGoEIdl5ybwObhMqnt4Go/4DQcgS0qF3YSBMHRx4vqOe82GIjsgCq7zp8Fx0lDudx21aDXSzvvBbcHnMKpeDVmPgxA0/jukX7pXKnGYNPaC95YFHBzPDgpH5I9/I3HbSRi621QoxpETmwj3Pz6Dw8RhUMjyEDR+Joszunw3hTOgKLh+r9Fg1uDy3vgzjH29kB0QipCPf4KRe1W4//4/RkQ1xuG56QfYDu7Ffw+aMAOp5+5Ax0BXfVbV3Ilw/mIiYxU5ZxmSD16A22+fw7xFI8gSk3Cn9kDIM7JFjKPC24qGCXSAB80dcbupE+T52VUk8U3tUKVueBUbT5/GcH+O4lpTZZ2VguJDyeLwrcunpKSksHQ6ybYXV8Ety5yUEeXrW5cFBV1cq7GbiIoIKZX23t1b7FZ7VgV6Wa5RlmOoGHHaR9MrxU1FsZX161aAdKpo6CgUaHkyBO73El5446bi9y6IQ4U4qMrZdcH7cJo6WqpZyKEqagXHAOhhjl22ASEfLOS/WbzREJ6r58LIxQmyjExOtdWzNOc3+pg/1iFixlJOO1Wm4+YlF3VV6VoacxaRRdumXIlNlsvDzpOgyE0vhTjKFuPIiU6ERfv68Fw3F4bOTlxXQhXj+lbm7HaLWrwK4Z//yYFwz/WzpYC7TA5ZSirkWVmQJSXDxLcmMu88QMCImch6EAKHD96C28KvOOslj6yppVsQv26PWuLQc7RE7UtrYezmym48Igk9G0s+N2rhSkR+vQw6xoZwnTOlIB1XbYxDWBxl2aeeeUx8NXOc6VYdWaYGfJyDgyMmTf6E4wMVHRSLoLoJ6ldRno1einF0QfdufWFoZMib+7p1KzQq76pbN12f3FTkQqKiPwMDqeaK3E301v4iCEO5LimbqneFq8VpvhvXL3N/daVVZ5GchdaHgmETo142paLfqTbnC+Iojpa+LmxHdIbdO/1hWM2FNzwqUEvYfICrteUphbnTZq184fTpKH6Th54+ciOiELd2L+L+PQjkybmK2mXWOzBrVhfy9HSEffYncoIK+wVT0N155niYNqgpaVCNnwN5Zio8ln7NVk/yoUuIXbSFNakcPhgI89YUf5Ej/KvfkXUnFAauNnD/52suQkq7eAuxv22X1HF1dWDerj4cpw2DaYPaHNcg11H8+n2IW17olzZws4f7b5/CpK4vcqNiEDX3HxjX94BFxxZc2xE9ey2yAyOhZ2UGu/G9YN3/DeiZGiNuzX4k7jqJqtPHwKi6CycMRH23ArnRCVLluK8bqn45hqvBiXRz4+IRv+kg4lbuhzwpnQsA7cZ1h3U/qU9E1M9rkHrSDy7fT4BZi9ps5cX8vhnp5x9o8yyLY4shIDfQwdEhPkiwLdRKohTTytGtAlsHVDuRWYY+5Oq+HJL36Ny5Bxo1boF9+7Y/M721NMKgv9vZO6Jfv8E4dHAXIiPp7fzlSNaYmJpi/Pj3Ub26t1auNnX3RnGVwxTfUKk5cQskGfUwGKW/HJkR1XUK4ijxrdHWJwW/dM0NAQM9yFOyoOCcaUklVjkk1VhKlNeFDmlV5cj57avEMRRIK+VZVirPFn6cf74Uh+OhPIYulh+/K7oGtfPnn0xrM9SFnDX7i66NJ6HrGOoy0UEm3btyFN4HI1KwliKf8zoLP5cWnY8R6U8Z6UGRLrW6lD4pnIf/m+8pH0dejxIr1TkFJ5QHAULwYWsn+DWVqpcJ53btO2HgwOGVUnFMmUZUYxAZGV6e5RU8E5YWFkhLT+ekktKGkbEx9HSlgsbCoYB1FRvusFe1qivu37+F/ft2qpV9p8C7pj4i5b6J/BPJ7TZkyChQ4L+iFd2kRLxxwyrO4KK9SE8mR/2rUfC5GvPS3VR0u4I4Kvq0iPMFAq8oAkQcGTaG2DeyNmQ6RNM6vKlRxzxlYVtFlk5EdPDAThw7drAi02g8lwLOVLXt7FKtxLEUK3F1lQLRlLJKfTIy1NRXREWGc4aSuoJCjQsowwGEZ9duvdDpje7QzY8pleG0Ug8JDg7A33//VmDNmaXloM2RINiGvxoK1II4KvLtinMFAq86AjrA2YFeCHO2lNwnOsDEidNQq5YUlK7IIOJISIhjpVh6o9cmE0qb61Ja7IR3P+QmS+Ud/v6PWG+KYjOVPQgHOzt7jHx7PDw8vCtl+uPHD2L/vh08F81fNToNHXb6Q/clVour3pggjkr5msUkAoFXF4HIWtY43aV6QY8OKmQb+faEStnoaVOjlqY3rl+plPnUoUiy5qPHTIK3t0+JjylOotoWliTPlcVyqgdTy1XSvqKWtZU/FKhXvzFGj55YKdlUhOniRXMREhJUoE/V8nw4PG+ob2hV+fejeUZBHJoxEkcIBP7TCGSb6uHEYB8kWRnz2ys1Lfr4kxmwtq54dhUBQxXZS5cseK41Eh4enjA3L6nu277Dm/D2piZV0rhw4TQePrhTIsZAqbnk/ilPBpimL58MuQkTPoRvbZJlr+hQICIiHAsXzCroWGiUk4de6+/DKPV5kF751iuIo3y4ibMEAv8ZBGR6OrjfuiruNnRkq4PSVSlA3qJlu0q5B3rL37BhBW5zo6Hyy3xLldtlPV9K9JB6lLcquA/qnUHFflK+RhnnUqlC1xYQWjNlUVG2moFBxXXAKIVk69Z1uHjhDC+F0lV878eh4bGKdx3V9t6edbwgjspEU8wlEHgFEaDNJ9bDEhc7uyMzvzNgw4ZNMWz42BLNjsqzfOpzceeOHzZuWFluq4M2Xeo1XqVKYQOqZ60lLS0FT548wuDBI9GkGHFcuHAKDRs1gyFv5JrJIzklEQ/uFxU+1AaHDz74koUVKyPGk5aWirlzv0ZWZhYvQU8uR6+N92Ean/1KNTYTxKHNEyKOFQj8RxHINtfHlTfdEO5uzXfg4OjEaazURa8yRmpqMrZtW4+7d/zK5Q4iNVpq99q0acsybfYBAY/w76q/0L//kBLEcfHiGXzyyUw4u7iWaa7Ll89i08bVWm/8RBT16zfC6DGTtT5XHeZkvVy+dBZbt64HkTEN9+BEtNwfDF3Zy6lNKe3ZEMRRGb8aMYdA4D+AwJPG9vBr4Yw8Az3o6eujT5+BaNu2E6g/dsWHAg/u38HmzWtYSVbbQV6l1m06co8Najz1rKHs17Fv3w6MHPmOWoujZ88BeKNTd426XFRZ/tfShRz/KIt1orou6lpI5OvpVVPb21V7PFWIb1i/Avfu3ebPDfJkaHkiBK6Pkl5WTWOp9yWIo1K+cjGJQODVRyDDygCn+nlzkJzeln18anMKqbqgc3nuJi83FydPHcaB/bvK9QZOQfuhw0gxt17p5ysUiIyK4PauCQnxaomDYhzOztXYFaes8VB3P0RAF86fws6dG/OtJM1uLeU8JAXfuUtPtGv3ZqW4+2he6ue+ZfMavi8aTlGpaH40BGZJOeX5Op7rOYI4niu8YnKBwCuEgA44SO7X2EmqRtbTw6TJHxXJSqroaukNfvu2dbh69aLWb/B0bSpQpDa3rq4eashDASrkW7lqCeLj4jh0PHLk+BIWx7lzJ/neatTwxaDBI2FjY1ekURRdh0iDOvjt2bP1mX3Ni+OhzMpq1KgZBg8ZxQ2fKmNQfcmRw/tYYoTcVFQpXu9aNGpdiX4lKsWL36Mgjsr41sUcAoH/CAK5pnrYN7oOsgz1+S27fv3GGDvuvXJZCOpvWQHKslq37h/cv3cHcrl2+t8UyDfQN8AbnbqhUcNmMDUzYzdNRmYG7t65idOnj4ECyMpANFlNJNGuHCTRERVFEiiS9UDB9k5vdoOPTx1QzQfdc1ZmJqftXr16AZmZmVrdu46OLjyqe2LChA8qjTRonU+fRmPN6uWIiJA6+1kmZaLdoWBYxr68vuLPeqQFcfxHfvBimQKBykFAgYetnHCT9Kt0SF1fHx98+CX3xaiMrCDlGqm97KGDu7mla3mL7kjp1sJC6puekpqCXFKrLscgsiDXEnXmo/+mlrTlkR4h4qlXrxEGDBgGUzPzcqykFKpVKHDx4mls37ahILGg7q1o1D0T+UpaG3QXgjgq7esXEwkE/hsIZFoY4HR/r/zugDqoU6c+Wx2qFdiVcSdJSQm4dPEsTp48/EKlzStj7apzENmYmZmjbds3OIBPsZjKHOTeW7RoLqKjIpk4THNk6Lb5AUySKl8epbLWLYijspAU8wgE/iMIKHR14N/QDtfbuEKhowNSnh0zZiIHpSt3KJgwqJnSzh2bEBUVUbnTv6DZqH8Jqd5W96zJ7q7KHmdOH8WuXVt4WiKO5pfD4X3l1ZEXUXe/gjgq+ykQ8wkE/gMIpNoa4cqb7ohxNGMXFcU6qCe5cSUFe4tDkJ6eitOnjuH69Uvc7U+dntSrBBsJK1pYWnJVepfOPaFvQM2wyp51VdZ7Iats/rzvuVkTiyUmZqLzxofQ1S40VNbLVdpxgjgqDUoxkUDgv4OAQhfwb2QPv+bOyNXXZfcLyZCQWB/JmD+PwV00Y6Jw+85NBAU+QWxsNJKSkrQOoD+PtdGclIllZVUFDg5OqO7pzcV99vZO0NUlwqh80iBrjGTpKeBPmVQGOTI0PxsOt/sJr1zdRnHMBXE8r6dQzCsQeMURyDbTx4Ue1RHtLAWgqRHRiBHvwNxc+v/nOVJSkhAbG4O4uFhQb21qBkW9tcvbTbC8a6Ve5Y5OznBxduV+H/Z2DrB3cMyPY1Q+Waiu0//JQ2zevBrx8XFMS24BiWhy6tXo8KcJT0EcmhASnwsEXlMEFDoKJLuY4fCAmpBBB+Se6T9gCFq3fqNSM6zUwydJaJAYIb15U6tUChITkYSHBSMsPAzR0RGIexpbEFiXsr4UkoChylBmg5VUvpWOV35O4o7UN4O6Bbq4VEM1Nw/Y2tjD0Ij6lBvy/SuPlfQRdQqynJT/X1mPArnudu/eguvXLnOGl1lGLlqeDIFDUOorm0mleu+vJXHkREQj7KtfkXb+bmV9z2IegcBri8D9lg64XtWQNzBjYxOWXLe3d3xu90skkZycyHUQJiZmKq6xooxABEHtZBOTEriams4hOZOMjDRkZmQiOyebCUeW32ODuvCRlIqxkRHPbWZmAUtLS1hZV4GNjS27oSR5FSWhKG9RIoiMjHQ8fnQP165d4l4YFHcgWZGOb3RjDS1KD66scfPGZWzctBpUbU+jQaICDc9GAorna+VU1vp1TYzg9Mlo2I/vX1lTPnMeHZns+at1kb9QQTnf+UJhL+TOxEUEAv9RBLKys7Fx6zrWSKIN1LuGD95++11QW9bKGHJ5HgIDSQtKwZs8FeldvHiW1XAHDX670vqClHetdM9Ud7J/33bcvXuLydPO3oHdZmQBUXfD3n3eQqdO3UAFgBUbCsTEROGfv//gucnCIa2rsW+Ph6nxszW6Knbdyj2bSF3XwAA6+pQ08PzHCyGO538b4goCgdcHAdo4KVi9detaxMREswXQoUNndO3Wh9+yK1oYSG6ZxYt/YtKgTTg5OYnB8/Wty3pSlpYlCYqsn8TEeI59UBMmUxNTjj1Q4JqshmevScHWAsUOKHvLzs6B6zCkUfKNnl40jx7Zj6NH9zNZkkovBcXpurt2bkJoaDA8Pb25fW3FJEYUbDGtWbMcgQFPeDX29g4Y984UODm5vD4P1HO4E0EczwFUMaVAoKIIkDQIWQH01p2VlQUKGpNkeeMmLSqsniuXyXD3rh+u37iMRw/vcc8O2vi7d++DNzv3LFF4SKRx5fI5HDt2kN1S9P9EZuSK8vKqgaHDxrJVoG5QlfrJE4dw+cp5ZGdncRCF4hdt23VC27YdYWhY8q2e5v9r6a/w93+IVq3aYfCQ0flTK7B+/Qpcv3YJnp41MXHStAq5qyiGs2vXZi6KpGFiYsIWV8OGzSpMzhX9/l/18wVxvOrfkFjf/1sE6O18187NrONEVgjFBUaNehfuHl6VhsnBA7tw5Ai92Vth8OC3Uaduw2JzU+vUsAILhd7Ia9T0RWJiAgIDHrO2lJdXTUya/DF3MlQdMlkuFxqeP3+aU2uJ/Ej7KiM9Dbq6+ujcuQfe7NyDCUh10L0SQdy4fokD5+MnfAB9fT2Eh4dix/YNHF+hAsDmLdqWO1WZRAxJiffQoT1MzLT2Dh26sMJuZcZOKu2LesUmEsTxin0hYjkCgUIEFGwN0GZ548YVdvO4uLhh6LAxz5QnLyuCWVmZWL5sEfe+IDIaPWoiqtgU7/inwMGDu3H0yD7Y2Tti7NjJcHZ2Zb2rY0f348SJw0xq1KqVrADVERISgHVr/2EXFdVgUD8OsqR27dyCsNAgbuw0Zux7agP/1Bhq397tTFompmbsGiNXGeFBJEQFks2at0aNGrVKEI+m+6f1UjB8777tSE6S3HQtW7ZFj54DOPW5oq5ATdd/HT4XxPE6fIviHl5fBBQKpKWn8iZ6/fpljkm4VnPn4kCPCloetDmvW7eC/fzkEho4cISaN3gFSBZ9x/aNcKrqjHHjaKN3YrI4e+YYDhzYxa6rSZM+gpe3T5Hv4caNy9i5YyO/0ZNF4p3/+bWrF9miMDY2xpQpn3EabvFB93nvnh927tyMpMQErhr38qwBA0Mjdq+lpqbA0akqW2BEZNoUBJIKL5Ehzaskje49+r2QWpHX5UEVxPG6fJPiPl5rBCj1lXpV+Pldg0KuQDUij7dGwN29ev59a582evzYARw+vJfPHz1mIurWbaQWQwpsr1q5BAEBjznzit72KVWWrKC4uKf81v/uxA9LvPmHhQXj/r1bLA/SunUHmBib8v5+9uwJJiJzc3NMmvQxE2HxQfGQAwd24tzZkzA1NcXk9z7hVFzKonr6NIZdZxSr6T9gKNq161QG4qB6EwWuXrnAOlRkbdFo3aYD+lCXw1JiNK/1Q1WBmxPEUQHwxKkCgReFAG166WmpnGl1//4dtjycnJwxZOgouLlV1zpgTplVW7esY5l1kjf/esacUgPcZJEcPryHN11yUVFgnFxOlAJas2Yt7vFdmCWlikjR4kDKlgoLC8Gyvxbxxk29O8jtZm1tUwLG+Lin2LBxJWc7dezYBX37DSlo/kQWzvz53yEmOgqdu/QAtaXVZHHk5GRxMyuyNDLS0zlAT7UgPXv1z1+79sT7or77V/E6gjhexW9FrEkgoA4BhQKZWZk4dHAXu60yMjK4Qx+5WagvhTapqWQNUPyB9Klat26vkrlU9MLkZlqx4ncE+D8GqdJ6efnA3MIciQnxCAh4wimyFB/o13/oM4PKVBhILibqS051E1TQSLUYdes2VBvgpvk3blzFmVXUOXDM2MlsedA8T548wprVy5g8iXiaNGn5jLiEgt1a5G47f+4kY0YusjZt3kCHjl1eiJzL6/gwC+J4Hb9VcU+vNQKURkp++pMnDnPgmVJhmzVrhfYdOsPW1l5jcJfe/K9eucjWC22+0z6aDnd3T7WYPXn8AEuWLICRkTG6dOmJ9u07w8DQEFlZGTh+7CDOnDnOlge1vKXsKnWDLASKdxw+tJcL+ygo3rvXQHjX8GVZEXWD7pHiJ+TWokLF+vUawdbOnoPZT/wfIiU5GbVq1cHgwaPUBPSlGeUKOYKD/Ln96+NH99lacnBwRNeuvVGvfiO1qcCv9YNTiTcniKMSwRRTCQReDAIK5OXJEBIcgG3b1iE6Ooo34KpVXdC332CNPctJi2rH9vW4fPk8b6Sff/E9ZyqpG1evnOc3fwsLKV23br3COMgtv2vYvn09p+QOHz4WjZu0LDmFQoE7d29i08Z/+bgGDZtgwIDh/KavSfWX2rdu2rSa3VWU6SS5yOQcq2jarBUTABUTqsuCIuK5fPksTp08yum7dAxV4PftOwguzm4gv5fInir/0yqIo/zYiTMFAi8dASrI27FjE+7dvcUFdiQ5Tl3xOnbsyllCxWsklAumgPfDh3d5E27UqHmpm2hYWBAWL/qJrYo2bTqgU6fuMDYx5rRYCq5fuHCG4ysTJ37AFkTxEREeyt306G2/dp166N37LameQ04VHXLo6xnA3MKy1OsTAdy8eRURESEsbV7Fxg516zbIT+EtGpege8nNzUZCfDz279/Bki00jE1M0KRxC3Tv0Zf1ssSoOAKCOCqOoZhBIPDSEKDNkt7Cb/ld5Upzqskg9xPJgTRr1pplRKiITt3bvap6bWlv3+TW2rFjA65cviClAru65buMEln6g/5GWVYjRr7DAWfVQXUnlHbrd+MqdHR1OUZCvcaJdIgQ6N/kIpsy9VMNwe2SYovF10ukSXGbO3duchCfrBty4VEWGGVO1a7dQKOF89K+xP/ghQVx/Ae/NLFkgUBxBCjLKSE+Dnfv+XGldnxcLEuHODlV5dhD/QZN4ebmoXWxHL3mk3VCGUm3b98AWRDKIjwSHqSgfJs2HVnptviggr2/l//GLWppo6c2r0QcFC+h6mz6b5JTHzBwRLndRpSdRXEYIozAQH8uEiQiJYKj2pQ6dRrA0qpKuecXT5p6BARxiCdDIPAaIUAWAKXPXr50FufPn0JaWiq/aVNGkourG5o3b8MWApGKNj0taF7apCk+QoFxsi5o8yd9p9LcYWQFUNaWnq4e91GXrkmxCoov6PJ/U2ylNJ0r9V+LZH3QPVLbW+qfkZAQx0WGZEFRllmnN7uhYYNmnGarW0rs5jX6yl/KrQjieCmwi4sKBJ4nAlL9BG2olIbqd/MqWw05OTm8uVI6aoMGTTizyNm5GlsAxRsnPXt10vyag8u0yUu9NjTVWZR2PbIeSFeK1p6ZkY6gYH/cvnUDjx8/YBKTLBkjWFtbc1puq9btC+IYmtf3PL+D13tuQRyv9/cr7u7/PQIKlk2/c8cPAf6PuIaCUmJpI6aNlQLoVZ1d4FzVFQ6OTuxyooJA+ofe2MlKeHFDwetKT0tDaloKUlOTWUyRWthGRYYjKiqSCZAG9+iws2dXHAXlKZZD91Jegnpx9/h6XEkQx+vxPYq7EAg8EwGyNMjVRM2KKP4RHhHGweSI8DAu4qNBbiMzc3NYWlhxuqyZuQW/yVNlt5WlNSws8/9uZs5WChFPfkfXsgW3qYMgt6eluEk60tLS2JVG/c6pPoM6C6YkJ/F6pL8nM1GQ1UHXIjJzca3GlfJEdBRjoXRcoWb74h9+QRwvHnNxRYHAS0aA0laprzi5gLIRFRUOf//HCAp6wkRCf5eGglNtiVCU/9D/K3txkNaUiakpjI1M2P2ldHep3hxZEJRdlZGZwcRF7qbUVOrpIWNCoH/LZHI+huIoSpKgOSh4TkFuj+reLJBITaOkwLrUj1xYFy/vMRLE8fKwF1cWCLxiCFBhYS6iIiMQERHK3f7IPRSfEMeCgrSxKzd3aeOnWIdUkFeWwRaKji709HSZfChFV1+PiEiP+2FYV7FFVSdnVrsl4UMiCmFNlAXZF3+MII4Xj7m4okDgFUagZM0EWQPkNkqlf1JTWBmX/qFMpqzsLLZaqA0tWQs0iFzIh0WEwC6wfKvF0MgIxvSPsSlbKhRDIZcYVaVbWloWNIKSAu9KiIT44Kv4sAjieBW/FbEmgcB/DAGpEFFWSByQiIMIgK0LHd3/2B2J5T4LAUEc4vkQCAgEBAICAa0QEMShFVziYIGAQEAgIBAQxCGeAYGAQEAgIBDQCgFBHFrBJQ4WCAgEBAICAUEc4hkQCAgEBAICAa0QEMShFVziYIGAQEAgIBAQxCGeAYGAQEAgIBDQCgFBHFrBJQ4WCAgEBAICAUEc4hkQCAgEBAICAa0QEMShFVziYIGAQEAgIBAQxCGeAYGAQEAgIBDQCgFBHFrBJQ4WCAgEBAICAUEc4hkQCAgEBAICAa0QEMShFVziYIGAQEAgIBAQxCGeAYGAQEAgIBDQCgFBHFrBJQ4WCAgEBAICAUEc4hkQCAgEBAICAa0QEMShFVziYIGAQEAgIBAQxCGeAYGAQEAgIBDQCgFBHFrBJQ4WCAgEBAICAUEc4hkQCAgEBAICAa0QEMShFVziYIGAQEAgIBAQxCGeAYGAQEAgIBDQCgFBHFrBJQ4WCAgEBAICAUEc4hkQCAgEBAICAa0QEMShFVziYIGAQEAgIBAQxCGeAYGAQEAgIBDQCgFBHFrBJQ4WCAgEBAICAUEc4hkQCAgEBAICAa0Q+D8NKNr7uizbxgAAAABJRU5ErkJggg==\" data-filename=\"ISO_9001.png\" style=\"width: 50%;\"><br></p>', NULL, '2020-09-22 21:22:31');
INSERT INTO `texto_calidads` (`id`, `texto`, `created_at`, `updated_at`) VALUES
(2, '<h5><span style=\"font-family: Montserrat-Regular;\"><font color=\"#ff0000\">Laboratorio de control de calidad</font></span></h5><p><font face=\"Montserrat-Regular\" style=\"\" color=\"#505050\"><span style=\"font-family: Montserrat-Medium;\">Mas allá de detectar fallas, en la actualidad, la tendencia mundial está basada en la anticipación temprana de un siniestro eléctrico, mediante la aplicación de técnicas de diagnóstico de cables y sus accesorios, tendientes a controlar desde la instalación de los mismos, el tipo de falla que a futuro tendrán, cuando se constituyan como parte integrante de un tendido subterráneo, permitiendo analizar metro a metro el estado de degradación, ya sea ascendente o estable. Las empresas de energía, cuentan hoy con una opción eficiente, y con normativas habilitantes, para certificar el estado de sus redes subterráneas de energía.</span></font></p><p><font face=\"Montserrat-Regular\" style=\"\" color=\"#505050\"><span style=\"font-family: Montserrat-Medium;\"> Algunas optan por no cambiar sus tradicionales métodos de ensayos, y sus cables siguen fallando en servicio, teniendo que realizar reparaciones de emergencia, clientes insatisfechos, y pérdida de ingresos; sin embargo, el estimar el grado de confiabilidad de un alimentador subterráneo, forma parte de la valoración de los activos de una empresa distribuidora, posibilitando determinar su rentabilidad real proyectada.</span></font></p>', NULL, '2020-09-22 21:22:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `texto_empresas`
--

CREATE TABLE `texto_empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `texto_empresas`
--

INSERT INTO `texto_empresas` (`id`, `texto`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"font-family: Montserrat-Regular;\"><font color=\"#e10915\">Cristian Diez &amp; Cia S.R.L</font></span></p><p><font face=\"Montserrat-Regular\" style=\"\" color=\"#6e6f71\"><span style=\"font-family: Montserrat-Medium;\">Somos fabricantes de cables estándar y especiales bajo pedido para la industria. Nos diferenciamos por la flexibilidad y la capacidad de realizar los conductores bajo pedido y especificaciones del cliente final. Fabricamos bajo normas Europeas y Nacionales. Dependiendo de las exigencias del conductor realizamos nuestros ensayos normalizados en nuestra planta (rigidez dieléctrica, medición de diámetros, ensayos mecánicos, etc.) Para aplicaciones especiales se realizan ensayos en las dependencias de los Organismos Nacionales de Control Industrial.&nbsp;</span></font><br></p>', NULL, '2021-10-27 17:34:43'),
(2, '<p style=\"\"><span style=\"font-family: Montserrat-Medium;\"><font color=\"#6e6f71\">Algunas de las aplicaciones de uso:</font></span></p><ul><li><span style=\"font-family: Montserrat-Regular;\">Cables para instrumentación y Electrónica industrial:</span></li></ul><p style=\"margin-left: 50px;\"><span style=\"font-family: Montserrat-Medium;\"><font color=\"#6e6f71\">Pares, temas y multipolares mallados y apantallados.</font></span></p><ul><li><span style=\"font-family: Montserrat-Regular;\">Cables para Comunicaciones:</span></li></ul><p style=\"margin-left: 50px;\"><span style=\"font-family: Montserrat-Medium;\"><font color=\"#6e6f71\" style=\"\">Profibus, Fieldbus y comunicaciones especiales.</font></span></p><ul><li><span style=\"font-family: Montserrat-Regular;\">Cables de Potencia</span><font color=\"#6e6f71\"><font face=\"Montserrat-Regular\">:</font><br></font></li></ul><p style=\"margin-left: 50px;\"><span style=\"font-family: Montserrat-Medium;\"><font color=\"#6e6f71\">Mallados y apantallados y con protección mecánica de hierro galvanizado.</font></span><br></p><ul><li><font face=\"Montserrat-Regular\">Cables Compensados:</font></li></ul><p style=\"margin-left: 50px;\"><font face=\"Montserrat-Regular\" color=\"#6e6f71\"><span style=\"font-family: Montserrat-Medium;\">Para medición mediante termocuplas.</span></font></p><ul><li><font face=\"Montserrat-Regular\">Cables multipolares</font></li><li><font face=\"Montserrat-Regular\">Cables de baja emisión de halógenos</font></li><li><font face=\"Montserrat-Regular\">Cables cero emisión de halógenos<br></font></li></ul>', NULL, '2020-09-23 19:46:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_descargas`
--

CREATE TABLE `tipo_descargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_descargas`
--

INSERT INTO `tipo_descargas` (`id`, `titulo`, `created_at`, `updated_at`) VALUES
(1, 'producto', NULL, NULL),
(2, 'tecnica', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pablo', '$2y$10$NvR449YfsF01.qc4BvsVBuBgHQ4WY.wr/BNkD/5PIRWHWMh1rx4Ue', NULL, NULL, '2020-09-01 17:46:51', '2020-09-01 17:46:51'),
(2, 'elena', '$2y$10$TcGNf1Xmf15Zl0JdXQXpOe7OvCTuXBW2diThNZtU3cUO6uX5RJy6O', 1, NULL, '2020-09-08 17:48:51', '2020-09-08 17:48:51'),
(3, 'junior', '$2y$10$.6F.D3aP3BtkVwVvlNif0.BuZ/07fctMToeIBW/JbHhOpn5adKJke', 1, NULL, '2020-09-25 16:08:21', '2020-09-25 16:08:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventajas`
--

CREATE TABLE `ventajas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventajas`
--

INSERT INTO `ventajas` (`id`, `imagen`, `titulo`, `created_at`, `updated_at`) VALUES
(2, 'cableeditado.svg', 'Aislados en PVC o LSOHe', '2020-09-03 21:58:42', '2020-09-08 05:42:22'),
(3, 'lupa edit.svg', 'Identificación con color y/o numeración', '2020-09-08 05:40:12', '2020-09-08 05:40:12'),
(4, 'co2edit.svg', 'Baja emisión de humos', '2020-09-08 05:44:00', '2020-09-08 05:44:00'),
(5, 'fuego.svg', 'No se propaga en incendios', '2020-09-08 05:45:25', '2020-09-08 05:45:25'),
(6, 'iconos_Mesa de trabajo 1 copia 3.jpg', 'Marcación  Secuencial', '2020-09-23 06:43:14', '2020-09-23 06:43:14'),
(7, 'iconos_Mesa de trabajo 1 copia 2.jpg', 'Cuerdas  Flexibles', '2020-09-23 06:43:38', '2020-09-23 06:43:38'),
(8, 'iconos_Mesa de trabajo 1 copia 4.jpg', 'Directamente  enterrado', '2020-09-23 06:44:04', '2020-09-23 06:44:04'),
(9, 'iconos_Mesa de trabajo 1 copia 5.jpg', 'Sistemas  Informáticos', '2020-09-23 06:44:26', '2020-09-23 06:44:26'),
(10, 'iconos_Mesa de trabajo 1 copia.jpg', 'Instalación  Industrial', '2020-09-23 06:45:24', '2020-09-23 06:45:24'),
(11, 'iconos_Mesa de trabajo 1.jpg', 'No propagacion  de incendio', '2020-09-23 06:45:44', '2020-09-23 06:45:44'),
(12, 'iconos_Mesa de trabajo 1 copia 6.jpg', 'Bajos Humos', '2020-09-23 06:46:27', '2020-09-23 06:46:27'),
(13, 'iconos_Mesa de trabajo 1 copia 7.jpg', 'Libre de  Halógenos', '2020-09-23 06:46:43', '2020-09-23 06:46:43'),
(14, 'iconos_Mesa de trabajo 1 copia 8.jpg', 'Doble Blindaje', '2020-09-23 06:46:56', '2020-09-23 06:46:56'),
(15, 'iconos_Mesa de trabajo 1 copia 9.jpg', 'Conductor  de Tierra', '2020-09-23 06:47:14', '2020-09-23 06:47:14'),
(16, 'iconos_Mesa de trabajo 1 copia 10.jpg', 'Instalación  Domiciliaria', '2020-09-23 06:47:26', '2020-09-23 06:47:26'),
(17, 'iconos_Mesa de trabajo 1 copia 11.jpg', 'Resistente a la luz solar', '2020-09-23 06:47:38', '2020-09-23 06:47:38'),
(18, 'iconos_Mesa de trabajo 1 copia 18.jpg', 'Protección  interferencias  electromagnéticas', '2020-09-23 06:48:02', '2020-09-23 06:48:02'),
(19, 'iconos_Mesa de trabajo 1 copia 12.jpg', 'Resistente a  hidrocarburos', '2020-09-23 06:48:13', '2020-09-23 06:48:13'),
(20, 'iconos_Mesa de trabajo 1 copia 19.jpg', 'Espacios Públicos  Cerrados', '2020-09-23 06:49:54', '2020-09-23 06:49:54'),
(22, 'iconos_Mesa de trabajo 1 copia 17.jpg', 'rohs-backup', '2020-09-23 06:50:17', '2020-09-23 06:50:17'),
(23, 'iconos_Mesa de trabajo 1 copia 14.jpg', 'UL-backup', '2020-09-23 06:50:29', '2020-09-23 06:50:29'),
(24, 'iconos_Mesa de trabajo 1 copia 15.jpg', 'certificado-backup', '2020-09-23 06:50:52', '2020-09-23 06:50:52'),
(25, 'iconos_Mesa de trabajo 1 copia 16.jpg', 'iram-backup', '2020-09-23 06:51:01', '2020-09-23 06:51:01'),
(26, 'iconos_Mesa de trabajo 1 copia 13.jpg', 'cidet-backup', '2020-09-23 06:51:32', '2020-09-23 06:51:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iconos`
--
ALTER TABLE `iconos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion_presupuestos`
--
ALTER TABLE `seccion_presupuestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sub_categorias`
--
ALTER TABLE `sub_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `texto_calidads`
--
ALTER TABLE `texto_calidads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `texto_empresas`
--
ALTER TABLE `texto_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_descargas`
--
ALTER TABLE `tipo_descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indices de la tabla `ventajas`
--
ALTER TABLE `ventajas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `certificados`
--
ALTER TABLE `certificados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `iconos`
--
ALTER TABLE `iconos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seccion_presupuestos`
--
ALTER TABLE `seccion_presupuestos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `sub_categorias`
--
ALTER TABLE `sub_categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `texto_calidads`
--
ALTER TABLE `texto_calidads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `texto_empresas`
--
ALTER TABLE `texto_empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_descargas`
--
ALTER TABLE `tipo_descargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventajas`
--
ALTER TABLE `ventajas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
