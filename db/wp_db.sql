-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Дек 04 2022 г., 18:25
-- Версия сервера: 8.0.31
-- Версия PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(124, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-03 19:35:07', '2022-11-03 19:35:07', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1667504107;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1667504107;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-03 19:55:43', '2022-11-03 22:55:43', 0, NULL),
(144, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:25:06', '2022-11-03 08:25:06', '[362,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667463906;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667463906;}', 2, 1, '2022-11-03 08:25:58', '2022-11-03 11:25:58', 0, NULL),
(145, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:25:46', '2022-11-03 08:25:46', '[363,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667463946;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667463946;}', 2, 1, '2022-11-03 08:25:58', '2022-11-03 11:25:58', 0, NULL),
(146, 'adjust_download_permissions', 'complete', '2022-11-03 08:26:21', '2022-11-03 08:26:21', '[117]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667463981;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667463981;}', 0, 1, '2022-11-03 08:28:28', '2022-11-03 11:28:28', 0, NULL),
(147, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:26:22', '2022-11-03 08:26:22', '[362,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667463982;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667463982;}', 2, 1, '2022-11-03 08:28:28', '2022-11-03 11:28:28', 0, NULL),
(148, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:26:22', '2022-11-03 08:26:22', '[363,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667463982;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667463982;}', 2, 1, '2022-11-03 08:28:28', '2022-11-03 11:28:28', 0, NULL),
(149, 'adjust_download_permissions', 'complete', '2022-11-03 08:34:28', '2022-11-03 08:34:28', '[117]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667464468;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667464468;}', 0, 1, '2022-11-03 08:34:56', '2022-11-03 11:34:56', 0, NULL),
(150, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:34:30', '2022-11-03 08:34:30', '[363,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667464470;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667464470;}', 2, 1, '2022-11-03 08:34:56', '2022-11-03 11:34:56', 0, NULL),
(151, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:34:30', '2022-11-03 08:34:30', '[362,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667464470;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667464470;}', 2, 1, '2022-11-03 08:34:56', '2022-11-03 11:34:56', 0, NULL),
(152, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:34:37', '2022-11-03 08:34:37', '[363,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667464477;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667464477;}', 2, 1, '2022-11-03 08:34:56', '2022-11-03 11:34:56', 0, NULL),
(153, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:34:39', '2022-11-03 08:34:39', '[362,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667464479;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667464479;}', 2, 1, '2022-11-03 08:34:56', '2022-11-03 11:34:56', 0, NULL),
(154, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-03 08:34:39', '2022-11-03 08:34:39', '[117,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1667464479;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1667464479;}', 2, 1, '2022-11-03 08:34:57', '2022-11-03 11:34:57', 0, NULL),
(155, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-04 19:55:43', '2022-11-04 19:55:43', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1667591743;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1667591743;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-04 19:56:26', '2022-11-04 22:56:26', 0, NULL),
(156, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-05 19:56:26', '2022-11-05 19:56:26', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1667678186;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1667678186;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-06 17:21:06', '2022-11-06 20:21:06', 0, NULL),
(157, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-07 17:21:06', '2022-11-07 17:21:06', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1667841666;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1667841666;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-13 10:19:37', '2022-11-13 13:19:37', 0, NULL),
(158, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-14 10:19:37', '2022-11-14 10:19:37', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668421177;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668421177;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-14 10:29:56', '2022-11-14 13:29:56', 0, NULL),
(159, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-15 10:29:56', '2022-11-15 10:29:56', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668508196;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668508196;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-15 11:12:29', '2022-11-15 14:12:29', 0, NULL),
(160, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-16 11:12:30', '2022-11-16 11:12:30', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668597150;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668597150;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-16 11:17:08', '2022-11-16 14:17:08', 0, NULL),
(161, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-17 11:17:08', '2022-11-17 11:17:08', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668683828;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668683828;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-17 17:19:23', '2022-11-17 20:19:23', 0, NULL),
(162, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-18 17:19:23', '2022-11-18 17:19:23', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1668791963;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1668791963;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-21 10:21:28', '2022-11-21 13:21:28', 0, NULL),
(163, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-22 10:21:28', '2022-11-22 10:21:28', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669112488;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669112488;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-22 17:03:10', '2022-11-22 20:03:10', 0, NULL),
(164, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-23 17:03:10', '2022-11-23 17:03:10', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669222990;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669222990;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-23 17:04:07', '2022-11-23 20:04:07', 0, NULL),
(165, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-24 17:04:07', '2022-11-24 17:04:07', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669309447;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669309447;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-24 20:51:01', '2022-11-24 23:51:01', 0, NULL),
(166, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-25 20:51:01', '2022-11-25 20:51:01', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669409461;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669409461;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-25 20:53:04', '2022-11-25 23:53:04', 0, NULL),
(167, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-25 16:05:27', '2022-11-25 16:05:27', '[320,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1669392327;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1669392327;}', 2, 1, '2022-11-25 16:06:14', '2022-11-25 19:06:14', 0, NULL),
(168, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-25 16:05:28', '2022-11-25 16:05:28', '[302,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1669392328;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1669392328;}', 2, 1, '2022-11-25 16:06:14', '2022-11-25 19:06:14', 0, NULL),
(169, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-11-25 16:05:28', '2022-11-25 16:05:28', '[300,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1669392328;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1669392328;}', 2, 1, '2022-11-25 16:06:14', '2022-11-25 19:06:14', 0, NULL),
(170, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-26 20:53:04', '2022-11-26 20:53:04', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669495984;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669495984;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-26 20:59:03', '2022-11-26 23:59:03', 0, NULL),
(171, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-27 20:59:03', '2022-11-27 20:59:03', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669582743;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669582743;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-27 22:02:47', '2022-11-28 01:02:47', 0, NULL),
(172, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-28 22:02:47', '2022-11-28 22:02:47', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669672967;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669672967;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-11-29 11:36:34', '2022-11-29 14:36:34', 0, NULL),
(173, 'woocommerce_cleanup_draft_orders', 'complete', '2022-11-30 11:36:35', '2022-11-30 11:36:35', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1669808195;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1669808195;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-12-02 19:55:41', '2022-12-02 22:55:41', 0, NULL),
(174, 'woocommerce_cleanup_draft_orders', 'complete', '2022-12-03 19:55:41', '2022-12-03 19:55:41', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1670097341;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1670097341;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-12-04 18:25:16', '2022-12-04 21:25:16', 0, NULL),
(175, 'woocommerce_cleanup_draft_orders', 'pending', '2022-12-05 18:25:16', '2022-12-05 18:25:16', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1670264716;s:18:\"\0*\0first_timestamp\";i:1661330084;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1670264716;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates'),
(3, 'wc-admin-data'),
(4, 'wc_update_product_default_cat');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint UNSIGNED NOT NULL,
  `action_id` bigint UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(217, 124, 'действие создано', '2022-11-02 19:35:07', '2022-11-02 19:35:07'),
(273, 144, 'действие создано', '2022-11-03 08:25:05', '2022-11-03 08:25:05'),
(274, 145, 'действие создано', '2022-11-03 08:25:45', '2022-11-03 08:25:45'),
(277, 144, 'действие началось через Async Request', '2022-11-03 08:25:58', '2022-11-03 08:25:58'),
(278, 144, 'действие завершено через Async Request', '2022-11-03 08:25:58', '2022-11-03 08:25:58'),
(279, 145, 'действие началось через Async Request', '2022-11-03 08:25:58', '2022-11-03 08:25:58'),
(280, 145, 'действие завершено через Async Request', '2022-11-03 08:25:58', '2022-11-03 08:25:58'),
(281, 146, 'действие создано', '2022-11-03 08:26:20', '2022-11-03 08:26:20'),
(282, 147, 'действие создано', '2022-11-03 08:26:21', '2022-11-03 08:26:21'),
(283, 148, 'действие создано', '2022-11-03 08:26:21', '2022-11-03 08:26:21'),
(284, 146, 'действие началось через WP Cron', '2022-11-03 08:28:28', '2022-11-03 08:28:28'),
(285, 146, 'действие завершено через WP Cron', '2022-11-03 08:28:28', '2022-11-03 08:28:28'),
(286, 147, 'действие началось через WP Cron', '2022-11-03 08:28:28', '2022-11-03 08:28:28'),
(287, 147, 'действие завершено через WP Cron', '2022-11-03 08:28:28', '2022-11-03 08:28:28'),
(288, 148, 'действие началось через WP Cron', '2022-11-03 08:28:28', '2022-11-03 08:28:28'),
(289, 148, 'действие завершено через WP Cron', '2022-11-03 08:28:28', '2022-11-03 08:28:28'),
(290, 149, 'действие создано', '2022-11-03 08:34:27', '2022-11-03 08:34:27'),
(291, 150, 'действие создано', '2022-11-03 08:34:29', '2022-11-03 08:34:29'),
(292, 151, 'действие создано', '2022-11-03 08:34:29', '2022-11-03 08:34:29'),
(293, 152, 'действие создано', '2022-11-03 08:34:36', '2022-11-03 08:34:36'),
(294, 153, 'действие создано', '2022-11-03 08:34:38', '2022-11-03 08:34:38'),
(295, 154, 'действие создано', '2022-11-03 08:34:38', '2022-11-03 08:34:38'),
(296, 149, 'действие началось через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(297, 149, 'действие завершено через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(298, 150, 'действие началось через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(299, 150, 'действие завершено через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(300, 151, 'действие началось через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(301, 151, 'действие завершено через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(302, 152, 'действие началось через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(303, 152, 'действие завершено через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(304, 153, 'действие началось через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(305, 153, 'действие завершено через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(306, 154, 'действие началось через Async Request', '2022-11-03 08:34:56', '2022-11-03 08:34:56'),
(307, 154, 'действие завершено через Async Request', '2022-11-03 08:34:57', '2022-11-03 08:34:57'),
(308, 124, 'действие началось через WP Cron', '2022-11-03 19:55:43', '2022-11-03 19:55:43'),
(309, 124, 'действие завершено через WP Cron', '2022-11-03 19:55:43', '2022-11-03 19:55:43'),
(310, 155, 'действие создано', '2022-11-03 19:55:43', '2022-11-03 19:55:43'),
(311, 155, 'действие началось через WP Cron', '2022-11-04 19:56:26', '2022-11-04 19:56:26'),
(312, 155, 'действие завершено через WP Cron', '2022-11-04 19:56:26', '2022-11-04 19:56:26'),
(313, 156, 'действие создано', '2022-11-04 19:56:26', '2022-11-04 19:56:26'),
(314, 156, 'действие началось через WP Cron', '2022-11-06 17:21:04', '2022-11-06 17:21:04'),
(315, 156, 'действие завершено через WP Cron', '2022-11-06 17:21:06', '2022-11-06 17:21:06'),
(316, 157, 'действие создано', '2022-11-06 17:21:06', '2022-11-06 17:21:06'),
(317, 157, 'действие началось через WP Cron', '2022-11-13 10:19:31', '2022-11-13 10:19:31'),
(318, 157, 'действие завершено через WP Cron', '2022-11-13 10:19:37', '2022-11-13 10:19:37'),
(319, 158, 'действие создано', '2022-11-13 10:19:37', '2022-11-13 10:19:37'),
(320, 158, 'действие началось через WP Cron', '2022-11-14 10:29:55', '2022-11-14 10:29:55'),
(321, 158, 'действие завершено через WP Cron', '2022-11-14 10:29:56', '2022-11-14 10:29:56'),
(322, 159, 'действие создано', '2022-11-14 10:29:56', '2022-11-14 10:29:56'),
(323, 159, 'действие началось через WP Cron', '2022-11-15 11:12:29', '2022-11-15 11:12:29'),
(324, 159, 'действие завершено через WP Cron', '2022-11-15 11:12:29', '2022-11-15 11:12:29'),
(325, 160, 'действие создано', '2022-11-15 11:12:30', '2022-11-15 11:12:30'),
(326, 160, 'действие началось через WP Cron', '2022-11-16 11:17:05', '2022-11-16 11:17:05'),
(327, 160, 'действие завершено через WP Cron', '2022-11-16 11:17:08', '2022-11-16 11:17:08'),
(328, 161, 'действие создано', '2022-11-16 11:17:08', '2022-11-16 11:17:08'),
(329, 161, 'действие началось через WP Cron', '2022-11-17 17:19:22', '2022-11-17 17:19:22'),
(330, 161, 'действие завершено через WP Cron', '2022-11-17 17:19:23', '2022-11-17 17:19:23'),
(331, 162, 'действие создано', '2022-11-17 17:19:23', '2022-11-17 17:19:23'),
(332, 162, 'действие началось через WP Cron', '2022-11-21 10:21:28', '2022-11-21 10:21:28'),
(333, 162, 'действие завершено через WP Cron', '2022-11-21 10:21:28', '2022-11-21 10:21:28'),
(334, 163, 'действие создано', '2022-11-21 10:21:29', '2022-11-21 10:21:29'),
(335, 163, 'действие началось через WP Cron', '2022-11-22 17:03:09', '2022-11-22 17:03:09'),
(336, 163, 'действие завершено через WP Cron', '2022-11-22 17:03:09', '2022-11-22 17:03:09'),
(337, 164, 'действие создано', '2022-11-22 17:03:10', '2022-11-22 17:03:10'),
(338, 164, 'действие началось через WP Cron', '2022-11-23 17:04:07', '2022-11-23 17:04:07'),
(339, 164, 'действие завершено через WP Cron', '2022-11-23 17:04:07', '2022-11-23 17:04:07'),
(340, 165, 'действие создано', '2022-11-23 17:04:07', '2022-11-23 17:04:07'),
(341, 165, 'действие началось через WP Cron', '2022-11-24 20:51:01', '2022-11-24 20:51:01'),
(342, 165, 'действие завершено через WP Cron', '2022-11-24 20:51:01', '2022-11-24 20:51:01'),
(343, 166, 'действие создано', '2022-11-24 20:51:01', '2022-11-24 20:51:01'),
(344, 167, 'действие создано', '2022-11-25 16:05:26', '2022-11-25 16:05:26'),
(345, 168, 'действие создано', '2022-11-25 16:05:27', '2022-11-25 16:05:27'),
(346, 169, 'действие создано', '2022-11-25 16:05:27', '2022-11-25 16:05:27'),
(347, 167, 'действие началось через WP Cron', '2022-11-25 16:06:13', '2022-11-25 16:06:13'),
(348, 167, 'действие завершено через WP Cron', '2022-11-25 16:06:14', '2022-11-25 16:06:14'),
(349, 168, 'действие началось через WP Cron', '2022-11-25 16:06:14', '2022-11-25 16:06:14'),
(350, 168, 'действие завершено через WP Cron', '2022-11-25 16:06:14', '2022-11-25 16:06:14'),
(351, 169, 'действие началось через WP Cron', '2022-11-25 16:06:14', '2022-11-25 16:06:14'),
(352, 169, 'действие завершено через WP Cron', '2022-11-25 16:06:14', '2022-11-25 16:06:14'),
(353, 166, 'действие началось через WP Cron', '2022-11-25 20:53:03', '2022-11-25 20:53:03'),
(354, 166, 'действие завершено через WP Cron', '2022-11-25 20:53:04', '2022-11-25 20:53:04'),
(355, 170, 'действие создано', '2022-11-25 20:53:04', '2022-11-25 20:53:04'),
(356, 170, 'действие началось через WP Cron', '2022-11-26 20:59:03', '2022-11-26 20:59:03'),
(357, 170, 'действие завершено через WP Cron', '2022-11-26 20:59:03', '2022-11-26 20:59:03'),
(358, 171, 'действие создано', '2022-11-26 20:59:03', '2022-11-26 20:59:03'),
(359, 171, 'действие началось через WP Cron', '2022-11-27 22:02:47', '2022-11-27 22:02:47'),
(360, 171, 'действие завершено через WP Cron', '2022-11-27 22:02:47', '2022-11-27 22:02:47'),
(361, 172, 'действие создано', '2022-11-27 22:02:47', '2022-11-27 22:02:47'),
(362, 172, 'действие началось через WP Cron', '2022-11-29 11:36:32', '2022-11-29 11:36:32'),
(363, 172, 'действие завершено через WP Cron', '2022-11-29 11:36:34', '2022-11-29 11:36:34'),
(364, 173, 'действие создано', '2022-11-29 11:36:35', '2022-11-29 11:36:35'),
(365, 173, 'действие началось через Async Request', '2022-12-02 19:55:41', '2022-12-02 19:55:41'),
(366, 173, 'действие завершено через Async Request', '2022-12-02 19:55:41', '2022-12-02 19:55:41'),
(367, 174, 'действие создано', '2022-12-02 19:55:41', '2022-12-02 19:55:41'),
(368, 174, 'действие началось через WP Cron', '2022-12-04 18:25:16', '2022-12-04 18:25:16'),
(369, 174, 'действие завершено через WP Cron', '2022-12-04 18:25:16', '2022-12-04 18:25:16'),
(370, 175, 'действие создано', '2022-12-04 18:25:16', '2022-12-04 18:25:16');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-04-27 16:27:40', '2022-04-27 13:27:40', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/', 'yes'),
(2, 'home', 'http://localhost/', 'yes'),
(3, 'blogname', 'testsite', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'addffggy@ygg.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:240:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"artist/?$\";s:26:\"index.php?post_type=artist\";s:39:\"artist/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=artist&feed=$matches[1]\";s:34:\"artist/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=artist&feed=$matches[1]\";s:26:\"artist/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=artist&paged=$matches[1]\";s:7:\"book/?$\";s:24:\"index.php?post_type=book\";s:37:\"book/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=book&feed=$matches[1]\";s:32:\"book/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=book&feed=$matches[1]\";s:24:\"book/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=book&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"banner_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?banner_categories=$matches[1]&feed=$matches[2]\";s:53:\"banner_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?banner_categories=$matches[1]&feed=$matches[2]\";s:34:\"banner_categories/([^/]+)/embed/?$\";s:50:\"index.php?banner_categories=$matches[1]&embed=true\";s:46:\"banner_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?banner_categories=$matches[1]&paged=$matches[2]\";s:28:\"banner_categories/([^/]+)/?$\";s:39:\"index.php?banner_categories=$matches[1]\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:32:\"banner/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?banner=$matches[1]&wc-api=$matches[3]\";s:38:\"banner/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"banner/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"artist/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"artist/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"artist/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"artist/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"artist/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"artist/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"artist/([^/]+)/embed/?$\";s:39:\"index.php?artist=$matches[1]&embed=true\";s:27:\"artist/([^/]+)/trackback/?$\";s:33:\"index.php?artist=$matches[1]&tb=1\";s:47:\"artist/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?artist=$matches[1]&feed=$matches[2]\";s:42:\"artist/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?artist=$matches[1]&feed=$matches[2]\";s:35:\"artist/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?artist=$matches[1]&paged=$matches[2]\";s:42:\"artist/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?artist=$matches[1]&cpage=$matches[2]\";s:32:\"artist/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?artist=$matches[1]&wc-api=$matches[3]\";s:38:\"artist/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"artist/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"artist/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?artist=$matches[1]&page=$matches[2]\";s:23:\"artist/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"artist/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"artist/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"artist/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"artist/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"artist/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"book/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"book/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"book/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"book/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"book/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"book/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"book/([^/]+)/embed/?$\";s:37:\"index.php?book=$matches[1]&embed=true\";s:25:\"book/([^/]+)/trackback/?$\";s:31:\"index.php?book=$matches[1]&tb=1\";s:45:\"book/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?book=$matches[1]&feed=$matches[2]\";s:40:\"book/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?book=$matches[1]&feed=$matches[2]\";s:33:\"book/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?book=$matches[1]&paged=$matches[2]\";s:40:\"book/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?book=$matches[1]&cpage=$matches[2]\";s:30:\"book/([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?book=$matches[1]&wc-api=$matches[3]\";s:36:\"book/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"book/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"book/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?book=$matches[1]&page=$matches[2]\";s:21:\"book/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"book/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"book/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"book/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"book/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"book/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=39&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$\";s:75:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:69:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1\";s:64:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:52:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]\";s:49:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:83:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&wc-api=$matches[5]\";s:51:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:48:\"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]\";s:36:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:13:\"RADL/RADL.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:71:\"disable-dashboard-for-woocommerce/disable-dashboard-for-woocommerce.php\";i:4;s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";i:5;s:21:\"mailpoet/mailpoet.php\";i:6;s:37:\"user-role-editor/user-role-editor.php\";i:7;s:11:\"wgu/wgu.php\";i:8;s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";i:9;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'CustomTheme', 'yes'),
(41, 'stylesheet', 'CustomTheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:37:\"user-role-editor/user-role-editor.php\";a:2:{i:0;s:16:\"User_Role_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '36', 'yes'),
(82, 'page_on_front', '39', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1682928289', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:128:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:12:\"create_posts\";b:1;s:17:\"install_languages\";b:1;s:14:\"resume_plugins\";b:1;s:13:\"resume_themes\";b:1;s:18:\"view_query_monitor\";b:1;s:23:\"view_site_health_checks\";b:1;s:8:\"checkout\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:4:{s:19:\"publish_shop_orders\";b:1;s:4:\"read\";b:1;s:21:\"read_private_products\";b:1;s:12:\"read_product\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:5:\"guest\";a:2:{s:4:\"name\";s:5:\"Guest\";s:12:\"capabilities\";a:3:{s:12:\"create_users\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'ru_RU', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:12:\"awps-sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:20:{i:1670178332;a:1:{s:28:\"wp_1_wc_privacy_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:37:\"wp_1_wc_privacy_cleanup_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1670178365;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1670179466;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1670179766;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1670181062;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1670181519;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1670181916;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1670183356;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1670187438;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1670187600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1670194146;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1670203666;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1670204946;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1670224708;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1670246865;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1670246871;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1670246876;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1670506066;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1670961006;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(141, 'theme_mods_twentytwentyone', 'a:3:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1651066158;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'current_theme', 'Theme', 'yes'),
(143, 'theme_mods_CustomTheme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:10:\"top_header\";i:53;s:13:\"main_category\";i:53;s:7:\"banners\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1663495038;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";i:3;s:8:\"search-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:12:\"awps-sidebar\";a:0:{}}}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'widget_widget_awps', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'recently_activated', 'a:0:{}', 'yes'),
(198, 'theme_mods_Vue-wordpress-master', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:4:\"main\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1655106373;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";i:3;s:8:\"search-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}}}}', 'yes'),
(202, 'theme_mods_twentytwenty', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1651563725;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";i:3;s:8:\"search-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(260, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(267, 'new_admin_email', 'addffggy@ygg.ru', 'yes'),
(293, 'recovery_mode_email_last_sent', '1665776848', 'yes'),
(294, 'recovery_keys', 'a:0:{}', 'yes'),
(313, 'action_scheduler_hybrid_store_demarkation', '51', 'yes'),
(314, 'schema-ActionScheduler_StoreSchema', '6.0.1651907885', 'yes'),
(315, 'schema-ActionScheduler_LoggerSchema', '3.0.1651907885', 'yes'),
(318, 'woocommerce_schema_version', '430', 'yes'),
(319, 'woocommerce_store_address', 'ул. Блокера, дом 3', 'yes'),
(320, 'woocommerce_store_address_2', '', 'yes'),
(321, 'woocommerce_store_city', 'горгород', 'yes'),
(322, 'woocommerce_default_country', 'RU', 'yes'),
(323, 'woocommerce_store_postcode', '535321', 'yes'),
(324, 'woocommerce_allowed_countries', 'all', 'yes'),
(325, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(326, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(327, 'woocommerce_ship_to_countries', '', 'yes'),
(328, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(329, 'woocommerce_default_customer_address', 'base', 'yes'),
(330, 'woocommerce_calc_taxes', 'yes', 'yes'),
(331, 'woocommerce_enable_coupons', 'no', 'yes'),
(332, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(333, 'woocommerce_currency', 'RUB', 'yes'),
(334, 'woocommerce_currency_pos', 'right_space', 'yes'),
(335, 'woocommerce_price_thousand_sep', '', 'yes'),
(336, 'woocommerce_price_decimal_sep', '', 'yes'),
(337, 'woocommerce_price_num_decimals', '0', 'yes'),
(338, 'woocommerce_shop_page_id', '52', 'yes'),
(339, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(340, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(341, 'woocommerce_placeholder_image', '51', 'yes'),
(342, 'woocommerce_weight_unit', 'kg', 'yes'),
(343, 'woocommerce_dimension_unit', 'cm', 'yes'),
(344, 'woocommerce_enable_reviews', 'yes', 'yes'),
(345, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(346, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(347, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(348, 'woocommerce_review_rating_required', 'yes', 'no'),
(349, 'woocommerce_manage_stock', 'yes', 'yes'),
(350, 'woocommerce_hold_stock_minutes', '60', 'no'),
(351, 'woocommerce_notify_low_stock', 'yes', 'no'),
(352, 'woocommerce_notify_no_stock', 'yes', 'no'),
(353, 'woocommerce_stock_email_recipient', 'addffggy@ygg.ru', 'no'),
(354, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(355, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(356, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(357, 'woocommerce_stock_format', '', 'yes'),
(358, 'woocommerce_file_download_method', 'force', 'no'),
(359, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(360, 'woocommerce_downloads_require_login', 'no', 'no'),
(361, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(362, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(363, 'woocommerce_attribute_lookup_enabled', 'yes', 'yes'),
(364, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(365, 'woocommerce_prices_include_tax', 'no', 'yes'),
(366, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(367, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(368, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(369, 'woocommerce_tax_classes', '', 'yes'),
(370, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(371, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(372, 'woocommerce_price_display_suffix', '', 'yes'),
(373, 'woocommerce_tax_total_display', 'itemized', 'no'),
(374, 'woocommerce_enable_shipping_calc', 'yes', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(375, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(376, 'woocommerce_ship_to_destination', 'billing', 'no'),
(377, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(378, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(379, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(380, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(381, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(382, 'woocommerce_registration_generate_username', 'yes', 'no'),
(383, 'woocommerce_registration_generate_password', 'yes', 'no'),
(384, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(385, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(386, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(387, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(388, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(389, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(390, 'woocommerce_trash_pending_orders', '', 'no'),
(391, 'woocommerce_trash_failed_orders', '', 'no'),
(392, 'woocommerce_trash_cancelled_orders', '', 'no'),
(393, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(394, 'woocommerce_email_from_name', 'testsite', 'no'),
(395, 'woocommerce_email_from_address', 'addffggy@ygg.ru', 'no'),
(396, 'woocommerce_email_header_image', '', 'no'),
(397, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(398, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(399, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(400, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(401, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(402, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(403, 'woocommerce_cart_page_id', '53', 'no'),
(404, 'woocommerce_checkout_page_id', '54', 'no'),
(405, 'woocommerce_myaccount_page_id', '55', 'no'),
(406, 'woocommerce_terms_page_id', '', 'no'),
(407, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(408, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(409, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(410, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(411, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(412, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(413, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(414, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(415, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(416, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(417, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(418, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(419, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(420, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(421, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(422, 'woocommerce_api_enabled', 'no', 'yes'),
(423, 'woocommerce_allow_tracking', 'yes', 'no'),
(424, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(425, 'woocommerce_single_image_width', '600', 'yes'),
(426, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(427, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(428, 'woocommerce_demo_store', 'no', 'no'),
(429, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(430, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(431, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(434, 'default_product_cat', '17', 'yes'),
(436, 'woocommerce_refund_returns_page_id', '56', 'yes'),
(439, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:15:\"addffggy@ygg.ru\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:15:\"addffggy@ygg.ru\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(440, 'woocommerce_version', '6.5.1', 'yes'),
(441, 'woocommerce_db_version', '6.5.1', 'yes'),
(442, 'woocommerce_inbox_variant_assignment', '9', 'yes'),
(446, '_transient_jetpack_autoloader_plugin_paths', 'a:2:{i:0;s:46:\"{{WP_PLUGIN_DIR}}/woo-gutenberg-products-block\";i:1;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(447, 'action_scheduler_lock_async-request-runner', '1670178393', 'yes'),
(448, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(449, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"UtLdy3wqHqbRsIm3aXZD3v3bA2wN9WQd\";}', 'yes'),
(451, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(452, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(454, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(456, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(458, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(460, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(462, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(464, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(466, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(468, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(470, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(472, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(474, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(478, 'woocommerce_admin_version', '3.3.2', 'yes'),
(479, 'woocommerce_admin_install_timestamp', '1651907908', 'yes'),
(480, 'wc_remote_inbox_notifications_wca_updated', '', 'no'),
(485, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(486, 'wc_admin_show_legacy_coupon_menu', '0', 'yes'),
(487, 'wc_blocks_surface_cart_checkout_probability', '42', 'yes'),
(488, 'wc_blocks_db_schema_version', '260', 'yes'),
(489, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(490, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(491, '_transient_woocommerce_reports-transient-version', '1652117334', 'yes'),
(506, 'woocommerce_task_list_completed_lists', 'a:2:{i:0;s:8:\"extended\";i:1;s:19:\"extended_two_column\";}', 'yes'),
(507, '_transient_shipping-transient-version', '1651908047', 'yes'),
(511, '_transient_product_query-transient-version', '1669392327', 'yes'),
(512, '_transient_product-transient-version', '1667464478', 'yes'),
(513, 'woocommerce_task_list_tracked_completed_tasks', 'a:4:{i:0;s:8:\"products\";i:1;s:13:\"store_details\";i:2;s:8:\"purchase\";i:3;s:14:\"store_creation\";}', 'yes'),
(521, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(582, 'woocommerce_onboarding_profile', 'a:9:{s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:15:\"addffggy@ygg.ru\";s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:5:\"other\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:6:\"11-100\";s:14:\"selling_venues\";s:2:\"no\";s:12:\"setup_client\";b:0;s:19:\"business_extensions\";a:3:{i:0;s:7:\"jetpack\";i:1;s:8:\"mailpoet\";i:2;s:23:\"google-listings-and-ads\";}s:9:\"completed\";b:1;}', 'yes'),
(583, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(599, 'woocommerce_task_list_hidden_lists', 'a:1:{i:0;s:5:\"setup\";}', 'yes'),
(600, 'woocommerce_task_list_complete', 'yes', 'yes'),
(607, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(608, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(631, 'wcbloat_admin_disable', 'yes', 'yes'),
(632, 'wcbloat_marketing_disable', 'yes', 'yes'),
(633, 'wcbloat_wc_helper_disable', 'yes', 'yes'),
(660, 'woocommerce_tracker_ua', 'a:10:{i:0;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36\";i:1;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36\";i:2;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36\";i:3;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36\";i:4;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";i:5;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";i:6;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";i:7;s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";i:8;s:131:\"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36\";i:9;s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";}', 'yes'),
(797, 'woocommerce_ces_tracks_queue', 'a:1:{i:0;a:6:{s:6:\"action\";s:14:\"product_update\";s:5:\"label\";s:79:\"Насколько просто было редактировать товар?\";s:14:\"onsubmit_label\";s:51:\"Благодарим вас за ваш отзыв!\";s:7:\"pagenow\";s:7:\"product\";s:9:\"adminpage\";s:8:\"post-php\";s:5:\"props\";a:1:{s:13:\"product_count\";i:13;}}}', 'yes'),
(798, 'woocommerce_clear_ces_tracks_queue_for_page', '', 'yes'),
(896, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:53;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1663495154;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(899, 'storefront_nux_fresh_site', '0', 'yes'),
(900, 'woocommerce_catalog_rows', '4', 'yes'),
(901, 'woocommerce_catalog_columns', '3', 'yes'),
(1718, 'category_children', 'a:0:{}', 'yes'),
(1772, 'woocommerce_task_list_reminder_bar_hidden', 'yes', 'yes'),
(1773, 'wc_has_tracked_default_theme', '1', 'yes'),
(2646, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(2655, 'wcbloat_wc_status_meta_box_disable', 'yes', 'yes'),
(2656, 'disable_admin_dashboard_setup_widget', 'yes', 'yes'),
(2657, 'wcbloat_wc_marketplace', 'yes', 'yes'),
(2658, 'wcbloat_remove_addon_submenu', 'yes', 'yes'),
(2659, 'wcbloat_password_meter_disable', 'yes', 'yes'),
(2660, 'wcbloat_wc_scripts_disable', 'yes', 'yes'),
(2661, 'wcbloat_wc_fragmentation_disable', 'yes', 'yes'),
(2662, 'wcbloat_wc_widgets_disable', 'yes', 'yes'),
(2663, 'wcbloat_jetpack_disable', 'yes', 'yes'),
(2664, 'wcbloat_wc_skyverge_disable', 'yes', 'yes'),
(2665, 'wcbloat_elementor_widget_disable', 'yes', 'yes'),
(2754, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2757, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(2758, 'user_count', '5', 'no'),
(2759, 'db_upgraded', '', 'yes'),
(2788, 'theme_mods_', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1656494297;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";i:3;s:8:\"search-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:12:\"awps-sidebar\";a:0:{}}}}', 'yes'),
(2789, 'theme_mods_twentynineteen', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1656494323;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";i:3;s:8:\"search-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:12:\"awps-sidebar\";a:0:{}}}}', 'yes'),
(2864, 'https_migration_required', '1', 'yes'),
(3039, 'cptui_new_install', 'false', 'yes'),
(3040, 'cptui_post_types', 'a:1:{s:6:\"banner\";a:34:{s:4:\"name\";s:6:\"banner\";s:5:\"label\";s:7:\"Banners\";s:14:\"singular_label\";s:6:\"Banner\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:7:\"banners\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:17:\"banner_categories\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:7:\"Banners\";s:9:\"all_items\";s:11:\"All Banners\";s:7:\"add_new\";s:7:\"Add New\";s:12:\"add_new_item\";s:14:\"Add New Banner\";s:9:\"edit_item\";s:11:\"Edit Banner\";s:8:\"new_item\";s:10:\"New Banner\";s:9:\"view_item\";s:11:\"View Banner\";s:10:\"view_items\";s:12:\"View Banners\";s:12:\"search_items\";s:14:\"Search Banners\";s:9:\"not_found\";s:16:\"No Banners Found\";s:18:\"not_found_in_trash\";s:25:\"No Banners found in Trash\";s:14:\"featured_image\";s:30:\"Featured image for this banner\";s:18:\"set_featured_image\";s:35:\"Set аeatured image for this banner\";s:21:\"remove_featured_image\";s:37:\"Remove featured image for this banner\";s:18:\"use_featured_image\";s:38:\"Use as аeatured image for this banner\";s:8:\"archives\";s:14:\"Banner archive\";s:16:\"insert_into_item\";s:18:\"Insert into banner\";s:21:\"uploaded_to_this_item\";s:23:\"Uploaded to this Banner\";s:17:\"filter_items_list\";s:19:\"Filter banners list\";s:21:\"items_list_navigation\";s:23:\"Banners List Navigation\";s:10:\"items_list\";s:12:\"Banners list\";s:10:\"attributes\";s:17:\"Banner Attributes\";s:14:\"name_admin_bar\";s:6:\"Banner\";s:14:\"item_published\";s:16:\"Banner published\";s:24:\"item_published_privately\";s:26:\"Banner published privately\";s:22:\"item_reverted_to_draft\";s:24:\"Banner reverted to draft\";s:14:\"item_scheduled\";s:15:\"Banner sheduled\";s:12:\"item_updated\";s:14:\"Banner updated\";s:17:\"parent_item_colon\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:10:\"Add Banner\";}}', 'yes'),
(3107, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(3140, 'cptui_taxonomies', 'a:1:{s:17:\"banner_categories\";a:28:{s:4:\"name\";s:17:\"banner_categories\";s:5:\"label\";s:17:\"Banner Categories\";s:14:\"singular_label\";s:15:\"Banner Category\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:6:\"banner\";}}}', 'yes'),
(3405, 'Activated_Akismet', '1', 'yes'),
(4171, 'product_cat_children', 'a:5:{i:20;a:7:{i:0;i:21;i:1;i:24;i:2;i:25;i:3;i:82;i:4;i:83;i:5;i:84;i:6;i:86;}i:22;a:1:{i:0;i:23;}i:21;a:4:{i:0;i:78;i:1;i:79;i:2;i:80;i:3;i:81;}i:25;a:1:{i:0;i:85;}i:78;a:1:{i:0;i:87;}}', 'yes'),
(4472, '_transient_orders-transient-version', '1668456476', 'yes'),
(5023, 'user_role_editor', 'a:2:{s:11:\"ure_version\";s:4:\"4.63\";s:19:\"ure_hide_pro_banner\";i:1;}', 'yes'),
(5024, 'wp_backup_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'no'),
(5025, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(5030, 'ure_role_additional_options_values', 'a:2:{s:8:\"customer\";a:0:{}s:5:\"guest\";a:0:{}}', 'yes'),
(5095, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:36:\"HTTPS запрос неудачен.\";}}', 'yes'),
(5106, 'action_scheduler_migration_status', 'complete', 'yes'),
(5110, 'finished_updating_comment_type', '1', 'yes'),
(5113, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":0}', 'yes'),
(5136, 'woocommerce_admin_last_orders_milestone', '10', 'yes'),
(5138, 'woocommerce_tracker_last_send', '1669721803', 'yes'),
(5148, 'can_compress_scripts', '0', 'no'),
(5164, 'wc_downloads_approved_directories_mode', 'disabled', 'yes'),
(6887, 'woocommerce_sales_record_date', '2022-10-15', 'yes'),
(6888, 'woocommerce_sales_record_amount', '324000', 'yes'),
(7100, '_transient_wc_attribute_taxonomies', 'a:4:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"brand\";s:15:\"attribute_label\";s:10:\"Бренд\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:8:\"material\";s:15:\"attribute_label\";s:16:\"Материал\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"4\";s:14:\"attribute_name\";s:6:\"razmer\";s:15:\"attribute_label\";s:12:\"Размер\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:3;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"5\";s:14:\"attribute_name\";s:5:\"tcvet\";s:15:\"attribute_label\";s:8:\"Цвет\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(7285, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"addffggy@ygg.ru\";s:7:\"version\";s:5:\"6.1.1\";s:9:\"timestamp\";i:1670011030;}', 'no'),
(8866, '_transient_timeout_wc_var_prices_274', '1671985458', 'no'),
(8867, '_transient_wc_var_prices_274', '{\"version\":\"1667464478\",\"4173c8e28f114c545d779c47fd7e2df1\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]},\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'no'),
(10463, '_transient_timeout_wc_term_counts', '1671984734', 'no'),
(10464, '_transient_wc_term_counts', 'a:28:{i:87;s:1:\"0\";i:59;s:0:\"\";i:84;s:0:\"\";i:86;s:0:\"\";i:58;s:0:\"\";i:82;s:0:\"\";i:24;s:1:\"0\";i:54;s:0:\"\";i:56;s:0:\"\";i:20;s:2:\"13\";i:57;s:0:\"\";i:79;s:1:\"2\";i:80;s:0:\"\";i:22;s:1:\"1\";i:55;s:0:\"\";i:83;s:0:\"\";i:81;s:0:\"\";i:85;s:1:\"1\";i:25;s:1:\"1\";i:78;s:1:\"1\";i:23;s:1:\"1\";i:21;s:2:\"12\";i:17;s:1:\"0\";i:47;s:1:\"3\";i:27;s:1:\"4\";i:75;s:1:\"2\";i:48;s:1:\"3\";i:30;s:1:\"3\";}', 'no'),
(10538, '_transient_timeout_wc_shipping_method_count_legacy', '1672051461', 'no'),
(10539, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1651908047\";s:5:\"value\";i:0;}', 'no'),
(10859, '_site_transient_timeout_php_check_cc108b86f3a71e4eebfae33f03ac2123', '1670237363', 'no'),
(10860, '_site_transient_php_check_cc108b86f3a71e4eebfae33f03ac2123', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(10877, '_transient_timeout_wc_shipping_method_count', '1672224592', 'no'),
(10878, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1651908047\";s:5:\"value\";i:0;}', 'no'),
(10879, '_transient_timeout_orders-all-statuses', '1670237392', 'no'),
(10880, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1652117334\";s:5:\"value\";a:0:{}}', 'no'),
(11002, '_site_transient_timeout_browser_173e11913f27c0a766fb4199bafe591f', '1670615738', 'no'),
(11003, '_site_transient_browser_173e11913f27c0a766fb4199bafe591f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(11004, '_site_transient_timeout_php_check_23ef521d49f4c15bfcec5d103838d721', '1670615739', 'no'),
(11005, '_site_transient_php_check_23ef521d49f4c15bfcec5d103838d721', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(11048, '_transient_timeout__woocommerce_helper_subscriptions', '1670179217', 'no'),
(11049, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(11050, '_site_transient_timeout_theme_roots', '1670180118', 'no'),
(11051, '_site_transient_theme_roots', 'a:5:{s:11:\"CustomTheme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(11052, '_transient_timeout__woocommerce_helper_updates', '1670221518', 'no'),
(11053, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1670178318;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(11056, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1670178329;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-24 05:36:29\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(11057, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1670178330;s:7:\"checked\";a:5:{s:11:\"CustomTheme\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.0\";s:7:\"updated\";s:19:\"2020-12-10 15:14:23\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/2.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2022-01-25 22:28:22\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:17:\"twentytwentythree\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2022-10-25 15:40:19\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/theme/twentytwentythree/1.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentytwo\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2022-05-24 20:30:06\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentytwo/1.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(11058, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1670178331;s:8:\"response\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.13.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.13.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:71:\"disable-dashboard-for-woocommerce/disable-dashboard-for-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:47:\"w.org/plugins/disable-dashboard-for-woocommerce\";s:4:\"slug\";s:33:\"disable-dashboard-for-woocommerce\";s:6:\"plugin\";s:71:\"disable-dashboard-for-woocommerce/disable-dashboard-for-woocommerce.php\";s:11:\"new_version\";s:5:\"3.1.0\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/disable-dashboard-for-woocommerce/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/disable-dashboard-for-woocommerce.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/disable-dashboard-for-woocommerce/assets/icon-256x256.png?rev=2822447\";s:2:\"1x\";s:86:\"https://ps.w.org/disable-dashboard-for-woocommerce/assets/icon-128x128.png?rev=2822447\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/disable-dashboard-for-woocommerce/assets/banner-1544x500.png?rev=2822447\";s:2:\"1x\";s:88:\"https://ps.w.org/disable-dashboard-for-woocommerce/assets/banner-772x250.png?rev=2822447\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=2787935\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";s:6:\"tested\";s:5:\"6.0.3\";s:12:\"requires_php\";s:5:\"7.4.0\";}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:6:\"3.10.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/query-monitor.3.10.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";s:6:\"tested\";s:5:\"6.0.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"7.1.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.7.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.2\";}s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/woo-gutenberg-products-block\";s:4:\"slug\";s:28:\"woo-gutenberg-products-block\";s:6:\"plugin\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:11:\"new_version\";s:5:\"9.0.0\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/woo-gutenberg-products-block/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/woo-gutenberg-products-block.9.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-256x256.png?rev=2413866\";s:2:\"1x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-128x128.png?rev=2413866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/woo-gutenberg-products-block/assets/banner-1544x500.png?rev=2413866\";s:2:\"1x\";s:83:\"https://ps.w.org/woo-gutenberg-products-block/assets/banner-772x250.png?rev=2413866\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"6.1.1\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:10:{s:19:\"akismet/akismet.php\";s:5:\"4.2.4\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.12.1\";s:71:\"disable-dashboard-for-woocommerce/disable-dashboard-for-woocommerce.php\";s:5:\"2.6.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:5:\"1.2.6\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.9.0\";s:13:\"RADL/RADL.php\";s:5:\"1.0.0\";s:11:\"wgu/wgu.php\";s:3:\"1.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"6.5.1\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:5:\"7.9.0\";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1651129813:1'),
(6, 7, '_edit_lock', '1651234877:1'),
(9, 9, '_edit_lock', '1651235272:1'),
(12, 11, '_edit_lock', '1651235229:1'),
(15, 14, '_edit_lock', '1651235239:1'),
(18, 16, '_edit_lock', '1651235248:1'),
(21, 18, '_edit_lock', '1651235256:1'),
(24, 20, '_edit_lock', '1651235269:1'),
(27, 22, '_edit_lock', '1651235280:1'),
(30, 24, '_edit_lock', '1655062748:1'),
(67, 36, '_edit_lock', '1669633359:1'),
(73, 39, '_edit_lock', '1666295488:1'),
(130, 49, '_wp_attached_file', '2022/04/асочка.jpg'),
(131, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1022;s:6:\"height\";i:750;s:4:\"file\";s:24:\"2022/04/асочка.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"асочка-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"асочка-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"асочка-768x564.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:564;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"асочка-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 51, '_wp_attached_file', 'woocommerce-placeholder.png'),
(133, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 59, '_edit_lock', '1652100611:1'),
(233, 66, '_edit_last', '1'),
(234, 66, '_edit_lock', '1658911600:1'),
(235, 66, '_regular_price', '10990'),
(236, 66, '_sale_price', '9990'),
(237, 66, 'total_sales', '0'),
(238, 66, '_tax_status', 'taxable'),
(239, 66, '_tax_class', ''),
(240, 66, '_manage_stock', 'no'),
(241, 66, '_backorders', 'no'),
(242, 66, '_sold_individually', 'no'),
(243, 66, '_virtual', 'no'),
(244, 66, '_downloadable', 'no'),
(245, 66, '_download_limit', '-1'),
(246, 66, '_download_expiry', '-1'),
(247, 66, '_stock', NULL),
(248, 66, '_stock_status', 'instock'),
(249, 66, '_wc_average_rating', '0'),
(250, 66, '_wc_review_count', '0'),
(251, 66, '_product_version', '6.5.1'),
(252, 66, '_price', '9990'),
(253, 67, '_edit_last', '1'),
(254, 67, '_edit_lock', '1658907820:1'),
(255, 67, '_regular_price', '20000'),
(256, 67, '_sale_price', '18000'),
(257, 67, 'total_sales', '0'),
(258, 67, '_tax_status', 'taxable'),
(259, 67, '_tax_class', ''),
(260, 67, '_manage_stock', 'no'),
(261, 67, '_backorders', 'no'),
(262, 67, '_sold_individually', 'no'),
(263, 67, '_virtual', 'no'),
(264, 67, '_downloadable', 'no'),
(265, 67, '_download_limit', '-1'),
(266, 67, '_download_expiry', '-1'),
(267, 67, '_stock', NULL),
(268, 67, '_stock_status', 'instock'),
(269, 67, '_wc_average_rating', '0'),
(270, 67, '_wc_review_count', '0'),
(271, 67, '_product_version', '6.5.1'),
(272, 67, '_price', '18000'),
(273, 67, '_wp_old_date', '2022-05-14'),
(274, 70, '_wp_attached_file', '2022/05/4770127_1.jpg'),
(275, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4770127_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4770127_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4770127_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4770127_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4770127_1-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4770127_1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4770127_1-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(276, 71, '_wp_attached_file', '2022/05/4770127_2.jpg'),
(277, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4770127_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4770127_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4770127_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4770127_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4770127_2-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4770127_2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4770127_2-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(278, 72, '_wp_attached_file', '2022/05/4770127_3.jpg'),
(279, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4770127_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4770127_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4770127_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4770127_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4770127_3-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4770127_3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4770127_3-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(280, 73, '_wp_attached_file', '2022/05/4770127_4.jpg'),
(281, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4770127_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4770127_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4770127_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4770127_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4770127_4-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4770127_4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4770127_4-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770127_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(282, 67, '_thumbnail_id', '237'),
(283, 75, '_wp_attached_file', '2022/05/5066454_1.jpg'),
(284, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/5066454_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"5066454_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"5066454_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"5066454_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"5066454_1-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"5066454_1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"5066454_1-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(285, 76, '_wp_attached_file', '2022/05/5066454_2.jpg'),
(286, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/5066454_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"5066454_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"5066454_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"5066454_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"5066454_2-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"5066454_2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"5066454_2-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(287, 77, '_wp_attached_file', '2022/05/5066454_3.jpg'),
(288, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/5066454_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"5066454_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"5066454_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"5066454_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"5066454_3-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"5066454_3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"5066454_3-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(289, 78, '_wp_attached_file', '2022/05/5066454_4.jpg'),
(290, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/5066454_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"5066454_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"5066454_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"5066454_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"5066454_4-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"5066454_4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"5066454_4-416x624.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"5066454_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(291, 66, '_thumbnail_id', '269'),
(292, 79, '_wp_attached_file', '2022/05/outerwear2.png'),
(293, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:22:\"2022/05/outerwear2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"outerwear2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"outerwear2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"outerwear2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 80, '_wp_attached_file', '2022/05/273_kh_204.png'),
(295, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:22:\"2022/05/273_kh_204.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"273_kh_204-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"273_kh_204-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"273_kh_204-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 81, '_edit_last', '1'),
(297, 81, '_edit_lock', '1660814406:1'),
(298, 82, '_wp_attached_file', '2022/05/4835549_1.jpg'),
(299, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4835549_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4835549_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4835549_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4835549_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4835549_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4835549_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4835549_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4835549_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4835549_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4835549_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(300, 81, '_thumbnail_id', '257'),
(301, 81, '_regular_price', '19000'),
(302, 81, '_sale_price', '18000'),
(303, 81, 'total_sales', '0'),
(304, 81, '_tax_status', 'taxable'),
(305, 81, '_tax_class', ''),
(306, 81, '_manage_stock', 'no'),
(307, 81, '_backorders', 'no'),
(308, 81, '_sold_individually', 'no'),
(309, 81, '_virtual', 'no'),
(310, 81, '_downloadable', 'no'),
(311, 81, '_download_limit', '-1'),
(312, 81, '_download_expiry', '-1'),
(313, 81, '_stock', NULL),
(314, 81, '_stock_status', 'instock'),
(315, 81, '_wc_average_rating', '0'),
(316, 81, '_wc_review_count', '0'),
(317, 81, '_product_version', '6.5.1'),
(318, 81, '_price', '18000'),
(319, 84, '_wp_attached_file', '2022/05/skirt.png'),
(320, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:17:\"2022/05/skirt.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"skirt-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"skirt-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"skirt-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 85, '_edit_last', '1'),
(322, 85, '_edit_lock', '1660814388:1'),
(323, 86, '_wp_attached_file', '2022/05/4508350_1.jpg'),
(324, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4508350_1.jpg\";s:8:\"filesize\";i:149251;s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4508350_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4508350_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4508350_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4508350_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"4508350_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4508350_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(325, 87, '_wp_attached_file', '2022/05/4508350_2.jpg'),
(326, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4508350_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4508350_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4508350_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4508350_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4508350_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4508350_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4508350_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(327, 88, '_wp_attached_file', '2022/05/4508350_3.jpg'),
(328, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4508350_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4508350_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4508350_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4508350_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4508350_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4508350_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4508350_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(329, 89, '_wp_attached_file', '2022/05/4508350_4.jpg'),
(330, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4508350_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4508350_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4508350_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4508350_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4508350_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4508350_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4508350_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4508350_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(331, 85, '_thumbnail_id', '217'),
(332, 85, 'total_sales', '0'),
(333, 85, '_tax_status', 'taxable'),
(334, 85, '_tax_class', ''),
(335, 85, '_manage_stock', 'no'),
(336, 85, '_backorders', 'no'),
(337, 85, '_sold_individually', 'no'),
(338, 85, '_virtual', 'no'),
(339, 85, '_downloadable', 'no'),
(340, 85, '_download_limit', '-1'),
(341, 85, '_download_expiry', '-1'),
(342, 85, '_stock', NULL),
(343, 85, '_stock_status', 'instock'),
(344, 85, '_wc_average_rating', '0'),
(345, 85, '_wc_review_count', '0'),
(346, 85, '_product_version', '6.5.1'),
(347, 90, '_edit_last', '1'),
(348, 90, '_edit_lock', '1658911717:1'),
(349, 90, '_regular_price', '27190'),
(350, 90, 'total_sales', '0'),
(351, 90, '_tax_status', 'taxable'),
(352, 90, '_tax_class', ''),
(353, 90, '_manage_stock', 'no'),
(354, 90, '_backorders', 'no'),
(355, 90, '_sold_individually', 'no'),
(356, 90, '_virtual', 'no'),
(357, 90, '_downloadable', 'no'),
(358, 90, '_download_limit', '-1'),
(359, 90, '_download_expiry', '-1'),
(360, 90, '_stock', NULL),
(361, 90, '_stock_status', 'instock'),
(362, 90, '_wc_average_rating', '0'),
(363, 90, '_wc_review_count', '0'),
(364, 90, '_product_version', '6.5.1'),
(365, 90, '_price', '27190'),
(366, 91, '_wp_attached_file', '2022/05/4776490_1.jpg'),
(367, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4776490_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4776490_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4776490_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4776490_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4776490_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4776490_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4776490_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(368, 92, '_wp_attached_file', '2022/05/4776490_2.jpg'),
(369, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4776490_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4776490_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4776490_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4776490_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4776490_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4776490_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4776490_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(370, 93, '_wp_attached_file', '2022/05/4776490_4-1.jpg'),
(371, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:23:\"2022/05/4776490_4-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"4776490_4-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"4776490_4-1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"4776490_4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"4776490_4-1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"4776490_4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"4776490_4-1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"4776490_4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"4776490_4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"4776490_4-1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"4776490_4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(372, 94, '_wp_attached_file', '2022/05/4776490_4.jpg'),
(373, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4776490_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4776490_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4776490_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4776490_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4776490_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4776490_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4776490_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4776490_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(374, 90, '_thumbnail_id', '229'),
(375, 90, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(376, 85, '_regular_price', '10000'),
(377, 85, '_price', '10000'),
(390, 96, '_edit_last', '1'),
(391, 96, '_edit_lock', '1661007236:1'),
(392, 97, '_wp_attached_file', '2022/05/4770129_1.jpg'),
(393, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4770129_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4770129_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4770129_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4770129_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4770129_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4770129_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4770129_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(394, 98, '_wp_attached_file', '2022/05/4770129_2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(395, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4770129_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4770129_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4770129_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4770129_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4770129_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4770129_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4770129_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(396, 99, '_wp_attached_file', '2022/05/4770129_3.jpg'),
(397, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4770129_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4770129_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4770129_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4770129_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4770129_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4770129_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4770129_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(398, 100, '_wp_attached_file', '2022/05/4770129_4.jpg'),
(399, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4770129_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4770129_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4770129_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4770129_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4770129_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4770129_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4770129_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4770129_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(400, 96, '_thumbnail_id', '250'),
(401, 96, '_regular_price', '24999'),
(402, 96, 'total_sales', '0'),
(403, 96, '_tax_status', 'taxable'),
(404, 96, '_tax_class', ''),
(405, 96, '_manage_stock', 'no'),
(406, 96, '_backorders', 'no'),
(407, 96, '_sold_individually', 'no'),
(408, 96, '_virtual', 'no'),
(409, 96, '_downloadable', 'no'),
(410, 96, '_download_limit', '-1'),
(411, 96, '_download_expiry', '-1'),
(412, 96, '_stock', NULL),
(413, 96, '_stock_status', 'instock'),
(414, 96, '_wc_average_rating', '0'),
(415, 96, '_wc_review_count', '0'),
(416, 96, '_product_version', '6.5.1'),
(417, 96, '_price', '24999'),
(418, 96, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(419, 102, '_edit_last', '1'),
(420, 102, '_edit_lock', '1658910983:1'),
(421, 103, '_wp_attached_file', '2022/05/4787313_1.jpg'),
(422, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4787313_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4787313_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4787313_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4787313_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4787313_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4787313_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4787313_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(423, 104, '_wp_attached_file', '2022/05/4787313_2.jpg'),
(424, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4787313_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4787313_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4787313_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4787313_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4787313_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4787313_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4787313_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(425, 105, '_wp_attached_file', '2022/05/4787313_3.jpg'),
(426, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4787313_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4787313_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4787313_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4787313_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4787313_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4787313_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4787313_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(427, 106, '_wp_attached_file', '2022/05/4787313_4.jpg'),
(428, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/05/4787313_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4787313_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4787313_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4787313_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4787313_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4787313_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4787313_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4787313_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(429, 102, '_thumbnail_id', '246'),
(430, 102, '_regular_price', '28000'),
(431, 102, 'total_sales', '0'),
(432, 102, '_tax_status', 'taxable'),
(433, 102, '_tax_class', ''),
(434, 102, '_manage_stock', 'no'),
(435, 102, '_backorders', 'no'),
(436, 102, '_sold_individually', 'no'),
(437, 102, '_virtual', 'no'),
(438, 102, '_downloadable', 'no'),
(439, 102, '_download_limit', '-1'),
(440, 102, '_download_expiry', '-1'),
(441, 102, '_stock', NULL),
(442, 102, '_stock_status', 'instock'),
(443, 102, '_wc_average_rating', '0'),
(444, 102, '_wc_review_count', '0'),
(445, 102, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(446, 102, '_product_version', '6.5.1'),
(447, 102, '_price', '18000'),
(448, 85, '_product_attributes', 'a:4:{s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(449, 85, '_product_image_gallery', '220,219,218,217'),
(450, 102, '_product_image_gallery', '245,246,247,248'),
(451, 96, '_product_image_gallery', '249,250,251,252'),
(452, 90, '_product_image_gallery', '229,230,231,232'),
(453, 67, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(454, 67, '_product_image_gallery', '237,238,239,240'),
(456, 52, '_edit_lock', '1655106355:1'),
(460, 112, '_edit_last', '1'),
(461, 112, '_edit_lock', '1658910963:1'),
(462, 113, '_wp_attached_file', '2022/06/4826292_1.jpg'),
(463, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4826292_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4826292_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4826292_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4826292_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4826292_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4826292_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4826292_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(464, 114, '_wp_attached_file', '2022/06/4826292_2.jpg'),
(465, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4826292_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4826292_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4826292_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4826292_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4826292_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4826292_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4826292_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(466, 115, '_wp_attached_file', '2022/06/4826292_3.jpg'),
(467, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4826292_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4826292_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4826292_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4826292_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4826292_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4826292_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4826292_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(468, 116, '_wp_attached_file', '2022/06/4826292_4.jpg'),
(469, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4826292_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4826292_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4826292_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4826292_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4826292_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4826292_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4826292_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4826292_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(470, 112, 'total_sales', '0'),
(471, 112, '_tax_status', 'taxable'),
(472, 112, '_tax_class', ''),
(473, 112, '_manage_stock', 'no'),
(474, 112, '_backorders', 'no'),
(475, 112, '_sold_individually', 'no'),
(476, 112, '_virtual', 'no'),
(477, 112, '_downloadable', 'no'),
(478, 112, '_download_limit', '-1'),
(479, 112, '_download_expiry', '-1'),
(480, 112, '_stock', NULL),
(481, 112, '_stock_status', 'instock'),
(482, 112, '_wc_average_rating', '0'),
(483, 112, '_wc_review_count', '0'),
(484, 112, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(485, 112, '_product_version', '6.5.1'),
(486, 112, '_regular_price', '30555'),
(487, 112, '_sale_price', '29400'),
(488, 112, '_price', '29400'),
(489, 112, '_product_image_gallery', '261,262,263,264'),
(490, 117, '_edit_last', '1'),
(491, 117, '_edit_lock', '1669393877:1'),
(492, 117, 'total_sales', '0'),
(493, 117, '_tax_status', 'taxable'),
(494, 117, '_tax_class', ''),
(495, 117, '_manage_stock', 'no'),
(496, 117, '_backorders', 'no'),
(497, 117, '_sold_individually', 'no'),
(498, 117, '_virtual', 'no'),
(499, 117, '_downloadable', 'no'),
(500, 117, '_download_limit', '-1'),
(501, 117, '_download_expiry', '-1'),
(502, 117, '_stock', NULL),
(503, 117, '_stock_status', 'outofstock'),
(504, 117, '_wc_average_rating', '0'),
(505, 117, '_wc_review_count', '0'),
(506, 117, '_product_version', '6.5.1'),
(507, 118, '_edit_last', '1'),
(508, 118, '_edit_lock', '1658910629:1'),
(509, 118, 'total_sales', '0'),
(510, 118, '_tax_status', 'taxable'),
(511, 118, '_tax_class', ''),
(512, 118, '_manage_stock', 'no'),
(513, 118, '_backorders', 'no'),
(514, 118, '_sold_individually', 'no'),
(515, 118, '_virtual', 'no'),
(516, 118, '_downloadable', 'no'),
(517, 118, '_download_limit', '-1'),
(518, 118, '_download_expiry', '-1'),
(519, 118, '_stock', NULL),
(520, 118, '_stock_status', 'instock'),
(521, 118, '_wc_average_rating', '0'),
(522, 118, '_wc_review_count', '0'),
(523, 118, '_product_version', '6.5.1'),
(524, 119, '_edit_last', '1'),
(525, 119, '_edit_lock', '1667463437:1'),
(526, 119, 'total_sales', '0'),
(527, 119, '_tax_status', 'taxable'),
(528, 119, '_tax_class', ''),
(529, 119, '_manage_stock', 'no'),
(530, 119, '_backorders', 'no'),
(531, 119, '_sold_individually', 'no'),
(532, 119, '_virtual', 'no'),
(533, 119, '_downloadable', 'no'),
(534, 119, '_download_limit', '-1'),
(535, 119, '_download_expiry', '-1'),
(536, 119, '_stock', NULL),
(537, 119, '_stock_status', 'instock'),
(538, 119, '_wc_average_rating', '0'),
(539, 119, '_wc_review_count', '0'),
(540, 119, '_product_version', '6.5.1'),
(541, 120, '_edit_last', '1'),
(542, 120, '_edit_lock', '1659991619:1'),
(543, 120, 'total_sales', '0'),
(544, 120, '_tax_status', 'taxable'),
(545, 120, '_tax_class', ''),
(546, 120, '_manage_stock', 'no'),
(547, 120, '_backorders', 'no'),
(548, 120, '_sold_individually', 'no'),
(549, 120, '_virtual', 'no'),
(550, 120, '_downloadable', 'no'),
(551, 120, '_download_limit', '-1'),
(552, 120, '_download_expiry', '-1'),
(553, 120, '_stock', NULL),
(554, 120, '_stock_status', 'instock'),
(555, 120, '_wc_average_rating', '0'),
(556, 120, '_wc_review_count', '0'),
(557, 120, '_product_version', '6.5.1'),
(558, 121, '_edit_last', '1'),
(559, 121, '_edit_lock', '1661010535:1'),
(560, 121, 'total_sales', '0'),
(561, 121, '_tax_status', 'taxable'),
(562, 121, '_tax_class', ''),
(563, 121, '_manage_stock', 'no'),
(564, 121, '_backorders', 'no'),
(565, 121, '_sold_individually', 'no'),
(566, 121, '_virtual', 'no'),
(567, 121, '_downloadable', 'no'),
(568, 121, '_download_limit', '-1'),
(569, 121, '_download_expiry', '-1'),
(570, 121, '_stock', NULL),
(571, 121, '_stock_status', 'instock'),
(572, 121, '_wc_average_rating', '0'),
(573, 121, '_wc_review_count', '0'),
(574, 121, '_product_version', '6.5.1'),
(575, 102, '_wp_old_slug', '%d1%8e%d0%b1%d0%ba%d0%b0-%d0%ba%d0%b0%d1%80%d0%b0%d0%bd%d0%b4%d0%b0%d1%88-%d0%b8%d0%b7-%d1%88%d0%b5%d1%80%d1%81%d1%82%d0%b8-%d0%b8-%d0%ba%d0%b0%d1%88%d0%b5%d0%bc%d0%b8%d1%80%d0%b0'),
(576, 102, '_sale_price', '18000'),
(577, 127, '_wp_attached_file', '2022/06/4832898_1.jpg'),
(578, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4832898_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4832898_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4832898_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4832898_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4832898_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4832898_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4832898_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(579, 128, '_wp_attached_file', '2022/06/4832898_2.jpg'),
(580, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4832898_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4832898_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4832898_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4832898_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4832898_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4832898_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4832898_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(581, 129, '_wp_attached_file', '2022/06/4832898_3.jpg'),
(582, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4832898_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4832898_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4832898_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4832898_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4832898_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4832898_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4832898_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(583, 130, '_wp_attached_file', '2022/06/4832898_4.jpg'),
(584, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4832898_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4832898_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4832898_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4832898_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4832898_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4832898_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4832898_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4832898_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(585, 131, '_wp_attached_file', '2022/06/4848125_1.jpg'),
(586, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4848125_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4848125_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4848125_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4848125_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4848125_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4848125_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4848125_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(587, 132, '_wp_attached_file', '2022/06/4848125_2.jpg'),
(588, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4848125_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4848125_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4848125_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4848125_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4848125_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4848125_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4848125_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(589, 133, '_wp_attached_file', '2022/06/4848125_3.jpg'),
(590, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4848125_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4848125_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4848125_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4848125_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4848125_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4848125_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4848125_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(591, 134, '_wp_attached_file', '2022/06/4848125_4.jpg'),
(592, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4848125_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4848125_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4848125_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4848125_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4848125_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4848125_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4848125_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4848125_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(593, 135, '_wp_attached_file', '2022/06/4852616_1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(594, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4852616_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4852616_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4852616_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4852616_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4852616_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4852616_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4852616_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(595, 136, '_wp_attached_file', '2022/06/4852616_2.jpg'),
(596, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4852616_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4852616_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4852616_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4852616_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4852616_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4852616_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4852616_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(597, 137, '_wp_attached_file', '2022/06/4852616_3.jpg'),
(598, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4852616_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4852616_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4852616_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4852616_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4852616_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4852616_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4852616_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(599, 138, '_wp_attached_file', '2022/06/4852616_4.jpg'),
(600, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4852616_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4852616_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4852616_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4852616_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4852616_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4852616_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4852616_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4852616_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(601, 118, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(602, 118, '_thumbnail_id', '253'),
(603, 118, '_regular_price', '86000'),
(604, 118, '_price', '86000'),
(605, 118, '_product_image_gallery', '253,254,255,256'),
(606, 140, '_wp_attached_file', '2022/06/4782543_1.jpg'),
(607, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4782543_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4782543_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4782543_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4782543_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4782543_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4782543_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4782543_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(608, 141, '_wp_attached_file', '2022/06/4782543_2.jpg'),
(609, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4782543_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4782543_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4782543_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4782543_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4782543_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4782543_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4782543_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(610, 142, '_wp_attached_file', '2022/06/4782543_3.jpg'),
(611, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4782543_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4782543_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4782543_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4782543_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4782543_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4782543_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4782543_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(612, 143, '_wp_attached_file', '2022/06/4782543_4.jpg'),
(613, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4782543_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4782543_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4782543_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4782543_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4782543_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4782543_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4782543_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4782543_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(614, 117, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(615, 117, '_thumbnail_id', '241'),
(616, 117, '_product_image_gallery', '241,242,243,244'),
(617, 119, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(618, 119, '_thumbnail_id', '267'),
(619, 119, '_regular_price', '30000'),
(620, 119, '_price', '30000'),
(621, 119, '_product_image_gallery', '268,267,266,265'),
(622, 145, '_wp_attached_file', '2022/06/4603336_1.jpg'),
(623, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4603336_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4603336_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4603336_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4603336_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4603336_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4603336_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4603336_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(624, 146, '_wp_attached_file', '2022/06/4603336_2.jpg'),
(625, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4603336_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4603336_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4603336_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4603336_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4603336_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4603336_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4603336_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(626, 147, '_wp_attached_file', '2022/06/4603336_3.jpg'),
(627, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4603336_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4603336_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4603336_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4603336_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4603336_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4603336_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4603336_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(628, 121, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(629, 148, '_wp_attached_file', '2022/06/4603336_4.jpg'),
(630, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4603336_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4603336_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4603336_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4603336_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4603336_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4603336_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4603336_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4603336_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(631, 121, '_thumbnail_id', '221'),
(632, 121, '_regular_price', '13000'),
(633, 121, '_sale_price', '10000'),
(634, 121, '_price', '10000'),
(635, 121, '_product_image_gallery', '222,221,223,224'),
(636, 120, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(637, 149, '_wp_attached_file', '2022/06/4647038_1.jpg'),
(638, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4647038_1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4647038_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4647038_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4647038_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4647038_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4647038_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4647038_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(639, 150, '_wp_attached_file', '2022/06/4647038_2.jpg'),
(640, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4647038_2.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4647038_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4647038_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4647038_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4647038_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4647038_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4647038_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(641, 151, '_wp_attached_file', '2022/06/4647038_3.jpg'),
(642, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4647038_3.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4647038_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4647038_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4647038_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4647038_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4647038_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4647038_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(643, 152, '_wp_attached_file', '2022/06/4647038_4.jpg'),
(644, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/06/4647038_4.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"4647038_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"4647038_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"4647038_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"4647038_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"4647038_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"4647038_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"4647038_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(645, 120, '_thumbnail_id', '225'),
(646, 120, '_regular_price', '54000'),
(647, 120, '_price', '54000'),
(648, 120, '_product_image_gallery', '228,227,226,225'),
(649, 153, '_menu_item_type', 'custom'),
(650, 153, '_menu_item_menu_item_parent', '0'),
(651, 153, '_menu_item_object_id', '153'),
(652, 153, '_menu_item_object', 'custom'),
(653, 153, '_menu_item_target', ''),
(654, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(655, 153, '_menu_item_xfn', ''),
(656, 153, '_menu_item_url', 'tel:88007700990'),
(658, 154, '_menu_item_type', 'custom'),
(659, 154, '_menu_item_menu_item_parent', '0'),
(660, 154, '_menu_item_object_id', '154'),
(661, 154, '_menu_item_object', 'custom'),
(662, 154, '_menu_item_target', ''),
(663, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(664, 154, '_menu_item_xfn', ''),
(665, 154, '_menu_item_url', 'tel:84957750944'),
(667, 55, '_edit_lock', '1656862200:1'),
(677, 156, '_menu_item_type', 'post_type'),
(678, 156, '_menu_item_menu_item_parent', '0'),
(679, 156, '_menu_item_object_id', '36'),
(680, 156, '_menu_item_object', 'page'),
(681, 156, '_menu_item_target', ''),
(682, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(683, 156, '_menu_item_xfn', ''),
(684, 156, '_menu_item_url', ''),
(686, 157, '_menu_item_type', 'post_type'),
(687, 157, '_menu_item_menu_item_parent', '0'),
(688, 157, '_menu_item_object_id', '36'),
(689, 157, '_menu_item_object', 'page'),
(690, 157, '_menu_item_target', ''),
(691, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(692, 157, '_menu_item_xfn', ''),
(693, 157, '_menu_item_url', ''),
(695, 158, '_menu_item_type', 'post_type'),
(696, 158, '_menu_item_menu_item_parent', '0'),
(697, 158, '_menu_item_object_id', '36'),
(698, 158, '_menu_item_object', 'page'),
(699, 158, '_menu_item_target', ''),
(700, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(701, 158, '_menu_item_xfn', ''),
(702, 158, '_menu_item_url', ''),
(704, 159, '_menu_item_type', 'post_type'),
(705, 159, '_menu_item_menu_item_parent', '0'),
(706, 159, '_menu_item_object_id', '36'),
(707, 159, '_menu_item_object', 'page'),
(708, 159, '_menu_item_target', ''),
(709, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(710, 159, '_menu_item_xfn', ''),
(711, 159, '_menu_item_url', ''),
(713, 160, '_menu_item_type', 'post_type'),
(714, 160, '_menu_item_menu_item_parent', '0'),
(715, 160, '_menu_item_object_id', '36'),
(716, 160, '_menu_item_object', 'page'),
(717, 160, '_menu_item_target', ''),
(718, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(719, 160, '_menu_item_xfn', ''),
(720, 160, '_menu_item_url', ''),
(722, 161, '_menu_item_type', 'taxonomy'),
(723, 161, '_menu_item_menu_item_parent', '0'),
(724, 161, '_menu_item_object_id', '59'),
(725, 161, '_menu_item_object', 'product_cat'),
(726, 161, '_menu_item_target', ''),
(727, 161, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(728, 161, '_menu_item_xfn', ''),
(729, 161, '_menu_item_url', ''),
(731, 162, '_menu_item_type', 'taxonomy'),
(732, 162, '_menu_item_menu_item_parent', '0'),
(733, 162, '_menu_item_object_id', '58'),
(734, 162, '_menu_item_object', 'product_cat'),
(735, 162, '_menu_item_target', ''),
(736, 162, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(737, 162, '_menu_item_xfn', ''),
(738, 162, '_menu_item_url', ''),
(740, 163, '_menu_item_type', 'taxonomy'),
(741, 163, '_menu_item_menu_item_parent', '0'),
(742, 163, '_menu_item_object_id', '54'),
(743, 163, '_menu_item_object', 'product_cat'),
(744, 163, '_menu_item_target', ''),
(745, 163, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(746, 163, '_menu_item_xfn', ''),
(747, 163, '_menu_item_url', ''),
(749, 164, '_menu_item_type', 'taxonomy'),
(750, 164, '_menu_item_menu_item_parent', '0'),
(751, 164, '_menu_item_object_id', '56'),
(752, 164, '_menu_item_object', 'product_cat'),
(753, 164, '_menu_item_target', ''),
(754, 164, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(755, 164, '_menu_item_xfn', ''),
(756, 164, '_menu_item_url', ''),
(758, 165, '_menu_item_type', 'taxonomy'),
(759, 165, '_menu_item_menu_item_parent', '0'),
(760, 165, '_menu_item_object_id', '20'),
(761, 165, '_menu_item_object', 'product_cat'),
(762, 165, '_menu_item_target', ''),
(763, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(764, 165, '_menu_item_xfn', ''),
(765, 165, '_menu_item_url', ''),
(767, 166, '_menu_item_type', 'taxonomy'),
(768, 166, '_menu_item_menu_item_parent', '0'),
(769, 166, '_menu_item_object_id', '57'),
(770, 166, '_menu_item_object', 'product_cat'),
(771, 166, '_menu_item_target', ''),
(772, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(773, 166, '_menu_item_xfn', ''),
(774, 166, '_menu_item_url', ''),
(776, 167, '_menu_item_type', 'taxonomy'),
(777, 167, '_menu_item_menu_item_parent', '0'),
(778, 167, '_menu_item_object_id', '22'),
(779, 167, '_menu_item_object', 'product_cat'),
(780, 167, '_menu_item_target', ''),
(781, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(782, 167, '_menu_item_xfn', ''),
(783, 167, '_menu_item_url', ''),
(785, 168, '_menu_item_type', 'taxonomy'),
(786, 168, '_menu_item_menu_item_parent', '0'),
(787, 168, '_menu_item_object_id', '55'),
(788, 168, '_menu_item_object', 'product_cat'),
(789, 168, '_menu_item_target', ''),
(790, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(791, 168, '_menu_item_xfn', ''),
(792, 168, '_menu_item_url', ''),
(821, 53, '_edit_lock', '1669648839:1'),
(822, 153, '_wp_old_date', '2022-06-27'),
(823, 154, '_wp_old_date', '2022-06-27'),
(824, 156, '_wp_old_date', '2022-06-27'),
(825, 157, '_wp_old_date', '2022-06-27'),
(826, 158, '_wp_old_date', '2022-06-27'),
(827, 159, '_wp_old_date', '2022-06-27'),
(828, 160, '_wp_old_date', '2022-06-27'),
(833, 176, '_edit_lock', '1658682856:1'),
(835, 178, '_edit_lock', '1658682828:1'),
(837, 179, '_wp_attached_file', '2022/07/Sayt_2360kh1000-1.webp'),
(838, 179, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1179;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2022/07/Sayt_2360kh1000-1.webp\";s:8:\"filesize\";i:8166;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-300x127.webp\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2552;}s:5:\"large\";a:5:{s:4:\"file\";s:31:\"Sayt_2360kh1000-1-1024x434.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:434;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7368;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1476;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-768x326.webp\";s:5:\"width\";i:768;s:6:\"height\";i:326;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5462;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2370;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-600x254.webp\";s:5:\"width\";i:600;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4408;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1170;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-300x300.webp\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2370;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-600x254.webp\";s:5:\"width\";i:600;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4408;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:30:\"Sayt_2360kh1000-1-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1170;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(860, 186, '_edit_lock', '1658472057:1'),
(884, 190, '_edit_lock', '1666299206:1'),
(890, 176, '_thumbnail_id', '179'),
(891, 190, '_wp_old_slug', 'middle-home-0'),
(892, 178, '_wp_old_slug', 'banner-0'),
(906, 204, '_edit_lock', '1658692331:1'),
(907, 206, '_edit_lock', '1666292366:1'),
(908, 207, '_edit_lock', '1666292480:1'),
(914, 178, '_wp_old_slug', 'top-home-banner-1'),
(915, 176, '_wp_old_slug', '176'),
(916, 210, '_wp_attached_file', '2022/07/top-home-1-1.jpg'),
(917, 210, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1179;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2022/07/top-home-1-1.jpg\";s:8:\"filesize\";i:275514;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"top-home-1-1-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10697;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"top-home-1-1-1024x434.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:434;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57500;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"top-home-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4680;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"top-home-1-1-768x326.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:326;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38686;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:24:\"top-home-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13217;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:24:\"top-home-1-1-600x254.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27840;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:24:\"top-home-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2774;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:24:\"top-home-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13217;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:24:\"top-home-1-1-600x254.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27840;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:24:\"top-home-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2774;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(918, 178, '_thumbnail_id', '210'),
(919, 211, '_wp_attached_file', '2022/07/middle-home-0-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(920, 211, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:27:\"2022/07/middle-home-0-1.png\";s:8:\"filesize\";i:145795;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"middle-home-0-1-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"middle-home-0-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28740;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:27:\"middle-home-0-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:88934;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:27:\"middle-home-0-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14972;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:27:\"middle-home-0-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:88934;s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:27:\"middle-home-0-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14972;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(921, 212, '_wp_attached_file', '2022/07/middle-home-1-1.png'),
(922, 212, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:497;s:6:\"height\";i:300;s:4:\"file\";s:27:\"2022/07/middle-home-1-1.png\";s:8:\"filesize\";i:194153;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"middle-home-1-1-300x181.png\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78015;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"middle-home-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35514;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:27:\"middle-home-1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:126096;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:27:\"middle-home-1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17033;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:27:\"middle-home-1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:126096;s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:27:\"middle-home-1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17033;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(923, 213, '_wp_attached_file', '2022/07/middle-home-2.png'),
(924, 213, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:25:\"2022/07/middle-home-2.png\";s:8:\"filesize\";i:212850;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"middle-home-2-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:76599;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"middle-home-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25364;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:25:\"middle-home-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:89153;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:25:\"middle-home-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12584;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:25:\"middle-home-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:89153;s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:25:\"middle-home-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12584;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(925, 214, '_wp_attached_file', '2022/07/top-home-2.jpg'),
(926, 214, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1179;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2022/07/top-home-2.jpg\";s:8:\"filesize\";i:237634;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"top-home-2-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9059;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"top-home-2-1024x434.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:434;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50662;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"top-home-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5920;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"top-home-2-768x326.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:326;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34003;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:22:\"top-home-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14760;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:22:\"top-home-2-600x254.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24162;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"top-home-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3184;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:22:\"top-home-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14760;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:22:\"top-home-2-600x254.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24162;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:22:\"top-home-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3184;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(927, 207, '_thumbnail_id', '213'),
(928, 204, '_thumbnail_id', '214'),
(929, 190, '_thumbnail_id', '211'),
(930, 206, '_thumbnail_id', '212'),
(931, 217, '_wp_attached_file', '2022/07/4508350_1.jpg'),
(932, 217, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4508350_1.jpg\";s:8:\"filesize\";i:149251;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4508350_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6611;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4508350_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61675;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2960;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4508350_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78325;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4508350_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7833;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4508350_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47330;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1878;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4508350_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7833;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4508350_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47330;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1878;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(933, 218, '_wp_attached_file', '2022/07/4508350_2.jpg'),
(934, 218, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4508350_2.jpg\";s:8:\"filesize\";i:83897;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4508350_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5951;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4508350_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39659;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2797;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4508350_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48705;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4508350_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6890;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4508350_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31627;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1831;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4508350_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6890;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4508350_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31627;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1831;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(935, 219, '_wp_attached_file', '2022/07/4508350_3.jpg'),
(936, 219, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4508350_3.jpg\";s:8:\"filesize\";i:154518;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4508350_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6838;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4508350_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64251;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3245;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4508350_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81616;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4508350_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8697;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4508350_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49496;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1982;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4508350_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8697;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4508350_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49496;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1982;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(937, 220, '_wp_attached_file', '2022/07/4508350_4.jpg'),
(938, 220, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4508350_4.jpg\";s:8:\"filesize\";i:564354;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4508350_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13876;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4508350_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:261024;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6503;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4508350_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:333698;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4508350_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28660;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4508350_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:194870;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3069;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4508350_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28660;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4508350_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:194870;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4508350_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3069;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(939, 221, '_wp_attached_file', '2022/07/4603336_1.jpg'),
(940, 221, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4603336_1.jpg\";s:8:\"filesize\";i:89714;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(941, 222, '_wp_attached_file', '2022/07/4603336_2.jpg'),
(942, 222, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4603336_2.jpg\";s:8:\"filesize\";i:77606;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4603336_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5777;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4603336_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37053;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2947;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4603336_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45205;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4603336_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7223;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4603336_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29640;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1859;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4603336_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7223;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4603336_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29640;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1859;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(943, 223, '_wp_attached_file', '2022/07/4603336_3.jpg'),
(944, 223, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4603336_3.jpg\";s:8:\"filesize\";i:89218;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4603336_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6586;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4603336_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42116;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2969;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4603336_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51679;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4603336_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7291;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4603336_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33900;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1915;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4603336_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7291;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4603336_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33900;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1915;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(945, 224, '_wp_attached_file', '2022/07/4603336_4.jpg'),
(946, 224, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4603336_4.jpg\";s:8:\"filesize\";i:145988;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4603336_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7669;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4603336_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60197;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4012;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4603336_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76779;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4603336_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10387;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4603336_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46393;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2467;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4603336_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10387;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4603336_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46393;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4603336_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2467;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(947, 225, '_wp_attached_file', '2022/07/4647038_1.jpg'),
(948, 225, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4647038_1.jpg\";s:8:\"filesize\";i:92405;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4647038_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6468;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4647038_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45279;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3176;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4647038_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55499;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4647038_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8428;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4647038_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36376;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1886;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4647038_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8428;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4647038_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36376;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1886;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(949, 226, '_wp_attached_file', '2022/07/4647038_2.jpg'),
(950, 226, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4647038_2.jpg\";s:8:\"filesize\";i:98442;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4647038_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6808;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4647038_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46863;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3166;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4647038_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57567;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4647038_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8170;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4647038_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37590;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1933;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4647038_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8170;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4647038_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37590;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1933;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(951, 227, '_wp_attached_file', '2022/07/4647038_3.jpg'),
(952, 227, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4647038_3.jpg\";s:8:\"filesize\";i:83401;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4647038_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6033;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4647038_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39881;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2883;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4647038_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48946;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4647038_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7174;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4647038_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32080;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1802;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4647038_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7174;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4647038_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32080;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1802;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(953, 228, '_wp_attached_file', '2022/07/4647038_4.jpg'),
(954, 228, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4647038_4.jpg\";s:8:\"filesize\";i:306672;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4647038_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8495;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4647038_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113189;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4087;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4647038_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:149487;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4647038_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12665;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4647038_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83184;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2349;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4647038_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12665;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4647038_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83184;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4647038_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2349;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(955, 229, '_wp_attached_file', '2022/07/4770127_1.jpg'),
(956, 229, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4770127_1.jpg\";s:8:\"filesize\";i:205886;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4770127_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9926;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4770127_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95273;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4769;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4770127_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:117494;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4770127_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16582;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4770127_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75672;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2453;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4770127_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16582;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4770127_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75672;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2453;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(957, 230, '_wp_attached_file', '2022/07/4770127_2.jpg'),
(958, 230, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4770127_2.jpg\";s:8:\"filesize\";i:281119;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4770127_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12540;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4770127_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:131827;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5415;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4770127_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:162266;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4770127_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21849;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4770127_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104274;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2603;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4770127_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21849;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4770127_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104274;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2603;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(959, 231, '_wp_attached_file', '2022/07/4770127_3.jpg'),
(960, 231, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4770127_3.jpg\";s:8:\"filesize\";i:274611;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4770127_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12012;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4770127_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125801;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5295;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4770127_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:155823;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4770127_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21407;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4770127_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:99324;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2480;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4770127_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21407;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4770127_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:99324;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2480;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(961, 232, '_wp_attached_file', '2022/07/4770127_4.jpg'),
(962, 232, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4770127_4.jpg\";s:8:\"filesize\";i:429222;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4770127_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27460;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4770127_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:232523;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11501;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4770127_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:275450;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4770127_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40685;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4770127_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:189689;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5465;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4770127_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40685;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4770127_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:189689;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770127_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5465;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(963, 233, '_wp_attached_file', '2022/07/4770129_1.jpg'),
(964, 233, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4770129_1.jpg\";s:8:\"filesize\";i:80059;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4770129_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6137;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4770129_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41669;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3026;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4770129_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50426;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4770129_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7634;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4770129_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33344;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1910;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4770129_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7634;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4770129_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33344;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1910;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(965, 234, '_wp_attached_file', '2022/07/4770129_2.jpg'),
(966, 234, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4770129_2.jpg\";s:8:\"filesize\";i:101814;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4770129_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7469;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4770129_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51104;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3591;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4770129_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62135;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4770129_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9370;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4770129_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41168;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2231;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4770129_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9370;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4770129_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41168;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2231;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(967, 235, '_wp_attached_file', '2022/07/4770129_3.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(968, 235, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4770129_3.jpg\";s:8:\"filesize\";i:111215;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4770129_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7619;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4770129_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54345;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3561;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4770129_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66508;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4770129_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9538;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4770129_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43715;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2159;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4770129_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9538;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4770129_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43715;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2159;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(969, 236, '_wp_attached_file', '2022/07/4770129_4.jpg'),
(970, 236, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4770129_4.jpg\";s:8:\"filesize\";i:128911;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4770129_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8057;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4770129_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59066;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3817;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4770129_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73377;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4770129_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10079;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4770129_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46454;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2398;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4770129_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10079;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4770129_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46454;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4770129_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2398;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(971, 237, '_wp_attached_file', '2022/07/4776490_1.jpg'),
(972, 237, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4776490_1.jpg\";s:8:\"filesize\";i:86552;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4776490_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7212;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4776490_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45241;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3416;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4776490_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54192;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4776490_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8933;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4776490_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36669;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2093;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4776490_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8933;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4776490_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36669;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2093;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(973, 238, '_wp_attached_file', '2022/07/4776490_2.jpg'),
(974, 238, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4776490_2.jpg\";s:8:\"filesize\";i:98178;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4776490_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7822;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4776490_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50999;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3720;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4776490_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61512;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4776490_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9615;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4776490_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41397;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2247;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4776490_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9615;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4776490_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41397;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2247;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(975, 239, '_wp_attached_file', '2022/07/4776490_4-1.jpg'),
(976, 239, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:23:\"2022/07/4776490_4-1.jpg\";s:8:\"filesize\";i:214599;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"4776490_4-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13401;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"4776490_4-1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101486;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"4776490_4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6813;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"4776490_4-1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124569;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"4776490_4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19658;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"4776490_4-1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80975;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"4776490_4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3836;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:23:\"4776490_4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19658;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:23:\"4776490_4-1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80975;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:23:\"4776490_4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3836;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(977, 240, '_wp_attached_file', '2022/07/4776490_4.jpg'),
(978, 240, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4776490_4.jpg\";s:8:\"filesize\";i:214599;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4776490_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13401;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4776490_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101486;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6813;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4776490_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:124569;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4776490_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19658;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4776490_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80975;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3836;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4776490_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19658;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4776490_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80975;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4776490_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3836;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(979, 241, '_wp_attached_file', '2022/07/4782543_1.jpg'),
(980, 241, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4782543_1.jpg\";s:8:\"filesize\";i:72420;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(981, 242, '_wp_attached_file', '2022/07/4782543_2.jpg'),
(982, 242, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4782543_2.jpg\";s:8:\"filesize\";i:57021;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4782543_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5042;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4782543_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30066;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2635;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4782543_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36326;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4782543_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6113;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4782543_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24723;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1719;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4782543_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6113;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4782543_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24723;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1719;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(983, 243, '_wp_attached_file', '2022/07/4782543_3.jpg'),
(984, 243, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4782543_3.jpg\";s:8:\"filesize\";i:62295;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4782543_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5224;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4782543_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31696;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2561;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4782543_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38633;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4782543_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5963;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4782543_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25873;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1626;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4782543_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5963;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4782543_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25873;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1626;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(985, 244, '_wp_attached_file', '2022/07/4782543_4.jpg'),
(986, 244, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4782543_4.jpg\";s:8:\"filesize\";i:62569;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4782543_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3198;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4782543_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24375;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1169;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4782543_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31611;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4782543_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2341;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4782543_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18358;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:883;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4782543_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2341;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4782543_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18358;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4782543_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:883;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(987, 245, '_wp_attached_file', '2022/07/4787313_1.jpg'),
(988, 245, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4787313_1.jpg\";s:8:\"filesize\";i:260936;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4787313_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7114;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4787313_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:102977;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3191;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4787313_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133478;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4787313_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11158;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4787313_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75922;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1626;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4787313_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11158;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4787313_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75922;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1626;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(989, 246, '_wp_attached_file', '2022/07/4787313_2.jpg'),
(990, 246, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4787313_2.jpg\";s:8:\"filesize\";i:199675;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(991, 247, '_wp_attached_file', '2022/07/4787313_3.jpg'),
(992, 247, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4787313_3.jpg\";s:8:\"filesize\";i:263630;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4787313_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8112;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4787313_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:99633;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3443;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4787313_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:129975;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4787313_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11638;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4787313_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73751;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1958;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4787313_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11638;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4787313_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73751;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1958;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(993, 248, '_wp_attached_file', '2022/07/4787313_4.jpg'),
(994, 248, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4787313_4.jpg\";s:8:\"filesize\";i:273822;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4787313_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8960;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4787313_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106586;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3728;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4787313_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:137997;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4787313_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12559;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4787313_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79566;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2091;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4787313_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12559;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4787313_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:79566;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4787313_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2091;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(995, 249, '_wp_attached_file', '2022/07/4826292_1.jpg'),
(996, 249, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4826292_1.jpg\";s:8:\"filesize\";i:126459;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4826292_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7078;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4826292_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57018;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3499;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4826292_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70803;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4826292_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9525;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4826292_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44811;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2140;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4826292_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9525;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4826292_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44811;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2140;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(997, 250, '_wp_attached_file', '2022/07/4826292_2.jpg'),
(998, 250, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4826292_2.jpg\";s:8:\"filesize\";i:84388;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4826292_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6656;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4826292_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40195;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3245;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4826292_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49047;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4826292_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7868;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4826292_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32533;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2062;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4826292_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7868;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4826292_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32533;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2062;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(999, 251, '_wp_attached_file', '2022/07/4826292_3.jpg'),
(1000, 251, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4826292_3.jpg\";s:8:\"filesize\";i:75971;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4826292_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5682;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4826292_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34717;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2738;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4826292_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42853;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4826292_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6417;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4826292_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27788;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1823;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4826292_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6417;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4826292_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27788;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1823;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1001, 252, '_wp_attached_file', '2022/07/4826292_4.jpg'),
(1002, 252, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4826292_4.jpg\";s:8:\"filesize\";i:156923;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4826292_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5437;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4826292_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50599;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2850;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4826292_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68247;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4826292_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7181;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4826292_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36924;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1800;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4826292_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7181;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4826292_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36924;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4826292_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1800;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1003, 253, '_wp_attached_file', '2022/07/4832898_1.jpg'),
(1004, 253, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4832898_1.jpg\";s:8:\"filesize\";i:84728;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4832898_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7201;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4832898_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43051;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3614;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4832898_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51815;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4832898_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9015;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4832898_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35178;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2287;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4832898_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9015;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4832898_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35178;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2287;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1005, 254, '_wp_attached_file', '2022/07/4832898_2.jpg'),
(1006, 254, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4832898_2.jpg\";s:8:\"filesize\";i:114239;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4832898_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7799;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4832898_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52845;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3732;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4832898_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64886;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4832898_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9934;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4832898_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42726;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2268;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4832898_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9934;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4832898_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42726;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2268;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1007, 255, '_wp_attached_file', '2022/07/4832898_3.jpg'),
(1008, 255, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4832898_3.jpg\";s:8:\"filesize\";i:115535;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4832898_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7802;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4832898_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53144;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3728;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4832898_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65288;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4832898_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9675;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4832898_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42767;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2281;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4832898_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9675;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4832898_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42767;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2281;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1009, 256, '_wp_attached_file', '2022/07/4832898_4.jpg'),
(1010, 256, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4832898_4.jpg\";s:8:\"filesize\";i:257161;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4832898_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9884;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4832898_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94733;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4430;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4832898_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122735;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4832898_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13927;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4832898_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71672;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2404;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4832898_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13927;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4832898_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71672;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4832898_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2404;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1011, 257, '_wp_attached_file', '2022/07/4835549_1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1012, 257, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4835549_1.jpg\";s:8:\"filesize\";i:228301;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4835549_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8076;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4835549_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85408;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3819;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4835549_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111537;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4835549_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11614;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4835549_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64237;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2208;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4835549_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11614;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4835549_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64237;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2208;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1013, 258, '_wp_attached_file', '2022/07/4835549_2.jpg'),
(1014, 258, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4835549_2.jpg\";s:8:\"filesize\";i:84058;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4835549_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6145;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4835549_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41242;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2796;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4835549_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50457;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4835549_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7080;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4835549_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32859;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1772;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4835549_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7080;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4835549_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32859;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1772;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1015, 259, '_wp_attached_file', '2022/07/4835549_3.jpg'),
(1016, 259, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4835549_3.jpg\";s:8:\"filesize\";i:208737;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4835549_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6752;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4835549_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78541;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3050;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4835549_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:102568;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4835549_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9603;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4835549_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58501;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1796;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4835549_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9603;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4835549_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58501;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1796;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1017, 260, '_wp_attached_file', '2022/07/4835549_4.jpg'),
(1018, 260, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4835549_4.jpg\";s:8:\"filesize\";i:399502;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4835549_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7771;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4835549_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:147765;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3175;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4835549_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:194083;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4835549_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12856;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4835549_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106287;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1698;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4835549_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12856;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4835549_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106287;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4835549_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1698;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1019, 261, '_wp_attached_file', '2022/07/4848125_1.jpg'),
(1020, 261, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4848125_1.jpg\";s:8:\"filesize\";i:67140;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4848125_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5258;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4848125_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32705;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2689;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4848125_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40033;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4848125_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6404;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4848125_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26149;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1720;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4848125_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6404;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4848125_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26149;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1720;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1021, 262, '_wp_attached_file', '2022/07/4848125_2.jpg'),
(1022, 262, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4848125_2.jpg\";s:8:\"filesize\";i:73463;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4848125_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5505;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4848125_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34371;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2668;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4848125_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42298;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4848125_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6231;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4848125_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27390;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1765;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4848125_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6231;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4848125_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27390;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1765;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1023, 263, '_wp_attached_file', '2022/07/4848125_3.jpg'),
(1024, 263, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4848125_3.jpg\";s:8:\"filesize\";i:82504;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4848125_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5864;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4848125_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36924;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2606;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4848125_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45936;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4848125_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6145;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4848125_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29348;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1755;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4848125_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6145;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4848125_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29348;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1755;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1025, 264, '_wp_attached_file', '2022/07/4848125_4.jpg'),
(1026, 264, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4848125_4.jpg\";s:8:\"filesize\";i:132661;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4848125_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5299;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4848125_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45000;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2542;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4848125_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59283;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4848125_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6353;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4848125_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33485;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1628;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4848125_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6353;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4848125_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33485;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4848125_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1628;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1027, 265, '_wp_attached_file', '2022/07/4852616_1.jpg'),
(1028, 265, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4852616_1.jpg\";s:8:\"filesize\";i:125386;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4852616_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8401;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4852616_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59616;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3974;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4852616_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72635;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4852616_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11390;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4852616_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47966;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2339;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4852616_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11390;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4852616_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47966;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2339;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1029, 266, '_wp_attached_file', '2022/07/4852616_2.jpg'),
(1030, 266, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4852616_2.jpg\";s:8:\"filesize\";i:135232;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4852616_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8843;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4852616_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67099;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3856;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4852616_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81626;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4852616_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11843;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4852616_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54263;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2187;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4852616_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11843;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4852616_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54263;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2187;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1031, 267, '_wp_attached_file', '2022/07/4852616_3.jpg'),
(1032, 267, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4852616_3.jpg\";s:8:\"filesize\";i:136120;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1033, 268, '_wp_attached_file', '2022/07/4852616_4.jpg'),
(1034, 268, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/4852616_4.jpg\";s:8:\"filesize\";i:284132;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"4852616_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16520;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"4852616_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122172;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7189;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"4852616_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:151954;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"4852616_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20797;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"4852616_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97035;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3871;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"4852616_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20797;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"4852616_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97035;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"4852616_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3871;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1035, 269, '_wp_attached_file', '2022/07/5066454_1.jpg'),
(1036, 269, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/5066454_1.jpg\";s:8:\"filesize\";i:98887;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"5066454_1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7093;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"5066454_1-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46611;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3158;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"5066454_1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57854;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"5066454_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7640;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"5066454_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37053;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2039;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"5066454_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7640;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"5066454_1-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37053;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2039;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1037, 270, '_wp_attached_file', '2022/07/5066454_2.jpg'),
(1038, 270, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/5066454_2.jpg\";s:8:\"filesize\";i:85382;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"5066454_2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6777;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"5066454_2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43461;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3299;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"5066454_2-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52918;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"5066454_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8168;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"5066454_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35225;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2066;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"5066454_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8168;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"5066454_2-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35225;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2066;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1039, 271, '_wp_attached_file', '2022/07/5066454_3.jpg'),
(1040, 271, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/5066454_3.jpg\";s:8:\"filesize\";i:79595;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"5066454_3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5630;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"5066454_3-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37532;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2525;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"5066454_3-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46844;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"5066454_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5826;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"5066454_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30050;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1695;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"5066454_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5826;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"5066454_3-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30050;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1695;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1041, 272, '_wp_attached_file', '2022/07/5066454_4.jpg'),
(1042, 272, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:1530;s:4:\"file\";s:21:\"2022/07/5066454_4.jpg\";s:8:\"filesize\";i:140414;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"5066454_4-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6147;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"5066454_4-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54446;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2955;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"5066454_4-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70661;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"5066454_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7790;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"5066454_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41100;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1920;}s:12:\"shop_catalog\";a:6:{s:4:\"file\";s:21:\"5066454_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7790;s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:21:\"5066454_4-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41100;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:21:\"5066454_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1920;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1045, 112, '_thumbnail_id', '261'),
(1046, 81, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1047, 81, '_product_image_gallery', '260,259,258,257'),
(1048, 66, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1049, 66, '_product_image_gallery', '269,270,271,272'),
(1050, 274, '_edit_last', '1'),
(1051, 274, '_edit_lock', '1669392199:1'),
(1052, 274, 'total_sales', '0'),
(1053, 274, '_tax_status', 'taxable'),
(1054, 274, '_tax_class', ''),
(1055, 274, '_manage_stock', 'yes'),
(1056, 274, '_backorders', 'no'),
(1057, 274, '_sold_individually', 'no'),
(1058, 274, '_virtual', 'no'),
(1059, 274, '_downloadable', 'no'),
(1060, 274, '_download_limit', '-1'),
(1061, 274, '_download_expiry', '-1'),
(1062, 274, '_stock', '10'),
(1063, 274, '_stock_status', 'instock'),
(1064, 274, '_wc_average_rating', '0'),
(1065, 274, '_wc_review_count', '0'),
(1066, 274, '_product_attributes', 'a:4:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_razmer\";a:6:{s:4:\"name\";s:9:\"pa_razmer\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_tcvet\";a:6:{s:4:\"name\";s:8:\"pa_tcvet\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1067, 274, '_product_version', '6.5.1'),
(1068, 274, '_thumbnail_id', '236'),
(1072, 274, '_product_image_gallery', '236,235,234,233'),
(1073, 275, '_edit_lock', '1660811576:1'),
(1074, 279, '_edit_lock', '1660811583:1'),
(1075, 284, '_wp_attached_file', '2022/08/273_kh_204.png'),
(1076, 284, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:22:\"2022/08/273_kh_204.png\";s:8:\"filesize\";i:67936;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"273_kh_204-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34246;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"273_kh_204-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17356;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:22:\"273_kh_204-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17356;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1077, 285, '_wp_attached_file', '2022/08/outerwear2.png'),
(1078, 285, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:22:\"2022/08/outerwear2.png\";s:8:\"filesize\";i:67671;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"outerwear2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27626;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:22:\"outerwear2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13462;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:22:\"outerwear2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13462;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1079, 286, '_wp_attached_file', '2022/08/skirt.png'),
(1080, 286, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:17:\"2022/08/skirt.png\";s:8:\"filesize\";i:74689;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"skirt-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30980;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"skirt-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15541;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:17:\"skirt-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15541;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1081, 293, '_wp_attached_file', '2022/08/273kh204_razdel_zhenshchiny_1.png'),
(1082, 293, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:41:\"2022/08/273kh204_razdel_zhenshchiny_1.png\";s:8:\"filesize\";i:106912;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"273kh204_razdel_zhenshchiny_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43666;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:41:\"273kh204_razdel_zhenshchiny_1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21109;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:41:\"273kh204_razdel_zhenshchiny_1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21109;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1083, 294, '_wp_attached_file', '2022/08/273kh204_razdel_zhenshchiny_2.png'),
(1084, 294, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:41:\"2022/08/273kh204_razdel_zhenshchiny_2.png\";s:8:\"filesize\";i:35611;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"273kh204_razdel_zhenshchiny_2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19763;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:41:\"273kh204_razdel_zhenshchiny_2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9847;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:41:\"273kh204_razdel_zhenshchiny_2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9847;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1085, 295, '_wp_attached_file', '2022/08/scarf.png'),
(1086, 295, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:273;s:6:\"height\";i:204;s:4:\"file\";s:17:\"2022/08/scarf.png\";s:8:\"filesize\";i:85252;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"scarf-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34974;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"scarf-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16746;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:17:\"scarf-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16746;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1087, 296, '_edit_lock', '1660988182:1'),
(1088, 298, '_order_key', 'wc_order_SQ3zPWDiwt9hs'),
(1089, 298, '_customer_user', '0'),
(1090, 298, '_created_via', 'rest-api'),
(1091, 298, '_order_currency', 'RUB'),
(1092, 298, '_cart_discount', '0'),
(1093, 298, '_cart_discount_tax', '0'),
(1094, 298, '_order_shipping', '0'),
(1095, 298, '_order_shipping_tax', '0'),
(1096, 298, '_order_tax', '0'),
(1097, 298, '_order_total', '0.00'),
(1098, 298, '_order_version', '6.5.1'),
(1099, 298, '_prices_include_tax', 'no'),
(1100, 298, '_billing_address_index', '          '),
(1101, 298, '_shipping_address_index', '         '),
(1102, 299, '_order_key', 'wc_order_vkxojiDsumRer'),
(1103, 299, '_customer_user', '0'),
(1104, 299, '_created_via', 'rest-api'),
(1105, 299, '_order_currency', 'RUB'),
(1106, 299, '_cart_discount', '0'),
(1107, 299, '_cart_discount_tax', '0'),
(1108, 299, '_order_shipping', '0'),
(1109, 299, '_order_shipping_tax', '0'),
(1110, 299, '_order_tax', '0'),
(1111, 299, '_order_total', '0.00'),
(1112, 299, '_order_version', '6.5.1'),
(1113, 299, '_prices_include_tax', 'no'),
(1114, 299, '_billing_address_index', '          '),
(1115, 299, '_shipping_address_index', '         '),
(1116, 299, '_edit_lock', '1661877194:1'),
(1117, 300, 'total_sales', '0'),
(1118, 300, '_tax_status', 'taxable'),
(1119, 300, '_tax_class', ''),
(1120, 300, '_manage_stock', 'no'),
(1121, 300, '_backorders', 'no'),
(1122, 300, '_sold_individually', 'no'),
(1123, 300, '_virtual', 'no'),
(1124, 300, '_downloadable', 'no'),
(1125, 300, '_download_limit', '-1'),
(1126, 300, '_download_expiry', '-1'),
(1127, 300, '_stock', NULL),
(1128, 300, '_stock_status', 'instock'),
(1129, 300, '_wc_average_rating', '0'),
(1130, 300, '_wc_review_count', '0'),
(1131, 300, '_product_version', '6.5.1'),
(1132, 301, '_order_key', 'wc_order_V2jSSZIcaTwuC'),
(1133, 301, '_customer_user', '0'),
(1134, 301, '_created_via', 'rest-api'),
(1135, 301, '_order_currency', 'RUB'),
(1136, 301, '_cart_discount', '0'),
(1137, 301, '_cart_discount_tax', '0'),
(1138, 301, '_order_shipping', '0'),
(1139, 301, '_order_shipping_tax', '0'),
(1140, 301, '_order_tax', '0'),
(1141, 301, '_order_total', '0.00'),
(1142, 301, '_order_version', '6.5.1'),
(1143, 301, '_prices_include_tax', 'no'),
(1144, 301, '_billing_address_index', '          '),
(1145, 301, '_shipping_address_index', '         '),
(1146, 302, 'total_sales', '0'),
(1147, 302, '_tax_status', 'taxable'),
(1148, 302, '_tax_class', ''),
(1149, 302, '_manage_stock', 'no'),
(1150, 302, '_backorders', 'no'),
(1151, 302, '_sold_individually', 'no'),
(1152, 302, '_virtual', 'no'),
(1153, 302, '_downloadable', 'no'),
(1154, 302, '_download_limit', '-1'),
(1155, 302, '_download_expiry', '-1'),
(1156, 302, '_stock', NULL),
(1157, 302, '_stock_status', 'instock'),
(1158, 302, '_wc_average_rating', '0'),
(1159, 302, '_wc_review_count', '0'),
(1160, 302, '_product_version', '6.5.1'),
(1161, 303, '_order_key', 'wc_order_YpETpzk5v6v8h'),
(1162, 303, '_customer_user', '0'),
(1163, 303, '_created_via', 'rest-api'),
(1164, 303, '_order_currency', 'RUB'),
(1165, 303, '_cart_discount', '0'),
(1166, 303, '_cart_discount_tax', '0'),
(1167, 303, '_order_shipping', '0'),
(1168, 303, '_order_shipping_tax', '0'),
(1169, 303, '_order_tax', '0'),
(1170, 303, '_order_total', '0.00');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1171, 303, '_order_version', '6.5.1'),
(1172, 303, '_prices_include_tax', 'no'),
(1173, 303, '_billing_address_index', '          '),
(1174, 303, '_shipping_address_index', '         '),
(1175, 304, '_order_key', 'wc_order_29WTcyTuGrMaO'),
(1176, 304, '_customer_user', '0'),
(1177, 304, '_created_via', 'rest-api'),
(1178, 304, '_order_currency', 'RUB'),
(1179, 304, '_cart_discount', '0'),
(1180, 304, '_cart_discount_tax', '0'),
(1181, 304, '_order_shipping', '0'),
(1182, 304, '_order_shipping_tax', '0'),
(1183, 304, '_order_tax', '0'),
(1184, 304, '_order_total', '0.00'),
(1185, 304, '_order_version', '6.5.1'),
(1186, 304, '_prices_include_tax', 'no'),
(1187, 304, '_billing_address_index', '          '),
(1188, 304, '_shipping_address_index', '         '),
(1189, 305, '_order_key', 'wc_order_OsX4aeVjOmLgL'),
(1190, 305, '_customer_user', '0'),
(1191, 305, '_created_via', 'rest-api'),
(1192, 305, '_order_currency', 'RUB'),
(1193, 305, '_cart_discount', '0'),
(1194, 305, '_cart_discount_tax', '0'),
(1195, 305, '_order_shipping', '0'),
(1196, 305, '_order_shipping_tax', '0'),
(1197, 305, '_order_tax', '0'),
(1198, 305, '_order_total', '0.00'),
(1199, 305, '_order_version', '6.5.1'),
(1200, 305, '_prices_include_tax', 'no'),
(1201, 305, '_billing_address_index', '          '),
(1202, 305, '_shipping_address_index', '         '),
(1203, 306, '_order_key', 'wc_order_b4ljA22tNVOtU'),
(1204, 306, '_customer_user', '0'),
(1205, 306, '_created_via', 'rest-api'),
(1206, 306, '_order_currency', 'RUB'),
(1207, 306, '_cart_discount', '0'),
(1208, 306, '_cart_discount_tax', '0'),
(1209, 306, '_order_shipping', '0'),
(1210, 306, '_order_shipping_tax', '0'),
(1211, 306, '_order_tax', '0'),
(1212, 306, '_order_total', '0.00'),
(1213, 306, '_order_version', '6.5.1'),
(1214, 306, '_prices_include_tax', 'no'),
(1215, 306, '_billing_address_index', '          '),
(1216, 306, '_shipping_address_index', '         '),
(1217, 307, '_order_key', 'wc_order_w7ymbYNSP3Omr'),
(1218, 307, '_customer_user', '0'),
(1219, 307, '_created_via', 'rest-api'),
(1220, 307, '_order_currency', 'RUB'),
(1221, 307, '_cart_discount', '0'),
(1222, 307, '_cart_discount_tax', '0'),
(1223, 307, '_order_shipping', '0'),
(1224, 307, '_order_shipping_tax', '0'),
(1225, 307, '_order_tax', '0'),
(1226, 307, '_order_total', '0.00'),
(1227, 307, '_order_version', '6.5.1'),
(1228, 307, '_prices_include_tax', 'no'),
(1229, 307, '_billing_address_index', '          '),
(1230, 307, '_shipping_address_index', '         '),
(1231, 298, '_edit_lock', '1661934662:1'),
(1232, 308, '_order_key', 'wc_order_ckbuPO7jHscSn'),
(1233, 308, '_customer_user', '0'),
(1234, 308, '_created_via', 'rest-api'),
(1235, 308, '_order_currency', 'RUB'),
(1236, 308, '_cart_discount', '0'),
(1237, 308, '_cart_discount_tax', '0'),
(1238, 308, '_order_shipping', '0'),
(1239, 308, '_order_shipping_tax', '0'),
(1240, 308, '_order_tax', '0'),
(1241, 308, '_order_total', '0.00'),
(1242, 308, '_order_version', '6.5.1'),
(1243, 308, '_prices_include_tax', 'no'),
(1244, 308, '_billing_address_index', '          '),
(1245, 308, '_shipping_address_index', '         '),
(1246, 309, '_order_key', 'wc_order_FSuDsY7znmEW1'),
(1247, 309, '_customer_user', '0'),
(1248, 309, '_created_via', 'rest-api'),
(1249, 309, '_order_currency', 'RUB'),
(1250, 309, '_cart_discount', '0'),
(1251, 309, '_cart_discount_tax', '0'),
(1252, 309, '_order_shipping', '0'),
(1253, 309, '_order_shipping_tax', '0'),
(1254, 309, '_order_tax', '0'),
(1255, 309, '_order_total', '0.00'),
(1256, 309, '_order_version', '6.5.1'),
(1257, 309, '_prices_include_tax', 'no'),
(1258, 309, '_billing_address_index', '          '),
(1259, 309, '_shipping_address_index', '         '),
(1260, 310, '_order_key', 'wc_order_kbO9bkxOrAGkr'),
(1261, 310, '_customer_user', '0'),
(1262, 310, '_created_via', 'rest-api'),
(1263, 310, '_order_currency', 'RUB'),
(1264, 310, '_cart_discount', '0'),
(1265, 310, '_cart_discount_tax', '0'),
(1266, 310, '_order_shipping', '0'),
(1267, 310, '_order_shipping_tax', '0'),
(1268, 310, '_order_tax', '0'),
(1269, 310, '_order_total', '0.00'),
(1270, 310, '_order_version', '6.5.1'),
(1271, 310, '_prices_include_tax', 'no'),
(1272, 310, '_billing_address_index', '          '),
(1273, 310, '_shipping_address_index', '         '),
(1274, 311, '_order_key', 'wc_order_4kFFs3llCBgmE'),
(1275, 311, '_customer_user', '0'),
(1276, 311, '_created_via', 'rest-api'),
(1277, 311, '_order_currency', 'RUB'),
(1278, 311, '_cart_discount', '0'),
(1279, 311, '_cart_discount_tax', '0'),
(1280, 311, '_order_shipping', '0'),
(1281, 311, '_order_shipping_tax', '0'),
(1282, 311, '_order_tax', '0'),
(1283, 311, '_order_total', '0.00'),
(1284, 311, '_order_version', '6.5.1'),
(1285, 311, '_prices_include_tax', 'no'),
(1286, 311, '_billing_address_index', '          '),
(1287, 311, '_shipping_address_index', '         '),
(1288, 312, '_order_key', 'wc_order_SUp3goCVMIT4X'),
(1289, 312, '_customer_user', '0'),
(1290, 312, '_created_via', 'rest-api'),
(1291, 312, '_order_currency', 'RUB'),
(1292, 312, '_cart_discount', '0'),
(1293, 312, '_cart_discount_tax', '0'),
(1294, 312, '_order_shipping', '0'),
(1295, 312, '_order_shipping_tax', '0'),
(1296, 312, '_order_tax', '0'),
(1297, 312, '_order_total', '0.00'),
(1298, 312, '_order_version', '6.5.1'),
(1299, 312, '_prices_include_tax', 'no'),
(1300, 312, '_billing_address_index', '          '),
(1301, 312, '_shipping_address_index', '         '),
(1302, 313, '_order_key', 'wc_order_Bw4HXItp9EZlC'),
(1303, 313, '_customer_user', '0'),
(1304, 313, '_created_via', 'rest-api'),
(1305, 313, '_order_currency', 'RUB'),
(1306, 313, '_cart_discount', '0'),
(1307, 313, '_cart_discount_tax', '0'),
(1308, 313, '_order_shipping', '0'),
(1309, 313, '_order_shipping_tax', '0'),
(1310, 313, '_order_tax', '0'),
(1311, 313, '_order_total', '0.00'),
(1312, 313, '_order_version', '6.5.1'),
(1313, 313, '_prices_include_tax', 'no'),
(1314, 313, '_billing_address_index', '          '),
(1315, 313, '_shipping_address_index', '         '),
(1316, 314, '_order_key', 'wc_order_aLkN2wKi4sNHk'),
(1317, 314, '_customer_user', '0'),
(1318, 314, '_created_via', 'rest-api'),
(1319, 314, '_order_currency', 'RUB'),
(1320, 314, '_cart_discount', '0'),
(1321, 314, '_cart_discount_tax', '0'),
(1322, 314, '_order_shipping', '0'),
(1323, 314, '_order_shipping_tax', '0'),
(1324, 314, '_order_tax', '0'),
(1325, 314, '_order_total', '0.00'),
(1326, 314, '_order_version', '6.5.1'),
(1327, 314, '_prices_include_tax', 'no'),
(1328, 314, '_billing_address_index', '          '),
(1329, 314, '_shipping_address_index', '         '),
(1330, 315, '_order_key', 'wc_order_shSo4K7SbfF9X'),
(1331, 315, '_customer_user', '1'),
(1332, 315, '_created_via', 'rest-api'),
(1333, 315, '_billing_email', 'addffggy@ygg.ru'),
(1334, 315, '_order_currency', 'RUB'),
(1335, 315, '_cart_discount', '0'),
(1336, 315, '_cart_discount_tax', '0'),
(1337, 315, '_order_shipping', '0'),
(1338, 315, '_order_shipping_tax', '0'),
(1339, 315, '_order_tax', '0'),
(1340, 315, '_order_total', '0.00'),
(1341, 315, '_order_version', '6.5.1'),
(1342, 315, '_prices_include_tax', 'no'),
(1343, 315, '_billing_address_index', '         addffggy@ygg.ru '),
(1344, 315, '_shipping_address_index', '         '),
(1345, 316, '_order_key', 'wc_order_fcSZwKqE9OLGh'),
(1346, 316, '_customer_user', '0'),
(1347, 316, '_created_via', 'rest-api'),
(1348, 316, '_order_currency', 'RUB'),
(1349, 316, '_cart_discount', '0'),
(1350, 316, '_cart_discount_tax', '0'),
(1351, 316, '_order_shipping', '0'),
(1352, 316, '_order_shipping_tax', '0'),
(1353, 316, '_order_tax', '0'),
(1354, 316, '_order_total', '0.00'),
(1355, 316, '_order_version', '6.5.1'),
(1356, 316, '_prices_include_tax', 'no'),
(1357, 316, '_billing_address_index', '          '),
(1358, 316, '_shipping_address_index', '         '),
(1359, 315, '_edit_lock', '1661935101:1'),
(1360, 317, '_order_key', 'wc_order_FkhcNv3m9MSWX'),
(1361, 317, '_customer_user', '0'),
(1362, 317, '_created_via', 'rest-api'),
(1363, 317, '_order_currency', 'RUB'),
(1364, 317, '_cart_discount', '0'),
(1365, 317, '_cart_discount_tax', '0'),
(1366, 317, '_order_shipping', '0'),
(1367, 317, '_order_shipping_tax', '0'),
(1368, 317, '_order_tax', '0'),
(1369, 317, '_order_total', '60000.00'),
(1370, 317, '_order_version', '6.5.1'),
(1371, 317, '_prices_include_tax', 'no'),
(1372, 317, '_billing_address_index', '          '),
(1373, 317, '_shipping_address_index', '         '),
(1374, 317, '_edit_lock', '1661938068:1'),
(1375, 318, '_order_key', 'wc_order_hsuS7yzfxSCge'),
(1376, 318, '_customer_user', '1'),
(1377, 318, '_created_via', 'rest-api'),
(1378, 318, '_billing_email', 'addffggy@ygg.ru'),
(1379, 318, '_order_currency', 'RUB'),
(1380, 318, '_cart_discount', '0'),
(1381, 318, '_cart_discount_tax', '0'),
(1382, 318, '_order_shipping', '0'),
(1383, 318, '_order_shipping_tax', '0'),
(1384, 318, '_order_tax', '0'),
(1385, 318, '_order_total', '60000.00'),
(1386, 318, '_order_version', '6.5.1'),
(1387, 318, '_prices_include_tax', 'no'),
(1388, 318, '_billing_address_index', '         addffggy@ygg.ru '),
(1389, 318, '_shipping_address_index', '         '),
(1390, 319, '_order_key', 'wc_order_v53b0JKEjEMDh'),
(1391, 319, '_customer_user', '2'),
(1392, 319, '_created_via', 'rest-api'),
(1393, 319, '_billing_email', 'antoshka@gmail.com'),
(1394, 319, '_order_currency', 'RUB'),
(1395, 319, '_cart_discount', '0'),
(1396, 319, '_cart_discount_tax', '0'),
(1397, 319, '_order_shipping', '0'),
(1398, 319, '_order_shipping_tax', '0'),
(1399, 319, '_order_tax', '0'),
(1400, 319, '_order_total', '60000.00'),
(1401, 319, '_order_version', '6.5.1'),
(1402, 319, '_prices_include_tax', 'no'),
(1403, 319, '_billing_address_index', '         antoshka@gmail.com '),
(1404, 319, '_shipping_address_index', '         '),
(1405, 320, 'total_sales', '0'),
(1406, 320, '_tax_status', 'taxable'),
(1407, 321, '_order_key', 'wc_order_F3mLswIN8zOs9'),
(1408, 320, '_tax_class', ''),
(1409, 321, '_customer_user', '2'),
(1410, 320, '_manage_stock', 'no'),
(1411, 321, '_created_via', 'rest-api'),
(1412, 320, '_backorders', 'no'),
(1413, 320, '_sold_individually', 'no'),
(1414, 321, '_billing_email', 'antoshka@gmail.com'),
(1415, 320, '_virtual', 'no'),
(1416, 321, '_order_currency', 'RUB'),
(1417, 320, '_downloadable', 'no'),
(1418, 321, '_cart_discount', '0'),
(1419, 320, '_download_limit', '-1'),
(1420, 321, '_cart_discount_tax', '0'),
(1421, 320, '_download_expiry', '-1'),
(1422, 321, '_order_shipping', '0'),
(1423, 320, '_stock', NULL),
(1424, 321, '_order_shipping_tax', '0'),
(1425, 320, '_stock_status', 'instock'),
(1426, 321, '_order_tax', '0'),
(1427, 320, '_wc_average_rating', '0'),
(1428, 321, '_order_total', '60000.00'),
(1429, 320, '_wc_review_count', '0'),
(1430, 321, '_order_version', '6.5.1'),
(1431, 321, '_prices_include_tax', 'no'),
(1432, 321, '_billing_address_index', '         antoshka@gmail.com '),
(1433, 321, '_shipping_address_index', '         '),
(1434, 320, '_product_version', '6.5.1'),
(1435, 322, '_order_key', 'wc_order_kH36BBYdhLxdy'),
(1436, 322, '_customer_user', '2'),
(1437, 322, '_created_via', 'rest-api'),
(1438, 322, '_billing_email', 'antoshka@gmail.com'),
(1439, 322, '_order_currency', 'RUB'),
(1440, 322, '_cart_discount', '0'),
(1441, 322, '_cart_discount_tax', '0'),
(1442, 322, '_order_shipping', '0'),
(1443, 322, '_order_shipping_tax', '0'),
(1444, 322, '_order_tax', '0'),
(1445, 322, '_order_total', '60000.00'),
(1446, 322, '_order_version', '6.5.1'),
(1447, 322, '_prices_include_tax', 'no'),
(1448, 322, '_billing_address_index', '         antoshka@gmail.com '),
(1449, 322, '_shipping_address_index', '         '),
(1450, 323, '_order_key', 'wc_order_GuiT4IOz9TUqY'),
(1451, 323, '_customer_user', '2'),
(1452, 323, '_created_via', 'rest-api'),
(1453, 323, '_billing_email', 'antoshka@gmail.com'),
(1454, 323, '_order_currency', 'RUB'),
(1455, 323, '_cart_discount', '0'),
(1456, 323, '_cart_discount_tax', '0'),
(1457, 323, '_order_shipping', '0'),
(1458, 323, '_order_shipping_tax', '0'),
(1459, 323, '_order_tax', '0'),
(1460, 323, '_order_total', '60000.00'),
(1461, 323, '_order_version', '6.5.1'),
(1462, 323, '_prices_include_tax', 'no'),
(1463, 323, '_billing_address_index', '         antoshka@gmail.com '),
(1464, 323, '_shipping_address_index', '         '),
(1465, 324, '_order_key', 'wc_order_fUbEJxMV3uQmP'),
(1466, 324, '_customer_user', '0'),
(1467, 324, '_created_via', 'rest-api'),
(1468, 324, '_order_currency', 'RUB'),
(1469, 324, '_cart_discount', '0'),
(1470, 324, '_cart_discount_tax', '0'),
(1471, 324, '_order_shipping', '0'),
(1472, 324, '_order_shipping_tax', '0'),
(1473, 324, '_order_tax', '0'),
(1474, 324, '_order_total', '0.00'),
(1475, 324, '_order_version', '6.5.1'),
(1476, 324, '_prices_include_tax', 'no'),
(1477, 324, '_billing_address_index', '          '),
(1478, 324, '_shipping_address_index', '         '),
(1479, 325, '_order_key', 'wc_order_Rcnl8w5wSygmr'),
(1480, 325, '_customer_user', '2'),
(1481, 325, '_created_via', 'rest-api'),
(1482, 325, '_billing_email', 'antoshka@gmail.com'),
(1483, 325, '_order_currency', 'RUB'),
(1484, 325, '_cart_discount', '0'),
(1485, 325, '_cart_discount_tax', '0'),
(1486, 325, '_order_shipping', '0'),
(1487, 325, '_order_shipping_tax', '0'),
(1488, 325, '_order_tax', '0'),
(1489, 325, '_order_total', '60000.00'),
(1490, 325, '_order_version', '6.5.1'),
(1491, 325, '_prices_include_tax', 'no'),
(1492, 325, '_billing_address_index', '         antoshka@gmail.com '),
(1493, 325, '_shipping_address_index', '         '),
(1494, 326, '_order_key', 'wc_order_eu19PSJSWSXBF'),
(1495, 326, '_customer_user', '2'),
(1496, 326, '_created_via', 'rest-api'),
(1497, 326, '_billing_email', 'antoshka@gmail.com'),
(1498, 326, '_order_currency', 'RUB'),
(1499, 326, '_cart_discount', '0'),
(1500, 326, '_cart_discount_tax', '0'),
(1501, 326, '_order_shipping', '0'),
(1502, 326, '_order_shipping_tax', '0'),
(1503, 326, '_order_tax', '0'),
(1504, 326, '_order_total', '60000.00'),
(1505, 326, '_order_version', '6.5.1'),
(1506, 326, '_prices_include_tax', 'no'),
(1507, 326, '_billing_address_index', '         antoshka@gmail.com '),
(1508, 326, '_shipping_address_index', '         '),
(1509, 327, '_order_key', 'wc_order_yS9pJE681748C'),
(1510, 327, '_customer_user', '2'),
(1511, 327, '_created_via', 'rest-api'),
(1512, 327, '_billing_email', 'antoshka@gmail.com'),
(1513, 327, '_order_currency', 'RUB'),
(1514, 327, '_cart_discount', '0'),
(1515, 327, '_cart_discount_tax', '0'),
(1516, 327, '_order_shipping', '0'),
(1517, 327, '_order_shipping_tax', '0'),
(1518, 327, '_order_tax', '0'),
(1519, 327, '_order_total', '60000.00'),
(1520, 327, '_order_version', '6.5.1'),
(1521, 327, '_prices_include_tax', 'no'),
(1522, 327, '_billing_address_index', '         antoshka@gmail.com '),
(1523, 327, '_shipping_address_index', '         '),
(1524, 331, '_order_key', 'wc_order_pEQNz76xZvdPS'),
(1525, 331, '_customer_user', '0'),
(1526, 331, '_created_via', 'rest-api'),
(1527, 331, '_order_currency', 'RUB'),
(1528, 331, '_cart_discount', '0'),
(1529, 331, '_cart_discount_tax', '0'),
(1530, 331, '_order_shipping', '0'),
(1531, 331, '_order_shipping_tax', '0'),
(1532, 331, '_order_tax', '0'),
(1533, 331, '_order_total', '0.00'),
(1534, 331, '_order_version', '6.5.1'),
(1535, 331, '_prices_include_tax', 'no'),
(1536, 331, '_billing_address_index', '          '),
(1537, 331, '_shipping_address_index', '         '),
(1538, 332, '_order_key', 'wc_order_iKcemzMFws8HX'),
(1539, 332, '_customer_user', '0'),
(1540, 332, '_created_via', 'rest-api'),
(1541, 332, '_order_currency', 'RUB'),
(1542, 332, '_cart_discount', '0'),
(1543, 332, '_cart_discount_tax', '0'),
(1544, 332, '_order_shipping', '0'),
(1545, 332, '_order_shipping_tax', '0'),
(1546, 332, '_order_tax', '0'),
(1547, 332, '_order_total', '0.00'),
(1548, 332, '_order_version', '6.5.1'),
(1549, 332, '_prices_include_tax', 'no'),
(1550, 332, '_billing_address_index', '          '),
(1551, 332, '_shipping_address_index', '         '),
(1552, 333, '_order_key', 'wc_order_tTQIMDqxtkyoR'),
(1553, 333, '_customer_user', '0'),
(1554, 333, '_created_via', 'rest-api'),
(1555, 333, '_order_currency', 'RUB'),
(1556, 333, '_cart_discount', '0'),
(1557, 333, '_cart_discount_tax', '0'),
(1558, 333, '_order_shipping', '0'),
(1559, 333, '_order_shipping_tax', '0'),
(1560, 333, '_order_tax', '0'),
(1561, 333, '_order_total', '0.00'),
(1562, 333, '_order_version', '6.5.1'),
(1563, 333, '_prices_include_tax', 'no'),
(1564, 333, '_billing_address_index', '          '),
(1565, 333, '_shipping_address_index', '         '),
(1566, 334, '_order_key', 'wc_order_005BDd5omkLnF'),
(1567, 334, '_customer_user', '2'),
(1568, 334, '_created_via', 'rest-api'),
(1569, 334, '_billing_email', 'antoshka@gmail.com'),
(1570, 334, '_order_currency', 'RUB'),
(1571, 334, '_cart_discount', '0'),
(1572, 334, '_cart_discount_tax', '0'),
(1573, 334, '_order_shipping', '0'),
(1574, 334, '_order_shipping_tax', '0'),
(1575, 334, '_order_tax', '0'),
(1576, 334, '_order_total', '60000.00'),
(1577, 334, '_order_version', '6.5.1'),
(1578, 334, '_prices_include_tax', 'no'),
(1579, 334, '_billing_address_index', '         antoshka@gmail.com '),
(1580, 334, '_shipping_address_index', '         '),
(1581, 335, '_order_key', 'wc_order_O9QvWX4G98m4y'),
(1582, 335, '_customer_user', '2'),
(1583, 335, '_created_via', 'rest-api'),
(1584, 335, '_billing_email', 'antoshka@gmail.com'),
(1585, 335, '_order_currency', 'RUB'),
(1586, 335, '_cart_discount', '0'),
(1587, 335, '_cart_discount_tax', '0'),
(1588, 335, '_order_shipping', '0'),
(1589, 335, '_order_shipping_tax', '0'),
(1590, 335, '_order_tax', '0'),
(1591, 335, '_order_total', '60000.00'),
(1592, 335, '_order_version', '6.5.1'),
(1593, 335, '_prices_include_tax', 'no'),
(1594, 335, '_billing_address_index', '         antoshka@gmail.com '),
(1595, 335, '_shipping_address_index', '         '),
(1596, 336, '_order_key', 'wc_order_WYlaCuc9ryQNg'),
(1597, 336, '_customer_user', '2'),
(1598, 336, '_created_via', 'rest-api'),
(1599, 336, '_billing_email', 'antoshka@gmail.com'),
(1600, 336, '_order_currency', 'RUB'),
(1601, 336, '_cart_discount', '0'),
(1602, 336, '_cart_discount_tax', '0'),
(1603, 336, '_order_shipping', '0'),
(1604, 336, '_order_shipping_tax', '0'),
(1605, 336, '_order_tax', '0'),
(1606, 336, '_order_total', '60000.00'),
(1607, 336, '_order_version', '6.5.1'),
(1608, 336, '_prices_include_tax', 'no'),
(1609, 336, '_billing_address_index', '         antoshka@gmail.com '),
(1610, 336, '_shipping_address_index', '         '),
(1611, 338, '_order_key', 'wc_order_Aw0NWZVP4bwfD'),
(1612, 338, '_customer_user', '2'),
(1613, 338, '_created_via', 'rest-api'),
(1614, 338, '_billing_email', 'antoshka@gmail.com'),
(1615, 338, '_order_currency', 'RUB'),
(1616, 338, '_cart_discount', '0'),
(1617, 338, '_cart_discount_tax', '0'),
(1618, 338, '_order_shipping', '0'),
(1619, 338, '_order_shipping_tax', '0'),
(1620, 338, '_order_tax', '0'),
(1621, 338, '_order_total', '60000.00'),
(1622, 338, '_order_version', '6.5.1'),
(1623, 338, '_prices_include_tax', 'no'),
(1624, 338, '_billing_address_index', '         antoshka@gmail.com '),
(1625, 338, '_shipping_address_index', '         '),
(1626, 339, '_order_key', 'wc_order_sTR2UKOcnVA82'),
(1627, 339, '_customer_user', '2'),
(1628, 339, '_created_via', 'rest-api'),
(1629, 339, '_billing_email', 'antoshka@gmail.com'),
(1630, 339, '_order_currency', 'RUB'),
(1631, 339, '_cart_discount', '0'),
(1632, 339, '_cart_discount_tax', '0'),
(1633, 339, '_order_shipping', '0'),
(1634, 339, '_order_shipping_tax', '0'),
(1635, 339, '_order_tax', '0'),
(1636, 339, '_order_total', '60000.00'),
(1637, 339, '_order_version', '6.5.1'),
(1638, 339, '_prices_include_tax', 'no'),
(1639, 339, '_billing_address_index', '         antoshka@gmail.com '),
(1640, 339, '_shipping_address_index', '         '),
(1641, 340, '_order_key', 'wc_order_lhIBSyh8iWs0Q'),
(1642, 340, '_customer_user', '0'),
(1643, 340, '_created_via', 'rest-api'),
(1644, 340, '_order_currency', 'RUB'),
(1645, 340, '_cart_discount', '0'),
(1646, 340, '_cart_discount_tax', '0'),
(1647, 340, '_order_shipping', '0'),
(1648, 340, '_order_shipping_tax', '0'),
(1649, 340, '_order_tax', '0'),
(1650, 340, '_order_total', '0.00'),
(1651, 340, '_order_version', '6.5.1'),
(1652, 340, '_prices_include_tax', 'no'),
(1653, 340, '_billing_address_index', '          '),
(1654, 340, '_shipping_address_index', '         '),
(1655, 341, '_order_key', 'wc_order_wdzqaH88ucJzD'),
(1656, 341, '_customer_user', '0'),
(1657, 341, '_created_via', 'rest-api'),
(1658, 341, '_order_currency', 'RUB'),
(1659, 341, '_cart_discount', '0'),
(1660, 341, '_cart_discount_tax', '0'),
(1661, 341, '_order_shipping', '0'),
(1662, 341, '_order_shipping_tax', '0'),
(1663, 341, '_order_tax', '0'),
(1664, 341, '_order_total', '0.00'),
(1665, 341, '_order_version', '6.5.1'),
(1666, 341, '_prices_include_tax', 'no'),
(1667, 341, '_billing_address_index', '          '),
(1668, 341, '_shipping_address_index', '         '),
(1669, 342, '_order_key', 'wc_order_ZP8AT8xFgwo5I'),
(1670, 342, '_customer_user', '0'),
(1671, 342, '_created_via', 'rest-api'),
(1672, 342, '_order_currency', 'RUB'),
(1673, 342, '_cart_discount', '0'),
(1674, 342, '_cart_discount_tax', '0'),
(1675, 342, '_order_shipping', '0'),
(1676, 342, '_order_shipping_tax', '0'),
(1677, 342, '_order_tax', '0'),
(1678, 342, '_order_total', '0.00'),
(1679, 342, '_order_version', '6.5.1'),
(1680, 342, '_prices_include_tax', 'no'),
(1681, 342, '_billing_address_index', '          '),
(1682, 342, '_shipping_address_index', '         '),
(1683, 343, '_order_key', 'wc_order_DB0m2r98PK5Qi'),
(1684, 343, '_customer_user', '0'),
(1685, 343, '_created_via', 'rest-api'),
(1686, 343, '_order_currency', 'RUB'),
(1687, 343, '_cart_discount', '0'),
(1688, 343, '_cart_discount_tax', '0'),
(1689, 343, '_order_shipping', '0'),
(1690, 343, '_order_shipping_tax', '0'),
(1691, 343, '_order_tax', '0'),
(1692, 343, '_order_total', '0.00'),
(1693, 343, '_order_version', '6.5.1'),
(1694, 343, '_prices_include_tax', 'no'),
(1695, 343, '_billing_address_index', '          '),
(1696, 343, '_shipping_address_index', '         '),
(1697, 344, '_order_key', 'wc_order_SBXBicaut81lJ'),
(1698, 344, '_customer_user', '2'),
(1699, 344, '_created_via', 'rest-api'),
(1700, 344, '_billing_email', 'antoshka@gmail.com'),
(1701, 344, '_order_currency', 'RUB'),
(1702, 344, '_cart_discount', '0'),
(1703, 344, '_cart_discount_tax', '0'),
(1704, 344, '_order_shipping', '0'),
(1705, 344, '_order_shipping_tax', '0'),
(1706, 344, '_order_tax', '0'),
(1707, 344, '_order_total', '0.00'),
(1708, 344, '_order_version', '6.5.1'),
(1709, 344, '_prices_include_tax', 'no'),
(1710, 344, '_billing_address_index', '         antoshka@gmail.com '),
(1711, 344, '_shipping_address_index', '         '),
(1712, 344, '_edit_lock', '1665514980:1'),
(1811, 320, '_edit_lock', '1667422073:1'),
(1831, 274, '_regular_price', '36000'),
(1832, 274, '_sale_price', '34999'),
(1833, 274, '_price', '34999'),
(1882, 117, '_price', '18000'),
(1883, 117, '_regular_price', '27190'),
(1884, 117, '_sale_price', '18000'),
(1985, 320, '_wp_trash_meta_status', 'publish'),
(1986, 320, '_wp_trash_meta_time', '1669392326'),
(1987, 320, '_wp_desired_post_slug', 'product-3'),
(1988, 302, '_wp_trash_meta_status', 'publish'),
(1989, 302, '_wp_trash_meta_time', '1669392327'),
(1990, 302, '_wp_desired_post_slug', 'product-2'),
(1991, 300, '_wp_trash_meta_status', 'publish'),
(1992, 300, '_wp_trash_meta_time', '1669392327'),
(1993, 300, '_wp_desired_post_slug', 'product'),
(1994, 370, '_edit_lock', '1669632502:1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-04-27 16:27:40', '2022-04-27 13:27:40', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2022-04-27 16:27:40', '2022-04-27 13:27:40', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(3, 1, '2022-04-27 16:27:40', '2022-04-27 13:27:40', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-04-27 16:27:40', '2022-04-27 13:27:40', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-04-28 10:09:29', '2022-04-28 07:09:29', '<!-- wp:paragraph -->\n<p>description</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'New post', '', 'publish', 'open', 'open', '', 'new-post', '', '', '2022-04-28 10:09:29', '2022-04-28 07:09:29', '', 0, 'http://localhost/?p=5', 0, 'post', '', 0),
(6, 1, '2022-04-28 10:09:29', '2022-04-28 07:09:29', '<!-- wp:paragraph -->\n<p>description</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'New post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-04-28 10:09:29', '2022-04-28 07:09:29', '', 5, 'http://localhost/?p=6', 0, 'revision', '', 0),
(7, 1, '2022-04-29 15:23:15', '2022-04-29 12:23:15', '<!-- wp:paragraph -->\n<p>Descr</p>\n<!-- /wp:paragraph -->', 'New new post', '', 'publish', 'open', 'open', '', 'new-new-post', '', '', '2022-04-29 15:23:15', '2022-04-29 12:23:15', '', 0, 'http://localhost/?p=7', 0, 'post', '', 0),
(8, 1, '2022-04-29 15:23:15', '2022-04-29 12:23:15', '<!-- wp:paragraph -->\n<p>Descr</p>\n<!-- /wp:paragraph -->', 'New new post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-04-29 15:23:15', '2022-04-29 12:23:15', '', 7, 'http://localhost/?p=8', 0, 'revision', '', 0),
(9, 1, '2022-04-29 15:24:05', '2022-04-29 12:24:05', '<!-- wp:paragraph -->\n<p>descr newnewnew</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'publish', 'open', 'open', '', 'post-new-new-new', '', '', '2022-04-29 15:24:05', '2022-04-29 12:24:05', '', 0, 'http://localhost/?p=9', 0, 'post', '', 0),
(10, 1, '2022-04-29 15:24:05', '2022-04-29 12:24:05', '<!-- wp:paragraph -->\n<p>descr newnewnew</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-29 15:24:05', '2022-04-29 12:24:05', '', 9, 'http://localhost/?p=10', 0, 'revision', '', 0),
(11, 1, '2022-04-29 15:29:05', '2022-04-29 12:29:05', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'publish', 'open', 'open', '', 'post-new-new-new4', '', '', '2022-04-29 15:29:30', '2022-04-29 12:29:30', '', 0, 'http://localhost/?p=11', 0, 'post', '', 0),
(12, 1, '2022-04-29 15:29:05', '2022-04-29 12:29:05', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new4', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-29 15:29:05', '2022-04-29 12:29:05', '', 11, 'http://localhost/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-04-29 15:29:30', '2022-04-29 12:29:30', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-29 15:29:30', '2022-04-29 12:29:30', '', 11, 'http://localhost/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-04-29 15:29:43', '2022-04-29 12:29:43', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'publish', 'open', 'open', '', 'post-new-new-new-2', '', '', '2022-04-29 15:29:43', '2022-04-29 12:29:43', '', 0, 'http://localhost/?p=14', 0, 'post', '', 0),
(15, 1, '2022-04-29 15:29:43', '2022-04-29 12:29:43', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-04-29 15:29:43', '2022-04-29 12:29:43', '', 14, 'http://localhost/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-04-29 15:29:51', '2022-04-29 12:29:51', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'publish', 'open', 'open', '', 'post-new-new-new-3', '', '', '2022-04-29 15:29:51', '2022-04-29 12:29:51', '', 0, 'http://localhost/?p=16', 0, 'post', '', 0),
(17, 1, '2022-04-29 15:29:51', '2022-04-29 12:29:51', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2022-04-29 15:29:51', '2022-04-29 12:29:51', '', 16, 'http://localhost/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-04-29 15:30:00', '2022-04-29 12:30:00', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'publish', 'open', 'open', '', 'post-new-new-new-4', '', '', '2022-04-29 15:30:00', '2022-04-29 12:30:00', '', 0, 'http://localhost/?p=18', 0, 'post', '', 0),
(19, 1, '2022-04-29 15:30:00', '2022-04-29 12:30:00', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-04-29 15:30:00', '2022-04-29 12:30:00', '', 18, 'http://localhost/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-04-29 15:30:09', '2022-04-29 12:30:09', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'publish', 'open', 'open', '', 'post-new-new-new-5', '', '', '2022-04-29 15:30:09', '2022-04-29 12:30:09', '', 0, 'http://localhost/?p=20', 0, 'post', '', 0),
(21, 1, '2022-04-29 15:30:09', '2022-04-29 12:30:09', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-04-29 15:30:09', '2022-04-29 12:30:09', '', 20, 'http://localhost/?p=21', 0, 'revision', '', 0),
(22, 1, '2022-04-29 15:30:21', '2022-04-29 12:30:21', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'publish', 'open', 'open', '', 'post-new-new-new-6', '', '', '2022-04-29 15:30:21', '2022-04-29 12:30:21', '', 0, 'http://localhost/?p=22', 0, 'post', '', 0),
(23, 1, '2022-04-29 15:30:21', '2022-04-29 12:30:21', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2022-04-29 15:30:21', '2022-04-29 12:30:21', '', 22, 'http://localhost/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-04-29 15:30:32', '2022-04-29 12:30:32', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'publish', 'open', 'open', '', 'post-new-new-new-7', '', '', '2022-04-29 15:30:32', '2022-04-29 12:30:32', '', 0, 'http://localhost/?p=24', 0, 'post', '', 0),
(25, 1, '2022-04-29 15:30:32', '2022-04-29 12:30:32', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2022-04-29 15:30:32', '2022-04-29 12:30:32', '', 24, 'http://localhost/?p=25', 0, 'revision', '', 0),
(36, 1, '2022-05-05 15:49:30', '2022-05-05 12:49:30', '<!-- wp:paragraph -->\n<p>posts</p>\n<!-- /wp:paragraph -->', 'Posts', '', 'publish', 'closed', 'closed', '', 'posts', '', '', '2022-11-28 13:52:59', '2022-11-28 10:52:59', '', 0, 'http://localhost/?page_id=36', 0, 'page', '', 0),
(37, 1, '2022-05-05 15:49:30', '2022-05-05 12:49:30', '', 'Posts', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-05-05 15:49:30', '2022-05-05 12:49:30', '', 36, 'http://localhost/?p=37', 0, 'revision', '', 0),
(39, 1, '2022-05-05 15:52:54', '2022-05-05 12:52:54', '<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Сайт logotype.ru – официальный интернет-магазин сети LOGOTYPE. В едином каталоге собраны товары для всей семьи - женская, мужская и детская одежда,  и парфюмерия, аксессуары, а также товары для дома – посуда, текстиль, аксессуары для ванной, предметы интерьера и многое другое.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Коллекции и бренды</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Доставка и оплата</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->', 'Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-10-20 22:39:01', '2022-10-20 19:39:01', '', 0, 'http://localhost/?page_id=39', 0, 'page', '', 0),
(40, 1, '2022-05-05 15:52:54', '2022-05-05 12:52:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-05-05 15:52:54', '2022-05-05 12:52:54', '', 39, 'http://localhost/?p=40', 0, 'revision', '', 0),
(49, 1, '2022-05-06 22:08:15', '2022-05-06 19:08:15', '', 'асочка', '', 'inherit', 'open', 'closed', '', '%d0%b0%d1%81%d0%be%d1%87%d0%ba%d0%b0', '', '', '2022-05-06 22:08:15', '2022-05-06 19:08:15', '', 24, 'http://localhost/wp-content/uploads/2022/04/асочка.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2022-05-06 22:09:00', '2022-05-06 19:09:00', '<!-- wp:paragraph -->\n<p>Post new new new</p>\n<!-- /wp:paragraph -->', 'Post new new  new', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2022-05-06 22:09:00', '2022-05-06 19:09:00', '', 24, 'http://localhost/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-05-07 10:18:17', '2022-05-07 07:18:17', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2022-05-07 10:18:17', '2022-05-07 07:18:17', '', 0, 'http://localhost/wp-content/uploads/2022/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2022-05-07 10:18:19', '2022-05-07 07:18:19', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2022-05-07 10:18:19', '2022-05-07 07:18:19', '', 0, 'http://localhost/shop/', 0, 'page', '', 0),
(53, 1, '2022-05-07 10:18:19', '2022-05-07 07:18:19', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2>cart wp</h2>\n<!-- /wp:heading -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2022-11-28 14:12:43', '2022-11-28 11:12:43', '', 0, 'http://localhost/cart/', 0, 'page', '', 0),
(54, 1, '2022-05-07 10:18:19', '2022-05-07 07:18:19', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2022-05-07 10:18:19', '2022-05-07 07:18:19', '', 0, 'http://localhost/checkout/', 0, 'page', '', 0),
(55, 1, '2022-05-07 10:18:19', '2022-05-07 07:18:19', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2022-05-07 10:18:19', '2022-05-07 07:18:19', '', 0, 'http://localhost/my-account/', 0, 'page', '', 0),
(56, 1, '2022-05-07 10:18:19', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2022-05-07 10:18:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=56', 0, 'page', '', 0),
(59, 1, '2022-05-09 15:51:44', '2022-05-09 12:51:44', '', 'Товары', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2022-05-09 15:51:44', '2022-05-09 12:51:44', '', 0, 'http://localhost/?page_id=59', 0, 'page', '', 0),
(60, 1, '2022-05-09 15:51:44', '2022-05-09 12:51:44', '', 'Товары', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-05-09 15:51:44', '2022-05-09 12:51:44', '', 59, 'http://localhost/?p=60', 0, 'revision', '', 0),
(66, 1, '2022-05-14 18:04:25', '2022-05-14 15:04:25', '<span>Возможно, у вас уже есть вопросы — не волнуйтесь. </span><span>Мы рассмотрим каждую мелочь в остальной части документации. </span><span>А пока, пожалуйста, прочитайте, чтобы вы могли получить общее представление о том, что предлагает Vue.</span>', 'NAPAPIJRI', '<span>Возможно, у вас уже есть вопросы — не волнуйтесь. </span><span>Мы рассмотрим каждую мелочь в остальной части документации.</span>', 'publish', 'open', 'closed', '', 'product-name-5', '', '', '2022-07-27 11:48:22', '2022-07-27 08:48:22', '', 0, 'http://localhost/?post_type=product&#038;p=66', 0, 'product', '', 0),
(67, 1, '2022-05-16 21:25:14', '2022-05-16 18:25:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo inventore ex iusto aliquam a modi, nemo dolore atque consequuntur similique. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo inventore ex iusto aliquam a modi, nemo dolore atque consequuntur similique.', 'Юбка-плиссе с принтом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo inventore ex iusto aliquam a modi, nemo dolore atque consequuntur similique.', 'publish', 'open', 'closed', '', 'shmotka-shest', '', '', '2022-07-26 19:43:26', '2022-07-26 16:43:26', '', 0, 'http://localhost/?post_type=product&#038;p=67', 0, 'product', '', 0),
(69, 1, '2022-05-17 11:40:16', '2022-05-17 08:40:16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo inventore ex iusto aliquam a modi, nemo dolore atque consequuntur similique. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo inventore ex iusto aliquam a modi, nemo dolore atque consequuntur similique.', 'Юбка-плиссе с принтом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo inventore ex iusto aliquam a modi, nemo dolore atque consequuntur similique.', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2022-05-17 11:40:16', '2022-05-17 08:40:16', '', 67, 'http://localhost/?p=69', 0, 'revision', '', 0),
(70, 1, '2022-05-17 11:42:21', '2022-05-17 08:42:21', '', '4770127_1', '', 'inherit', 'open', 'closed', '', '4770127_1', '', '', '2022-05-17 11:42:21', '2022-05-17 08:42:21', '', 67, 'http://localhost/wp-content/uploads/2022/05/4770127_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2022-05-17 11:42:27', '2022-05-17 08:42:27', '', '4770127_2', '', 'inherit', 'open', 'closed', '', '4770127_2', '', '', '2022-05-17 11:42:27', '2022-05-17 08:42:27', '', 67, 'http://localhost/wp-content/uploads/2022/05/4770127_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2022-05-17 11:42:33', '2022-05-17 08:42:33', '', '4770127_3', '', 'inherit', 'open', 'closed', '', '4770127_3', '', '', '2022-05-17 11:42:33', '2022-05-17 08:42:33', '', 67, 'http://localhost/wp-content/uploads/2022/05/4770127_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2022-05-17 11:42:39', '2022-05-17 08:42:39', '', '4770127_4', '', 'inherit', 'open', 'closed', '', '4770127_4', '', '', '2022-05-17 11:42:39', '2022-05-17 08:42:39', '', 67, 'http://localhost/wp-content/uploads/2022/05/4770127_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2022-07-27 11:46:04', '2022-07-27 08:46:04', '<span>Возможно, у вас уже есть вопросы — не волнуйтесь. </span><span>Мы рассмотрим каждую мелочь в остальной части документации. </span><span>А пока, пожалуйста, прочитайте, чтобы вы могли получить общее представление о том, что предлагает Vue.</span>', 'NAPAPIJRI', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo inventore ex iusto aliquam a modi, nemo dolore atque consequuntur similique. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo inventore ex iusto aliquam a modi, nemo dolore atque consequuntur similique.', 'inherit', 'closed', 'closed', '', '66-autosave-v1', '', '', '2022-07-27 11:46:04', '2022-07-27 08:46:04', '', 66, 'http://localhost/?p=74', 0, 'revision', '', 0),
(75, 1, '2022-05-17 11:48:02', '2022-05-17 08:48:02', '', '5066454_1', '', 'inherit', 'open', 'closed', '', '5066454_1', '', '', '2022-05-17 11:48:02', '2022-05-17 08:48:02', '', 66, 'http://localhost/wp-content/uploads/2022/05/5066454_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2022-05-17 11:48:09', '2022-05-17 08:48:09', '', '5066454_2', '', 'inherit', 'open', 'closed', '', '5066454_2', '', '', '2022-05-17 11:48:09', '2022-05-17 08:48:09', '', 66, 'http://localhost/wp-content/uploads/2022/05/5066454_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2022-05-17 11:48:15', '2022-05-17 08:48:15', '', '5066454_3', '', 'inherit', 'open', 'closed', '', '5066454_3', '', '', '2022-05-17 11:48:15', '2022-05-17 08:48:15', '', 66, 'http://localhost/wp-content/uploads/2022/05/5066454_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2022-05-17 11:48:21', '2022-05-17 08:48:21', '', '5066454_4', '', 'inherit', 'open', 'closed', '', '5066454_4', '', '', '2022-05-17 11:48:21', '2022-05-17 08:48:21', '', 66, 'http://localhost/wp-content/uploads/2022/05/5066454_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2022-05-17 21:37:56', '2022-05-17 18:37:56', '', 'outerwear2', '', 'inherit', 'open', 'closed', '', 'outerwear2', '', '', '2022-05-17 21:37:56', '2022-05-17 18:37:56', '', 0, 'http://localhost/wp-content/uploads/2022/05/outerwear2.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2022-05-18 17:41:29', '2022-05-18 14:41:29', '', '273_kh_204', '', 'inherit', 'open', 'closed', '', '273_kh_204', '', '', '2022-05-18 17:41:29', '2022-05-18 14:41:29', '', 0, 'http://localhost/wp-content/uploads/2022/05/273_kh_204.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2022-05-18 17:44:47', '2022-05-18 14:44:47', 'Возможно, у вас уже есть вопросы — не волнуйтесь. Мы рассмотрим каждую мелочь в остальной части документации. А пока, пожалуйста, прочитайте, чтобы вы могли получить общее представление о том, что предлагает Vue.', 'Twinset / U&B', 'Возможно, у вас уже есть вопросы — не волнуйтесь. Мы рассмотрим каждую мелочь в остальной части документации.', 'publish', 'open', 'closed', '', 'twinset-ub', '', '', '2022-08-18 12:22:05', '2022-08-18 09:22:05', '', 0, 'http://localhost/?post_type=product&#038;p=81', 0, 'product', '', 0),
(82, 1, '2022-05-18 17:44:21', '2022-05-18 14:44:21', '', '4835549_1', '', 'inherit', 'open', 'closed', '', '4835549_1', '', '', '2022-05-18 17:44:21', '2022-05-18 14:44:21', '', 81, 'http://localhost/wp-content/uploads/2022/05/4835549_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2022-07-27 11:47:24', '2022-07-27 08:47:24', '<span>Возможно, у вас уже есть вопросы — не волнуйтесь. </span><span>Мы рассмотрим каждую мелочь в остальной части документации. </span><span>А пока, пожалуйста, прочитайте, чтобы вы могли получить общее представление о том, что предлагает Vue.</span>', 'Twinset / U&B', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit.', 'inherit', 'closed', 'closed', '', '81-autosave-v1', '', '', '2022-07-27 11:47:24', '2022-07-27 08:47:24', '', 81, 'http://localhost/?p=83', 0, 'revision', '', 0),
(84, 1, '2022-05-18 17:49:16', '2022-05-18 14:49:16', '', 'skirt', '', 'inherit', 'open', 'closed', '', 'skirt', '', '', '2022-05-18 17:49:16', '2022-05-18 14:49:16', '', 0, 'http://localhost/wp-content/uploads/2022/05/skirt.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2022-05-21 11:07:03', '2022-05-21 08:07:03', 'Джинсовая юбка с рваным краем от LEVI\'S изготовлена из 100-процентного органического хлопка. Прямой крой и классическая посадка контрастируют с обтрепанным подолом, придающим модели непринужденные черты. Благодаря натуральному составу обеспечен комфорт в любой сезон. Ткань обладает высокой износостойкостью и приятна на ощупь.', 'LEVI\'S', 'Джинсовая юбка с рваным краем', 'publish', 'open', 'closed', '', 'levis', '', '', '2022-08-18 12:21:34', '2022-08-18 09:21:34', '', 0, 'http://localhost/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 1, '2022-05-21 11:05:35', '2022-05-21 08:05:35', '', '4508350_1', '', 'inherit', 'open', 'closed', '', '4508350_1', '', '', '2022-05-21 11:05:35', '2022-05-21 08:05:35', '', 85, 'http://localhost/wp-content/uploads/2022/05/4508350_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2022-05-21 11:05:40', '2022-05-21 08:05:40', '', '4508350_2', '', 'inherit', 'open', 'closed', '', '4508350_2', '', '', '2022-05-21 11:05:40', '2022-05-21 08:05:40', '', 85, 'http://localhost/wp-content/uploads/2022/05/4508350_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2022-05-21 11:05:49', '2022-05-21 08:05:49', '', '4508350_3', '', 'inherit', 'open', 'closed', '', '4508350_3', '', '', '2022-05-21 11:05:49', '2022-05-21 08:05:49', '', 85, 'http://localhost/wp-content/uploads/2022/05/4508350_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2022-05-21 11:05:58', '2022-05-21 08:05:58', '', '4508350_4', '', 'inherit', 'open', 'closed', '', '4508350_4', '', '', '2022-05-21 11:05:58', '2022-05-21 08:05:58', '', 85, 'http://localhost/wp-content/uploads/2022/05/4508350_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2022-05-21 12:20:21', '2022-05-21 09:20:21', 'Юбка макси с фирменным принтом Lauren Ralph Lauren А-образного силуэта отличается завышенной линией талии, резинкой с завязками. Длина ниже колен. Дизайн - \"жатая\" текстура, темный фон с белоснежной крупной монограммой бренда. Комбинируется с красочным или однотонным верхом в повседневном или кэжуал-стиле.', 'Lauren Ralph Lauren', 'Юбка макси с фирменным принтом', 'publish', 'open', 'closed', '', 'lauren-ralph-lauren', '', '', '2022-07-27 11:50:32', '2022-07-27 08:50:32', '', 0, 'http://localhost/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2022-05-21 12:19:51', '2022-05-21 09:19:51', '', '4776490_1', '', 'inherit', 'open', 'closed', '', '4776490_1', '', '', '2022-05-21 12:19:51', '2022-05-21 09:19:51', '', 90, 'http://localhost/wp-content/uploads/2022/05/4776490_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2022-05-21 12:20:00', '2022-05-21 09:20:00', '', '4776490_2', '', 'inherit', 'open', 'closed', '', '4776490_2', '', '', '2022-05-21 12:20:00', '2022-05-21 09:20:00', '', 90, 'http://localhost/wp-content/uploads/2022/05/4776490_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2022-05-21 12:20:07', '2022-05-21 09:20:07', '', '4776490_4 (1)', '', 'inherit', 'open', 'closed', '', '4776490_4-1', '', '', '2022-05-21 12:20:07', '2022-05-21 09:20:07', '', 90, 'http://localhost/wp-content/uploads/2022/05/4776490_4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2022-05-21 12:20:12', '2022-05-21 09:20:12', '', '4776490_4', '', 'inherit', 'open', 'closed', '', '4776490_4', '', '', '2022-05-21 12:20:12', '2022-05-21 09:20:12', '', 90, 'http://localhost/wp-content/uploads/2022/05/4776490_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2022-07-27 09:47:01', '2022-07-27 06:47:01', 'Джинсовая юбка с рваным краем от LEVI\'S изготовлена из 100-процентного органического хлопка. Прямой крой и классическая посадка контрастируют с обтрепанным подолом, придающим модели непринужденные черты. Благодаря натуральному составу обеспечен комфорт в любой сезон. Ткань обладает высокой износостойкостью и приятна на ощупь.', 'LEVI\'S', '<p>Джинсовая юбка с рваным краем</p>', 'inherit', 'closed', 'closed', '', '85-autosave-v1', '', '', '2022-07-27 09:47:01', '2022-07-27 06:47:01', '', 85, 'http://localhost/?p=95', 0, 'revision', '', 0),
(96, 1, '2022-05-22 10:33:08', '2022-05-22 07:33:08', 'Атласная юбка миди BOSS - это стильный А-силуэт, приятная к телу ткан и элегантный внешний вид. Линия талии слегка завышена, длина - ниже колена. Дизайн - однотонный бирюзовый оттенок с шелковой текстурой, отсутствие декора. Материал гигроскопичный, прочный. Модель подходит для создания вечерних образов или прогулочных нарядов.', 'Атласная юбка миди', 'Модель подходит для создания вечерних образов или прогулочных нарядов.', 'publish', 'open', 'closed', '', '%d0%b0%d1%82%d0%bb%d0%b0%d1%81%d0%bd%d0%b0%d1%8f-%d1%8e%d0%b1%d0%ba%d0%b0-%d0%bc%d0%b8%d0%b4%d0%b8', '', '', '2022-08-20 17:55:34', '2022-08-20 14:55:34', '', 0, 'http://localhost/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2022-05-22 10:27:37', '2022-05-22 07:27:37', '', '4770129_1', '', 'inherit', 'open', 'closed', '', '4770129_1', '', '', '2022-05-22 10:27:37', '2022-05-22 07:27:37', '', 96, 'http://localhost/wp-content/uploads/2022/05/4770129_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2022-05-22 10:27:45', '2022-05-22 07:27:45', '', '4770129_2', '', 'inherit', 'open', 'closed', '', '4770129_2', '', '', '2022-05-22 10:27:45', '2022-05-22 07:27:45', '', 96, 'http://localhost/wp-content/uploads/2022/05/4770129_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2022-05-22 10:27:50', '2022-05-22 07:27:50', '', '4770129_3', '', 'inherit', 'open', 'closed', '', '4770129_3', '', '', '2022-05-22 10:27:50', '2022-05-22 07:27:50', '', 96, 'http://localhost/wp-content/uploads/2022/05/4770129_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2022-05-22 10:28:00', '2022-05-22 07:28:00', '', '4770129_4', '', 'inherit', 'open', 'closed', '', '4770129_4', '', '', '2022-05-22 10:28:00', '2022-05-22 07:28:00', '', 96, 'http://localhost/wp-content/uploads/2022/05/4770129_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2022-05-22 10:43:36', '2022-05-22 07:43:36', 'Атласная юбка миди BOSS - это стильный А-силуэт, приятная к телу ткан и элегантный внешний вид. Линия талии слегка завышена, длина - ниже колена. Дизайн - однотонный бирюзовый оттенок с шелковой текстурой, отсутствие декора. Материал гигроскопичный, прочный. Модель подходит для создания вечерних образов или прогулочных нарядов.', 'Атласная юбка миди', '<p>Модель подходит для создания вечерних образов или прогулочных нарядов.</p>', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2022-05-22 10:43:36', '2022-05-22 07:43:36', '', 96, 'http://localhost/?p=101', 0, 'revision', '', 0),
(102, 1, '2022-05-22 10:58:19', '2022-05-22 07:58:19', '<div id=\"wpwrap\">\r\n<div id=\"wpfooter\" role=\"contentinfo\">Дизайн - однотонный бирюзовый оттенок с шелковой текстурой, отсутствие декора. Материал гигроскопичный, прочный. Модель подходит для создания вечерних образов или прогулочных нарядов.</div>\r\n</div>', 'Ubka Gifl', 'Модель подходит для создания вечерних образов или прогулочных нарядов.', 'publish', 'open', 'closed', '', 'ubka-gifl', '', '', '2022-07-27 11:38:06', '2022-07-27 08:38:06', '', 0, 'http://localhost/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2022-05-22 10:56:07', '2022-05-22 07:56:07', '', '4787313_1', '', 'inherit', 'open', 'closed', '', '4787313_1', '', '', '2022-05-22 10:56:07', '2022-05-22 07:56:07', '', 102, 'http://localhost/wp-content/uploads/2022/05/4787313_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2022-05-22 10:56:14', '2022-05-22 07:56:14', '', '4787313_2', '', 'inherit', 'open', 'closed', '', '4787313_2', '', '', '2022-05-22 10:56:14', '2022-05-22 07:56:14', '', 102, 'http://localhost/wp-content/uploads/2022/05/4787313_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2022-05-22 10:56:18', '2022-05-22 07:56:18', '', '4787313_3', '', 'inherit', 'open', 'closed', '', '4787313_3', '', '', '2022-05-22 10:56:18', '2022-05-22 07:56:18', '', 102, 'http://localhost/wp-content/uploads/2022/05/4787313_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2022-05-22 10:56:28', '2022-05-22 07:56:28', '', '4787313_4', '', 'inherit', 'open', 'closed', '', '4787313_4', '', '', '2022-05-22 10:56:28', '2022-05-22 07:56:28', '', 102, 'http://localhost/wp-content/uploads/2022/05/4787313_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2022-06-13 21:56:39', '2022-06-13 18:56:39', '', 'Lorem New Product', '', 'publish', 'open', 'closed', '', 'lorem-new-product', '', '', '2022-07-27 11:37:03', '2022-07-27 08:37:03', '', 0, 'http://localhost/?post_type=product&#038;p=112', 0, 'product', '', 0),
(113, 1, '2022-06-13 21:53:19', '2022-06-13 18:53:19', '', '4826292_1', '', 'inherit', 'open', 'closed', '', '4826292_1', '', '', '2022-06-13 21:53:19', '2022-06-13 18:53:19', '', 112, 'http://localhost/wp-content/uploads/2022/06/4826292_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2022-06-13 21:53:26', '2022-06-13 18:53:26', '', '4826292_2', '', 'inherit', 'open', 'closed', '', '4826292_2', '', '', '2022-06-13 21:53:26', '2022-06-13 18:53:26', '', 112, 'http://localhost/wp-content/uploads/2022/06/4826292_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2022-06-13 21:53:36', '2022-06-13 18:53:36', '', '4826292_3', '', 'inherit', 'open', 'closed', '', '4826292_3', '', '', '2022-06-13 21:53:36', '2022-06-13 18:53:36', '', 112, 'http://localhost/wp-content/uploads/2022/06/4826292_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2022-06-13 21:53:44', '2022-06-13 18:53:44', '', '4826292_4', '', 'inherit', 'open', 'closed', '', '4826292_4', '', '', '2022-06-13 21:53:44', '2022-06-13 18:53:44', '', 112, 'http://localhost/wp-content/uploads/2022/06/4826292_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2022-06-13 21:57:23', '2022-06-13 18:57:23', 'Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время. Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время.', 'Bubble Gym', 'Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время.', 'publish', 'open', 'closed', '', 'bubble-gym', '', '', '2022-11-03 11:34:38', '2022-11-03 08:34:38', '', 0, 'http://localhost/?post_type=product&#038;p=117', 0, 'product', '', 0),
(118, 1, '2022-06-13 21:58:35', '2022-06-13 18:58:35', '<div>\r\n<div>Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат. Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.</div>\r\n</div>', 'Nuxt Middle Sizer', 'Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.', 'publish', 'open', 'closed', '', 'nuxt-middle-sizer', '', '', '2022-07-27 11:31:52', '2022-07-27 08:31:52', '', 0, 'http://localhost/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2022-06-13 21:58:55', '2022-06-13 18:58:55', 'Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время. Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время.', 'No Name Whateer', 'Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время.', 'publish', 'open', 'closed', '', 'no-name-whateer', '', '', '2022-07-27 11:32:07', '2022-07-27 08:32:07', '', 0, 'http://localhost/?post_type=product&#038;p=119', 0, 'product', '', 0),
(120, 1, '2022-06-13 21:59:18', '2022-06-13 18:59:18', 'Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат. Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.', 'Cistit Na Palochke', 'Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.', 'publish', 'open', 'closed', '', 'cistit-na-palochke', '', '', '2022-08-08 23:48:58', '2022-08-08 20:48:58', '', 0, 'http://localhost/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2022-06-13 21:59:39', '2022-06-13 18:59:39', 'Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат. Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.', 'Yandere Cundere', 'Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.', 'publish', 'open', 'closed', '', 'yandere-cundere', '', '', '2022-08-20 17:58:27', '2022-08-20 14:58:27', '', 0, 'http://localhost/?post_type=product&#038;p=121', 0, 'product', '', 0),
(122, 1, '2022-07-27 11:37:11', '2022-07-27 08:37:11', '<div id=\"wpwrap\">\n<div id=\"wpfooter\" role=\"contentinfo\">Дизайн - однотонный бирюзовый оттенок с шелковой текстурой, отсутствие декора. Материал гигроскопичный, прочный. Модель подходит для создания вечерних образов или прогулочных нарядов.</div>\n</div>', 'Ubka Gifl', '', 'inherit', 'closed', 'closed', '', '102-autosave-v1', '', '', '2022-07-27 11:37:11', '2022-07-27 08:37:11', '', 102, 'http://localhost/?p=122', 0, 'revision', '', 0),
(125, 1, '2022-06-26 16:12:53', '2022-06-26 13:12:53', 'Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат. Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.', 'Yandere Cundere', '', 'inherit', 'closed', 'closed', '', '121-autosave-v1', '', '', '2022-06-26 16:12:53', '2022-06-26 13:12:53', '', 121, 'http://localhost/?p=125', 0, 'revision', '', 0),
(126, 1, '2022-06-26 16:02:29', '2022-06-26 13:02:29', '<div>\n<div>Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат. Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.</div>\n</div>', 'Nuxt Middle Sizer', '', 'inherit', 'closed', 'closed', '', '118-autosave-v1', '', '', '2022-06-26 16:02:29', '2022-06-26 13:02:29', '', 118, 'http://localhost/?p=126', 0, 'revision', '', 0),
(127, 1, '2022-06-26 16:02:44', '2022-06-26 13:02:44', '', '4832898_1', '', 'inherit', 'open', 'closed', '', '4832898_1', '', '', '2022-06-26 16:02:44', '2022-06-26 13:02:44', '', 118, 'http://localhost/wp-content/uploads/2022/06/4832898_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2022-06-26 16:03:02', '2022-06-26 13:03:02', '', '4832898_2', '', 'inherit', 'open', 'closed', '', '4832898_2', '', '', '2022-06-26 16:03:02', '2022-06-26 13:03:02', '', 118, 'http://localhost/wp-content/uploads/2022/06/4832898_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2022-06-26 16:03:17', '2022-06-26 13:03:17', '', '4832898_3', '', 'inherit', 'open', 'closed', '', '4832898_3', '', '', '2022-06-26 16:03:17', '2022-06-26 13:03:17', '', 118, 'http://localhost/wp-content/uploads/2022/06/4832898_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2022-06-26 16:03:28', '2022-06-26 13:03:28', '', '4832898_4', '', 'inherit', 'open', 'closed', '', '4832898_4', '', '', '2022-06-26 16:03:28', '2022-06-26 13:03:28', '', 118, 'http://localhost/wp-content/uploads/2022/06/4832898_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2022-06-26 16:07:43', '2022-06-26 13:07:43', '', '4848125_1', '', 'inherit', 'open', 'closed', '', '4848125_1', '', '', '2022-06-26 16:07:43', '2022-06-26 13:07:43', '', 119, 'http://localhost/wp-content/uploads/2022/06/4848125_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2022-06-26 16:07:50', '2022-06-26 13:07:50', '', '4848125_2', '', 'inherit', 'open', 'closed', '', '4848125_2', '', '', '2022-06-26 16:07:50', '2022-06-26 13:07:50', '', 119, 'http://localhost/wp-content/uploads/2022/06/4848125_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2022-06-26 16:08:01', '2022-06-26 13:08:01', '', '4848125_3', '', 'inherit', 'open', 'closed', '', '4848125_3', '', '', '2022-06-26 16:08:01', '2022-06-26 13:08:01', '', 119, 'http://localhost/wp-content/uploads/2022/06/4848125_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2022-06-26 16:08:13', '2022-06-26 13:08:13', '', '4848125_4', '', 'inherit', 'open', 'closed', '', '4848125_4', '', '', '2022-06-26 16:08:13', '2022-06-26 13:08:13', '', 119, 'http://localhost/wp-content/uploads/2022/06/4848125_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2022-06-26 16:08:24', '2022-06-26 13:08:24', '', '4852616_1', '', 'inherit', 'open', 'closed', '', '4852616_1', '', '', '2022-06-26 16:08:24', '2022-06-26 13:08:24', '', 119, 'http://localhost/wp-content/uploads/2022/06/4852616_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2022-06-26 16:08:33', '2022-06-26 13:08:33', '', '4852616_2', '', 'inherit', 'open', 'closed', '', '4852616_2', '', '', '2022-06-26 16:08:33', '2022-06-26 13:08:33', '', 119, 'http://localhost/wp-content/uploads/2022/06/4852616_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2022-06-26 16:08:44', '2022-06-26 13:08:44', '', '4852616_3', '', 'inherit', 'open', 'closed', '', '4852616_3', '', '', '2022-06-26 16:08:44', '2022-06-26 13:08:44', '', 119, 'http://localhost/wp-content/uploads/2022/06/4852616_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2022-06-26 16:08:54', '2022-06-26 13:08:54', '', '4852616_4', '', 'inherit', 'open', 'closed', '', '4852616_4', '', '', '2022-06-26 16:08:54', '2022-06-26 13:08:54', '', 119, 'http://localhost/wp-content/uploads/2022/06/4852616_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2022-06-26 16:13:10', '2022-06-26 13:13:10', 'Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат. Смена знаков не приводила к правильной сортировке. Смена даёт нужный результат.', 'Cistit Na Palochke', '', 'inherit', 'closed', 'closed', '', '120-autosave-v1', '', '', '2022-06-26 16:13:10', '2022-06-26 13:13:10', '', 120, 'http://localhost/?p=139', 0, 'revision', '', 0),
(140, 1, '2022-06-26 16:17:42', '2022-06-26 13:17:42', '', '4782543_1', '', 'inherit', 'open', 'closed', '', '4782543_1', '', '', '2022-06-26 16:17:42', '2022-06-26 13:17:42', '', 117, 'http://localhost/wp-content/uploads/2022/06/4782543_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2022-06-26 16:17:49', '2022-06-26 13:17:49', '', '4782543_2', '', 'inherit', 'open', 'closed', '', '4782543_2', '', '', '2022-06-26 16:17:49', '2022-06-26 13:17:49', '', 117, 'http://localhost/wp-content/uploads/2022/06/4782543_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2022-06-26 16:17:59', '2022-06-26 13:17:59', '', '4782543_3', '', 'inherit', 'open', 'closed', '', '4782543_3', '', '', '2022-06-26 16:17:59', '2022-06-26 13:17:59', '', 117, 'http://localhost/wp-content/uploads/2022/06/4782543_3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(143, 1, '2022-06-26 16:18:07', '2022-06-26 13:18:07', '', '4782543_4', '', 'inherit', 'open', 'closed', '', '4782543_4', '', '', '2022-06-26 16:18:07', '2022-06-26 13:18:07', '', 117, 'http://localhost/wp-content/uploads/2022/06/4782543_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2022-06-26 16:22:41', '2022-06-26 13:22:41', '', '4603336_1', '', 'inherit', 'open', 'closed', '', '4603336_1', '', '', '2022-06-26 16:22:41', '2022-06-26 13:22:41', '', 121, 'http://localhost/wp-content/uploads/2022/06/4603336_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2022-06-26 16:22:53', '2022-06-26 13:22:53', '', '4603336_2', '', 'inherit', 'open', 'closed', '', '4603336_2', '', '', '2022-06-26 16:22:53', '2022-06-26 13:22:53', '', 121, 'http://localhost/wp-content/uploads/2022/06/4603336_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2022-06-26 16:23:00', '2022-06-26 13:23:00', '', '4603336_3', '', 'inherit', 'open', 'closed', '', '4603336_3', '', '', '2022-06-26 16:23:00', '2022-06-26 13:23:00', '', 121, 'http://localhost/wp-content/uploads/2022/06/4603336_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2022-06-26 16:23:11', '2022-06-26 13:23:11', '', '4603336_4', '', 'inherit', 'open', 'closed', '', '4603336_4', '', '', '2022-06-26 16:23:11', '2022-06-26 13:23:11', '', 121, 'http://localhost/wp-content/uploads/2022/06/4603336_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2022-06-26 16:26:05', '2022-06-26 13:26:05', '', '4647038_1', '', 'inherit', 'open', 'closed', '', '4647038_1', '', '', '2022-06-26 16:26:05', '2022-06-26 13:26:05', '', 120, 'http://localhost/wp-content/uploads/2022/06/4647038_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2022-06-26 16:26:26', '2022-06-26 13:26:26', '', '4647038_2', '', 'inherit', 'open', 'closed', '', '4647038_2', '', '', '2022-06-26 16:26:26', '2022-06-26 13:26:26', '', 120, 'http://localhost/wp-content/uploads/2022/06/4647038_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2022-06-26 16:26:37', '2022-06-26 13:26:37', '', '4647038_3', '', 'inherit', 'open', 'closed', '', '4647038_3', '', '', '2022-06-26 16:26:37', '2022-06-26 13:26:37', '', 120, 'http://localhost/wp-content/uploads/2022/06/4647038_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2022-06-26 16:26:47', '2022-06-26 13:26:47', '', '4647038_4', '', 'inherit', 'open', 'closed', '', '4647038_4', '', '', '2022-06-26 16:26:47', '2022-06-26 13:26:47', '', 120, 'http://localhost/wp-content/uploads/2022/06/4647038_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2022-07-02 20:44:37', '2022-06-27 09:25:13', '', '8 800 770 09 90', '', 'publish', 'closed', 'closed', '', '8-800-770-09-90', '', '', '2022-07-02 20:44:37', '2022-07-02 17:44:37', '', 0, 'http://localhost/?p=153', 1, 'nav_menu_item', '', 0),
(154, 1, '2022-07-02 20:44:37', '2022-06-27 14:33:20', '', '8 495 775 09 44', '', 'publish', 'closed', 'closed', '', '8-495-775-09-44', '', '', '2022-07-02 20:44:37', '2022-07-02 17:44:37', '', 0, 'http://localhost/?p=154', 2, 'nav_menu_item', '', 0),
(156, 1, '2022-07-02 20:44:37', '2022-06-27 14:33:20', '', 'Fashion-блог', '', 'publish', 'closed', 'closed', '', 'fashion-%d0%b1%d0%bb%d0%be%d0%b3', '', '', '2022-07-02 20:44:37', '2022-07-02 17:44:37', '', 0, 'http://localhost/?p=156', 3, 'nav_menu_item', '', 0),
(157, 1, '2022-07-02 20:44:37', '2022-06-27 14:33:20', '', 'Магазины', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%b3%d0%b0%d0%b7%d0%b8%d0%bd%d1%8b', '', '', '2022-07-02 20:44:37', '2022-07-02 17:44:37', '', 0, 'http://localhost/?p=157', 4, 'nav_menu_item', '', 0),
(158, 1, '2022-07-02 20:44:37', '2022-06-27 14:33:20', '', 'Акции и новости', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%ba%d1%86%d0%b8%d0%b8-%d0%b8-%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', '', '', '2022-07-02 20:44:37', '2022-07-02 17:44:37', '', 0, 'http://localhost/?p=158', 5, 'nav_menu_item', '', 0),
(159, 1, '2022-07-02 20:44:37', '2022-06-27 14:33:20', '', 'Доставка по всей России', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0-%d0%bf%d0%be-%d0%b2%d1%81%d0%b5%d0%b9-%d1%80%d0%be%d1%81%d1%81%d0%b8%d0%b8', '', '', '2022-07-02 20:44:37', '2022-07-02 17:44:37', '', 0, 'http://localhost/?p=159', 6, 'nav_menu_item', '', 0),
(160, 1, '2022-07-02 20:44:37', '2022-06-27 14:33:20', '', 'Подарочные карты', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%b4%d0%b0%d1%80%d0%be%d1%87%d0%bd%d1%8b%d0%b5-%d0%ba%d0%b0%d1%80%d1%82%d1%8b', '', '', '2022-07-02 20:44:37', '2022-07-02 17:44:37', '', 0, 'http://localhost/?p=160', 7, 'nav_menu_item', '', 0),
(161, 1, '2022-06-27 23:47:43', '2022-06-27 14:52:24', ' ', '', '', 'publish', 'closed', 'closed', '', '161', '', '', '2022-06-27 23:47:43', '2022-06-27 20:47:43', '', 0, 'http://localhost/?p=161', 8, 'nav_menu_item', '', 0),
(162, 1, '2022-06-27 23:47:43', '2022-06-27 14:52:24', ' ', '', '', 'publish', 'closed', 'closed', '', '162', '', '', '2022-06-27 23:47:43', '2022-06-27 20:47:43', '', 0, 'http://localhost/?p=162', 7, 'nav_menu_item', '', 0),
(163, 1, '2022-06-27 23:47:42', '2022-06-27 14:52:24', ' ', '', '', 'publish', 'closed', 'closed', '', '163', '', '', '2022-06-27 23:47:42', '2022-06-27 20:47:42', '', 0, 'http://localhost/?p=163', 4, 'nav_menu_item', '', 0),
(164, 1, '2022-06-27 23:47:42', '2022-06-27 14:52:24', ' ', '', '', 'publish', 'closed', 'closed', '', '164', '', '', '2022-06-27 23:47:42', '2022-06-27 20:47:42', '', 0, 'http://localhost/?p=164', 5, 'nav_menu_item', '', 0),
(165, 1, '2022-06-27 23:47:42', '2022-06-27 14:52:24', ' ', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2022-06-27 23:47:42', '2022-06-27 20:47:42', '', 0, 'http://localhost/?p=165', 2, 'nav_menu_item', '', 0),
(166, 1, '2022-06-27 23:47:42', '2022-06-27 14:52:24', ' ', '', '', 'publish', 'closed', 'closed', '', '166', '', '', '2022-06-27 23:47:42', '2022-06-27 20:47:42', '', 0, 'http://localhost/?p=166', 6, 'nav_menu_item', '', 0),
(167, 1, '2022-06-27 23:47:42', '2022-06-27 14:52:24', ' ', '', '', 'publish', 'closed', 'closed', '', '167', '', '', '2022-06-27 23:47:42', '2022-06-27 20:47:42', '', 0, 'http://localhost/?p=167', 3, 'nav_menu_item', '', 0),
(168, 1, '2022-06-27 23:47:42', '2022-06-27 14:52:23', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2022-06-27 23:47:42', '2022-06-27 20:47:42', '', 0, 'http://localhost/?p=168', 1, 'nav_menu_item', '', 0),
(172, 1, '2022-07-03 18:29:12', '2022-07-03 15:29:12', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-customtheme', '', '', '2022-07-03 18:29:12', '2022-07-03 15:29:12', '', 0, 'http://localhost/2022/07/wp-global-styles-customtheme/', 0, 'wp_global_styles', '', 0),
(176, 1, '2022-07-21 10:19:02', '2022-07-21 07:19:02', '', 'Sale', '', 'publish', 'closed', 'closed', '', 'top-home-banner-0', '', '', '2022-07-24 20:02:42', '2022-07-24 17:02:42', '', 0, 'http://localhost/?post_type=banner&#038;p=176', 0, 'banner', '', 0),
(178, 1, '2022-07-21 10:51:55', '2022-07-21 07:51:55', '', 'Test title', '', 'publish', 'closed', 'closed', '', '178', '', '', '2022-07-24 20:13:20', '2022-07-24 17:13:20', '', 0, 'http://localhost/?post_type=banner&#038;p=178', 0, 'banner', '', 0),
(179, 1, '2022-07-21 10:55:32', '2022-07-21 07:55:32', '', 'Sayt_2360kh1000-1', '', 'inherit', 'open', 'closed', '', 'sayt_2360kh1000-1', '', '', '2022-07-21 10:55:32', '2022-07-21 07:55:32', '', 178, 'http://localhost/wp-content/uploads/2022/07/Sayt_2360kh1000-1.webp', 0, 'attachment', 'image/webp', 0),
(186, 1, '2022-07-22 09:27:26', '2022-07-22 06:27:26', '', 'post', '', 'publish', 'open', 'open', '', 'post', '', '', '2022-07-22 09:27:26', '2022-07-22 06:27:26', '', 0, 'http://localhost/?p=186', 0, 'post', '', 0),
(187, 1, '2022-07-22 09:27:26', '2022-07-22 06:27:26', '', 'post', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2022-07-22 09:27:26', '2022-07-22 06:27:26', '', 186, 'http://localhost/?p=187', 0, 'revision', '', 0),
(190, 1, '2022-07-22 11:02:38', '2022-07-22 08:02:38', '', 'Однако мы хотим, чтобы он был гибким в отношении того', '', 'publish', 'closed', 'closed', '', 'middle-home-banner-0', '', '', '2022-10-20 23:41:25', '2022-10-20 20:41:25', '', 0, 'http://localhost/?post_type=banner&#038;p=190', 0, 'banner', '', 0),
(204, 1, '2022-07-24 19:34:32', '2022-07-24 16:34:32', '', 'Test name', '', 'publish', 'closed', 'closed', '', 'top-home-banner-2', '', '', '2022-07-24 20:17:08', '2022-07-24 17:17:08', '', 0, 'http://localhost/?post_type=banner&#038;p=204', 0, 'banner', '', 0),
(206, 1, '2022-07-24 19:36:37', '2022-07-24 16:36:37', '', 'Фактический указатель слайдов салфетки', '', 'publish', 'closed', 'closed', '', 'middle-home-banner-1', '', '', '2022-10-20 22:01:45', '2022-10-20 19:01:45', '', 0, 'http://localhost/?post_type=banner&#038;p=206', 0, 'banner', '', 0),
(207, 1, '2022-07-24 19:36:24', '2022-07-24 16:36:24', '', 'Требуется установить для виртуальных слайдов', '', 'publish', 'closed', 'closed', '', 'middle-home-banner-2', '', '', '2022-10-20 22:02:09', '2022-10-20 19:02:09', '', 0, 'http://localhost/?post_type=banner&#038;p=207', 0, 'banner', '', 0),
(208, 1, '2022-07-24 20:00:59', '2022-07-24 17:00:59', '', 'top-home-banner-1', '', 'inherit', 'closed', 'closed', '', '178-autosave-v1', '', '', '2022-07-24 20:00:59', '2022-07-24 17:00:59', '', 178, 'http://localhost/?p=208', 0, 'revision', '', 0),
(209, 1, '2022-07-24 20:02:28', '2022-07-24 17:02:28', '', 'Фактический указатель слайдов салфетки. Требуется установить для виртуальных слайдов', '', 'inherit', 'closed', 'closed', '', '176-autosave-v1', '', '', '2022-07-24 20:02:28', '2022-07-24 17:02:28', '', 176, 'http://localhost/?p=209', 0, 'revision', '', 0),
(210, 1, '2022-07-24 20:12:54', '2022-07-24 17:12:54', '', 'top-home-1', '', 'inherit', 'open', 'closed', '', 'top-home-1-2', '', '', '2022-07-24 20:12:54', '2022-07-24 17:12:54', '', 178, 'http://localhost/wp-content/uploads/2022/07/top-home-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2022-07-24 20:14:33', '2022-07-24 17:14:33', '', 'middle-home-0', '', 'inherit', 'open', 'closed', '', 'middle-home-0', '', '', '2022-07-24 20:14:33', '2022-07-24 17:14:33', '', 204, 'http://localhost/wp-content/uploads/2022/07/middle-home-0-1.png', 0, 'attachment', 'image/png', 0),
(212, 1, '2022-07-24 20:14:43', '2022-07-24 17:14:43', '', 'middle-home-1', '', 'inherit', 'open', 'closed', '', 'middle-home-1-2', '', '', '2022-07-24 20:14:43', '2022-07-24 17:14:43', '', 204, 'http://localhost/wp-content/uploads/2022/07/middle-home-1-1.png', 0, 'attachment', 'image/png', 0),
(213, 1, '2022-07-24 20:14:49', '2022-07-24 17:14:49', '', 'middle-home-2', '', 'inherit', 'open', 'closed', '', 'middle-home-2', '', '', '2022-07-24 20:14:49', '2022-07-24 17:14:49', '', 204, 'http://localhost/wp-content/uploads/2022/07/middle-home-2.png', 0, 'attachment', 'image/png', 0),
(214, 1, '2022-07-24 20:15:00', '2022-07-24 17:15:00', '', 'top-home-2', '', 'inherit', 'open', 'closed', '', 'top-home-2', '', '', '2022-07-24 20:15:00', '2022-07-24 17:15:00', '', 204, 'http://localhost/wp-content/uploads/2022/07/top-home-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2022-07-26 18:50:53', '2022-07-26 15:50:53', '', '4508350_1', '', 'inherit', 'open', 'closed', '', '4508350_1-2', '', '', '2022-07-26 18:50:53', '2022-07-26 15:50:53', '', 0, 'http://localhost/wp-content/uploads/2022/07/4508350_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2022-07-26 18:51:08', '2022-07-26 15:51:08', '', '4508350_2', '', 'inherit', 'open', 'closed', '', '4508350_2-2', '', '', '2022-07-26 18:51:08', '2022-07-26 15:51:08', '', 0, 'http://localhost/wp-content/uploads/2022/07/4508350_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2022-07-26 18:51:15', '2022-07-26 15:51:15', '', '4508350_3', '', 'inherit', 'open', 'closed', '', '4508350_3-2', '', '', '2022-07-26 18:51:15', '2022-07-26 15:51:15', '', 0, 'http://localhost/wp-content/uploads/2022/07/4508350_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2022-07-26 18:51:28', '2022-07-26 15:51:28', '', '4508350_4', '', 'inherit', 'open', 'closed', '', '4508350_4-2', '', '', '2022-07-26 18:51:28', '2022-07-26 15:51:28', '', 0, 'http://localhost/wp-content/uploads/2022/07/4508350_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2022-07-26 18:51:48', '2022-07-26 15:51:48', '', '4603336_1', '', 'inherit', 'open', 'closed', '', '4603336_1-2', '', '', '2022-07-26 18:51:48', '2022-07-26 15:51:48', '', 0, 'http://localhost/wp-content/uploads/2022/07/4603336_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2022-07-26 18:52:07', '2022-07-26 15:52:07', '', '4603336_2', '', 'inherit', 'open', 'closed', '', '4603336_2-2', '', '', '2022-07-26 18:52:07', '2022-07-26 15:52:07', '', 0, 'http://localhost/wp-content/uploads/2022/07/4603336_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2022-07-26 18:52:23', '2022-07-26 15:52:23', '', '4603336_3', '', 'inherit', 'open', 'closed', '', '4603336_3-2', '', '', '2022-07-26 18:52:23', '2022-07-26 15:52:23', '', 0, 'http://localhost/wp-content/uploads/2022/07/4603336_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2022-07-26 18:52:37', '2022-07-26 15:52:37', '', '4603336_4', '', 'inherit', 'open', 'closed', '', '4603336_4-2', '', '', '2022-07-26 18:52:37', '2022-07-26 15:52:37', '', 0, 'http://localhost/wp-content/uploads/2022/07/4603336_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2022-07-26 18:52:50', '2022-07-26 15:52:50', '', '4647038_1', '', 'inherit', 'open', 'closed', '', '4647038_1-2', '', '', '2022-07-26 18:52:50', '2022-07-26 15:52:50', '', 0, 'http://localhost/wp-content/uploads/2022/07/4647038_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2022-07-26 18:53:06', '2022-07-26 15:53:06', '', '4647038_2', '', 'inherit', 'open', 'closed', '', '4647038_2-2', '', '', '2022-07-26 18:53:06', '2022-07-26 15:53:06', '', 0, 'http://localhost/wp-content/uploads/2022/07/4647038_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2022-07-26 18:53:18', '2022-07-26 15:53:18', '', '4647038_3', '', 'inherit', 'open', 'closed', '', '4647038_3-2', '', '', '2022-07-26 18:53:18', '2022-07-26 15:53:18', '', 0, 'http://localhost/wp-content/uploads/2022/07/4647038_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2022-07-26 18:53:33', '2022-07-26 15:53:33', '', '4647038_4', '', 'inherit', 'open', 'closed', '', '4647038_4-2', '', '', '2022-07-26 18:53:33', '2022-07-26 15:53:33', '', 0, 'http://localhost/wp-content/uploads/2022/07/4647038_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2022-07-26 18:53:47', '2022-07-26 15:53:47', '', '4770127_1', '', 'inherit', 'open', 'closed', '', '4770127_1-2', '', '', '2022-07-26 18:53:47', '2022-07-26 15:53:47', '', 0, 'http://localhost/wp-content/uploads/2022/07/4770127_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2022-07-26 18:54:04', '2022-07-26 15:54:04', '', '4770127_2', '', 'inherit', 'open', 'closed', '', '4770127_2-2', '', '', '2022-07-26 18:54:04', '2022-07-26 15:54:04', '', 0, 'http://localhost/wp-content/uploads/2022/07/4770127_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2022-07-26 18:54:18', '2022-07-26 15:54:18', '', '4770127_3', '', 'inherit', 'open', 'closed', '', '4770127_3-2', '', '', '2022-07-26 18:54:18', '2022-07-26 15:54:18', '', 0, 'http://localhost/wp-content/uploads/2022/07/4770127_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2022-07-26 18:54:31', '2022-07-26 15:54:31', '', '4770127_4', '', 'inherit', 'open', 'closed', '', '4770127_4-2', '', '', '2022-07-26 18:54:31', '2022-07-26 15:54:31', '', 0, 'http://localhost/wp-content/uploads/2022/07/4770127_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2022-07-26 18:54:47', '2022-07-26 15:54:47', '', '4770129_1', '', 'inherit', 'open', 'closed', '', '4770129_1-2', '', '', '2022-07-26 18:54:47', '2022-07-26 15:54:47', '', 0, 'http://localhost/wp-content/uploads/2022/07/4770129_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2022-07-26 18:55:12', '2022-07-26 15:55:12', '', '4770129_2', '', 'inherit', 'open', 'closed', '', '4770129_2-2', '', '', '2022-07-26 18:55:12', '2022-07-26 15:55:12', '', 0, 'http://localhost/wp-content/uploads/2022/07/4770129_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(235, 1, '2022-07-26 18:55:27', '2022-07-26 15:55:27', '', '4770129_3', '', 'inherit', 'open', 'closed', '', '4770129_3-2', '', '', '2022-07-26 18:55:27', '2022-07-26 15:55:27', '', 0, 'http://localhost/wp-content/uploads/2022/07/4770129_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2022-07-26 18:55:41', '2022-07-26 15:55:41', '', '4770129_4', '', 'inherit', 'open', 'closed', '', '4770129_4-2', '', '', '2022-07-26 18:55:41', '2022-07-26 15:55:41', '', 0, 'http://localhost/wp-content/uploads/2022/07/4770129_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2022-07-26 18:55:59', '2022-07-26 15:55:59', '', '4776490_1', '', 'inherit', 'open', 'closed', '', '4776490_1-2', '', '', '2022-07-26 18:55:59', '2022-07-26 15:55:59', '', 0, 'http://localhost/wp-content/uploads/2022/07/4776490_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2022-07-26 18:56:14', '2022-07-26 15:56:14', '', '4776490_2', '', 'inherit', 'open', 'closed', '', '4776490_2-2', '', '', '2022-07-26 18:56:14', '2022-07-26 15:56:14', '', 0, 'http://localhost/wp-content/uploads/2022/07/4776490_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2022-07-26 18:56:27', '2022-07-26 15:56:27', '', '4776490_4 (1)', '', 'inherit', 'open', 'closed', '', '4776490_4-1-2', '', '', '2022-07-26 18:56:27', '2022-07-26 15:56:27', '', 0, 'http://localhost/wp-content/uploads/2022/07/4776490_4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2022-07-26 18:56:42', '2022-07-26 15:56:42', '', '4776490_4', '', 'inherit', 'open', 'closed', '', '4776490_4-2', '', '', '2022-07-26 18:56:42', '2022-07-26 15:56:42', '', 0, 'http://localhost/wp-content/uploads/2022/07/4776490_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(241, 1, '2022-07-26 18:56:55', '2022-07-26 15:56:55', '', '4782543_1', '', 'inherit', 'open', 'closed', '', '4782543_1-2', '', '', '2022-07-26 18:56:55', '2022-07-26 15:56:55', '', 0, 'http://localhost/wp-content/uploads/2022/07/4782543_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(242, 1, '2022-07-26 18:57:11', '2022-07-26 15:57:11', '', '4782543_2', '', 'inherit', 'open', 'closed', '', '4782543_2-2', '', '', '2022-07-26 18:57:11', '2022-07-26 15:57:11', '', 0, 'http://localhost/wp-content/uploads/2022/07/4782543_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 1, '2022-07-26 18:57:24', '2022-07-26 15:57:24', '', '4782543_3', '', 'inherit', 'open', 'closed', '', '4782543_3-2', '', '', '2022-07-26 18:57:24', '2022-07-26 15:57:24', '', 0, 'http://localhost/wp-content/uploads/2022/07/4782543_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(244, 1, '2022-07-26 18:57:38', '2022-07-26 15:57:38', '', '4782543_4', '', 'inherit', 'open', 'closed', '', '4782543_4-2', '', '', '2022-07-26 18:57:38', '2022-07-26 15:57:38', '', 0, 'http://localhost/wp-content/uploads/2022/07/4782543_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2022-07-26 18:57:52', '2022-07-26 15:57:52', '', '4787313_1', '', 'inherit', 'open', 'closed', '', '4787313_1-2', '', '', '2022-07-26 18:57:52', '2022-07-26 15:57:52', '', 0, 'http://localhost/wp-content/uploads/2022/07/4787313_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 1, '2022-07-26 18:58:07', '2022-07-26 15:58:07', '', '4787313_2', '', 'inherit', 'open', 'closed', '', '4787313_2-2', '', '', '2022-07-26 18:58:07', '2022-07-26 15:58:07', '', 0, 'http://localhost/wp-content/uploads/2022/07/4787313_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 1, '2022-07-26 18:58:21', '2022-07-26 15:58:21', '', '4787313_3', '', 'inherit', 'open', 'closed', '', '4787313_3-2', '', '', '2022-07-26 18:58:21', '2022-07-26 15:58:21', '', 0, 'http://localhost/wp-content/uploads/2022/07/4787313_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2022-07-26 18:58:37', '2022-07-26 15:58:37', '', '4787313_4', '', 'inherit', 'open', 'closed', '', '4787313_4-2', '', '', '2022-07-26 18:58:37', '2022-07-26 15:58:37', '', 0, 'http://localhost/wp-content/uploads/2022/07/4787313_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(249, 1, '2022-07-26 18:58:52', '2022-07-26 15:58:52', '', '4826292_1', '', 'inherit', 'open', 'closed', '', '4826292_1-2', '', '', '2022-07-26 18:58:52', '2022-07-26 15:58:52', '', 0, 'http://localhost/wp-content/uploads/2022/07/4826292_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(250, 1, '2022-07-26 18:59:12', '2022-07-26 15:59:12', '', '4826292_2', '', 'inherit', 'open', 'closed', '', '4826292_2-2', '', '', '2022-07-26 18:59:12', '2022-07-26 15:59:12', '', 0, 'http://localhost/wp-content/uploads/2022/07/4826292_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2022-07-26 18:59:25', '2022-07-26 15:59:25', '', '4826292_3', '', 'inherit', 'open', 'closed', '', '4826292_3-2', '', '', '2022-07-26 18:59:25', '2022-07-26 15:59:25', '', 0, 'http://localhost/wp-content/uploads/2022/07/4826292_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2022-07-26 18:59:43', '2022-07-26 15:59:43', '', '4826292_4', '', 'inherit', 'open', 'closed', '', '4826292_4-2', '', '', '2022-07-26 18:59:43', '2022-07-26 15:59:43', '', 0, 'http://localhost/wp-content/uploads/2022/07/4826292_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(253, 1, '2022-07-26 18:59:56', '2022-07-26 15:59:56', '', '4832898_1', '', 'inherit', 'open', 'closed', '', '4832898_1-2', '', '', '2022-07-26 18:59:56', '2022-07-26 15:59:56', '', 0, 'http://localhost/wp-content/uploads/2022/07/4832898_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2022-07-26 19:00:11', '2022-07-26 16:00:11', '', '4832898_2', '', 'inherit', 'open', 'closed', '', '4832898_2-2', '', '', '2022-07-26 19:00:11', '2022-07-26 16:00:11', '', 0, 'http://localhost/wp-content/uploads/2022/07/4832898_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2022-07-26 19:00:23', '2022-07-26 16:00:23', '', '4832898_3', '', 'inherit', 'open', 'closed', '', '4832898_3-2', '', '', '2022-07-26 19:00:23', '2022-07-26 16:00:23', '', 0, 'http://localhost/wp-content/uploads/2022/07/4832898_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(256, 1, '2022-07-26 19:00:39', '2022-07-26 16:00:39', '', '4832898_4', '', 'inherit', 'open', 'closed', '', '4832898_4-2', '', '', '2022-07-26 19:00:39', '2022-07-26 16:00:39', '', 0, 'http://localhost/wp-content/uploads/2022/07/4832898_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(257, 1, '2022-07-26 19:00:54', '2022-07-26 16:00:54', '', '4835549_1', '', 'inherit', 'open', 'closed', '', '4835549_1-2', '', '', '2022-07-26 19:00:54', '2022-07-26 16:00:54', '', 0, 'http://localhost/wp-content/uploads/2022/07/4835549_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2022-07-26 19:01:06', '2022-07-26 16:01:06', '', '4835549_2', '', 'inherit', 'open', 'closed', '', '4835549_2', '', '', '2022-07-26 19:01:06', '2022-07-26 16:01:06', '', 0, 'http://localhost/wp-content/uploads/2022/07/4835549_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(259, 1, '2022-07-26 19:01:17', '2022-07-26 16:01:17', '', '4835549_3', '', 'inherit', 'open', 'closed', '', '4835549_3', '', '', '2022-07-26 19:01:17', '2022-07-26 16:01:17', '', 0, 'http://localhost/wp-content/uploads/2022/07/4835549_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(260, 1, '2022-07-26 19:01:32', '2022-07-26 16:01:32', '', '4835549_4', '', 'inherit', 'open', 'closed', '', '4835549_4', '', '', '2022-07-26 19:01:32', '2022-07-26 16:01:32', '', 0, 'http://localhost/wp-content/uploads/2022/07/4835549_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(261, 1, '2022-07-26 19:01:46', '2022-07-26 16:01:46', '', '4848125_1', '', 'inherit', 'open', 'closed', '', '4848125_1-2', '', '', '2022-07-26 19:01:46', '2022-07-26 16:01:46', '', 0, 'http://localhost/wp-content/uploads/2022/07/4848125_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(262, 1, '2022-07-26 19:01:58', '2022-07-26 16:01:58', '', '4848125_2', '', 'inherit', 'open', 'closed', '', '4848125_2-2', '', '', '2022-07-26 19:01:58', '2022-07-26 16:01:58', '', 0, 'http://localhost/wp-content/uploads/2022/07/4848125_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(263, 1, '2022-07-26 19:02:17', '2022-07-26 16:02:17', '', '4848125_3', '', 'inherit', 'open', 'closed', '', '4848125_3-2', '', '', '2022-07-26 19:02:17', '2022-07-26 16:02:17', '', 0, 'http://localhost/wp-content/uploads/2022/07/4848125_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(264, 1, '2022-07-26 19:02:31', '2022-07-26 16:02:31', '', '4848125_4', '', 'inherit', 'open', 'closed', '', '4848125_4-2', '', '', '2022-07-26 19:02:31', '2022-07-26 16:02:31', '', 0, 'http://localhost/wp-content/uploads/2022/07/4848125_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(265, 1, '2022-07-26 19:02:49', '2022-07-26 16:02:49', '', '4852616_1', '', 'inherit', 'open', 'closed', '', '4852616_1-2', '', '', '2022-07-26 19:02:49', '2022-07-26 16:02:49', '', 0, 'http://localhost/wp-content/uploads/2022/07/4852616_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(266, 1, '2022-07-26 19:03:02', '2022-07-26 16:03:02', '', '4852616_2', '', 'inherit', 'open', 'closed', '', '4852616_2-2', '', '', '2022-07-26 19:03:02', '2022-07-26 16:03:02', '', 0, 'http://localhost/wp-content/uploads/2022/07/4852616_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(267, 1, '2022-07-26 19:03:18', '2022-07-26 16:03:18', '', '4852616_3', '', 'inherit', 'open', 'closed', '', '4852616_3-2', '', '', '2022-07-26 19:03:18', '2022-07-26 16:03:18', '', 0, 'http://localhost/wp-content/uploads/2022/07/4852616_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(268, 1, '2022-07-26 19:03:33', '2022-07-26 16:03:33', '', '4852616_4', '', 'inherit', 'open', 'closed', '', '4852616_4-2', '', '', '2022-07-26 19:03:33', '2022-07-26 16:03:33', '', 0, 'http://localhost/wp-content/uploads/2022/07/4852616_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(269, 1, '2022-07-26 19:03:45', '2022-07-26 16:03:45', '', '5066454_1', '', 'inherit', 'open', 'closed', '', '5066454_1-2', '', '', '2022-07-26 19:03:45', '2022-07-26 16:03:45', '', 0, 'http://localhost/wp-content/uploads/2022/07/5066454_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(270, 1, '2022-07-26 19:03:57', '2022-07-26 16:03:57', '', '5066454_2', '', 'inherit', 'open', 'closed', '', '5066454_2-2', '', '', '2022-07-26 19:03:57', '2022-07-26 16:03:57', '', 0, 'http://localhost/wp-content/uploads/2022/07/5066454_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(271, 1, '2022-07-26 19:04:09', '2022-07-26 16:04:09', '', '5066454_3', '', 'inherit', 'open', 'closed', '', '5066454_3-2', '', '', '2022-07-26 19:04:09', '2022-07-26 16:04:09', '', 0, 'http://localhost/wp-content/uploads/2022/07/5066454_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(272, 1, '2022-07-26 19:04:21', '2022-07-26 16:04:21', '', '5066454_4', '', 'inherit', 'open', 'closed', '', '5066454_4-2', '', '', '2022-07-26 19:04:21', '2022-07-26 16:04:21', '', 0, 'http://localhost/wp-content/uploads/2022/07/5066454_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(273, 1, '2022-07-27 11:25:11', '2022-07-27 08:25:11', 'Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время. Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время.', 'No Name Whateer', 'Перегенерация миниатюр происходит в фоновом режиме. В зависимости от количества изображений в вашем магазине эта операция может занять некоторое время.', 'inherit', 'closed', 'closed', '', '119-autosave-v1', '', '', '2022-07-27 11:25:11', '2022-07-27 08:25:11', '', 119, 'http://localhost/?p=273', 0, 'revision', '', 0),
(274, 1, '2022-07-27 11:56:58', '2022-07-27 08:56:58', 'А пока, пожалуйста, прочитайте, чтобы вы могли получить общее представление о том, что предлагает Vue.Возможно, у вас уже есть вопросы — не волнуйтесь. Мы рассмотрим каждую мелочь в остальной части документации. А пока, пожалуйста, прочитайте, чтобы вы могли получить общее представление о том, что предлагает Vue.', 'Vue Bochke Pomaytoy', 'А пока, пожалуйста, прочитайте, чтобы вы могли получить общее представление о том, что предлагает Vue.', 'publish', 'open', 'closed', '', 'vue-bochke-pomaytoy', '', '', '2022-11-03 11:14:10', '2022-11-03 08:14:10', '', 0, 'http://localhost/?post_type=product&#038;p=274', 0, 'product', '', 0),
(275, 1, '2022-08-08 12:06:10', '2022-08-08 09:06:10', '<!-- wp:heading -->\n<h2><strong>Женская одежда в Москве</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Женские брюки стали по-настоящему актуальным и удобным предметом гардероба. Они подходят как для создания классического образа, так и для стиля casual. Производители предлагают элегантные модели или варианты с декором. В интернет-магазине&nbsp;Logotype&nbsp;можно купить женские брюки разных моделей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Большой выбор женской одежды</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>В нашем интернет-магазине можно подобрать товары онлайн, включая следующие:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>шерстяные брюки со стрелками;</li><li>джинсы с необработанным краем;</li><li>прямые брюки со стрелками Hugo;</li><li>укороченная модель со стрелками Esprit Collection;</li><li>брюки-бананы из вискозы;</li><li>модель палаццо;</li><li>полосатые брюки из льна;</li><li>спортивные легинсы;</li><li>модель из экокожи Only.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Женские брюки стали по-настоящему актуальным и удобным предметом гардероба. Они подходят как для создания классического образа, так и для стиля casual. </p>\n<!-- /wp:paragraph -->', 'Женская одежда', '', 'publish', 'closed', 'closed', '', 'zhenshchinam', '', '', '2022-08-18 11:32:21', '2022-08-18 08:32:21', '', 0, 'http://localhost/?page_id=275', 0, 'page', '', 0),
(276, 1, '2022-08-08 12:06:10', '2022-08-08 09:06:10', '<!-- wp:heading -->\n<h2><strong>Женские брюки в Москве</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Женские брюки стали по-настоящему актуальным и удобным предметом гардероба. Они подходят как для создания классического образа, так и для стиля casual. Производители предлагают элегантные модели или варианты с декором. В интернет-магазине Logotype можно купить женские брюки разных моделей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Большой выбор женских брюк</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>В нашем интернет-магазине можно подобрать товары онлайн, включая следующие:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>шерстяные брюки со стрелками;</li><li>джинсы с необработанным краем;</li><li>прямые брюки со стрелками Hugo;</li><li>укороченная модель со стрелками Esprit Collection;</li><li>брюки-бананы из вискозы;</li><li>модель палаццо;</li><li>полосатые брюки из льна;</li><li>спортивные легинсы;</li><li>модель из экокожи Only.</li></ul>\n<!-- /wp:list -->', 'Для женщин', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2022-08-08 12:06:10', '2022-08-08 09:06:10', '', 275, 'http://localhost/?p=276', 0, 'revision', '', 0),
(278, 1, '2022-08-08 12:38:35', '2022-08-08 09:38:35', '<!-- wp:paragraph -->\n<p><strong>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома</strong></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-08-08 12:38:35', '2022-08-08 09:38:35', '', 39, 'http://localhost/?p=278', 0, 'revision', '', 0),
(279, 1, '2022-08-08 18:21:57', '2022-08-08 15:21:57', '<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» предлагает купить юбки от известных европейских производителей. Во все времена этот предмет одежды неизменно пользуется популярностью и никогда не покидает женский гардероб.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Большой выбор юбок</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Юбки завоевали любовь прекрасной половины благодаря огромному разнообразию фасонов и непревзойдённой вариативности. Этот вид одежды легко комбинировать с блузами, рубашками, свитерами, топами, джемперами, каждый раз создавая новые образы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» – обширный ресурс, где можно купить женские юбки от ведущих модных домов. Параметры, на которые нужно обратить внимание:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Фасон. Классический карандаш, кокетливое солнце-клёш, женственное годе – современная мода допускает абсолютно разные покрои и решения.</li><li>Длина. Мини-юбки эффектно смотрятся на молодых девушках с красивыми ногами и точёной фигурой. Модели до колена – универсальный выбор на многих случаи. Снова в моде макси с драпировками и запахом.</li><li>Цвет. Однотонные, клетка, полоска, животные и растительные принты – количество возможных вариантов бесконечно.</li><li>Ткань. Лёгкий шифон, «дышащий» хлопок, охлаждающий лён – идеальные варианты для летних моделей. Универсальный деним прочно обосновался в стиле кэжуал. Тёплая уютная шёрстная ткань используется для зимних вещей.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Цена на женские брюки зависит от выбора модели, материала и особенностей кроя. В интернет-магазине Logotype можно подобрать прочное изделие с высокой устойчивостью к стирке.</p>\n<!-- /wp:paragraph -->', 'Женские Юбки', '', 'publish', 'closed', 'closed', '', 'iubki', '', '', '2022-08-18 11:27:20', '2022-08-18 08:27:20', '', 0, 'http://localhost/?page_id=279', 0, 'page', '', 0),
(280, 1, '2022-08-08 18:21:57', '2022-08-08 15:21:57', '<!-- wp:paragraph -->\n<p>Интернет-магазин «Стокманн» предлагает купить юбки от известных европейских производителей. Во все времена этот предмет одежды неизменно пользуется популярностью и никогда не покидает женский гардероб.</p>\n<!-- /wp:paragraph -->', 'Юбки', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2022-08-08 18:21:57', '2022-08-08 15:21:57', '', 279, 'http://localhost/?p=280', 0, 'revision', '', 0),
(282, 1, '2022-08-08 18:25:26', '2022-08-08 15:25:26', '<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» предлагает купить юбки от известных европейских производителей. Во все времена этот предмет одежды неизменно пользуется популярностью и никогда не покидает женский гардероб.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Большой выбор юбок</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Юбки завоевали любовь прекрасной половины благодаря огромному разнообразию фасонов и непревзойдённой вариативности. Этот вид одежды легко комбинировать с блузами, рубашками, свитерами, топами, джемперами, каждый раз создавая новые образы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» – обширный ресурс, где можно купить женские юбки от ведущих модных домов. Параметры, на которые нужно обратить внимание:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Фасон. Классический карандаш, кокетливое солнце-клёш, женственное годе – современная мода допускает абсолютно разные покрои и решения.</li><li>Длина. Мини-юбки эффектно смотрятся на молодых девушках с красивыми ногами и точёной фигурой. Модели до колена – универсальный выбор на многих случаи. Снова в моде макси с драпировками и запахом.</li><li>Цвет. Однотонные, клетка, полоска, животные и растительные принты – количество возможных вариантов бесконечно.</li><li>Ткань. Лёгкий шифон, «дышащий» хлопок, охлаждающий лён – идеальные варианты для летних моделей. Универсальный деним прочно обосновался в стиле кэжуал. Тёплая уютная шёрстная ткань используется для зимних вещей.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Юбки', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2022-08-08 18:25:26', '2022-08-08 15:25:26', '', 279, 'http://localhost/?p=282', 0, 'revision', '', 0),
(283, 1, '2022-08-08 18:39:02', '2022-08-08 15:39:02', '<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» предлагает купить юбки от известных европейских производителей. Во все времена этот предмет одежды неизменно пользуется популярностью и никогда не покидает женский гардероб.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Большой выбор юбок</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Юбки завоевали любовь прекрасной половины благодаря огромному разнообразию фасонов и непревзойдённой вариативности. Этот вид одежды легко комбинировать с блузами, рубашками, свитерами, топами, джемперами, каждый раз создавая новые образы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» – обширный ресурс, где можно купить женские юбки от ведущих модных домов. Параметры, на которые нужно обратить внимание:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Фасон. Классический карандаш, кокетливое солнце-клёш, женственное годе – современная мода допускает абсолютно разные покрои и решения.</li><li>Длина. Мини-юбки эффектно смотрятся на молодых девушках с красивыми ногами и точёной фигурой. Модели до колена – универсальный выбор на многих случаи. Снова в моде макси с драпировками и запахом.</li><li>Цвет. Однотонные, клетка, полоска, животные и растительные принты – количество возможных вариантов бесконечно.</li><li>Ткань. Лёгкий шифон, «дышащий» хлопок, охлаждающий лён – идеальные варианты для летних моделей. Универсальный деним прочно обосновался в стиле кэжуал. Тёплая уютная шёрстная ткань используется для зимних вещей.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Женские Юбки', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2022-08-08 18:39:02', '2022-08-08 15:39:02', '', 279, 'http://localhost/?p=283', 0, 'revision', '', 0),
(284, 1, '2022-08-17 23:47:20', '2022-08-17 20:47:20', '', '273_kh_204', '', 'inherit', 'open', 'closed', '', '273_kh_204-2', '', '', '2022-08-17 23:47:20', '2022-08-17 20:47:20', '', 0, 'http://localhost/wp-content/uploads/2022/08/273_kh_204.png', 0, 'attachment', 'image/png', 0),
(285, 1, '2022-08-17 23:47:26', '2022-08-17 20:47:26', '', 'outerwear2', '', 'inherit', 'open', 'closed', '', 'outerwear2-2', '', '', '2022-08-17 23:47:26', '2022-08-17 20:47:26', '', 0, 'http://localhost/wp-content/uploads/2022/08/outerwear2.png', 0, 'attachment', 'image/png', 0),
(286, 1, '2022-08-17 23:47:37', '2022-08-17 20:47:37', '', 'skirt', '', 'inherit', 'open', 'closed', '', 'skirt-2', '', '', '2022-08-17 23:47:37', '2022-08-17 20:47:37', '', 0, 'http://localhost/wp-content/uploads/2022/08/skirt.png', 0, 'attachment', 'image/png', 0),
(287, 1, '2022-08-17 23:48:00', '2022-08-17 20:48:00', '<!-- wp:heading -->\n<h2><strong>Женские брюки в Москве</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Женские брюки стали по-настоящему актуальным и удобным предметом гардероба. Они подходят как для создания классического образа, так и для стиля casual. Производители предлагают элегантные модели или варианты с декором. В интернет-магазине&nbsp;Logotype&nbsp;можно купить женские брюки разных моделей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Большой выбор женских брюк</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>В нашем интернет-магазине можно подобрать товары онлайн, включая следующие:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>шерстяные брюки со стрелками;</li><li>джинсы с необработанным краем;</li><li>прямые брюки со стрелками Hugo;</li><li>укороченная модель со стрелками Esprit Collection;</li><li>брюки-бананы из вискозы;</li><li>модель палаццо;</li><li>полосатые брюки из льна;</li><li>спортивные легинсы;</li><li>модель из экокожи Only.</li></ul>\n<!-- /wp:list -->', 'Женская одежда', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2022-08-17 23:48:00', '2022-08-17 20:48:00', '', 275, 'http://localhost/?p=287', 0, 'revision', '', 0),
(288, 1, '2022-08-18 11:06:46', '2022-08-18 08:06:46', '<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» предлагает купить юбки от известных европейских производителей. Во все времена этот предмет одежды неизменно пользуется популярностью и никогда не покидает женский гардероб.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Большой выбор юбок</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Юбки завоевали любовь прекрасной половины благодаря огромному разнообразию фасонов и непревзойдённой вариативности. Этот вид одежды легко комбинировать с блузами, рубашками, свитерами, топами, джемперами, каждый раз создавая новые образы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» – обширный ресурс, где можно купить женские юбки от ведущих модных домов. Параметры, на которые нужно обратить внимание:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Фасон. Классический карандаш, кокетливое солнце-клёш, женственное годе – современная мода допускает абсолютно разные покрои и решения.</li><li>Длина. Мини-юбки эффектно смотрятся на молодых девушках с красивыми ногами и точёной фигурой. Модели до колена – универсальный выбор на многих случаи. Снова в моде макси с драпировками и запахом.</li><li>Цвет. Однотонные, клетка, полоска, животные и растительные принты – количество возможных вариантов бесконечно.</li><li>Ткань. Лёгкий шифон, «дышащий» хлопок, охлаждающий лён – идеальные варианты для летних моделей. Универсальный деним прочно обосновался в стиле кэжуал. Тёплая уютная шёрстная ткань используется для зимних вещей.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Женские Юбки', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2022-08-18 11:06:46', '2022-08-18 08:06:46', '', 279, 'http://localhost/?p=288', 0, 'revision', '', 0),
(289, 1, '2022-08-18 11:27:01', '2022-08-18 08:27:01', '<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» предлагает купить юбки от известных европейских производителей. Во все времена этот предмет одежды неизменно пользуется популярностью и никогда не покидает женский гардероб.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Большой выбор юбок</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Юбки завоевали любовь прекрасной половины благодаря огромному разнообразию фасонов и непревзойдённой вариативности. Этот вид одежды легко комбинировать с блузами, рубашками, свитерами, топами, джемперами, каждый раз создавая новые образы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» – обширный ресурс, где можно купить женские юбки от ведущих модных домов. Параметры, на которые нужно обратить внимание:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Фасон. Классический карандаш, кокетливое солнце-клёш, женственное годе – современная мода допускает абсолютно разные покрои и решения.</li><li>Длина. Мини-юбки эффектно смотрятся на молодых девушках с красивыми ногами и точёной фигурой. Модели до колена – универсальный выбор на многих случаи. Снова в моде макси с драпировками и запахом.</li><li>Цвет. Однотонные, клетка, полоска, животные и растительные принты – количество возможных вариантов бесконечно.</li><li>Ткань. Лёгкий шифон, «дышащий» хлопок, охлаждающий лён – идеальные варианты для летних моделей. Универсальный деним прочно обосновался в стиле кэжуал. Тёплая уютная шёрстная ткань используется для зимних вещей.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Цена на женские брюки зависит от выбора модели, материала и особенностей кроя. В интернет-магазине можно подобрать прочное изделие с высокой устойчивостью к стирке.</p>\n<!-- /wp:paragraph -->', 'Юбки', '', 'inherit', 'closed', 'closed', '', '279-autosave-v1', '', '', '2022-08-18 11:27:01', '2022-08-18 08:27:01', '', 279, 'http://localhost/?p=289', 0, 'revision', '', 0),
(290, 1, '2022-08-18 11:27:20', '2022-08-18 08:27:20', '<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» предлагает купить юбки от известных европейских производителей. Во все времена этот предмет одежды неизменно пользуется популярностью и никогда не покидает женский гардероб.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Большой выбор юбок</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Юбки завоевали любовь прекрасной половины благодаря огромному разнообразию фасонов и непревзойдённой вариативности. Этот вид одежды легко комбинировать с блузами, рубашками, свитерами, топами, джемперами, каждый раз создавая новые образы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» – обширный ресурс, где можно купить женские юбки от ведущих модных домов. Параметры, на которые нужно обратить внимание:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Фасон. Классический карандаш, кокетливое солнце-клёш, женственное годе – современная мода допускает абсолютно разные покрои и решения.</li><li>Длина. Мини-юбки эффектно смотрятся на молодых девушках с красивыми ногами и точёной фигурой. Модели до колена – универсальный выбор на многих случаи. Снова в моде макси с драпировками и запахом.</li><li>Цвет. Однотонные, клетка, полоска, животные и растительные принты – количество возможных вариантов бесконечно.</li><li>Ткань. Лёгкий шифон, «дышащий» хлопок, охлаждающий лён – идеальные варианты для летних моделей. Универсальный деним прочно обосновался в стиле кэжуал. Тёплая уютная шёрстная ткань используется для зимних вещей.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Цена на женские брюки зависит от выбора модели, материала и особенностей кроя. В интернет-магазине Logotype можно подобрать прочное изделие с высокой устойчивостью к стирке.</p>\n<!-- /wp:paragraph -->', 'Женские Юбки', '', 'inherit', 'closed', 'closed', '', '279-revision-v1', '', '', '2022-08-18 11:27:20', '2022-08-18 08:27:20', '', 279, 'http://localhost/?p=290', 0, 'revision', '', 0),
(291, 1, '2022-08-18 11:31:56', '2022-08-18 08:31:56', '<!-- wp:heading -->\n<h2><strong>Женская одежда в Москве</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Женские брюки стали по-настоящему актуальным и удобным предметом гардероба. Они подходят как для создания классического образа, так и для стиля casual. Производители предлагают элегантные модели или варианты с декором. В интернет-магазине&nbsp;Logotype&nbsp;можно купить женские брюки разных моделей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Большой выбор женской одежды</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>В нашем интернет-магазине можно подобрать товары онлайн, включая следующие:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>шерстяные брюки со стрелками;</li><li>джинсы с необработанным краем;</li><li>прямые брюки со стрелками Hugo;</li><li>укороченная модель со стрелками Esprit Collection;</li><li>брюки-бананы из вискозы;</li><li>модель палаццо;</li><li>полосатые брюки из льна;</li><li>спортивные легинсы;</li><li>модель из экокожи Only.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Женские брюки стали по-настоящему актуальным и удобным предметом гардероба. Они подходят как для создания классического образа, так и для стиля casual. </p>\n<!-- /wp:paragraph -->', 'Женская одежда', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2022-08-18 11:31:56', '2022-08-18 08:31:56', '', 275, 'http://localhost/?p=291', 0, 'revision', '', 0),
(292, 1, '2022-08-18 11:32:21', '2022-08-18 08:32:21', '<!-- wp:heading -->\n<h2><strong>Женская одежда в Москве</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Женские брюки стали по-настоящему актуальным и удобным предметом гардероба. Они подходят как для создания классического образа, так и для стиля casual. Производители предлагают элегантные модели или варианты с декором. В интернет-магазине&nbsp;Logotype&nbsp;можно купить женские брюки разных моделей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Большой выбор женской одежды</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>В нашем интернет-магазине можно подобрать товары онлайн, включая следующие:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>шерстяные брюки со стрелками;</li><li>джинсы с необработанным краем;</li><li>прямые брюки со стрелками Hugo;</li><li>укороченная модель со стрелками Esprit Collection;</li><li>брюки-бананы из вискозы;</li><li>модель палаццо;</li><li>полосатые брюки из льна;</li><li>спортивные легинсы;</li><li>модель из экокожи Only.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Женские брюки стали по-настоящему актуальным и удобным предметом гардероба. Они подходят как для создания классического образа, так и для стиля casual. </p>\n<!-- /wp:paragraph -->', 'Женская одежда', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2022-08-18 11:32:21', '2022-08-18 08:32:21', '', 275, 'http://localhost/?p=292', 0, 'revision', '', 0),
(293, 1, '2022-08-18 11:46:40', '2022-08-18 08:46:40', '', '273kh204_razdel_zhenshchiny_1', '', 'inherit', 'open', 'closed', '', '273kh204_razdel_zhenshchiny_1', '', '', '2022-08-18 11:46:40', '2022-08-18 08:46:40', '', 0, 'http://localhost/wp-content/uploads/2022/08/273kh204_razdel_zhenshchiny_1.png', 0, 'attachment', 'image/png', 0),
(294, 1, '2022-08-18 11:46:46', '2022-08-18 08:46:46', '', '273kh204_razdel_zhenshchiny_2', '', 'inherit', 'open', 'closed', '', '273kh204_razdel_zhenshchiny_2', '', '', '2022-08-18 11:46:46', '2022-08-18 08:46:46', '', 0, 'http://localhost/wp-content/uploads/2022/08/273kh204_razdel_zhenshchiny_2.png', 0, 'attachment', 'image/png', 0),
(295, 1, '2022-08-18 11:47:05', '2022-08-18 08:47:05', '', 'scarf', '', 'inherit', 'open', 'closed', '', 'scarf', '', '', '2022-08-18 11:47:05', '2022-08-18 08:47:05', '', 0, 'http://localhost/wp-content/uploads/2022/08/scarf.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(296, 1, '2022-08-20 12:37:02', '2022-08-20 09:37:02', '<!-- wp:heading -->\n<h2><strong>Юбки-миди</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Приглашаем в интернет-магазин «Logotype», чтобы выгодно купить юбки-миди премиального качества от известных европейских брендов. Модели универсальной длины легко вписывать в повседневные и деловые образы, просто миксовать с другими вещами и различной обувью.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Большой выбор юбок-миди</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Юбка длиной до колена или немного ниже должна быть в гардеробе каждой женщины. В интернет-магазине «Logotype» покупатели найдут широкий ассортимент модных моделей для создания стильных луков на каждый день. Преимущества юбок-миди:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>выглядят сдержанно, но не скрывают красоту ног;</li><li>помогают создавать женственные элегантные образы;</li><li>подходят под любой тип фигуры, главное, правильно подобрать фасон и скорректировать длину;</li><li>отлично вписываются в деловой дресс-код.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Загляните в наш онлайн-каталог, чтобы выбрать красивую юбку-миди, подходящую под ваш стиль. В ассортименте представлены облегающие и расклешённые, прямые и плиссированные изделия, с запахом и рюшами, карманами и кулиской на поясе. Особенно удачно в длине миди смотрятся фасоны карандаш, трапеция, колокольчик, годе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Где купить юбки-миди</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» предлагает впечатляющее разнообразие трендовых моделей и приемлемые цены на юбки-миди европейского качества. Купить нужные товары онлайн можно на сайте или по телефону. Предлагаем несколько способов доставки, из которых вы можете выбрать наиболее удобный: на дом с курьером, в любой магазин сети или пункт самовывоза. Оплата наличными или картой при получении покупки.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"font-family: StockmannSans, Helvetica, Arial, &quot;Helvetica Neue&quot;, sans-serif; font-size: 17px; white-space: normal;\">Воспользуйтесь выгодным предложением нашего ресурса, чтобы порадовать себя обновками из последних коллекций законодателей фэшн-индустрии. Появились вопросы по продукции или процессу оформления заказа? Необходим совет по выбору или подробная консультация? Обратитесь к менеджерам компании по указанным на сайте телефонам или через удобный мессенджер.</span></p>\n<!-- /wp:paragraph -->', 'Женские юбки-миди', '', 'publish', 'closed', 'closed', '', 'midi', '', '', '2022-08-20 12:37:02', '2022-08-20 09:37:02', '', 0, 'http://localhost/?page_id=296', 0, 'page', '', 0),
(297, 1, '2022-08-20 12:37:02', '2022-08-20 09:37:02', '<!-- wp:heading -->\n<h2><strong>Юбки-миди</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Приглашаем в интернет-магазин «Logotype», чтобы выгодно купить юбки-миди премиального качества от известных европейских брендов. Модели универсальной длины легко вписывать в повседневные и деловые образы, просто миксовать с другими вещами и различной обувью.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Большой выбор юбок-миди</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Юбка длиной до колена или немного ниже должна быть в гардеробе каждой женщины. В интернет-магазине «Logotype» покупатели найдут широкий ассортимент модных моделей для создания стильных луков на каждый день. Преимущества юбок-миди:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>выглядят сдержанно, но не скрывают красоту ног;</li><li>помогают создавать женственные элегантные образы;</li><li>подходят под любой тип фигуры, главное, правильно подобрать фасон и скорректировать длину;</li><li>отлично вписываются в деловой дресс-код.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Загляните в наш онлайн-каталог, чтобы выбрать красивую юбку-миди, подходящую под ваш стиль. В ассортименте представлены облегающие и расклешённые, прямые и плиссированные изделия, с запахом и рюшами, карманами и кулиской на поясе. Особенно удачно в длине миди смотрятся фасоны карандаш, трапеция, колокольчик, годе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Где купить юбки-миди</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интернет-магазин «Logotype» предлагает впечатляющее разнообразие трендовых моделей и приемлемые цены на юбки-миди европейского качества. Купить нужные товары онлайн можно на сайте или по телефону. Предлагаем несколько способов доставки, из которых вы можете выбрать наиболее удобный: на дом с курьером, в любой магазин сети или пункт самовывоза. Оплата наличными или картой при получении покупки.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><span style=\"font-family: StockmannSans, Helvetica, Arial, &quot;Helvetica Neue&quot;, sans-serif; font-size: 17px; white-space: normal;\">Воспользуйтесь выгодным предложением нашего ресурса, чтобы порадовать себя обновками из последних коллекций законодателей фэшн-индустрии. Появились вопросы по продукции или процессу оформления заказа? Необходим совет по выбору или подробная консультация? Обратитесь к менеджерам компании по указанным на сайте телефонам или через удобный мессенджер.</span></p>\n<!-- /wp:paragraph -->', 'Женские юбки-миди', '', 'inherit', 'closed', 'closed', '', '296-revision-v1', '', '', '2022-08-20 12:37:02', '2022-08-20 09:37:02', '', 296, 'http://localhost/?p=297', 0, 'revision', '', 0),
(298, 1, '2022-08-30 18:45:15', '2022-08-30 15:45:15', '', 'Order &ndash; 30 августа, 2022 @ 06:45 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_SQ3zPWDiwt9hs', 'order-aug-30-2022-0345-pm', '', '', '2022-08-30 18:45:15', '2022-08-30 15:45:15', '', 0, 'http://localhost/?post_type=shop_order&#038;p=298', 0, 'shop_order', '', 0),
(299, 1, '2022-08-30 18:47:46', '2022-08-30 15:47:46', '', 'Order &ndash; 30 августа, 2022 @ 06:47 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_vkxojiDsumRer', 'order-aug-30-2022-0347-pm', '', '', '2022-08-30 18:47:46', '2022-08-30 15:47:46', '', 0, 'http://localhost/?post_type=shop_order&#038;p=299', 0, 'shop_order', '', 0),
(300, 1, '2022-08-30 23:51:37', '2022-08-30 20:51:37', '', 'Product', '', 'trash', 'open', 'closed', '', 'product__trashed', '', '', '2022-11-25 19:05:27', '2022-11-25 16:05:27', '', 0, 'http://localhost/product/product/', 0, 'product', '', 0),
(301, 1, '2022-08-30 23:52:11', '2022-08-30 20:52:11', '', 'Order &ndash; 30 августа, 2022 @ 11:52 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_V2jSSZIcaTwuC', 'order-aug-30-2022-0852-pm', '', '', '2022-08-30 23:52:12', '2022-08-30 20:52:12', '', 0, 'http://localhost/?post_type=shop_order&#038;p=301', 0, 'shop_order', '', 0),
(302, 1, '2022-08-31 00:00:10', '2022-08-30 21:00:10', '', 'Product', '', 'trash', 'open', 'closed', '', 'product-2__trashed', '', '', '2022-11-25 19:05:27', '2022-11-25 16:05:27', '', 0, 'http://localhost/product/product-2/', 0, 'product', '', 0),
(303, 1, '2022-08-31 00:21:16', '2022-08-30 21:21:16', '', 'Order &ndash; 31 августа, 2022 @ 12:21 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_YpETpzk5v6v8h', 'order-aug-30-2022-0921-pm', '', '', '2022-08-31 00:21:17', '2022-08-30 21:21:17', '', 0, 'http://localhost/?post_type=shop_order&#038;p=303', 0, 'shop_order', '', 0),
(304, 1, '2022-08-31 00:36:17', '2022-08-30 21:36:17', '', 'Order &ndash; 31 августа, 2022 @ 12:36 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_29WTcyTuGrMaO', 'order-aug-30-2022-0936-pm', '', '', '2022-08-31 00:36:18', '2022-08-30 21:36:18', '', 0, 'http://localhost/?post_type=shop_order&#038;p=304', 0, 'shop_order', '', 0),
(305, 1, '2022-08-31 00:37:33', '2022-08-30 21:37:33', '', 'Order &ndash; 31 августа, 2022 @ 12:37 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_OsX4aeVjOmLgL', 'order-aug-30-2022-0937-pm', '', '', '2022-08-31 00:37:33', '2022-08-30 21:37:33', '', 0, 'http://localhost/?post_type=shop_order&#038;p=305', 0, 'shop_order', '', 0),
(306, 1, '2022-08-31 00:39:46', '2022-08-30 21:39:46', '', 'Order &ndash; 31 августа, 2022 @ 12:39 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_b4ljA22tNVOtU', 'order-aug-30-2022-0939-pm', '', '', '2022-08-31 00:39:47', '2022-08-30 21:39:47', '', 0, 'http://localhost/?post_type=shop_order&#038;p=306', 0, 'shop_order', '', 0),
(307, 1, '2022-08-31 10:32:55', '2022-08-31 07:32:55', '', 'Order &ndash; 31 августа, 2022 @ 10:32 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_w7ymbYNSP3Omr', 'order-aug-31-2022-0732-am', '', '', '2022-08-31 10:32:55', '2022-08-31 07:32:55', '', 0, 'http://localhost/?post_type=shop_order&#038;p=307', 0, 'shop_order', '', 0),
(308, 1, '2022-08-31 10:44:06', '2022-08-31 07:44:06', '', 'Order &ndash; 31 августа, 2022 @ 10:44 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_ckbuPO7jHscSn', 'order-aug-31-2022-0744-am', '', '', '2022-08-31 10:44:07', '2022-08-31 07:44:07', '', 0, 'http://localhost/?post_type=shop_order&#038;p=308', 0, 'shop_order', '', 0),
(309, 1, '2022-08-31 10:46:20', '2022-08-31 07:46:20', '', 'Order &ndash; 31 августа, 2022 @ 10:46 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_FSuDsY7znmEW1', 'order-aug-31-2022-0746-am', '', '', '2022-08-31 10:46:21', '2022-08-31 07:46:21', '', 0, 'http://localhost/?post_type=shop_order&#038;p=309', 0, 'shop_order', '', 0),
(310, 1, '2022-08-31 10:52:56', '2022-08-31 07:52:56', '', 'Order &ndash; 31 августа, 2022 @ 10:52 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_kbO9bkxOrAGkr', 'order-aug-31-2022-0752-am', '', '', '2022-08-31 10:52:56', '2022-08-31 07:52:56', '', 0, 'http://localhost/?post_type=shop_order&#038;p=310', 0, 'shop_order', '', 0),
(311, 1, '2022-08-31 10:53:57', '2022-08-31 07:53:57', '', 'Order &ndash; 31 августа, 2022 @ 10:53 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_4kFFs3llCBgmE', 'order-aug-31-2022-0753-am', '', '', '2022-08-31 10:53:58', '2022-08-31 07:53:58', '', 0, 'http://localhost/?post_type=shop_order&#038;p=311', 0, 'shop_order', '', 0),
(312, 1, '2022-08-31 10:57:08', '2022-08-31 07:57:08', '', 'Order &ndash; 31 августа, 2022 @ 10:57 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_SUp3goCVMIT4X', 'order-aug-31-2022-0757-am', '', '', '2022-08-31 10:57:08', '2022-08-31 07:57:08', '', 0, 'http://localhost/?post_type=shop_order&#038;p=312', 0, 'shop_order', '', 0),
(313, 1, '2022-08-31 11:19:36', '2022-08-31 08:19:36', '', 'Order &ndash; 31 августа, 2022 @ 11:19 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_Bw4HXItp9EZlC', 'order-aug-31-2022-0819-am', '', '', '2022-08-31 11:19:36', '2022-08-31 08:19:36', '', 0, 'http://localhost/?post_type=shop_order&#038;p=313', 0, 'shop_order', '', 0),
(314, 1, '2022-08-31 11:19:40', '2022-08-31 08:19:40', '', 'Order &ndash; 31 августа, 2022 @ 11:19 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_aLkN2wKi4sNHk', 'order-aug-31-2022-0819-am-2', '', '', '2022-08-31 11:19:40', '2022-08-31 08:19:40', '', 0, 'http://localhost/?post_type=shop_order&#038;p=314', 0, 'shop_order', '', 0),
(315, 1, '2022-08-31 11:21:26', '2022-08-31 08:21:26', '', 'Order &ndash; 31 августа, 2022 @ 11:21 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_shSo4K7SbfF9X', 'order-aug-31-2022-0821-am', '', '', '2022-08-31 11:21:26', '2022-08-31 08:21:26', '', 0, 'http://localhost/?post_type=shop_order&#038;p=315', 0, 'shop_order', '', 0),
(316, 1, '2022-08-31 11:30:25', '2022-08-31 08:30:25', '', 'Order &ndash; 31 августа, 2022 @ 11:30 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_fcSZwKqE9OLGh', 'order-aug-31-2022-0830-am', '', '', '2022-08-31 11:30:26', '2022-08-31 08:30:26', '', 0, 'http://localhost/?post_type=shop_order&#038;p=316', 0, 'shop_order', '', 0),
(317, 1, '2022-08-31 11:40:03', '2022-08-31 08:40:03', '', 'Order &ndash; 31 августа, 2022 @ 11:40 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_FkhcNv3m9MSWX', 'order-aug-31-2022-0840-am', '', '', '2022-08-31 11:40:04', '2022-08-31 08:40:04', '', 0, 'http://localhost/?post_type=shop_order&#038;p=317', 0, 'shop_order', '', 0),
(318, 1, '2022-08-31 11:49:17', '2022-08-31 08:49:17', '', 'Order &ndash; 31 августа, 2022 @ 11:49 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_hsuS7yzfxSCge', 'order-aug-31-2022-0849-am', '', '', '2022-08-31 11:49:18', '2022-08-31 08:49:18', '', 0, 'http://localhost/?post_type=shop_order&#038;p=318', 0, 'shop_order', '', 0),
(319, 1, '2022-08-31 11:51:00', '2022-08-31 08:51:00', '', 'Order &ndash; 31 августа, 2022 @ 11:51 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_v53b0JKEjEMDh', 'order-aug-31-2022-0851-am', '', '', '2022-08-31 11:51:00', '2022-08-31 08:51:00', '', 0, 'http://localhost/?post_type=shop_order&#038;p=319', 0, 'shop_order', '', 0),
(320, 1, '2022-08-31 11:54:52', '2022-08-31 08:54:52', '', 'Product', '', 'trash', 'open', 'closed', '', 'product-3__trashed', '', '', '2022-11-25 19:05:26', '2022-11-25 16:05:26', '', 0, 'http://localhost/product/product-3/', 0, 'product', '', 0),
(321, 1, '2022-08-31 11:54:52', '2022-08-31 08:54:52', '', 'Order &ndash; 31 августа, 2022 @ 11:54 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_F3mLswIN8zOs9', 'order-aug-31-2022-0854-am', '', '', '2022-08-31 11:54:53', '2022-08-31 08:54:53', '', 0, 'http://localhost/?post_type=shop_order&#038;p=321', 0, 'shop_order', '', 0),
(322, 1, '2022-08-31 11:56:47', '2022-08-31 08:56:47', '', 'Order &ndash; 31 августа, 2022 @ 11:56 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_kH36BBYdhLxdy', 'order-aug-31-2022-0856-am', '', '', '2022-08-31 11:56:48', '2022-08-31 08:56:48', '', 0, 'http://localhost/?post_type=shop_order&#038;p=322', 0, 'shop_order', '', 0),
(323, 1, '2022-08-31 11:59:43', '2022-08-31 08:59:43', '', 'Order &ndash; 31 августа, 2022 @ 11:59 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_GuiT4IOz9TUqY', 'order-aug-31-2022-0859-am', '', '', '2022-08-31 11:59:44', '2022-08-31 08:59:44', '', 0, 'http://localhost/?post_type=shop_order&#038;p=323', 0, 'shop_order', '', 0),
(324, 1, '2022-08-31 12:05:06', '2022-08-31 09:05:06', '', 'Order &ndash; 31 августа, 2022 @ 12:05 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_fUbEJxMV3uQmP', 'order-aug-31-2022-0905-am', '', '', '2022-08-31 12:05:06', '2022-08-31 09:05:06', '', 0, 'http://localhost/?post_type=shop_order&#038;p=324', 0, 'shop_order', '', 0),
(325, 1, '2022-08-31 12:17:50', '2022-08-31 09:17:50', '', 'Order &ndash; 31 августа, 2022 @ 12:17 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_Rcnl8w5wSygmr', 'order-aug-31-2022-0917-am', '', '', '2022-08-31 12:17:51', '2022-08-31 09:17:51', '', 0, 'http://localhost/?post_type=shop_order&#038;p=325', 0, 'shop_order', '', 0),
(326, 1, '2022-09-02 00:01:49', '2022-09-01 21:01:49', '', 'Order &ndash; 2 сентября, 2022 @ 12:01 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_eu19PSJSWSXBF', 'order-sep-01-2022-0901-pm', '', '', '2022-09-02 00:01:50', '2022-09-01 21:01:50', '', 0, 'http://localhost/?post_type=shop_order&#038;p=326', 0, 'shop_order', '', 0),
(327, 1, '2022-09-02 00:50:43', '2022-09-01 21:50:43', '', 'Order &ndash; 2 сентября, 2022 @ 12:50 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_yS9pJE681748C', 'order-sep-01-2022-0950-pm', '', '', '2022-09-02 00:50:44', '2022-09-01 21:50:44', '', 0, 'http://localhost/?post_type=shop_order&#038;p=327', 0, 'shop_order', '', 0),
(331, 1, '2022-10-03 11:54:50', '2022-10-03 08:54:50', '', 'Order &ndash; 3 октября, 2022 @ 11:54 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_pEQNz76xZvdPS', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-03-oct-2022-%d0%b2-0854', '', '', '2022-10-03 11:54:50', '2022-10-03 08:54:50', '', 0, 'http://localhost/?post_type=shop_order&#038;p=331', 0, 'shop_order', '', 0),
(332, 1, '2022-10-03 11:58:30', '2022-10-03 08:58:30', '', 'Order &ndash; 3 октября, 2022 @ 11:58 ДП', '', 'wc-pending', 'open', 'closed', 'wc_order_iKcemzMFws8HX', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-03-oct-2022-%d0%b2-0858', '', '', '2022-10-03 11:58:30', '2022-10-03 08:58:30', '', 0, 'http://localhost/?post_type=shop_order&#038;p=332', 0, 'shop_order', '', 0),
(333, 1, '2022-10-03 12:05:49', '2022-10-03 09:05:49', '', 'Order &ndash; 3 октября, 2022 @ 12:05 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_tTQIMDqxtkyoR', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-03-oct-2022-%d0%b2-0905', '', '', '2022-10-03 12:06:43', '2022-10-03 09:06:43', '', 0, 'http://localhost/?post_type=shop_order&#038;p=333', 0, 'shop_order', '', 0),
(334, 1, '2022-10-03 22:26:21', '2022-10-03 19:26:21', '', 'Order &ndash; 3 октября, 2022 @ 10:26 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_005BDd5omkLnF', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-03-oct-2022-%d0%b2-1926', '', '', '2022-10-03 22:26:23', '2022-10-03 19:26:23', '', 0, 'http://localhost/?post_type=shop_order&#038;p=334', 0, 'shop_order', '', 0),
(335, 1, '2022-10-03 22:27:09', '2022-10-03 19:27:09', '', 'Order &ndash; 3 октября, 2022 @ 10:27 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_O9QvWX4G98m4y', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-03-oct-2022-%d0%b2-1927', '', '', '2022-10-03 22:27:10', '2022-10-03 19:27:10', '', 0, 'http://localhost/?post_type=shop_order&#038;p=335', 0, 'shop_order', '', 0),
(336, 1, '2022-10-03 23:03:14', '2022-10-03 20:03:14', '', 'Order &ndash; 3 октября, 2022 @ 11:03 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_WYlaCuc9ryQNg', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-03-oct-2022-%d0%b2-2003', '', '', '2022-10-03 23:03:15', '2022-10-03 20:03:15', '', 0, 'http://localhost/?post_type=shop_order&#038;p=336', 0, 'shop_order', '', 0),
(338, 1, '2022-10-11 12:46:16', '2022-10-11 09:46:16', '', 'Order &ndash; 11 октября, 2022 @ 12:46 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_Aw0NWZVP4bwfD', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-11-oct-2022-%d0%b2-0946', '', '', '2022-10-11 12:46:18', '2022-10-11 09:46:18', '', 0, 'http://localhost/?post_type=shop_order&#038;p=338', 0, 'shop_order', '', 0),
(339, 1, '2022-10-11 12:57:36', '2022-10-11 09:57:36', '', 'Order &ndash; 11 октября, 2022 @ 12:57 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_sTR2UKOcnVA82', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-11-oct-2022-%d0%b2-0957', '', '', '2022-10-11 12:57:37', '2022-10-11 09:57:37', '', 0, 'http://localhost/?post_type=shop_order&#038;p=339', 0, 'shop_order', '', 0),
(340, 1, '2022-10-11 13:00:53', '2022-10-11 10:00:53', '', 'Order &ndash; 11 октября, 2022 @ 01:00 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_lhIBSyh8iWs0Q', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-11-oct-2022-%d0%b2-1000', '', '', '2022-10-11 13:00:54', '2022-10-11 10:00:54', '', 0, 'http://localhost/?post_type=shop_order&#038;p=340', 0, 'shop_order', '', 0),
(341, 1, '2022-10-11 13:22:30', '2022-10-11 10:22:30', '', 'Order &ndash; 11 октября, 2022 @ 01:22 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_wdzqaH88ucJzD', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-11-oct-2022-%d0%b2-1022', '', '', '2022-10-11 13:22:31', '2022-10-11 10:22:31', '', 0, 'http://localhost/?post_type=shop_order&#038;p=341', 0, 'shop_order', '', 0),
(342, 1, '2022-10-11 14:09:16', '2022-10-11 11:09:16', '', 'Order &ndash; 11 октября, 2022 @ 02:09 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_ZP8AT8xFgwo5I', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-11-oct-2022-%d0%b2-1109', '', '', '2022-10-11 14:09:17', '2022-10-11 11:09:17', '', 0, 'http://localhost/?post_type=shop_order&#038;p=342', 0, 'shop_order', '', 0),
(343, 1, '2022-10-11 14:10:46', '2022-10-11 11:10:46', '', 'Order &ndash; 11 октября, 2022 @ 02:10 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_DB0m2r98PK5Qi', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-11-oct-2022-%d0%b2-1110', '', '', '2022-10-11 14:10:47', '2022-10-11 11:10:47', '', 0, 'http://localhost/?post_type=shop_order&#038;p=343', 0, 'shop_order', '', 0),
(344, 1, '2022-10-11 14:11:46', '2022-10-11 11:11:46', '', 'Order &ndash; 11 октября, 2022 @ 02:11 ПП', '', 'wc-pending', 'open', 'closed', 'wc_order_SBXBicaut81lJ', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-11-oct-2022-%d0%b2-1111', '', '', '2022-10-11 14:11:47', '2022-10-11 11:11:47', '', 0, 'http://localhost/?post_type=shop_order&#038;p=344', 0, 'shop_order', '', 0),
(350, 1, '2022-10-20 22:52:00', '2022-10-20 19:52:00', '<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Сайт logotype.ru – официальный интернет-магазин сети LOGOTYPE. В едином каталоге собраны товары для всей семьи - женская, мужская и детская одежда,  и парфюмерия, аксессуары, а также товары для дома – посуда, текстиль, аксессуары для ванной, предметы интерьера и многое другое.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Коллекции и бренды</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Доставка и оплата</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2022-10-20 22:52:00', '2022-10-20 19:52:00', '', 39, 'http://localhost/?p=350', 0, 'revision', '', 0),
(351, 1, '2022-10-20 22:07:24', '2022-10-20 19:07:24', '<!-- wp:paragraph -->\n<p><strong>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Европейский уровень шоппинга</h2>\n<!-- /wp:heading -->', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:07:24', '2022-10-20 19:07:24', '', 39, 'http://localhost/?p=351', 0, 'revision', '', 0),
(352, 1, '2022-10-20 22:10:32', '2022-10-20 19:10:32', '<!-- wp:heading -->\n<h2><strong>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Европейский уровень шоппинга</h2>\n<!-- /wp:heading -->', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:10:32', '2022-10-20 19:10:32', '', 39, 'http://localhost/?p=352', 0, 'revision', '', 0),
(353, 1, '2022-10-20 22:14:34', '2022-10-20 19:14:34', '<!-- wp:heading {\"level\":3} -->\n<h3>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:14:34', '2022-10-20 19:14:34', '', 39, 'http://localhost/?p=353', 0, 'revision', '', 0),
(354, 1, '2022-10-20 22:18:25', '2022-10-20 19:18:25', '<!-- wp:heading {\"level\":3} -->\n<h3>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Сайт logotype.ru – официальный интернет-магазин сети LOGOTYPE. В едином каталоге собраны товары для всей семьи - женская, мужская и детская одежда, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> и парфюмерия, аксессуары, а также товары для дома – посуда, текстиль, аксессуары для ванной, предметы интерьера и многое другое.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Коллекции и бренды</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Доставка и оплата</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:18:25', '2022-10-20 19:18:25', '', 39, 'http://localhost/?p=354', 0, 'revision', '', 0),
(355, 1, '2022-10-20 22:29:55', '2022-10-20 19:29:55', '<!-- wp:heading {\"level\":3} -->\n<h3>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Сайт logotype.ru – официальный интернет-магазин сети LOGOTYPE. В едином каталоге собраны товары для всей семьи - женская, мужская и детская одежда, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> и парфюмерия, аксессуары, а также товары для дома – посуда, текстиль, аксессуары для ванной, предметы интерьера и многое другое.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Коллекции и бренды</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Доставка и оплата</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:29:55', '2022-10-20 19:29:55', '', 39, 'http://localhost/?p=355', 0, 'revision', '', 0),
(356, 1, '2022-10-20 22:30:15', '2022-10-20 19:30:15', '<!-- wp:heading {\"level\":3} -->\n<h3>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Сайт logotype.ru – официальный интернет-магазин сети LOGOTYPE. В едином каталоге собраны товары для всей семьи - женская, мужская и детская одежда,  и парфюмерия, аксессуары, а также товары для дома – посуда, текстиль, аксессуары для ванной, предметы интерьера и многое другое.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Коллекции и бренды</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Доставка и оплата</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:30:15', '2022-10-20 19:30:15', '', 39, 'http://localhost/?p=356', 0, 'revision', '', 0),
(357, 1, '2022-10-20 22:34:56', '2022-10-20 19:34:56', '<!-- wp:heading {\"level\":3} -->\n<h3><code>&lt;div class=\"div\"></code>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома&lt;/div></h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Сайт logotype.ru – официальный интернет-магазин сети LOGOTYPE. В едином каталоге собраны товары для всей семьи - женская, мужская и детская одежда,  и парфюмерия, аксессуары, а также товары для дома – посуда, текстиль, аксессуары для ванной, предметы интерьера и многое другое.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Коллекции и бренды</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Доставка и оплата</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:34:56', '2022-10-20 19:34:56', '', 39, 'http://localhost/?p=357', 0, 'revision', '', 0),
(358, 1, '2022-10-20 22:35:42', '2022-10-20 19:35:42', '<!-- wp:heading {\"level\":3} -->\n<h3>Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Сайт logotype.ru – официальный интернет-магазин сети LOGOTYPE. В едином каталоге собраны товары для всей семьи - женская, мужская и детская одежда,  и парфюмерия, аксессуары, а также товары для дома – посуда, текстиль, аксессуары для ванной, предметы интерьера и многое другое.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Коллекции и бренды</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Доставка и оплата</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:35:42', '2022-10-20 19:35:42', '', 39, 'http://localhost/?p=358', 0, 'revision', '', 0),
(359, 1, '2022-10-20 22:39:01', '2022-10-20 19:39:01', '<!-- wp:heading {\"level\":3} -->\n<h3>Европейский уровень шоппинга</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Сайт logotype.ru – официальный интернет-магазин сети LOGOTYPE. В едином каталоге собраны товары для всей семьи - женская, мужская и детская одежда,  и парфюмерия, аксессуары, а также товары для дома – посуда, текстиль, аксессуары для ванной, предметы интерьера и многое другое.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Коллекции и бренды</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Доставка и оплата</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Интуитивно-понятная навигация сайта позволяет легко сортировать товары по сезону, стилю, цвету и цене и быстро находить подходящие варианты среди большого числа моделей. В разделах представлена информация о наличии размеров на сайте и розничных магазинах сети.</p>\n<!-- /wp:paragraph -->', 'Интернет-магазин одежды, обуви, аксессуаров, косметики и парфюмерии, и товаров для дома', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-20 22:39:01', '2022-10-20 19:39:01', '', 39, 'http://localhost/?p=359', 0, 'revision', '', 0),
(370, 1, '2022-11-28 13:50:33', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-11-28 13:50:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=370', 0, 'page', '', 0),
(371, 1, '2022-11-28 13:52:59', '2022-11-28 10:52:59', '<!-- wp:paragraph -->\n<p>posts</p>\n<!-- /wp:paragraph -->', 'Posts', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-11-28 13:52:59', '2022-11-28 10:52:59', '', 36, 'http://localhost/?p=371', 0, 'revision', '', 0),
(372, 1, '2022-11-28 14:12:43', '2022-11-28 11:12:43', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2>cart wp</h2>\n<!-- /wp:heading -->', 'Cart', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-11-28 14:12:43', '2022-11-28 11:12:43', '', 53, 'http://localhost/?p=372', 0, 'revision', '', 0),
(373, 1, '2022-11-28 15:22:09', '2022-11-28 12:22:09', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2>cart wp</h2>\n<!-- /wp:heading -->\n\n<!-- wp:html /-->\n\n<!-- wp:file /-->', 'Cart', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2022-11-28 15:22:09', '2022-11-28 12:22:09', '', 53, 'http://localhost/?p=373', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(4, 17, 'product_count_product_cat', '0'),
(5, 20, 'order', '0'),
(6, 21, 'order', '0'),
(7, 20, 'product_count_product_cat', '13'),
(8, 21, 'product_count_product_cat', '12'),
(9, 22, 'order', '0'),
(10, 23, 'order', '0'),
(11, 22, 'product_count_product_cat', '1'),
(12, 23, 'product_count_product_cat', '1'),
(13, 24, 'order', '0'),
(14, 24, 'display_type', ''),
(15, 24, 'thumbnail_id', '285'),
(16, 21, 'display_type', ''),
(17, 21, 'thumbnail_id', '284'),
(18, 20, 'display_type', ''),
(19, 20, 'thumbnail_id', '0'),
(20, 17, 'display_type', ''),
(21, 17, 'thumbnail_id', '0'),
(22, 25, 'order', '0'),
(23, 25, 'display_type', ''),
(24, 25, 'thumbnail_id', '286'),
(25, 24, 'product_count_product_cat', '0'),
(26, 26, 'order_pa_brand', '0'),
(27, 27, 'product_count_product_tag', '4'),
(28, 29, 'order_pa_brand', '0'),
(29, 30, 'product_count_product_tag', '3'),
(30, 22, 'display_type', ''),
(31, 22, 'thumbnail_id', '0'),
(32, 31, 'order_pa_material', '0'),
(33, 32, 'order_pa_material', '0'),
(34, 33, 'order_pa_material', '0'),
(35, 34, 'order_pa_razmer', '0'),
(36, 35, 'order_pa_razmer', '0'),
(37, 36, 'order_pa_razmer', '0'),
(38, 37, 'order_pa_razmer', '0'),
(42, 41, 'order_pa_tcvet', '0'),
(43, 42, 'order_pa_tcvet', '0'),
(44, 43, 'order_pa_tcvet', '0'),
(45, 44, 'order_pa_tcvet', '0'),
(46, 45, 'order_pa_tcvet', '0'),
(47, 25, 'product_count_product_cat', '1'),
(48, 49, 'order_pa_brand', '0'),
(49, 48, 'product_count_product_tag', '3'),
(50, 50, 'order_pa_material', '0'),
(51, 51, 'order_pa_brand', '0'),
(52, 47, 'product_count_product_tag', '3'),
(53, 52, 'product_count_product_tag', '0'),
(54, 54, 'order', '0'),
(55, 54, 'display_type', ''),
(56, 54, 'thumbnail_id', '0'),
(57, 55, 'order', '0'),
(58, 55, 'display_type', ''),
(59, 55, 'thumbnail_id', '0'),
(60, 56, 'order', '0'),
(61, 56, 'display_type', ''),
(62, 56, 'thumbnail_id', '0'),
(63, 57, 'order', '0'),
(64, 57, 'display_type', ''),
(65, 57, 'thumbnail_id', '0'),
(66, 58, 'order', '0'),
(67, 58, 'display_type', ''),
(68, 58, 'thumbnail_id', '0'),
(69, 59, 'order', '0'),
(70, 59, 'display_type', ''),
(71, 59, 'thumbnail_id', '0'),
(72, 70, 'order_pa_tcvet', '0'),
(73, 71, 'order_pa_tcvet', '0'),
(74, 72, 'order_pa_tcvet', '0'),
(75, 73, 'order_pa_tcvet', '0'),
(76, 74, 'order_pa_tcvet', '0'),
(77, 75, 'product_count_product_tag', '2'),
(78, 76, 'product_count_product_tag', '1'),
(79, 77, 'order_pa_tcvet', '0'),
(80, 78, 'order', '0'),
(81, 78, 'wh_meta_title', ''),
(82, 78, 'wh_meta_desc', ''),
(83, 78, 'display_type', ''),
(84, 78, 'thumbnail_id', '0'),
(85, 79, 'order', '0'),
(86, 79, 'display_type', ''),
(87, 79, 'thumbnail_id', '0'),
(88, 80, 'order', '0'),
(89, 80, 'display_type', ''),
(90, 80, 'thumbnail_id', '0'),
(91, 81, 'order', '0'),
(92, 81, 'display_type', ''),
(93, 81, 'thumbnail_id', '0'),
(94, 79, 'product_count_product_cat', '2'),
(95, 78, 'product_count_product_cat', '1'),
(96, 82, 'order', '0'),
(97, 82, 'display_type', ''),
(98, 82, 'thumbnail_id', '293'),
(99, 83, 'order', '0'),
(100, 83, 'display_type', ''),
(101, 83, 'thumbnail_id', '294'),
(102, 84, 'order', '0'),
(103, 84, 'display_type', ''),
(104, 84, 'thumbnail_id', '295'),
(105, 85, 'order', '0'),
(106, 85, 'product_count_product_cat', '1'),
(107, 86, 'order', '0'),
(108, 86, 'display_type', ''),
(109, 86, 'thumbnail_id', '0'),
(110, 87, 'order', '0'),
(111, 87, 'product_count_product_cat', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Без категории', 'uncategorized', 0),
(20, 'Женщинам', 'zhenshchinam', 0),
(21, 'Юбки', 'iubki', 0),
(22, 'Мужчинам', 'muzhchinam', 0),
(23, 'Худи', '%d1%85%d1%83%d0%b4%d0%b8', 0),
(24, 'Верхняя одежда', 'verkhniaia-odezhda', 0),
(25, 'Толстовки и свитшоты', 'tolstovki-i-svitshoty', 0),
(26, 'BOSS', 'boss', 0),
(27, 'Трапеции', 'trapetcii', 0),
(28, 'Джинсовые', 'dzhinsovye', 0),
(29, 'Laruren Ralf', 'lauren-ralph', 0),
(30, 'Прямые', 'priamaia', 0),
(31, 'вискоза', 'viskoza', 0),
(32, 'полиэстер', 'poliester', 0),
(33, 'хлопок', 'khlopok', 0),
(34, '45', 's45', 0),
(35, '33', 's33', 0),
(36, '47', 's47', 0),
(37, '55', 's55', 0),
(41, 'белый', 'belyi-fff', 0),
(42, 'красный', 'krasnyi-ff0000', 0),
(43, 'оранжевый', 'oranzhevyi-ffa500', 0),
(44, 'серебристый', 'serebristyi-c0c0c0', 0),
(45, 'розовый', 'rozovyi-ffc0cb', 0),
(46, 'NewCategory', 'newcategory', 0),
(47, 'Миди', 'midi', 0),
(48, 'Мини', 'mini', 0),
(49, 'Visage', 'visage', 0),
(50, 'Лён', '%d0%bb%d1%91%d0%bd', 0),
(51, 'Brand la Prude', 'brand-la-prude', 0),
(52, 'Трапции', '%d1%82%d1%80%d0%b0%d0%bf%d1%86%d0%b8%d0%b8', 0),
(53, 'Top Header Menu', 'top-header-menu', 0),
(54, 'Детям', 'detiam', 0),
(55, 'Новинки', 'novinki', 0),
(56, 'Для дома', 'dlia-doma', 0),
(57, 'Косметика', 'kosmetika', 0),
(58, 'Бренды', 'brendy', 0),
(59, 'Sale', 'sale', 0),
(60, 'Main-Categories Menu', 'main-categories-menu', 0),
(61, 'CustomTheme', 'customtheme', 0),
(68, 'top-home-slider', 'top-home-slider', 0),
(69, 'middle-home-slider', 'middle-home-slider', 0),
(70, 'чёрный', 'chernyi-000', 0),
(71, 'бежевый', 'bezhevyi-ffeb99', 0),
(72, 'светло-коричневый', 'svetlo-korichnevyi-916f3d', 0),
(73, 'тёмно-коричневый', 'temno-korichnevyi-3a2318', 0),
(74, 'тёмно-синий', 'temno-sinii-1b183a', 0),
(75, 'С длинным рукавом', '%d1%81-%d0%b4%d0%bb%d0%b8%d0%bd%d0%bd%d1%8b%d0%bc-%d1%80%d1%83%d0%ba%d0%b0%d0%b2%d0%be%d0%bc', 0),
(76, 'В горошек', '%d0%b2-%d0%b3%d0%be%d1%80%d0%be%d1%88%d0%b5%d0%ba', 0),
(77, 'бирюзовый', 'biriuzovyi-00c5a6', 0),
(78, 'Трапеции', 'trapetcii', 0),
(79, 'Миди', 'midi', 0),
(80, 'Мини', 'mini', 0),
(81, 'Прямые', 'priamye', 0),
(82, 'Брюки', 'briuki', 0),
(83, 'Платья', 'platia', 0),
(84, 'Аксессуары', 'aksessuary', 0),
(85, 'Толстовки', '%d1%82%d0%be%d0%bb%d1%81%d1%82%d0%be%d0%b2%d0%ba%d0%b8', 0),
(86, 'Блузки', 'bluzki', 0),
(87, 'C принтом', 'c-%d0%bf%d1%80%d0%b8%d0%bd%d1%82%d0%be%d0%bc', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(7, 1, 0),
(9, 1, 0),
(11, 1, 0),
(14, 1, 0),
(16, 1, 0),
(18, 1, 0),
(20, 1, 0),
(22, 1, 0),
(24, 1, 0),
(66, 4, 0),
(66, 22, 0),
(66, 23, 0),
(66, 26, 0),
(66, 31, 0),
(66, 34, 0),
(66, 35, 0),
(66, 74, 0),
(66, 75, 0),
(67, 4, 0),
(67, 20, 0),
(67, 21, 0),
(67, 26, 0),
(67, 30, 0),
(67, 31, 0),
(67, 36, 0),
(67, 41, 0),
(67, 44, 0),
(81, 4, 0),
(81, 20, 0),
(81, 25, 0),
(81, 32, 0),
(81, 34, 0),
(81, 36, 0),
(81, 37, 0),
(81, 41, 0),
(81, 44, 0),
(81, 49, 0),
(81, 50, 0),
(81, 75, 0),
(81, 85, 0),
(85, 4, 0),
(85, 20, 0),
(85, 21, 0),
(85, 26, 0),
(85, 27, 0),
(85, 31, 0),
(85, 32, 0),
(85, 35, 0),
(85, 44, 0),
(90, 4, 0),
(90, 20, 0),
(90, 21, 0),
(90, 26, 0),
(90, 27, 0),
(90, 32, 0),
(90, 33, 0),
(90, 35, 0),
(90, 41, 0),
(90, 70, 0),
(90, 76, 0),
(96, 4, 0),
(96, 20, 0),
(96, 21, 0),
(96, 26, 0),
(96, 27, 0),
(96, 33, 0),
(96, 37, 0),
(96, 73, 0),
(102, 4, 0),
(102, 20, 0),
(102, 21, 0),
(102, 29, 0),
(102, 30, 0),
(102, 31, 0),
(102, 36, 0),
(102, 72, 0),
(112, 4, 0),
(112, 20, 0),
(112, 21, 0),
(112, 29, 0),
(112, 31, 0),
(112, 36, 0),
(112, 48, 0),
(112, 71, 0),
(117, 4, 0),
(117, 11, 0),
(117, 20, 0),
(117, 21, 0),
(117, 27, 0),
(117, 31, 0),
(117, 37, 0),
(117, 41, 0),
(117, 49, 0),
(117, 50, 0),
(118, 4, 0),
(118, 20, 0),
(118, 21, 0),
(118, 30, 0),
(118, 31, 0),
(118, 34, 0),
(118, 42, 0),
(118, 48, 0),
(118, 49, 0),
(119, 4, 0),
(119, 20, 0),
(119, 21, 0),
(119, 31, 0),
(119, 34, 0),
(119, 35, 0),
(119, 36, 0),
(119, 42, 0),
(119, 47, 0),
(119, 48, 0),
(119, 51, 0),
(119, 70, 0),
(120, 4, 0),
(120, 20, 0),
(120, 21, 0),
(120, 29, 0),
(120, 32, 0),
(120, 36, 0),
(120, 37, 0),
(120, 44, 0),
(120, 47, 0),
(120, 79, 0),
(121, 4, 0),
(121, 20, 0),
(121, 21, 0),
(121, 26, 0),
(121, 31, 0),
(121, 32, 0),
(121, 34, 0),
(121, 35, 0),
(121, 43, 0),
(121, 78, 0),
(153, 53, 0),
(154, 53, 0),
(156, 53, 0),
(157, 53, 0),
(158, 53, 0),
(159, 53, 0),
(160, 53, 0),
(161, 60, 0),
(162, 60, 0),
(163, 60, 0),
(164, 60, 0),
(165, 60, 0),
(166, 60, 0),
(167, 60, 0),
(168, 60, 0),
(172, 61, 0),
(176, 68, 0),
(178, 68, 0),
(186, 1, 0),
(190, 66, 0),
(190, 69, 0),
(204, 68, 0),
(206, 69, 0),
(207, 69, 0),
(274, 6, 0),
(274, 20, 0),
(274, 21, 0),
(274, 32, 0),
(274, 33, 0),
(274, 34, 0),
(274, 36, 0),
(274, 47, 0),
(274, 51, 0),
(274, 77, 0),
(274, 79, 0),
(300, 4, 0),
(300, 17, 0),
(302, 4, 0),
(302, 17, 0),
(320, 4, 0),
(320, 17, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 12),
(4, 4, 'product_type', '', 0, 13),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 1),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 1),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(20, 20, 'product_cat', '', 0, 13),
(21, 21, 'product_cat', 'Описание по умолчанию не отображается.', 20, 12),
(22, 22, 'product_cat', '', 0, 1),
(23, 23, 'product_cat', '', 22, 1),
(24, 24, 'product_cat', 'Трендовые юбки всех фасонов', 20, 0),
(25, 25, 'product_cat', 'Преимущества комфорта', 20, 1),
(26, 26, 'pa_brand', '', 0, 6),
(27, 27, 'product_tag', '', 0, 4),
(28, 28, 'product_tag', '', 0, 0),
(29, 29, 'pa_brand', '', 0, 3),
(30, 30, 'product_tag', '', 0, 3),
(31, 31, 'pa_material', '', 0, 9),
(32, 32, 'pa_material', '', 0, 6),
(33, 33, 'pa_material', '', 0, 3),
(34, 34, 'pa_razmer', '', 0, 6),
(35, 35, 'pa_razmer', '', 0, 5),
(36, 36, 'pa_razmer', '', 0, 7),
(37, 37, 'pa_razmer', '', 0, 4),
(41, 41, 'pa_tcvet', '', 0, 4),
(42, 42, 'pa_tcvet', '', 0, 2),
(43, 43, 'pa_tcvet', '', 0, 1),
(44, 44, 'pa_tcvet', '', 0, 4),
(45, 45, 'pa_tcvet', '', 0, 0),
(46, 46, 'category', '', 0, 0),
(47, 47, 'product_tag', '', 0, 3),
(48, 48, 'product_tag', '', 0, 3),
(49, 49, 'pa_brand', '', 0, 3),
(50, 50, 'pa_material', '', 0, 2),
(51, 51, 'pa_brand', '', 0, 2),
(52, 52, 'product_tag', '', 0, 0),
(53, 53, 'nav_menu', '', 0, 7),
(54, 54, 'product_cat', '', 0, 0),
(55, 55, 'product_cat', '', 0, 0),
(56, 56, 'product_cat', '', 0, 0),
(57, 57, 'product_cat', '', 0, 0),
(58, 58, 'product_cat', '', 0, 0),
(59, 59, 'product_cat', '', 0, 0),
(60, 60, 'nav_menu', '', 0, 8),
(61, 61, 'wp_theme', '', 0, 1),
(66, 66, 'banner_categories', '', 0, 1),
(67, 67, 'banner_categories', '', 0, 0),
(68, 68, 'banner_categories', '', 0, 3),
(69, 69, 'banner_categories', '', 0, 3),
(70, 70, 'pa_tcvet', '', 0, 2),
(71, 71, 'pa_tcvet', '', 0, 1),
(72, 72, 'pa_tcvet', '', 0, 1),
(73, 73, 'pa_tcvet', '', 0, 1),
(74, 74, 'pa_tcvet', '', 0, 1),
(75, 75, 'product_tag', '', 0, 2),
(76, 76, 'product_tag', '', 0, 1),
(77, 77, 'pa_tcvet', '', 0, 1),
(78, 78, 'product_cat', '', 21, 1),
(79, 79, 'product_cat', '', 21, 2),
(80, 80, 'product_cat', '', 21, 0),
(81, 81, 'product_cat', '', 21, 0),
(82, 82, 'product_cat', 'Преимущества комфорта', 20, 0),
(83, 83, 'product_cat', 'Описание по умолчанию', 20, 0),
(84, 84, 'product_cat', 'По умолчанию', 20, 0),
(85, 85, 'product_cat', '', 25, 1),
(86, 86, 'product_cat', 'Элемент для создания', 20, 0),
(87, 87, 'product_cat', '', 78, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'user'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '369'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.18.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '53'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1651907279'),
(24, 1, '_woocommerce_tracks_anon_id', 'woo:5XTKtvym6Gl/9qT/TFV/bBG2'),
(25, 1, 'wc_last_active', '1670112000'),
(26, 1, 'dismissed_no_secure_connection_notice', '1'),
(28, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:3:{s:32:\"26657d5ff9020d2abefe558796b99584\";a:11:{s:3:\"key\";s:32:\"26657d5ff9020d2abefe558796b99584\";s:10:\"product_id\";i:96;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:4;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:99996;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:99996;s:8:\"line_tax\";i:0;}s:32:\"da4fb5c6e93e74d3df8527599fa62642\";a:11:{s:3:\"key\";s:32:\"da4fb5c6e93e74d3df8527599fa62642\";s:10:\"product_id\";i:120;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:54000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:54000;s:8:\"line_tax\";i:0;}s:32:\"ec8956637a99787bd197eacd77acce5e\";a:11:{s:3:\"key\";s:32:\"ec8956637a99787bd197eacd77acce5e\";s:10:\"product_id\";i:102;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:18000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:18000;s:8:\"line_tax\";i:0;}}}'),
(31, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,tagsdiv-product_tag,product_catdiv,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:68:\"woocommerce-product-data,,postcustom,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(32, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:68:\"woocommerce-product-data,,postcustom,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(33, 1, 'screen_layout_product', '2'),
(34, 1, 'screen_layout_product', '2'),
(39, 1, 'closedpostboxes_product', 'a:0:{}'),
(40, 1, 'metaboxhidden_product', 'a:2:{i:4;s:10:\"postcustom\";i:5;s:7:\"slugdiv\";}'),
(43, 2, 'nickname', 'antoshka'),
(44, 2, 'first_name', ''),
(45, 2, 'last_name', ''),
(46, 2, 'description', ''),
(47, 2, 'rich_editing', 'true'),
(48, 2, 'syntax_highlighting', 'true'),
(49, 2, 'comment_shortcuts', 'false'),
(50, 2, 'admin_color', 'fresh'),
(51, 2, 'use_ssl', '0'),
(52, 2, 'show_admin_bar_front', 'true'),
(53, 2, 'locale', ''),
(54, 2, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(55, 2, 'wp_user_level', '0'),
(56, 2, 'last_update', '1661786793'),
(57, 3, 'nickname', 'guest'),
(58, 3, 'first_name', ''),
(59, 3, 'last_name', ''),
(60, 3, 'description', ''),
(61, 3, 'rich_editing', 'true'),
(62, 3, 'syntax_highlighting', 'true'),
(63, 3, 'comment_shortcuts', 'false'),
(64, 3, 'admin_color', 'fresh'),
(65, 3, 'use_ssl', '0'),
(66, 3, 'show_admin_bar_front', 'true'),
(67, 3, 'locale', ''),
(68, 3, 'wp_capabilities', 'a:1:{s:5:\"guest\";b:1;}'),
(69, 3, 'wp_user_level', '0'),
(70, 3, 'last_update', '1662375298'),
(77, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"3295c76acbf4caaed33c36b1b5fc2cb1\";a:11:{s:3:\"key\";s:32:\"3295c76acbf4caaed33c36b1b5fc2cb1\";s:10:\"product_id\";i:66;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:9990;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:9990;s:8:\"line_tax\";i:0;}s:32:\"ec8956637a99787bd197eacd77acce5e\";a:11:{s:3:\"key\";s:32:\"ec8956637a99787bd197eacd77acce5e\";s:10:\"product_id\";i:102;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:36000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:36000;s:8:\"line_tax\";i:0;}}}'),
(79, 3, 'billing_first_name', ''),
(80, 3, 'billing_last_name', ''),
(81, 3, 'billing_company', ''),
(82, 3, 'billing_address_1', ''),
(83, 3, 'billing_address_2', ''),
(84, 3, 'billing_city', ''),
(85, 3, 'billing_postcode', ''),
(86, 3, 'billing_country', ''),
(87, 3, 'billing_state', ''),
(88, 3, 'billing_phone', ''),
(89, 3, 'billing_email', 'test@name.com'),
(90, 3, 'shipping_first_name', ''),
(91, 3, 'shipping_last_name', ''),
(92, 3, 'shipping_company', ''),
(93, 3, 'shipping_address_1', ''),
(94, 3, 'shipping_address_2', ''),
(95, 3, 'shipping_city', ''),
(96, 3, 'shipping_postcode', ''),
(97, 3, 'shipping_country', ''),
(98, 3, 'shipping_state', ''),
(99, 3, 'shipping_phone', ''),
(100, 4, 'nickname', 'manager'),
(101, 4, 'first_name', ''),
(102, 4, 'last_name', ''),
(103, 4, 'description', ''),
(104, 4, 'rich_editing', 'true'),
(105, 4, 'syntax_highlighting', 'true'),
(106, 4, 'comment_shortcuts', 'false'),
(107, 4, 'admin_color', 'fresh'),
(108, 4, 'use_ssl', '0'),
(109, 4, 'show_admin_bar_front', 'true'),
(110, 4, 'locale', ''),
(111, 4, 'wp_capabilities', 'a:1:{s:12:\"shop_manager\";b:1;}'),
(112, 4, 'wp_user_level', '9'),
(113, 4, 'dismissed_wp_pointers', ''),
(114, 4, 'last_update', '1661894467'),
(116, 2, 'wc_last_active', '1668384000'),
(117, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"eb160de1de89d9058fcb0b968dbbbd68\";a:11:{s:3:\"key\";s:32:\"eb160de1de89d9058fcb0b968dbbbd68\";s:10:\"product_id\";i:117;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:99999;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:99999;s:8:\"line_tax\";i:0;}}}'),
(121, 2, 'session_tokens', 'a:2:{s:64:\"b13ef09384aa2d6db04bc51ae76025269f6ab5cfd6bd8bfb098d104759901529\";a:4:{s:10:\"expiration\";i:1662472433;s:2:\"ip\";s:10:\"172.23.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1662299633;}s:64:\"da351fa6ead724b5ce5d47629204242bdf3e7faa2c8be1e72a70afe7481e6a3c\";a:4:{s:10:\"expiration\";i:1662474705;s:2:\"ip\";s:10:\"172.23.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1662301905;}}'),
(124, 4, 'wc_last_active', '1662249600'),
(126, 4, 'wp_dashboard_quick_press_last_post_id', '328'),
(127, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.23.0.0\";}'),
(128, 3, 'session_tokens', 'a:2:{s:64:\"b84f96c9e05b2599c6a0a11b06cf61bcb74a176d6c45b0ac4442232396e746fe\";a:4:{s:10:\"expiration\";i:1662474359;s:2:\"ip\";s:10:\"172.23.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1662301559;}s:64:\"2e566fa0c549b744ce3ea46f216c8fad38009771a5110c6cb97ee13a2932199e\";a:4:{s:10:\"expiration\";i:1662475146;s:2:\"ip\";s:10:\"172.23.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1662302346;}}'),
(129, 3, 'wc_last_active', '1662249600'),
(134, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(141, 1, 'session_tokens', 'a:2:{s:64:\"822e77358320fb37de4249b512392fcd0711555e0acb0b7c6b1085376b1423fe\";a:4:{s:10:\"expiration\";i:1670235720;s:2:\"ip\";s:10:\"172.19.0.1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36\";s:5:\"login\";i:1669026120;}s:64:\"a3de3aa6470a83dbf0838bd6afef1ffce810b23400878f26ffc9cb187408cac1\";a:4:{s:10:\"expiration\";i:1671220532;s:2:\"ip\";s:10:\"172.18.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670010932;}}'),
(143, 5, 'nickname', 'vanya'),
(144, 5, 'first_name', ''),
(145, 5, 'last_name', ''),
(146, 5, 'description', ''),
(147, 5, 'rich_editing', 'true'),
(148, 5, 'syntax_highlighting', 'true'),
(149, 5, 'comment_shortcuts', 'false'),
(150, 5, 'admin_color', 'fresh'),
(151, 5, 'use_ssl', '0'),
(152, 5, 'show_admin_bar_front', 'true'),
(153, 5, 'locale', ''),
(154, 5, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(155, 5, 'wp_user_level', '0'),
(156, 5, 'last_update', '1665314479'),
(157, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"4c56ff4ce4aaf9573aa5dff913df997a\";a:11:{s:3:\"key\";s:32:\"4c56ff4ce4aaf9573aa5dff913df997a\";s:10:\"product_id\";i:121;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:20000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:20000;s:8:\"line_tax\";i:0;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'user', '$P$BzeBSjZcmqiz7ucgkYc4cSqJ/yZrnw1', 'user', 'addffggy@ygg.ru', 'http://localhost', '2022-04-27 13:27:39', '', 0, 'user'),
(2, 'antoshka', '$P$B0kFwtqTQZ2bUSaJ7yM2jC1xW4NoX10', 'antoshka', 'antoshka@gmail.com', '', '2022-08-29 15:26:30', '1661786790:$P$BscGpSUjhk6TEY//TDokcljZOv696b.', 0, 'antoshka'),
(3, 'guest', '$P$ByPu6TR9lmC2/Wxw6kxx5BW6rjFI05/', 'guest', 'test@name.com', '', '2022-08-29 20:53:05', '', 0, 'guest'),
(4, 'manager', '$P$BM09MyRJhGeAh7Ns53G0ER963pHttm/', 'manager', 'manager@gmail.com', '', '2022-08-30 21:21:07', '1661894467:$P$BPF8wyfd8YqMIIM.Te3e.GVV.gt0Qj1', 0, 'manager'),
(5, 'vanya', '$P$Bfwm0XJziLjpVFci1Cu.GRErCXVaR8/', 'vanya', 'vanya@gmail.com', '', '2022-10-09 11:21:18', '1665314478:$P$B0XUh.H83eBbJVs5ixwPupY7GGnpEA0', 0, 'vanya');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '{}', 'unactioned', 'woocommerce.com', '2022-05-07 07:18:30', NULL, 0, 'plain', '', 0, 0, 'info'),
(2, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:30', NULL, 0, 'plain', '', 0, 0, 'info'),
(3, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'wc_shipping_mobile_app_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(8, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2022-05-09 17:34:06', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(11, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2022-05-09 17:34:07', NULL, 0, 'plain', '', 0, 0, 'info'),
(12, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(13, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(16, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'ecomm-wc-navigation-survey', 'info', 'en_US', 'We’d like your feedback on the WooCommerce navigation', 'We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'pinterest_gtm_q2_2021', 'marketing', 'en_US', 'Get your products in front of a large, engaged audience', 'Did you know that shoppers on Pinterest spend twice as much as people on other social platforms? With the new, official Pinterest for WooCommerce, you can turn your product catalog into shoppable Pins and showcase them to 400+ million monthly users looking to buy.', '{}', 'unactioned', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'setup_task_initiative_survey_q2_2022', 'survey', 'en_US', 'We want to know what matters most to you', 'Take 2 minutes to give us your input on what is important for you while setting up your store and help shape the future of WooCommerce together.', '{}', 'unactioned', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(32, 'woocommerce_payments_subscriptions_nopayments_q2_2022', 'marketing', 'en_US', 'Sell subscriptions online – without a paid extension', 'Say hello to WooCommerce Payments – now with built-in subscriptions functionality. Get free access to the features you need to start earning recurring revenue online. Pay as you go, with no setup costs or monthly fees.', '{}', 'unactioned', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(33, 'woocommerce_payments_subscriptions_yespayments_q2_2022', 'marketing', 'en_US', 'Sell subscriptions online – no extra extension required', 'It\'s here! WooCommerce Payments now features built-in subscriptions functionality. No need to install an extra, paid extension – we\'ve made it simpler than ever to start earning recurring revenue. Ready to grow your business?', '{}', 'pending', 'woocommerce.com', '2022-05-07 07:18:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(34, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'unactioned', 'woocommerce-core', '2022-05-07 07:18:33', NULL, 0, 'plain', '', 0, 0, 'info'),
(35, 'surface_cart_checkout', 'info', 'en_US', 'Introducing the Cart and Checkout blocks!', 'Increase your store\'s revenue with the conversion optimized Cart &amp; Checkout WooCommerce blocks available in the WooCommerce Blocks extension.', '{}', 'unactioned', 'woo-gutenberg-products-block', '2022-05-07 07:18:33', NULL, 0, 'plain', '', 0, 0, 'info'),
(36, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2022-05-07 07:18:34', NULL, 0, 'plain', '', 0, 0, 'info'),
(37, 'wc-admin-install-jp-and-wcs-plugins', 'info', 'en_US', 'Uh oh... There was a problem during the Jetpack and WooCommerce Shipping & Tax install. Please try again.', 'We noticed that there was a problem during the Jetpack and WooCommerce Shipping &amp; Tax install. Please try again and enjoy all the advantages of having the plugins connected to your store! Sorry for the inconvenience. The \"Jetpack\" and \"WooCommerce Shipping &amp; Tax\" plugins will be installed &amp; activated for free.', '{}', 'unactioned', 'woocommerce-admin', '2022-05-09 17:32:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(38, 'storefront-customize', 'info', 'en_US', 'Design your store with Storefront 🎨', 'Visit the Storefront settings page to start setup and customization of your shop.', '{}', 'unactioned', 'storefront', '2022-05-16 07:46:57', NULL, 0, 'plain', '', 0, 0, 'info'),
(39, 'affirm_q2_2022', 'marketing', 'en_US', 'Boost your business with flexible payments', 'Expand your customer base with smarter payment options for more shoppers. With Affirm,  you can offer the most relevant payment options at every price point – from four interest-free payments every two weeks to longer installments up to 36 months. Fast-track your revenue goals today!', '{}', 'pending', 'woocommerce.com', '2022-05-21 07:59:03', NULL, 0, 'plain', '', 0, 0, 'info'),
(40, 'setup_task_second_survey_q2_2022', 'survey', 'en_US', 'We want to know what matters most to you', 'Take 2 minutes to give us your input on what is important for you while setting up your store and help shape the future of WooCommerce together.', '{}', 'pending', 'woocommerce.com', '2022-05-21 07:59:03', NULL, 0, 'plain', '', 0, 0, 'info'),
(41, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '{}', 'pending', 'woocommerce.com', '2022-05-21 07:59:03', NULL, 0, 'plain', '', 0, 0, 'info'),
(42, 'wc-admin-EU-consumer-protection', 'marketing', 'en_US', 'Important changes to EU consumer protection laws', 'New regulations to help modernize and strengthen consumer protection laws in the European Union (EU) take effect on May 28, 2022. These rules impact all merchants selling to the EU, regardless of where their business is located. Further detailed information is available on the European Commission\'s official website.', '{}', 'unactioned', 'woocommerce.com', '2022-05-21 07:59:03', NULL, 0, 'plain', '', 0, 0, 'info'),
(43, 'googlelistings_multicountrygtm_q22022', 'marketing', 'en_US', 'Expand your audience with Multi-Country Advertising', 'It\'s time to expand your audience with Multi-Country Advertising, an exciting new feature in Google Listings &amp; Ads. Reach more potential customers in as many regions as you like within a single campaign, all from the convenience of your WooCommerce dashboard.', '{}', 'unactioned', 'woocommerce.com', '2022-05-21 07:59:03', NULL, 0, 'plain', '', 0, 0, 'info'),
(44, 'wc_ipp_order_creation_GTM_launch_q2_2022', 'marketing', 'en_US', 'Grow your business on the go with WooCommerce In-Person Payments', 'Quickly create new orders, manage transactions, and take secure payments no matter where your business takes you. With automatic inventory sync, WooCommerce In-Person Payments is the only fully integrated solution for taking your WooCommerce store offline.', '{}', 'pending', 'woocommerce.com', '2022-05-30 09:02:07', NULL, 0, 'plain', '', 0, 0, 'info'),
(45, 'wc-update-db-reminder', 'update', 'en_US', 'Обновление базы данных WooCommerce завершено', 'Обновление данных WooCommerce завершено. Спасибо вам за обновление до последней версии!', '{}', 'unactioned', 'woocommerce-core', '2022-06-13 08:20:43', NULL, 0, 'plain', '', 0, 0, 'info'),
(46, 'wc-admin-wisepad3', 'marketing', 'en_US', 'Take your business on the go in Canada with WooCommerce In-Person Payments', 'Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.', '{}', 'pending', 'woocommerce.com', '2022-06-27 08:43:45', NULL, 0, 'plain', '', 0, 0, 'info'),
(47, 'TikTok q2_2022', 'marketing', 'en_US', 'Give your store a stage on the world’s fastest-growing advertising channel', 'With TikTok for WooCommerce, you can sync your catalog, create videos, and track performance in front of TikTok’s one billion global users. Try the Smart Video Generator to make ads using your existing product images – no camera needed. Get $200 in ad credit from TikTok after a $20 spend (terms &amp; conditions apply).', '{}', 'unactioned', 'woocommerce.com', '2022-06-27 08:43:45', NULL, 0, 'plain', '', 0, 0, 'info'),
(48, 'wc-admin-launch-checklist', 'info', 'en_US', 'Готовы запустить собственный магазин?', 'Чтобы у вас не возникало чувство, что вы что-то забыли, мы составили контрольный список для проверки настроек перед запуском.', '{}', 'unactioned', 'woocommerce-admin', '2022-09-18 08:39:48', NULL, 0, 'plain', '', 0, 0, 'info'),
(49, 'wc-admin-real-time-order-alerts', 'info', 'en_US', 'Получайте уведомления о новых заказах в реальном времени, где бы вы ни находились', 'Получайте уведомления об активности в магазине, в том числе о размещении новых заказов и отзывов о товарах, прямо на мобильные устройства благодаря приложению Woo.', '{}', 'unactioned', 'woocommerce-admin', '2022-09-18 08:39:48', NULL, 0, 'plain', '', 0, 0, 'info'),
(50, 'wc-admin-update-store-details', 'info', 'en_US', 'Измените информацию о вашем магазине, если нужно', 'Хорошая работа по заполнению профиля магазина! Вы всегда можете вернуться и при необходимости отредактировать информацию, которая только что была введена.', '{}', 'unactioned', 'woocommerce-admin', '2022-09-18 08:39:48', NULL, 0, 'plain', '', 0, 0, 'info'),
(51, 'wc-admin-orders-milestone', 'info', 'en_US', 'Поздравляем с обработкой 10 заказов!', 'Вы достигли уровня в 10 заказов! Посмотрите на свой прогресс. Для мотивации просмотрите некоторые истории успеха пользователей WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2022-09-18 08:41:25', NULL, 0, 'plain', '', 0, 0, 'info'),
(52, 'wc-admin-new-sales-record', 'info', 'en_US', 'Новый рекорд продаж!', 'Ого, 15.10.2022 был вашим рекордным днём по продажам! Чистая выручка 324000,00 ₽ побила предыдущий рекорд 120000,00 ₽ установленный 11.10.2022.', '{\"old_record_date\":\"2022-10-11\",\"old_record_amt\":120000,\"new_record_date\":\"2022-10-15\",\"new_record_amt\":324000}', 'unactioned', 'woocommerce-admin', '2022-10-16 18:34:16', NULL, 0, 'plain', '', 0, 0, 'info'),
(53, 'wc-admin-manage-orders-on-the-go', 'info', 'en_US', 'Управляйте заказами на ходу', 'Просматривайте заказы и данные клиента, обрабатывайте возвраты одним нажатием в приложении Woo.', '{}', 'unactioned', 'woocommerce-admin', '2022-11-03 07:31:03', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(38, 34, 'notify-refund-returns-page', 'Edit page', 'http://localhost/wp-admin/post.php?post=56&action=edit', 'actioned', 0, '', NULL, NULL),
(39, 35, 'learn_more', 'Learn More', 'https://woocommerce.com/checkout-blocks/', 'actioned', 0, '', NULL, NULL),
(40, 36, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, '', NULL, NULL),
(78, 37, 'install-jp-and-wcs-plugins', 'Install plugins', '', 'actioned', 1, '', NULL, NULL),
(149, 30, 'pinterest_gtm_q2_2021', 'Get started for free', 'https://woocommerce.com/products/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_gtm_q2_2021', 'unactioned', 1, '', NULL, NULL),
(151, 32, 'woocommerce_payments_subscriptions_nopayments_q2_2022', 'Start selling subscriptions', 'https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=woocommerce_payments_subscriptions_nopayments_q2_2022', 'actioned', 0, '', NULL, NULL),
(152, 33, 'woocommerce_payments_subscriptions_yespayments_q2_2022', 'Get started', 'https://woocommerce.com/document/payments/subscriptions/?utm_source=inbox_note&utm_medium=product&utm_campaign=woocommerce_payments_subscriptions_yespayments_q2_2022#section-2', 'actioned', 0, '', NULL, NULL),
(153, 38, 'customize-store-with-storefront', 'Let\'s go!', 'http://localhost/wp-admin/themes.php?page=storefront-welcome', 'actioned', 1, '', NULL, NULL),
(188, 39, 'affirm_q2_2022', 'Get started for free', 'https://woocommerce.com/products/woocommerce-gateway-affirm/?utm_source=inbox_note&utm_medium=product&utm_campaign=affirm_q2_2022', 'unactioned', 1, '', NULL, NULL),
(189, 40, 'setup_task_second_survey_q2_2022_share_your_input', 'Share your input', 'https://t.maze.co/87390007', 'actioned', 0, '', NULL, NULL),
(192, 43, 'googlelistings_multicountrygtm_q22022', 'Get Google Listings & Ads – free', 'https://woocommerce.com/products/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=googlelistings_multicountrygtm_q22022', 'actioned', 1, '', NULL, NULL),
(340, 44, 'wc_ipp_order_creation_GTM_launch_q2_2022', 'Grow my business on the go', 'https://woocommerce.com/in-person-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_ipp_order_creation_GTM_launch_q2_2022', 'actioned', 0, '', NULL, NULL),
(813, 1, 'browse_extensions', 'Browse extensions', 'http://localhost/wp-admin/admin.php?page=wc-admin&page=wc-addons', 'unactioned', 0, '', NULL, NULL),
(814, 2, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', 0, '', NULL, NULL),
(815, 3, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', 0, '', NULL, NULL),
(816, 4, 'wc_shipping_mobile_app_q4_2021', 'Get the WooCommerce Mobile App', 'https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021', 'actioned', 0, '', NULL, NULL),
(817, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 0, '', NULL, NULL),
(818, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 0, '', NULL, NULL),
(819, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 0, '', NULL, NULL),
(820, 8, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 0, '', NULL, NULL),
(821, 9, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', 0, '', NULL, NULL),
(822, 10, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', 0, '', NULL, NULL),
(823, 11, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', 0, '', NULL, NULL),
(824, 12, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', 0, '', NULL, NULL),
(825, 13, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', 0, '', NULL, NULL),
(826, 14, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', 0, '', NULL, NULL),
(827, 15, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://localhost/wp-admin/admin.php?page=wc-admin&page=wc-addons&section=helper', 'actioned', 0, '', NULL, NULL),
(828, 16, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', 0, '', NULL, NULL),
(829, 19, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', 0, '', NULL, NULL),
(830, 20, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', 0, '', NULL, NULL),
(831, 21, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', 0, '', NULL, NULL),
(832, 21, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(833, 22, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', 0, '', NULL, NULL),
(834, 22, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(835, 23, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', 0, '', NULL, NULL),
(836, 23, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(837, 24, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', 0, '', NULL, NULL),
(838, 24, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(839, 25, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', 0, '', NULL, NULL),
(840, 26, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/feedback-on-woocommerce-navigation', 'actioned', 0, '', NULL, NULL),
(841, 27, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', 0, '', NULL, NULL),
(842, 27, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(843, 28, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', 0, '', NULL, NULL),
(844, 28, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(845, 29, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', 0, '', NULL, NULL),
(846, 31, 'setup_task_initiative_survey_q2_2022_share_your_input', 'Share your input', 'https://t.maze.co/87390007', 'actioned', 0, '', NULL, NULL),
(847, 41, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', 0, '', NULL, NULL),
(848, 42, 'wc-admin-EU-consumer-protection', 'Learn more about these changes', 'https://ec.europa.eu/info/law/law-topic/consumer-protection-law/review-eu-consumer-law_en#guidance', 'actioned', 0, '', NULL, NULL),
(849, 46, 'wc-admin-wisepad3', 'Grow my business offline', 'https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3', 'actioned', 0, '', NULL, NULL),
(850, 47, 'TikTok q2_2022', 'Promote my products on TikTok', 'https://woocommerce.com/products/tiktok-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=TikTok%20q2_2022', 'unactioned', 0, '', NULL, NULL),
(1823, 48, 'learn-more', 'Узнать больше', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', 0, '', NULL, NULL),
(1824, 49, 'learn-more', 'Узнать больше', 'https://woocommerce.com/mobile/?utm_source=inbox&utm_medium=product', 'actioned', 0, '', NULL, NULL),
(1825, 50, 'update-store-details', 'Обновить информацию о магазине', 'http://localhost/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'actioned', 0, '', NULL, NULL),
(1826, 51, 'browse', 'Обзор', 'https://woocommerce.com/success-stories/?utm_source=inbox&utm_medium=product', 'actioned', 0, '', NULL, NULL),
(1882, 52, 'view-report', 'Просмотреть отчёт', '?page=wc-admin&path=/analytics/revenue&period=custom&compare=previous_year&after=2022-10-15&before=2022-10-15', 'actioned', 0, '', NULL, NULL),
(1941, 53, 'learn-more', 'Узнать больше', 'https://woocommerce.com/mobile/?utm_source=inbox&utm_medium=product', 'actioned', 0, '', NULL, NULL),
(1978, 45, 'update-db_done', 'Спасибо!', 'http://localhost/wp-admin/admin.php?page=wc-settings&wc-hide-notice=update', 'actioned', 0, 'woocommerce_hide_notices_nonce', 'woocommerce_hide_notices_nonce', '_wc_notice_nonce');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(18, 18),
(20, 20),
(20, 21),
(20, 24),
(20, 25),
(21, 21),
(22, 22),
(22, 23),
(23, 23),
(24, 24),
(25, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `variation_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_attributes_lookup`
--

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint NOT NULL,
  `product_or_parent_id` bigint NOT NULL,
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_attributes_lookup`
--

INSERT INTO `wp_wc_product_attributes_lookup` (`product_id`, `product_or_parent_id`, `taxonomy`, `term_id`, `is_variation_attribute`, `in_stock`) VALUES
(66, 66, 'pa_brand', 26, 0, 1),
(66, 66, 'pa_material', 31, 0, 1),
(66, 66, 'pa_razmer', 34, 0, 1),
(66, 66, 'pa_razmer', 35, 0, 1),
(66, 66, 'pa_tcvet', 74, 0, 1),
(67, 67, 'pa_brand', 26, 0, 1),
(67, 67, 'pa_material', 31, 0, 1),
(67, 67, 'pa_razmer', 36, 0, 1),
(67, 67, 'pa_tcvet', 41, 0, 1),
(67, 67, 'pa_tcvet', 44, 0, 1),
(81, 81, 'pa_material', 32, 0, 1),
(81, 81, 'pa_razmer', 34, 0, 1),
(81, 81, 'pa_razmer', 36, 0, 1),
(81, 81, 'pa_razmer', 37, 0, 1),
(81, 81, 'pa_tcvet', 41, 0, 1),
(81, 81, 'pa_tcvet', 44, 0, 1),
(81, 81, 'pa_brand', 49, 0, 1),
(81, 81, 'pa_material', 50, 0, 1),
(85, 85, 'pa_brand', 26, 0, 1),
(85, 85, 'pa_material', 31, 0, 1),
(85, 85, 'pa_material', 32, 0, 1),
(85, 85, 'pa_razmer', 35, 0, 1),
(85, 85, 'pa_tcvet', 44, 0, 1),
(90, 90, 'pa_brand', 26, 0, 1),
(90, 90, 'pa_material', 32, 0, 1),
(90, 90, 'pa_material', 33, 0, 1),
(90, 90, 'pa_razmer', 35, 0, 1),
(90, 90, 'pa_tcvet', 41, 0, 1),
(90, 90, 'pa_tcvet', 70, 0, 1),
(96, 96, 'pa_brand', 26, 0, 1),
(96, 96, 'pa_material', 33, 0, 1),
(96, 96, 'pa_razmer', 37, 0, 1),
(96, 96, 'pa_tcvet', 73, 0, 1),
(102, 102, 'pa_brand', 29, 0, 1),
(102, 102, 'pa_material', 31, 0, 1),
(102, 102, 'pa_razmer', 36, 0, 1),
(102, 102, 'pa_tcvet', 72, 0, 1),
(112, 112, 'pa_brand', 29, 0, 1),
(112, 112, 'pa_material', 31, 0, 1),
(112, 112, 'pa_razmer', 36, 0, 1),
(112, 112, 'pa_tcvet', 71, 0, 1),
(117, 117, 'pa_material', 31, 0, 0),
(117, 117, 'pa_razmer', 37, 0, 0),
(117, 117, 'pa_tcvet', 41, 0, 0),
(117, 117, 'pa_brand', 49, 0, 0),
(117, 117, 'pa_material', 50, 0, 0),
(118, 118, 'pa_material', 31, 0, 1),
(118, 118, 'pa_razmer', 34, 0, 1),
(118, 118, 'pa_tcvet', 42, 0, 1),
(118, 118, 'pa_brand', 49, 0, 1),
(119, 119, 'pa_material', 31, 0, 1),
(119, 119, 'pa_razmer', 34, 0, 1),
(119, 119, 'pa_razmer', 35, 0, 1),
(119, 119, 'pa_razmer', 36, 0, 1),
(119, 119, 'pa_tcvet', 42, 0, 1),
(119, 119, 'pa_brand', 51, 0, 1),
(119, 119, 'pa_tcvet', 70, 0, 1),
(120, 120, 'pa_brand', 29, 0, 1),
(120, 120, 'pa_material', 32, 0, 1),
(120, 120, 'pa_razmer', 36, 0, 1),
(120, 120, 'pa_razmer', 37, 0, 1),
(120, 120, 'pa_tcvet', 44, 0, 1),
(121, 121, 'pa_brand', 26, 0, 1),
(121, 121, 'pa_material', 31, 0, 1),
(121, 121, 'pa_material', 32, 0, 1),
(121, 121, 'pa_razmer', 34, 0, 1),
(121, 121, 'pa_razmer', 35, 0, 1),
(121, 121, 'pa_tcvet', 43, 0, 1),
(274, 274, 'pa_material', 32, 0, 1),
(274, 274, 'pa_material', 33, 0, 1),
(274, 274, 'pa_brand', 51, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_download_directories`
--

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint UNSIGNED NOT NULL,
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_download_directories`
--

INSERT INTO `wp_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file:///var/www/html/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://localhost/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint NOT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint DEFAULT '0',
  `tax_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(58, '', 0, 0, '10.0000', '10.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(63, '', 0, 0, '10.0000', '10.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(64, '', 0, 0, '10.0000', '10.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(65, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(66, '', 0, 0, '9990.0000', '9990.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(67, '', 0, 0, '18000.0000', '18000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(81, '', 0, 0, '18000.0000', '18000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(85, '', 0, 0, '10000.0000', '10000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(90, '', 0, 0, '27190.0000', '27190.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(96, '', 0, 0, '24999.0000', '24999.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(102, '', 0, 0, '18000.0000', '18000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(112, '', 0, 0, '29400.0000', '29400.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(117, '', 0, 0, '18000.0000', '18000.0000', 1, NULL, 'outofstock', 0, '0.00', 0, 'taxable', ''),
(118, '', 0, 0, '86000.0000', '86000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(119, '', 0, 0, '30000.0000', '30000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(120, '', 0, 0, '54000.0000', '54000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(121, '', 0, 0, '10000.0000', '10000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(274, '', 0, 0, '34999.0000', '34999.0000', 1, 10, 'instock', 0, '0.00', 0, 'taxable', ''),
(300, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(302, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(320, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_rate_limits`
--

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint UNSIGNED NOT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `delivery_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint NOT NULL,
  `failure_count` smallint NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_api_keys`
--

INSERT INTO `wp_woocommerce_api_keys` (`key_id`, `user_id`, `description`, `permissions`, `consumer_key`, `consumer_secret`, `nonces`, `truncated_key`, `last_access`) VALUES
(4, 1, 'descr', 'read_write', '498ff95eef818c47f025436e654ad936fb9f0a71355df2a9a4a51c7bf99cc8bc', 'cs_1014cad4073c44de0d326f60e6a890ae470a31d4', NULL, '81c209c', NULL),
(5, 1, 'descr', 'read_write', 'd12af7889fa8895cff28a754237d02367b0f473189564e653362c95b0f4edcd3', 'cs_6a2fa7c770a61ca098d76a3cadcaaabccf489f1f', 'a:3:{i:1664787289;s:40:\"ad26727546891f767f09fe6f3977a564b4446d7e\";i:1664787509;s:40:\"4d556659f60a342f0bbe45d2be1d653670e88080\";i:1664787699;s:40:\"f8f939dcc000c73de3eb906fc055017ed18f3c55\";}', '5ae69c4', '2022-10-03 12:01:40'),
(6, 3, 'descr', 'read_write', 'c8a35d402a9cd5249989279fb55efc6d8fc5f84b3b5a60ec16c7f0787b513474', 'cs_4b0dc3fdaa1cd205fd9729761e62503115e6100b', 'a:2:{i:1661806522;s:32:\"kFt5g78BatD4sppz4IgGIXedOToc6BEc\";i:1661806620;s:32:\"6R3oftoIS5YszhTs26rFmopDmY4o1kGV\";}', 'bd29860', '2022-08-29 23:57:15'),
(7, 2, 'descr', 'read_write', '6a2d1eae0c7cce90e8d8425d20c3e319ce838028008ee6648ef787ed75de4422', 'cs_74bd5419f42d1c53293aa359f468b9584d57cab1', 'a:1:{i:1662486466;s:32:\"S8kyin8yR5B0Gp1mebuZnLom6Iwk0hWz\";}', 'b98c905', '2022-09-06 20:47:53');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint UNSIGNED NOT NULL,
  `attribute_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'brand', 'Бренд', 'select', 'menu_order', 0),
(3, 'material', 'Материал', 'select', 'menu_order', 0),
(4, 'razmer', 'Размер', 'select', 'menu_order', 0),
(5, 'tcvet', 'Цвет', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `download_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '119'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '2'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '60000'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '60000'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '119'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '2'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '60000'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '60000'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 3, '_product_id', '119'),
(20, 3, '_variation_id', '0'),
(21, 3, '_qty', '2'),
(22, 3, '_tax_class', ''),
(23, 3, '_line_subtotal', '60000'),
(24, 3, '_line_subtotal_tax', '0'),
(25, 3, '_line_total', '60000'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(28, 4, '_product_id', '119'),
(29, 4, '_variation_id', '0'),
(30, 4, '_qty', '2'),
(31, 4, '_tax_class', ''),
(32, 4, '_line_subtotal', '60000'),
(33, 4, '_line_subtotal_tax', '0'),
(34, 4, '_line_total', '60000'),
(35, 4, '_line_tax', '0'),
(36, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(37, 5, '_product_id', '119'),
(38, 5, '_variation_id', '0'),
(39, 5, '_qty', '2'),
(40, 5, '_tax_class', ''),
(41, 5, '_line_subtotal', '60000'),
(42, 5, '_line_subtotal_tax', '0'),
(43, 5, '_line_total', '60000'),
(44, 5, '_line_tax', '0'),
(45, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(46, 6, '_product_id', '119'),
(47, 6, '_variation_id', '0'),
(48, 6, '_qty', '2'),
(49, 6, '_tax_class', ''),
(50, 6, '_line_subtotal', '60000'),
(51, 6, '_line_subtotal_tax', '0'),
(52, 6, '_line_total', '60000'),
(53, 6, '_line_tax', '0'),
(54, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(55, 7, '_product_id', '119'),
(56, 7, '_variation_id', '0'),
(57, 7, '_qty', '2'),
(58, 7, '_tax_class', ''),
(59, 7, '_line_subtotal', '60000'),
(60, 7, '_line_subtotal_tax', '0'),
(61, 7, '_line_total', '60000'),
(62, 7, '_line_tax', '0'),
(63, 7, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(64, 8, '_product_id', '119'),
(65, 8, '_variation_id', '0'),
(66, 8, '_qty', '2'),
(67, 8, '_tax_class', ''),
(68, 8, '_line_subtotal', '60000'),
(69, 8, '_line_subtotal_tax', '0'),
(70, 8, '_line_total', '60000'),
(71, 8, '_line_tax', '0'),
(72, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(73, 9, '_product_id', '119'),
(74, 9, '_variation_id', '0'),
(75, 9, '_qty', '2'),
(76, 9, '_tax_class', ''),
(77, 9, '_line_subtotal', '60000'),
(78, 9, '_line_subtotal_tax', '0'),
(79, 9, '_line_total', '60000'),
(80, 9, '_line_tax', '0'),
(81, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(82, 10, '_product_id', '119'),
(83, 10, '_variation_id', '0'),
(84, 10, '_qty', '2'),
(85, 10, '_tax_class', ''),
(86, 10, '_line_subtotal', '60000'),
(87, 10, '_line_subtotal_tax', '0'),
(88, 10, '_line_total', '60000'),
(89, 10, '_line_tax', '0'),
(90, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(91, 11, '_product_id', '119'),
(92, 11, '_variation_id', '0'),
(93, 11, '_qty', '2'),
(94, 11, '_tax_class', ''),
(95, 11, '_line_subtotal', '60000'),
(96, 11, '_line_subtotal_tax', '0'),
(97, 11, '_line_total', '60000'),
(98, 11, '_line_tax', '0'),
(99, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(100, 12, '_product_id', '119'),
(101, 12, '_variation_id', '0'),
(102, 12, '_qty', '2'),
(103, 12, '_tax_class', ''),
(104, 12, '_line_subtotal', '60000'),
(105, 12, '_line_subtotal_tax', '0'),
(106, 12, '_line_total', '60000'),
(107, 12, '_line_tax', '0'),
(108, 12, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(109, 13, '_product_id', '119'),
(110, 13, '_variation_id', '0'),
(111, 13, '_qty', '2'),
(112, 13, '_tax_class', ''),
(113, 13, '_line_subtotal', '60000'),
(114, 13, '_line_subtotal_tax', '0'),
(115, 13, '_line_total', '60000'),
(116, 13, '_line_tax', '0'),
(117, 13, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(118, 14, '_product_id', '119'),
(119, 14, '_variation_id', '0'),
(120, 14, '_qty', '2'),
(121, 14, '_tax_class', ''),
(122, 14, '_line_subtotal', '60000'),
(123, 14, '_line_subtotal_tax', '0'),
(124, 14, '_line_total', '60000'),
(125, 14, '_line_tax', '0'),
(126, 14, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_item_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'No Name Whateer', 'line_item', 317),
(2, 'No Name Whateer', 'line_item', 318),
(3, 'No Name Whateer', 'line_item', 319),
(4, 'No Name Whateer', 'line_item', 321),
(5, 'No Name Whateer', 'line_item', 322),
(6, 'No Name Whateer', 'line_item', 323),
(7, 'No Name Whateer', 'line_item', 325),
(8, 'No Name Whateer', 'line_item', 326),
(9, 'No Name Whateer', 'line_item', 327),
(10, 'No Name Whateer', 'line_item', 334),
(11, 'No Name Whateer', 'line_item', 335),
(12, 'No Name Whateer', 'line_item', 336),
(13, 'No Name Whateer', 'line_item', 338),
(14, 'No Name Whateer', 'line_item', 339);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `payment_token_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint UNSIGNED NOT NULL,
  `gateway_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint UNSIGNED NOT NULL,
  `session_key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(490, '1', 'a:7:{s:4:\"cart\";s:1238:\"a:3:{s:32:\"26657d5ff9020d2abefe558796b99584\";a:11:{s:3:\"key\";s:32:\"26657d5ff9020d2abefe558796b99584\";s:10:\"product_id\";i:96;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:4;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:99996;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:99996;s:8:\"line_tax\";i:0;}s:32:\"da4fb5c6e93e74d3df8527599fa62642\";a:11:{s:3:\"key\";s:32:\"da4fb5c6e93e74d3df8527599fa62642\";s:10:\"product_id\";i:120;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:54000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:54000;s:8:\"line_tax\";i:0;}s:32:\"ec8956637a99787bd197eacd77acce5e\";a:11:{s:3:\"key\";s:32:\"ec8956637a99787bd197eacd77acce5e\";s:10:\"product_id\";i:102;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:18000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:18000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:402:\"a:15:{s:8:\"subtotal\";s:6:\"171996\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:6:\"171996\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"171996\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:732:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"addffggy@ygg.ru\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1670183743);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `zone_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `instance_id` bigint UNSIGNED NOT NULL,
  `method_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint UNSIGNED NOT NULL,
  `tax_rate_compound` int NOT NULL DEFAULT '0',
  `tax_rate_shipping` int NOT NULL DEFAULT '1',
  `tax_rate_order` bigint UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Индексы таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Индексы таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Индексы таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Индексы таблицы `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Индексы таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Индексы таблицы `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_product_attributes_lookup`
--
ALTER TABLE `wp_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`);

--
-- Индексы таблицы `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Индексы таблицы `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2286;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11062;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1995;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1979;

--
-- AUTO_INCREMENT для таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  MODIFY `url_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  MODIFY `rate_limit_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
