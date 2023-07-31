-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 31 2023 г., 14:21
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `drobkoil_miokadb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_appointments`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_appointments`;
CREATE TABLE `wp_bookly_appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `staff_any` tinyint(1) NOT NULL DEFAULT '0',
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `custom_service_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `custom_service_price` decimal(10,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `extras_duration` int(11) NOT NULL DEFAULT '0',
  `internal_note` text COLLATE utf8mb4_unicode_520_ci,
  `google_event_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `google_event_etag` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `outlook_event_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `outlook_event_change_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `outlook_event_series_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `online_meeting_provider` enum('zoom','google_meet','jitsi','bbb') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `online_meeting_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `online_meeting_data` text COLLATE utf8mb4_unicode_520_ci,
  `created_from` enum('bookly','google','outlook') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'bookly',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_appointments`
--

INSERT INTO `wp_bookly_appointments` (`id`, `location_id`, `staff_id`, `staff_any`, `service_id`, `custom_service_name`, `custom_service_price`, `start_date`, `end_date`, `extras_duration`, `internal_note`, `google_event_id`, `google_event_etag`, `outlook_event_id`, `outlook_event_change_key`, `outlook_event_series_id`, `online_meeting_provider`, `online_meeting_id`, `online_meeting_data`, `created_from`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 0, 1, NULL, NULL, '2023-07-11 08:45:00', '2023-07-11 09:45:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bookly', '2023-06-22 23:13:46', '2023-06-22 23:13:46');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_categories`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_categories`;
CREATE TABLE `wp_bookly_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attachment_id` int(10) UNSIGNED DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_520_ci,
  `position` int(11) NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_customers`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_customers`;
CREATE TABLE `wp_bookly_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `wp_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `facebook_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `birthday` date DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `street_number` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `additional_address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `info_fields` text COLLATE utf8mb4_unicode_520_ci,
  `stripe_account` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_customers`
--

INSERT INTO `wp_bookly_customers` (`id`, `wp_user_id`, `facebook_id`, `group_id`, `full_name`, `first_name`, `last_name`, `phone`, `email`, `birthday`, `country`, `state`, `postcode`, `city`, `street`, `street_number`, `additional_address`, `notes`, `info_fields`, `stripe_account`, `created_at`) VALUES
(1, NULL, NULL, NULL, 'Mioka_Admin', 'Mioka_Admin', '', '+778976875656575680', 'admin@gmail.com', NULL, '', '', '', '', '', '', '', '', '[]', NULL, '2023-06-22 23:13:46');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_customer_appointments`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_customer_appointments`;
CREATE TABLE `wp_bookly_customer_appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `series_id` int(10) UNSIGNED DEFAULT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `appointment_id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `number_of_persons` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `units` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `notes` text COLLATE utf8mb4_unicode_520_ci,
  `extras` text COLLATE utf8mb4_unicode_520_ci,
  `extras_multiply_nop` tinyint(1) NOT NULL DEFAULT '1',
  `custom_fields` text COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'approved',
  `status_changed_at` datetime DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_zone_offset` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `rating_comment` text COLLATE utf8mb4_unicode_520_ci,
  `locale` varchar(8) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collaborative_service_id` int(10) UNSIGNED DEFAULT NULL,
  `collaborative_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `compound_service_id` int(10) UNSIGNED DEFAULT NULL,
  `compound_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_from` enum('frontend','backend') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'frontend',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_customer_appointments`
--

INSERT INTO `wp_bookly_customer_appointments` (`id`, `series_id`, `package_id`, `customer_id`, `appointment_id`, `payment_id`, `order_id`, `number_of_persons`, `units`, `notes`, `extras`, `extras_multiply_nop`, `custom_fields`, `status`, `status_changed_at`, `token`, `time_zone`, `time_zone_offset`, `rating`, `rating_comment`, `locale`, `collaborative_service_id`, `collaborative_token`, `compound_service_id`, `compound_token`, `created_from`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 1, 1, 1, 1, 1, '', '[]', 1, '[]', 'approved', NULL, '73d34a00de363eefc7d8632d031b2a8b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'frontend', '2023-06-22 23:13:46', '2023-06-22 23:13:46');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_holidays`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_holidays`;
CREATE TABLE `wp_bookly_holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `repeat_event` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_log`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_log`;
CREATE TABLE `wp_bookly_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` enum('create','update','delete','error') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `target_id` int(10) UNSIGNED DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_520_ci,
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_mailing_campaigns`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_mailing_campaigns`;
CREATE TABLE `wp_bookly_mailing_campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `mailing_list_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `state` enum('pending','in-progress','completed','canceled') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'pending',
  `send_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_mailing_lists`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_mailing_lists`;
CREATE TABLE `wp_bookly_mailing_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_mailing_list_recipients`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_mailing_list_recipients`;
CREATE TABLE `wp_bookly_mailing_list_recipients` (
  `id` int(10) UNSIGNED NOT NULL,
  `mailing_list_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_mailing_queue`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_mailing_queue`;
CREATE TABLE `wp_bookly_mailing_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `sent` tinyint(1) DEFAULT '0',
  `campaign_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_news`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_news`;
CREATE TABLE `wp_bookly_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `media_type` enum('image','youtube') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'image',
  `media_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_notifications`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_notifications`;
CREATE TABLE `wp_bookly_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway` enum('email','sms','voice','whatsapp') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'email',
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_520_ci,
  `to_staff` tinyint(1) NOT NULL DEFAULT '0',
  `to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `to_admin` tinyint(1) NOT NULL DEFAULT '0',
  `to_custom` tinyint(1) NOT NULL DEFAULT '0',
  `custom_recipients` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attach_ics` tinyint(1) NOT NULL DEFAULT '0',
  `attach_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_notifications`
--

INSERT INTO `wp_bookly_notifications` (`id`, `gateway`, `type`, `active`, `name`, `subject`, `message`, `to_staff`, `to_customer`, `to_admin`, `to_custom`, `custom_recipients`, `attach_ics`, `attach_invoice`, `settings`) VALUES
(1, 'email', 'new_booking', 1, 'Уведомление для клиента о записи со статусом \"Подтверждено\"', 'Информация о Вашей записи', 'Дорогой(ая) {client_name}.\n\nНастоящим сообщением подтверждаем, что Вы забронировали {service_name}.\n\nМы ждем Вас по адресу {company_address} {appointment_date} в {appointment_time}.\n\nСпасибо, что выбрали нашу компанию.\n\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(2, 'email', 'new_booking', 1, 'Уведомление для сотрудника о записи со статусом \"Подтверждено\"', 'Информация о новом бронировании', 'Здравствуйте.\n\nУ вас новое бронирование.\n\nСервис: {service_name}\nДата: {appointment_date}\nВремя: {appointment_time}\nИмя клиента: {client_name}\nТелефон клиента: {client_phone}\nЭлектронная почта клиента: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(3, 'email', 'ca_status_changed', 1, 'Уведомление для клиента о записи со статусом \"Отменено\"', 'Отмена бронирования', 'Дорогой(ая) {client_name}.\n\nВы отменили бронирование {service_name} на {appointment_date} в {appointment_time}.\n\nСпасибо, что выбрали нашу компанию.\n\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(4, 'email', 'ca_status_changed', 1, 'Уведомление для сотрудника о записи со статусом \"Отменено\"', 'Отмена бронирования', 'Здравствуйте.\n\nСледующее бронирование отменено.\n\nСервис: {service_name}\nДата: {appointment_date}\nВремя: {appointment_time}\nИмя клиента: {client_name}\nТелефон клиента: {client_phone}\nЭлектронная почта клиента: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(5, 'email', 'ca_status_changed', 1, 'Уведомление для клиента о записи со статусом \"Отказано\"', 'Отказ в бронировании', 'Дорогой(ая) {client_name}.\n\nВам отказано в бронировании {service_name} на {appointment_date} в {appointment_time}.\n\nПричина: {cancellation_reason}\n\nСпасибо за выбор нашей компании.\n\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(6, 'email', 'ca_status_changed', 1, 'Уведомление для сотрудника о записи со статусом \"Отказано\"', 'Отказ в бронировании', 'Здравствуйте.\n\nВ следующем бронировании было отказано.\n\nПричина: {cancellation_reason}\n\nСервис: {service_name}\nДата:  {appointment_date}\nВремя: {appointment_time}\nИмя клиента: {client_name}\nТелефон клиента: {client_phone}\nЭлектронная почта клиента: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(7, 'sms', 'new_booking', 1, 'Уведомление для клиента о записи со статусом \"Подтверждено\"', '', 'Дорогой(ая) {client_name}.\nНастоящим сообщением подтверждаем, что Вы забронировали {service_name}.\nМы ждём Вас по адресу {company_address} {appointment_date} в {appointment_time}.\nСпасибо, что выбрали нашу компанию.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(8, 'sms', 'new_booking', 1, 'Уведомление для сотрудника о записи со статусом \"Подтверждено\"', '', 'Здравствуйте.\nУ вас новое бронирование.\nСервис: {service_name}\nДата: {appointment_date}\nВремя: {appointment_time}\nИмя клиента: {client_name}\nТелефон клиента: {client_phone}\nЭлектронная почта клиента: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(9, 'sms', 'ca_status_changed', 1, 'Уведомление для клиента о записи со статусом \"Отменено\"', '', 'Дорогой(ая) {client_name}.\nВы отменили бронирование {service_name} на {appointment_date} в {appointment_time}.\nСпасибо, что выбрали нашу компанию.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(10, 'sms', 'ca_status_changed', 1, 'Уведомление для сотрудника о записи со статусом \"Отменено\"', '', 'Здравствуйте.\nСледующее бронирование отменено.\nСервис: {service_name}\nДата: {appointment_date}\nВремя: {appointment_time}\nИмя клиента: {client_name}\nТелефон клиента: {client_phone}\nЭлектронная почта клиента: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(11, 'sms', 'ca_status_changed', 1, 'Уведомление для клиента о записи со статусом \"Отказано\"', '', 'Дорогой(ая) {client_name}.\nВам отказано в бронировании {service_name} на {appointment_date} в {appointment_time}.\nПричина: {cancellation_reason}\nСпасибо за выбор нашей компании.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(12, 'sms', 'ca_status_changed', 1, 'Уведомление для сотрудника о записи со статусом \"Отказано\"', '', 'Здравствуйте.\nВ следующем бронировании было отказано.\nПричина: {cancellation_reason}\nСервис: {service_name}\nДата:  {appointment_date}\nВремя: {appointment_time}\nИмя клиента: {client_name}\nТелефон клиента: {client_phone}\nЭлектронная почта клиента: {client_email}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(13, 'sms', 'appointment_reminder', 0, 'Вечернее уведомление для клиента о завтрашней записи (необходимо настроить cron)', '', 'Дорогой(ая) {client_name}.\nМы хотим напомнить Вам, что вы записаны на {service_name} завтра в {appointment_time}. Мы ждём Вас по адресу {company_address}.\nСпасибо, что выбрали нашу компанию.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":1,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}'),
(14, 'voice', 'appointment_reminder', 0, 'Вечернее уведомление для клиента о завтрашней записи (необходимо настроить cron)', '', 'Дорогой(ая) {client_name}.\nМы хотим напомнить Вам, что вы записаны на {service_name} завтра в {appointment_time}. Мы ждём Вас по адресу {company_address}.\nСпасибо, что выбрали нашу компанию.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":1,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}'),
(15, 'sms', 'appointment_reminder', 0, 'Уведомление в день записи после её завершения (необходимо настроить cron)', '', 'Дорогой(ая) {client_name}.\nСпасибо, что выбрали {company_name}. Мы надеемся, что вы остались довольны {service_name}.\nБлагодарим Вас и с нетерпением ждём встречи в ближайшее время.\n{company_name}\n{company_phone}\n{company_website}', 0, 1, 0, 0, NULL, 0, 0, '{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":21,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}'),
(16, 'sms', 'staff_day_agenda', 0, 'Вечернее уведомление для сотрудника о расписании на следующий день (необходимо настроить cron)', '', 'Здравствуйте.\nВаше расписание на завтра:\n{next_day_agenda}', 1, 0, 0, 0, NULL, 0, 0, '{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}'),
(17, 'email', 'verify_email', 1, 'Уведомление для клиента с кодом подтверждения', 'Код верификации Bookly', '{verification_code}', 0, 1, 0, 0, NULL, 0, 0, '[]'),
(18, 'sms', 'verify_phone', 1, 'Уведомление для клиента с кодом подтверждения', '', '{verification_code}', 0, 1, 0, 0, NULL, 0, 0, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_notifications_queue`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_notifications_queue`;
CREATE TABLE `wp_bookly_notifications_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_520_ci,
  `sent` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_orders`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_orders`;
CREATE TABLE `wp_bookly_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_orders`
--

INSERT INTO `wp_bookly_orders` (`id`, `token`) VALUES
(1, '8eb2f6b73ad539ac0e32d099567b0f17');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_payments`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_payments`;
CREATE TABLE `wp_bookly_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` enum('appointments','packages','gift_cards') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'appointments',
  `coupon_id` int(10) UNSIGNED DEFAULT NULL,
  `gift_card_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('local','free','paypal','authorize_net','stripe','2checkout','payu_biz','payu_latam','payson','mollie','woocommerce','cloud_stripe','cloud_square','cloud_gift') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'local',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_type` enum('in_full','deposit') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'in_full',
  `gateway_price_correction` decimal(10,2) DEFAULT '0.00',
  `status` enum('pending','completed','rejected','refunded') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'completed',
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_520_ci,
  `ref_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_payments`
--

INSERT INTO `wp_bookly_payments` (`id`, `target`, `coupon_id`, `gift_card_id`, `type`, `total`, `tax`, `paid`, `paid_type`, `gateway_price_correction`, `status`, `token`, `details`, `ref_id`, `created_at`, `updated_at`) VALUES
(1, 'appointments', NULL, NULL, 'free', '0.00', '0.00', '0.00', 'in_full', NULL, 'completed', 'b18759788186aa7ca876ead3ec046917', '{\"items\":[{\"ca_id\":1,\"appointment_date\":\"2023-07-11 08:45:00\",\"app_start_info\":null,\"service_name\":\"\\u0411\\u0440\\u043e\\u0432\\u0438\",\"service_price\":0,\"service_tax\":0,\"wait_listed\":false,\"deposit_format\":null,\"number_of_persons\":1,\"units\":1,\"duration\":\"3600\",\"staff_name\":\"\\u0418\\u0432\\u0430\\u043d \\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\",\"extras\":[]}],\"coupon\":null,\"gift_card\":null,\"subtotal\":{\"price\":0,\"deposit\":0},\"customer\":\"Mioka_Admin\",\"tax_in_price\":\"excluded\",\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway_ref_id\":null,\"tips\":null}', NULL, '2023-06-22 23:13:46', '2023-06-22 23:13:46');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_schedule_item_breaks`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_schedule_item_breaks`;
CREATE TABLE `wp_bookly_schedule_item_breaks` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_schedule_item_id` int(10) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_sent_notifications`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_sent_notifications`;
CREATE TABLE `wp_bookly_sent_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_series`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_series`;
CREATE TABLE `wp_bookly_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `repeat` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_services`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_services`;
CREATE TABLE `wp_bookly_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('simple','collaborative','compound','package') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'simple',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `attachment_id` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '900',
  `slot_length` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'default',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `color` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#FFFFFF',
  `deposit` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '100%',
  `capacity_min` int(11) NOT NULL DEFAULT '1',
  `capacity_max` int(11) NOT NULL DEFAULT '1',
  `waiting_list_capacity` int(10) UNSIGNED DEFAULT NULL,
  `one_booking_per_slot` tinyint(1) NOT NULL DEFAULT '0',
  `padding_left` int(11) NOT NULL DEFAULT '0',
  `padding_right` int(11) NOT NULL DEFAULT '0',
  `info` text COLLATE utf8mb4_unicode_520_ci,
  `start_time_info` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `end_time_info` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `same_staff_for_subservices` tinyint(1) NOT NULL DEFAULT '0',
  `units_min` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `units_max` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `package_life_time` int(11) DEFAULT NULL,
  `package_size` int(11) DEFAULT NULL,
  `package_unassigned` tinyint(1) NOT NULL DEFAULT '0',
  `appointments_limit` int(11) DEFAULT NULL,
  `limit_period` enum('off','day','week','month','year','upcoming','calendar_day','calendar_week','calendar_month','calendar_year') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'off',
  `staff_preference` enum('order','least_occupied','most_occupied','least_occupied_for_period','most_occupied_for_period','least_expensive','most_expensive') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'most_expensive',
  `staff_preference_settings` text COLLATE utf8mb4_unicode_520_ci,
  `recurrence_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `recurrence_frequencies` set('daily','weekly','biweekly','monthly') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'daily,weekly,biweekly,monthly',
  `time_requirements` enum('required','optional','off') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'required',
  `collaborative_equal_duration` tinyint(1) NOT NULL DEFAULT '0',
  `online_meetings` enum('off','zoom','google_meet','jitsi','bbb') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'off',
  `final_step_url` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `wc_product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wc_cart_info_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `wc_cart_info` text COLLATE utf8mb4_unicode_520_ci,
  `min_time_prior_booking` int(11) DEFAULT NULL,
  `min_time_prior_cancel` int(11) DEFAULT NULL,
  `gateways` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visibility` enum('public','private','group') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'public',
  `position` int(11) NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_services`
--

INSERT INTO `wp_bookly_services` (`id`, `category_id`, `type`, `title`, `attachment_id`, `duration`, `slot_length`, `price`, `color`, `deposit`, `capacity_min`, `capacity_max`, `waiting_list_capacity`, `one_booking_per_slot`, `padding_left`, `padding_right`, `info`, `start_time_info`, `end_time_info`, `same_staff_for_subservices`, `units_min`, `units_max`, `package_life_time`, `package_size`, `package_unassigned`, `appointments_limit`, `limit_period`, `staff_preference`, `staff_preference_settings`, `recurrence_enabled`, `recurrence_frequencies`, `time_requirements`, `collaborative_equal_duration`, `online_meetings`, `final_step_url`, `wc_product_id`, `wc_cart_info_name`, `wc_cart_info`, `min_time_prior_booking`, `min_time_prior_cancel`, `gateways`, `visibility`, `position`) VALUES
(1, NULL, 'simple', 'Брови', NULL, 3600, 'default', '0.00', '#2D8926', '100%', 1, 1, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, 0, NULL, 'off', 'most_expensive', '{}', 1, 'daily,weekly,biweekly,monthly', 'required', 0, 'off', '', 0, NULL, NULL, NULL, NULL, NULL, 'public', 1),
(2, NULL, 'simple', 'Ресницы', 36, 2700, 'default', '0.00', '#4fd16b', '100%', 1, 1, NULL, 0, 0, 0, 'Делаем красивые ресницы', NULL, NULL, 0, 1, 1, NULL, NULL, 0, NULL, 'off', 'most_expensive', '{}', 1, 'daily,weekly,biweekly,monthly', 'required', 0, 'off', '', 0, '', '', NULL, NULL, NULL, 'public', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_sessions`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_sessions`;
CREATE TABLE `wp_bookly_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_520_ci,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_shop`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_shop`;
CREATE TABLE `wp_bookly_shop` (
  `id` int(10) UNSIGNED NOT NULL,
  `plugin_id` int(10) UNSIGNED NOT NULL,
  `type` enum('plugin','bundle') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'plugin',
  `highlighted` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int(10) UNSIGNED DEFAULT '0',
  `demo_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sales` int(10) UNSIGNED NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `reviews` int(10) UNSIGNED NOT NULL,
  `published` datetime NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_staff`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_staff`;
CREATE TABLE `wp_bookly_staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `wp_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_id` int(10) UNSIGNED DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_520_ci,
  `working_time_limit` int(10) UNSIGNED DEFAULT NULL,
  `visibility` enum('public','private','archive') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'public',
  `position` int(11) NOT NULL DEFAULT '9999',
  `google_data` text COLLATE utf8mb4_unicode_520_ci,
  `outlook_data` text COLLATE utf8mb4_unicode_520_ci,
  `zoom_authentication` enum('default','jwt','oauth') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'default',
  `zoom_jwt_api_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zoom_jwt_api_secret` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zoom_oauth_token` text COLLATE utf8mb4_unicode_520_ci,
  `icalendar` tinyint(1) NOT NULL DEFAULT '0',
  `icalendar_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `icalendar_days_before` int(11) NOT NULL DEFAULT '365',
  `icalendar_days_after` int(11) NOT NULL DEFAULT '365',
  `color` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#dddddd',
  `gateways` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_staff`
--

INSERT INTO `wp_bookly_staff` (`id`, `category_id`, `wp_user_id`, `attachment_id`, `full_name`, `email`, `phone`, `time_zone`, `info`, `working_time_limit`, `visibility`, `position`, `google_data`, `outlook_data`, `zoom_authentication`, `zoom_jwt_api_key`, `zoom_jwt_api_secret`, `zoom_oauth_token`, `icalendar`, `icalendar_token`, `icalendar_days_before`, `icalendar_days_after`, `color`, `gateways`) VALUES
(2, NULL, NULL, 32, 'Иван Иванов', 'ivanov@gmail.com', '+79999999999', NULL, NULL, NULL, 'public', 2, NULL, NULL, 'default', NULL, NULL, NULL, 0, '20effbdec6814b2c4a8680656f17c9f6', 365, 365, '#201769', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_staff_schedule_items`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_staff_schedule_items`;
CREATE TABLE `wp_bookly_staff_schedule_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `day_index` int(10) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_staff_schedule_items`
--

INSERT INTO `wp_bookly_staff_schedule_items` (`id`, `staff_id`, `location_id`, `day_index`, `start_time`, `end_time`) VALUES
(8, 2, NULL, 1, NULL, NULL),
(9, 2, NULL, 2, '08:00:00', '18:00:00'),
(10, 2, NULL, 3, '08:00:00', '18:00:00'),
(11, 2, NULL, 4, '08:00:00', '18:00:00'),
(12, 2, NULL, 5, '08:00:00', '18:00:00'),
(13, 2, NULL, 6, '08:00:00', '18:00:00'),
(14, 2, NULL, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_staff_services`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_staff_services`;
CREATE TABLE `wp_bookly_staff_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deposit` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '100%',
  `capacity_min` int(11) NOT NULL DEFAULT '1',
  `capacity_max` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_bookly_staff_services`
--

INSERT INTO `wp_bookly_staff_services` (`id`, `staff_id`, `service_id`, `location_id`, `price`, `deposit`, `capacity_min`, `capacity_max`) VALUES
(1, 2, 1, NULL, '0.00', '100%', 1, 1),
(2, 2, 2, NULL, '0.00', '100%', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_stats`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_stats`;
CREATE TABLE `wp_bookly_stats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_bookly_sub_services`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_bookly_sub_services`;
CREATE TABLE `wp_bookly_sub_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('service','spare_time') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'service',
  `service_id` int(10) UNSIGNED NOT NULL,
  `sub_service_id` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--
-- Создание: Июл 05 2023 г., 19:04
-- Последнее обновление: Июл 24 2023 г., 19:32
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_cpappbk_forms`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_cpappbk_forms`;
CREATE TABLE `wp_cpappbk_forms` (
  `id` mediumint(9) NOT NULL,
  `form_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `form_structure` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `calendar_language` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_format` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `product_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pay_later_label` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `defaultstatus` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `defaultpaidstatus` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_from_email` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_from_name` text COLLATE utf8mb4_unicode_520_ci,
  `fp_destination_emails` text COLLATE utf8mb4_unicode_520_ci,
  `fp_subject` text COLLATE utf8mb4_unicode_520_ci,
  `fp_inc_additional_info` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_return_page` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_message` text COLLATE utf8mb4_unicode_520_ci,
  `fp_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_emailtomethod` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_destination_emails_field` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_enable_copy_to_user` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_user_email_field` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_message` text COLLATE utf8mb4_unicode_520_ci,
  `cu_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_emailfrommethod` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_maxapp` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_is_required` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_is_email` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_datemmddyyyy` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_dateddmmyyyy` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_number` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_digits` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_max` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_min` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_pageof` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_submitbtn` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_previousbtn` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_nextbtn` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_quantity` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_cancel` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_cost` text COLLATE utf8mb4_unicode_520_ci,
  `vs_text_nmore` text COLLATE utf8mb4_unicode_520_ci,
  `cp_user_access` text COLLATE utf8mb4_unicode_520_ci,
  `cp_user_access_settings` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `display_emails_endtime` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_enable` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_days` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_hour` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_emails` text COLLATE utf8mb4_unicode_520_ci,
  `rep_subject` text COLLATE utf8mb4_unicode_520_ci,
  `rep_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_message` text COLLATE utf8mb4_unicode_520_ci,
  `cv_enable_captcha` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_width` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_height` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_chars` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_font` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_min_font_size` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_max_font_size` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise_length` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_background` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_border` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_text_enter_valid_captcha` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_cpappbk_forms`
--

INSERT INTO `wp_cpappbk_forms` (`id`, `form_name`, `form_structure`, `calendar_language`, `date_format`, `product_name`, `pay_later_label`, `defaultstatus`, `defaultpaidstatus`, `fp_from_email`, `fp_from_name`, `fp_destination_emails`, `fp_subject`, `fp_inc_additional_info`, `fp_return_page`, `fp_message`, `fp_emailformat`, `fp_emailtomethod`, `fp_destination_emails_field`, `cu_enable_copy_to_user`, `cu_user_email_field`, `cu_subject`, `cu_message`, `cu_emailformat`, `fp_emailfrommethod`, `vs_text_maxapp`, `vs_text_is_required`, `vs_text_is_email`, `vs_text_datemmddyyyy`, `vs_text_dateddmmyyyy`, `vs_text_number`, `vs_text_digits`, `vs_text_max`, `vs_text_min`, `vs_text_pageof`, `vs_text_submitbtn`, `vs_text_previousbtn`, `vs_text_nextbtn`, `vs_text_quantity`, `vs_text_cancel`, `vs_text_cost`, `vs_text_nmore`, `cp_user_access`, `cp_user_access_settings`, `display_emails_endtime`, `rep_enable`, `rep_days`, `rep_hour`, `rep_emails`, `rep_subject`, `rep_emailformat`, `rep_message`, `cv_enable_captcha`, `cv_width`, `cv_height`, `cv_chars`, `cv_font`, `cv_min_font_size`, `cv_max_font_size`, `cv_noise`, `cv_noise_length`, `cv_background`, `cv_border`, `cv_text_enter_valid_captcha`) VALUES
(1, 'Form 1', '[[{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fapp\",\"userhelp\":\"\",\"userhelpTooltip\":\"\",\"csslayout\":\"\",\"title\":\"Appointment\",\"services\":[{\"name\":\"\\u0411\\u0440\\u043e\\u0432\\u0438\",\"price\":1200,\"capacity\":1,\"duration\":60,\"pb\":0,\"pa\":0,\"ohindex\":0,\"idx\":1}],\"openhours\":[],\"allOH\":[{\"name\":\"Default\",\"openhours\":[{\"type\":\"all\",\"d\":\"\",\"h1\":8,\"m1\":0,\"h2\":17,\"m2\":0}]}],\"dateFormat\":\"mm\\/dd\\/yy\",\"showDropdown\":false,\"showTotalCost\":false,\"showTotalCostFormat\":\"$ {0}\",\"showEndTime\":false,\"showQuantity\":false,\"usedSlotsCheckbox\":false,\"avoidOverlaping\":true,\"emptySelectCheckbox\":false,\"emptySelect\":\"-- Please select service --\",\"dropdownRange\":\"-10:+10\",\"working_dates\":[true,true,true,true,true,true,true],\"numberOfMonths\":1,\"maxNumberOfApp\":0,\"firstDay\":0,\"minDate\":\"0\",\"maxDate\":\"\",\"defaultDate\":\"\",\"invalidDates\":\"\",\"tmpinvalidDates\":\"\",\"required\":true,\"bSlotsCheckbox\":true,\"bSlots\":30,\"militaryTime\":1,\"autonum\":1,\"autonumStaff\":0,\"fBuild\":{},\"special_days\":[],\"minDateTmp\":\"0\",\"getMinDate\":{},\"tmpinvalidDatestime\":[]},{\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"femail\",\"userhelp\":\"\",\"userhelpTooltip\":\"\",\"csslayout\":\"\",\"title\":\"Email\",\"predefined\":\"\",\"predefinedClick\":false,\"required\":false,\"size\":\"medium\",\"equalTo\":\"\",\"fBuild\":{}},{\"form_identifier\":\"\",\"name\":\"fieldname3\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"ftext\",\"userhelp\":\"\",\"userhelpTooltip\":\"\",\"csslayout\":\"service-tel\",\"title\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\",\"predefined\":\"\",\"predefinedClick\":false,\"required\":false,\"size\":\"medium\",\"minlength\":\"\",\"maxlength\":\"\",\"equalTo\":\"\",\"fBuild\":{}}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"autocomplete\":1,\"autofocus\":false}]]', '', 'mm/dd/yy', 'Booking', 'Pay later', '', '', 'admin@gmail.com', '', 'admin@gmail.com', 'Notification to administrator: Booking request received...', 'true', 'http://mioka.serverh', 'The following booking request has been received:\r\n\r\n<%INFO%>', 'text', 'fixed', 'fieldname1', 'true', 'fieldname1', 'Confirmation: Your booking has been received...', 'Your appointment is received. We look forward to seeing you then.\r\n\r\nThis is a copy of the data sent:\r\n\r\n<%INFO%>\r\n\r\nBest Regards.', 'text', 'fixed', 'Please select a max of {0} appointments per customer.', 'Обязательно для заполнения', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Page {0} of {0}', 'Забронировать', 'Previous', 'Next', 'Quantity', 'Cancel', 'Cost', 'Selected time is no longer available. Please select a different time.', 'a:0:{}', '', '', 'no', '1', '0', '', 'Submissions report...', 'text', 'Attached you will find the data from the form submissions.', 'true', '180', '60', '5', 'font1', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_cpappbk_messages`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_cpappbk_messages`;
CREATE TABLE `wp_cpappbk_messages` (
  `id` int(11) NOT NULL,
  `formid` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddr` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `notifyto` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `posted_data` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `whoadded` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--
-- Создание: Июл 05 2023 г., 19:04
-- Последнее обновление: Июл 31 2023 г., 11:14
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://dmidrok-agency.store/', 'yes'),
(2, 'home', 'https://dmidrok-agency.store/', 'yes'),
(3, 'blogname', 'Mioka', 'yes'),
(4, 'blogdescription', 'Студия красоты', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:217:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"services_types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?services_types=$matches[1]&feed=$matches[2]\";s:50:\"services_types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?services_types=$matches[1]&feed=$matches[2]\";s:31:\"services_types/([^/]+)/embed/?$\";s:47:\"index.php?services_types=$matches[1]&embed=true\";s:43:\"services_types/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?services_types=$matches[1]&paged=$matches[2]\";s:25:\"services_types/([^/]+)/?$\";s:36:\"index.php?services_types=$matches[1]\";s:37:\"employees/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"employees/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"employees/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"employees/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"employees/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"employees/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"employees/([^/]+)/embed/?$\";s:42:\"index.php?employees=$matches[1]&embed=true\";s:30:\"employees/([^/]+)/trackback/?$\";s:36:\"index.php?employees=$matches[1]&tb=1\";s:38:\"employees/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?employees=$matches[1]&paged=$matches[2]\";s:45:\"employees/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?employees=$matches[1]&cpage=$matches[2]\";s:34:\"employees/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?employees=$matches[1]&page=$matches[2]\";s:26:\"employees/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"employees/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"employees/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"employees/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"employees/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"employees/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"employees_types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?employees_types=$matches[1]&feed=$matches[2]\";s:51:\"employees_types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?employees_types=$matches[1]&feed=$matches[2]\";s:32:\"employees_types/([^/]+)/embed/?$\";s:48:\"index.php?employees_types=$matches[1]&embed=true\";s:44:\"employees_types/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?employees_types=$matches[1]&paged=$matches[2]\";s:26:\"employees_types/([^/]+)/?$\";s:37:\"index.php?employees_types=$matches[1]\";s:43:\"portfolio_works/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"portfolio_works/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"portfolio_works/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"portfolio_works/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"portfolio_works/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"portfolio_works/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"portfolio_works/([^/]+)/embed/?$\";s:48:\"index.php?portfolio_works=$matches[1]&embed=true\";s:36:\"portfolio_works/([^/]+)/trackback/?$\";s:42:\"index.php?portfolio_works=$matches[1]&tb=1\";s:44:\"portfolio_works/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?portfolio_works=$matches[1]&paged=$matches[2]\";s:51:\"portfolio_works/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?portfolio_works=$matches[1]&cpage=$matches[2]\";s:40:\"portfolio_works/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?portfolio_works=$matches[1]&page=$matches[2]\";s:32:\"portfolio_works/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"portfolio_works/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"portfolio_works/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"portfolio_works/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"portfolio_works/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"portfolio_works/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"documents/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"documents/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"documents/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"documents/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"documents/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"documents/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"documents/([^/]+)/embed/?$\";s:42:\"index.php?documents=$matches[1]&embed=true\";s:30:\"documents/([^/]+)/trackback/?$\";s:36:\"index.php?documents=$matches[1]&tb=1\";s:38:\"documents/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?documents=$matches[1]&paged=$matches[2]\";s:45:\"documents/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?documents=$matches[1]&cpage=$matches[2]\";s:34:\"documents/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?documents=$matches[1]&page=$matches[2]\";s:26:\"documents/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"documents/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"documents/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"documents/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"documents/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"documents/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"reviews/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"reviews/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"reviews/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"reviews/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"reviews/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"reviews/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"reviews/([^/]+)/embed/?$\";s:40:\"index.php?reviews=$matches[1]&embed=true\";s:28:\"reviews/([^/]+)/trackback/?$\";s:34:\"index.php?reviews=$matches[1]&tb=1\";s:36:\"reviews/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?reviews=$matches[1]&paged=$matches[2]\";s:43:\"reviews/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?reviews=$matches[1]&cpage=$matches[2]\";s:32:\"reviews/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?reviews=$matches[1]&page=$matches[2]\";s:24:\"reviews/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"reviews/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"reviews/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"reviews/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"reviews/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"reviews/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"reviews_types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?reviews_types=$matches[1]&feed=$matches[2]\";s:49:\"reviews_types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?reviews_types=$matches[1]&feed=$matches[2]\";s:30:\"reviews_types/([^/]+)/embed/?$\";s:46:\"index.php?reviews_types=$matches[1]&embed=true\";s:42:\"reviews_types/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?reviews_types=$matches[1]&paged=$matches[2]\";s:24:\"reviews_types/([^/]+)/?$\";s:35:\"index.php?reviews_types=$matches[1]\";s:37:\"questions/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"questions/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"questions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"questions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"questions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"questions/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"questions/([^/]+)/embed/?$\";s:42:\"index.php?questions=$matches[1]&embed=true\";s:30:\"questions/([^/]+)/trackback/?$\";s:36:\"index.php?questions=$matches[1]&tb=1\";s:38:\"questions/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?questions=$matches[1]&paged=$matches[2]\";s:45:\"questions/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?questions=$matches[1]&cpage=$matches[2]\";s:34:\"questions/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?questions=$matches[1]&page=$matches[2]\";s:26:\"questions/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"questions/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"questions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"questions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"questions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"questions/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:29:\"cf7-telegram/cf7-telegram.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mioka', 'yes'),
(41, 'stylesheet', 'mioka', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:4:{s:27:\"maps-for-wp/maps-for-wp.php\";a:2:{i:0;s:9:\"MapsForWP\";i:1;s:12:\"on_uninstall\";}s:51:\"bookly-responsive-appointment-booking-tool/main.php\";a:2:{i:0;s:17:\"Bookly\\Lib\\Plugin\";i:1;s:9:\"uninstall\";}s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:31:\"opening-hours/opening-hours.php\";a:2:{i:0;s:11:\"we_are_open\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1702667749', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:119:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"edit_employees\";b:1;s:12:\"edit_clients\";b:1;s:13:\"edit_services\";b:1;s:16:\"edit_oz_payments\";b:1;s:21:\"edit_others_employees\";b:1;s:19:\"edit_others_clients\";b:1;s:20:\"edit_others_services\";b:1;s:23:\"edit_others_oz_payments\";b:1;s:17:\"publish_employees\";b:1;s:15:\"publish_clients\";b:1;s:16:\"publish_services\";b:1;s:19:\"publish_oz_payments\";b:1;s:22:\"read_private_employees\";b:1;s:20:\"read_private_clients\";b:1;s:21:\"read_private_services\";b:1;s:24:\"read_private_oz_payments\";b:1;s:16:\"delete_employees\";b:1;s:14:\"delete_clients\";b:1;s:15:\"delete_services\";b:1;s:18:\"delete_oz_payments\";b:1;s:24:\"delete_private_employees\";b:1;s:22:\"delete_private_clients\";b:1;s:23:\"delete_private_services\";b:1;s:26:\"delete_private_oz_payments\";b:1;s:26:\"delete_published_employees\";b:1;s:24:\"delete_published_clients\";b:1;s:25:\"delete_published_services\";b:1;s:28:\"delete_published_oz_payments\";b:1;s:23:\"delete_others_employees\";b:1;s:21:\"delete_others_clients\";b:1;s:22:\"delete_others_services\";b:1;s:25:\"delete_others_oz_payments\";b:1;s:22:\"edit_private_employees\";b:1;s:20:\"edit_private_clients\";b:1;s:21:\"edit_private_services\";b:1;s:24:\"edit_private_oz_payments\";b:1;s:24:\"edit_published_employees\";b:1;s:22:\"edit_published_clients\";b:1;s:23:\"edit_published_services\";b:1;s:26:\"edit_published_oz_payments\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"staff_categories_editor\";b:1;s:23:\"manage_staff_categories\";b:1;s:23:\"assign_staff_categories\";b:1;s:17:\"edit_staff_member\";b:1;s:17:\"read_staff_member\";b:1;s:18:\"read_staff_members\";b:1;s:19:\"delete_staff_member\";b:1;s:18:\"edit_staff_members\";b:1;s:25:\"edit_others_staff_members\";b:1;s:21:\"publish_staff_members\";b:1;s:26:\"read_private_staff_members\";b:1;s:20:\"delete_staff_members\";b:1;s:28:\"delete_private_staff_members\";b:1;s:30:\"delete_published_staff_members\";b:1;s:27:\"delete_others_staff_members\";b:1;s:26:\"edit_private_staff_members\";b:1;s:28:\"edit_published_staff_members\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:53:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:23:\"staff_categories_editor\";b:1;s:23:\"manage_staff_categories\";b:1;s:23:\"assign_staff_categories\";b:1;s:17:\"edit_staff_member\";b:1;s:17:\"read_staff_member\";b:1;s:18:\"read_staff_members\";b:1;s:19:\"delete_staff_member\";b:1;s:18:\"edit_staff_members\";b:1;s:25:\"edit_others_staff_members\";b:1;s:21:\"publish_staff_members\";b:1;s:26:\"read_private_staff_members\";b:1;s:20:\"delete_staff_members\";b:1;s:28:\"delete_private_staff_members\";b:1;s:30:\"delete_published_staff_members\";b:1;s:27:\"delete_others_staff_members\";b:1;s:26:\"edit_private_staff_members\";b:1;s:28:\"edit_published_staff_members\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:50:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:14:\"edit_employees\";b:1;s:12:\"edit_clients\";b:1;s:13:\"edit_services\";b:1;s:16:\"edit_oz_payments\";b:1;s:21:\"edit_others_employees\";b:1;s:19:\"edit_others_clients\";b:1;s:20:\"edit_others_services\";b:1;s:23:\"edit_others_oz_payments\";b:1;s:17:\"publish_employees\";b:1;s:15:\"publish_clients\";b:1;s:16:\"publish_services\";b:1;s:19:\"publish_oz_payments\";b:1;s:22:\"read_private_employees\";b:1;s:20:\"read_private_clients\";b:1;s:21:\"read_private_services\";b:1;s:24:\"read_private_oz_payments\";b:1;s:16:\"delete_employees\";b:1;s:14:\"delete_clients\";b:1;s:15:\"delete_services\";b:1;s:18:\"delete_oz_payments\";b:1;s:24:\"delete_private_employees\";b:1;s:22:\"delete_private_clients\";b:1;s:23:\"delete_private_services\";b:1;s:26:\"delete_private_oz_payments\";b:1;s:26:\"delete_published_employees\";b:1;s:24:\"delete_published_clients\";b:1;s:25:\"delete_published_services\";b:1;s:28:\"delete_published_oz_payments\";b:1;s:23:\"delete_others_employees\";b:1;s:21:\"delete_others_clients\";b:1;s:22:\"delete_others_services\";b:1;s:25:\"delete_others_oz_payments\";b:1;s:22:\"edit_private_employees\";b:1;s:20:\"edit_private_clients\";b:1;s:21:\"edit_private_services\";b:1;s:24:\"edit_private_oz_payments\";b:1;s:24:\"edit_published_employees\";b:1;s:22:\"edit_published_clients\";b:1;s:23:\"edit_published_services\";b:1;s:26:\"edit_published_oz_payments\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:10:{i:1690802150;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1690805319;a:1:{s:21:\"bookly_hourly_routine\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1690814397;a:1:{s:15:\"we_are_open_run\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690819614;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690824106;a:1:{s:17:\"wmac_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690830950;a:6:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690830983;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690830984;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690844919;a:1:{s:20:\"bookly_daily_routine\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1687115811;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:0:{}', 'yes'),
(141, 'can_compress_scripts', '0', 'no'),
(154, 'current_theme', 'Mioko', 'yes'),
(155, 'theme_mods_mioka', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:449;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'new_admin_email', 'admin@gmail.com', 'yes'),
(162, 'finished_updating_comment_type', '1', 'yes'),
(163, 'recently_activated', 'a:2:{s:19:\"clearfy/clearfy.php\";i:1688664275;s:31:\"opening-hours/opening-hours.php\";i:1688222472;}', 'yes'),
(188, 'acf_version', '6.1.6', 'yes'),
(216, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":1}', 'yes'),
(224, 'recovery_mode_email_last_sent', '1688203171', 'yes'),
(239, 'wpcf7', 'a:3:{s:7:\"version\";s:5:\"5.7.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1687272473;s:7:\"version\";s:5:\"5.7.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:9:\"recaptcha\";a:1:{s:40:\"6LecCAAnAAAAADvB3Hr6s9Z49ORqOvHZU-SPI1jQ\";s:40:\"6LecCAAnAAAAAH8ICn4luttDAPnYTrPfUZRSmJY4\";}}', 'yes'),
(245, 'ts__globalSetind', 's:358:\"a:6:{s:20:\"tscfwc_setting_token\";s:46:\"5952497191:AAG3JUJDL_EEN760DFIiMnx-l9B9jmhv4lQ\";s:21:\"tscfwc_setting_chatid\";s:10:\"-687292955\";s:28:\"tscfwc_setting_wooc_template\";s:0:\"\";s:23:\"tscfwc_setting_setcheck\";a:3:{s:10:\"wooc_check\";i:0;s:14:\"wooc_all_order\";i:0;s:10:\"tscfwc_key\";i:0;}s:24:\"tscfwc_setting_acsesform\";a:1:{i:0;i:21;}s:14:\"tscfwc_enabled\";i:1;}\";', 'yes'),
(260, 'token_bot', '5952497191:AAG3JUJDL_EEN760DFIiMnx-l9B9jmhv4lQ', 'yes'),
(264, 'bot_token', '5952497191:AAG3JUJDL_EEN760DFIiMnx-l9B9jmhv4lQ', 'yes'),
(265, 'bot_message', 'Новая заявка на сайте!\r\n\r\nИмя пользователя: {username}.\r\nТелефон пользователя: {usertel}.\r\n\r\nСообщение от пользователя:\r\n{usermsg}', 'yes'),
(288, 'bot_chat_id', '-687292955', 'yes'),
(303, 'wrm_201efb5d26868fd501ab', '1687376854', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(322, 'oz_e_admin_template', '<center style=\"width: 100%;background: #e2e0ec\"><!-- Visually Hidden Preheader Text : BEGIN -->\n<div style=\"padding: 5px 0;font-family: sans-serif;font-size: 14px\">(Опционально) Это демо email шаблон. Вы можете добавить свой.</div>\n<!-- Visually Hidden Preheader Text : END --><!-- Email Body : BEGIN -->\n<table class=\"email-container\" style=\"margin: auto;width: 600px\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#ffffff\"><!-- Hero Image, Flush : BEGIN -->\n<tbody>\n<tr>\n<td>\n<div style=\"width: 100%;height: 200px;margin: 0 auto\">\n<div style=\"max-height: 0;max-width: 100%;width: 600px;overflow: visible\">\n<div style=\"width: 600px;height: 200px;margin-top: 0px;margin-left: 0px;display: inline-block;text-align: center;line-height: 100px;font-size: 50px\"><img style=\"width: 100%;max-width: 600px\" src=\"http://mioka.serverh/wp-content/plugins/book-appointment-online/assets/images/booked600x200.jpg\" alt=\"alt_text\" width=\"600\" height=\"\" align=\"center\" border=\"0\" /></div>\n</div>\n<div class=\"mob100\" style=\"max-height: 0;max-width: 0;overflow: visible\">\n<div class=\"mob100\" style=\"width: 560px;height: 200px;margin-top: 0px;margin-left: 20px;display: table;text-align: center\">\n<h3 class=\"h3\" style=\"font-family: sans-serif;color: #fff;font-size: 36px;text-align: center;margin: auto;vertical-align: middle;display: table-cell\">Новая запись на %date%</h3>\n</div>\n</div>\n</div>\n</td>\n</tr>\n<!-- Hero Image, Flush : END --><!-- 1 Column Text : BEGIN -->\n<tr>\n<td style=\"padding: 20px;text-align: center;font-family: sans-serif;font-size: 15px;line-height: 20px;color: #555555\">\n<h1>Новая запись от %name%</h1>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</td>\n</tr>\n<!---order start-->\n<tr>\n<td style=\"padding: 20px\">\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<th class=\"column-top\" style=\"font-size: 0pt;line-height: 0pt;padding: 0;margin: 0;font-weight: normal;vertical-align: top\" valign=\"top\" width=\"270\">\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#6e52e5\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text-1\" style=\"color: #fff;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>Детали заказа:</strong></div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fafafa\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text\" style=\"color: #1e1e1e;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>Сервис: </strong>%service%<br /><strong>Сотрудник: </strong>%employee%<br /><strong>Дата: </strong>%date% %time%<br /><strong>Продолжительность (мин): </strong>%duration%</div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"15\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</th>\n<th class=\"column-top\" style=\"font-size: 0pt;line-height: 0pt;padding: 0;margin: 0;font-weight: normal;vertical-align: top\" valign=\"top\" width=\"20\">\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<div class=\"mobile-br-15\" style=\"font-size: 0pt;line-height: 0pt\"> </div>\n</td>\n</tr>\n</tbody>\n</table>\n</th>\n<th class=\"column-top\" style=\"font-size: 0pt;line-height: 0pt;padding: 0;margin: 0;font-weight: normal;vertical-align: top\" valign=\"top\" width=\"270\">\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#6e52e5\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text-1\" style=\"color: #fff;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>Номер заказа:</strong> <span style=\"color: #fff\">%ID%</span></div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#6e52e5\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text-1\" style=\"color: #fff;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>Данные клиента:</strong></div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fafafa\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text\" style=\"color: #1e1e1e;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>%name%</strong> %phone% <br />email: %email%</div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"15\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</th>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<!--order end--></tbody>\n</table>\n<!-- Email Body : END --></center>', 'yes'),
(323, 'oz_e_before_template', '<center style=\"width: 100%;background: #e2e0ec\"><!-- Visually Hidden Preheader Text : BEGIN -->\n<div style=\"padding: 5px 0;font-family: sans-serif;font-size: 14px\">(Опционально) Это демо email шаблон. Вы можете добавить свой.</div>\n<!-- Visually Hidden Preheader Text : END --><!-- Email Body : BEGIN -->\n<table class=\"email-container\" style=\"margin: auto;width: 600px\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#ffffff\"><!-- Hero Image, Flush : BEGIN -->\n<tbody>\n<tr>\n<td>\n<div style=\"width: 100%;height: 200px;margin: 0 auto\">\n<div style=\"max-height: 0;max-width: 100%;width: 600px;overflow: visible\">\n<div style=\"width: 600px;height: 200px;margin-top: 0px;margin-left: 0px;display: inline-block;text-align: center;line-height: 100px;font-size: 50px\"><img style=\"width: 100%;max-width: 600px\" src=\"http://mioka.serverh/wp-content/plugins/book-appointment-online/assets/images/booked600x200.jpg\" alt=\"alt_text\" width=\"600\" height=\"\" align=\"center\" border=\"0\" /></div>\n</div>\n<div class=\"mob100\" style=\"max-height: 0;max-width: 0;overflow: visible\">\n<div class=\"mob100\" style=\"width: 560px;height: 200px;margin-top: 0px;margin-left: 20px;display: table;text-align: center\">\n<h3 class=\"h3\" style=\"font-family: sans-serif;color: #fff;font-size: 36px;text-align: center;margin: auto;vertical-align: middle;display: table-cell\">%name%, вы записаны!</h3>\n</div>\n</div>\n</div>\n</td>\n</tr>\n<!-- Hero Image, Flush : END --><!-- 1 Column Text : BEGIN -->\n<tr>\n<td style=\"padding: 20px;text-align: center;font-family: sans-serif;font-size: 15px;line-height: 20px;color: #555555\">\n<h1>%name%, спасибо за Вашу запись!</h1>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</td>\n</tr>\n<!---order start-->\n<tr>\n<td style=\"padding: 20px\">\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<th class=\"column-top\" style=\"font-size: 0pt;line-height: 0pt;padding: 0;margin: 0;font-weight: normal;vertical-align: top\" valign=\"top\" width=\"270\">\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#6e52e5\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text-1\" style=\"color: #fff;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>Детали заказа:</strong></div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fafafa\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text\" style=\"color: #1e1e1e;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>Сервис: </strong>%service%<br /><strong>Специалист: </strong>%employee%<br /><strong>Дата: </strong>%date% %time%<br /><strong>Продолжительность (мин): </strong>%duration%</div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"15\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</th>\n<th class=\"column-top\" style=\"font-size: 0pt;line-height: 0pt;padding: 0;margin: 0;font-weight: normal;vertical-align: top\" valign=\"top\" width=\"20\">\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<div class=\"mobile-br-15\" style=\"font-size: 0pt;line-height: 0pt\"> </div>\n</td>\n</tr>\n</tbody>\n</table>\n</th>\n<th class=\"column-top\" style=\"font-size: 0pt;line-height: 0pt;padding: 0;margin: 0;font-weight: normal;vertical-align: top\" valign=\"top\" width=\"270\">\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#6e52e5\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text-1\" style=\"color: #fff;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>Номер заказа:</strong> <span style=\"color: #fff\">%ID%</span></div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#6e52e5\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text-1\" style=\"color: #fff;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>Ваши данные:</strong></div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fafafa\">\n<tbody>\n<tr>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n<td>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"10\"> </td>\n</tr>\n</tbody>\n</table>\n<div class=\"text\" style=\"color: #1e1e1e;font-family: Arial, sans-serif;min-width: auto !important;font-size: 14px;line-height: 20px;text-align: left\"><strong>%name%</strong> %phone%</div>\n<table class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"spacer\" style=\"font-size: 0pt;line-height: 0pt;text-align: center;width: 100%;min-width: 100%\" height=\"15\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"content-spacing\" style=\"font-size: 0pt;line-height: 0pt;text-align: left\" width=\"20\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</th>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"padding: 20px;text-align: center;font-family: sans-serif;font-size: 15px;line-height: 20px;color: #555555\">\n<h2 style=\"font-size: 22px;line-height: 1\">Здесь вы можете добавить свое спецпредложение!</h2>\n<img style=\"width: 100%;max-width: 580px\" src=\"http://mioka.serverh/wp-content/plugins/book-appointment-online/assets/images/offer580x120.jpg\" alt=\"alt_text\" width=\"580\" height=\"\" align=\"center\" border=\"0\" /></td>\n</tr>\n<!--order end--></tbody>\n</table>\n<!-- Email Body : END --><!-- Email Footer : BEGIN -->\n<table class=\"email-container\" style=\"margin: auto\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"padding: 40px 10px;width: 100%;font-size: 12px;font-family: sans-serif;line-height: 18px;text-align: center;color: #888888\">Company Name<br /><span class=\"mobile-link--footer\">123 Fake Street, SpringField, OR, 97477 US</span><br /><span class=\"mobile-link--footer\">(123) 456-7890</span></td>\n</tr>\n</tbody>\n</table>\n<!-- Email Footer : END --></center>', 'yes'),
(325, 'oz_user_role', 'a:1:{i:0;s:6:\"author\";}', 'yes'),
(326, 'oz_default_cur', 'руб', 'yes'),
(327, 'oz_currency_position', 'right', 'yes'),
(328, 'oz_time_format', '', 'yes'),
(329, 'oz_colors', 'a:3:{s:7:\"primary\";s:7:\"#5c61ff\";s:9:\"secondary\";s:7:\"#ffc88a\";s:10:\"background\";s:7:\"#f5f5f5\";}', 'yes'),
(369, 'oz_theme', 'neumorph', 'yes'),
(370, 'oz_polya', 'a:2:{s:5:\"email\";a:1:{i:0;s:2:\"{}\";}s:3:\"tel\";a:2:{s:4:\"name\";d:1;s:3:\"req\";d:1;}}', 'yes'),
(371, 'oz_tel_country', 'a:1:{i:0;s:2:\"ru\";}', 'yes'),
(377, 'bookly_data_loaded', '1', 'yes'),
(378, 'bookly_db_version', '21.8', 'yes'),
(379, 'bookly_installation_time', '1687464518', 'yes'),
(381, 'bookly_admin_preferred_language', '', 'yes'),
(382, 'bookly_app_color', '#f4662f', 'yes'),
(383, 'bookly_app_custom_styles', '', 'yes'),
(384, 'bookly_app_required_employee', '0', 'yes'),
(385, 'bookly_app_service_name_with_duration', '0', 'yes'),
(386, 'bookly_app_show_blocked_timeslots', '0', 'yes'),
(387, 'bookly_app_show_calendar', '0', 'yes'),
(388, 'bookly_app_show_day_one_column', '0', 'yes'),
(389, 'bookly_app_show_login_button', '0', 'yes'),
(390, 'bookly_app_show_notes', '1', 'yes'),
(391, 'bookly_app_show_progress_tracker', '1', 'yes'),
(392, 'bookly_app_align_buttons_left', '0', 'yes'),
(393, 'bookly_app_staff_name_with_price', '1', 'yes'),
(394, 'bookly_app_show_slots', 'all', 'yes'),
(395, 'bookly_app_show_email_confirm', '0', 'yes'),
(396, 'bookly_app_show_start_over', '1', 'yes'),
(397, 'bookly_app_show_category_info', '0', 'yes'),
(398, 'bookly_app_show_service_info', '1', 'yes'),
(399, 'bookly_app_show_staff_info', '0', 'yes'),
(400, 'bookly_app_show_terms', '0', 'yes'),
(401, 'bookly_app_show_download_ics', '0', 'yes'),
(402, 'bookly_l10n_button_apply', 'Применить', 'yes'),
(403, 'bookly_l10n_button_back', 'Назад', 'yes'),
(404, 'bookly_l10n_button_time_prev', '<', 'yes'),
(405, 'bookly_l10n_button_time_next', '&gt;', 'yes'),
(406, 'bookly_l10n_button_download_ics', 'Скачать ICS', 'yes'),
(407, 'bookly_l10n_info_complete_step', 'Благодарим Вас! Бронирование завершено. Вам отослано электронное письмо с деталями Вашей брони.', 'yes'),
(408, 'bookly_l10n_info_complete_step_limit_error', 'Вы слишком часто используете форму бронирования. Пожалуйста, свяжитесь с нами, чтобы сделать заказ.', 'yes'),
(409, 'bookly_l10n_info_complete_step_processing', 'Ваш платёж принят в обработку.', 'yes'),
(410, 'bookly_l10n_info_details_step', 'Вы выбрали {service_name} от {staff_name} на {appointment_date} в {appointment_time}. Цена за этот сервис {service_price}.\nПожалуйста, введите свои данные, чтобы продолжить бронирование.', 'yes'),
(411, 'bookly_l10n_info_details_step_guest', '', 'yes'),
(412, 'bookly_l10n_info_payment_step_single_app', 'Пожалуйста, скажите нам, как бы Вы хотели расплатиться:', 'yes'),
(413, 'bookly_l10n_info_service_step', 'Пожалуйста, выберите сервис:', 'yes'),
(414, 'bookly_l10n_info_time_step', 'Ниже Вы можете найти список доступных временных интервалов для {service_name} от {staff_name}.\nНажмите на кнопку временного интервала, чтобы продолжить бронирование.', 'yes'),
(415, 'bookly_l10n_label_category', 'Категория', 'yes'),
(416, 'bookly_l10n_label_email', 'Электронная почта', 'yes'),
(417, 'bookly_l10n_label_email_confirm', 'Подтвердите адрес эл. почты', 'yes'),
(418, 'bookly_l10n_label_employee', 'Работник', 'yes'),
(419, 'bookly_l10n_label_finish_by', 'Закончить в', 'yes'),
(420, 'bookly_l10n_label_name', 'Полное имя', 'yes'),
(421, 'bookly_l10n_label_first_name', 'Имя', 'yes'),
(422, 'bookly_l10n_label_last_name', 'Фамилия', 'yes'),
(423, 'bookly_l10n_label_notes', 'Заметки', 'yes'),
(424, 'bookly_l10n_label_pay_locally', 'Я оплачу наличными', 'yes'),
(425, 'bookly_l10n_label_pay_cloud_stripe', 'Я оплачу кредитной картой', 'yes'),
(426, 'bookly_l10n_label_phone', 'Телефон', 'yes'),
(427, 'bookly_l10n_label_select_date', 'Пожалуйста, выберите дату', 'yes'),
(428, 'bookly_l10n_label_service', 'Сервис', 'yes'),
(429, 'bookly_l10n_label_start_from', 'Начать с', 'yes'),
(430, 'bookly_l10n_label_terms', 'Я согласен с условиями предоставления услуг', 'yes'),
(431, 'bookly_l10n_error_terms', 'Вы должны согласиться с нашими условиями', 'yes'),
(432, 'bookly_l10n_option_category', 'Выберите категорию', 'yes'),
(433, 'bookly_l10n_option_employee', 'Любой', 'yes'),
(434, 'bookly_l10n_option_service', 'Выберите сервис', 'yes'),
(435, 'bookly_l10n_option_day', 'Выберите день', 'yes'),
(436, 'bookly_l10n_option_month', 'Выберите месяц', 'yes'),
(437, 'bookly_l10n_option_year', 'Выберите год', 'yes'),
(438, 'bookly_l10n_required_email', 'Пожалуйста, введите свой электронный адрес', 'yes'),
(439, 'bookly_l10n_email_in_use', 'Этот адрес уже используется', 'yes'),
(440, 'bookly_l10n_email_confirm_not_match', 'Введённые адреса эл. почты не совпадают друг с другом', 'yes'),
(441, 'bookly_l10n_required_employee', 'Пожалуйста, выберите работника', 'yes'),
(442, 'bookly_l10n_required_name', 'Пожалуйста, введите свое имя', 'yes'),
(443, 'bookly_l10n_required_first_name', 'Пожалуйста, введите свое имя', 'yes'),
(444, 'bookly_l10n_required_last_name', 'Пожалуйста, введите свою фамилию', 'yes'),
(445, 'bookly_l10n_required_phone', 'Пожалуйста, введите свой номер телефона', 'yes'),
(446, 'bookly_l10n_required_service', 'Пожалуйста, выберите сервис', 'yes'),
(447, 'bookly_l10n_step_service', 'Сервис', 'yes'),
(448, 'bookly_l10n_step_time', 'Время', 'yes'),
(449, 'bookly_l10n_step_time_slot_not_available', 'Выбранное время больше не доступно. Пожалуйста, выберите другое время.', 'yes'),
(450, 'bookly_l10n_step_details', 'Детали', 'yes'),
(451, 'bookly_l10n_step_details_button_login', 'Вход', 'yes'),
(452, 'bookly_l10n_step_payment', 'Оплата', 'yes'),
(453, 'bookly_l10n_step_done', 'Готово', 'yes'),
(454, 'bookly_l10n_step_done_button_start_over', 'Начать сначала', 'yes'),
(455, 'bookly_l10n_step_service_category_info', '{category_info}', 'yes'),
(456, 'bookly_l10n_step_service_service_info', '{service_info}', 'yes'),
(457, 'bookly_l10n_step_service_staff_info', '{staff_info}', 'yes'),
(458, 'bookly_l10n_step_service_button_next', 'Далее', 'yes'),
(459, 'bookly_l10n_step_service_mobile_button_next', 'Далее', 'yes'),
(460, 'bookly_l10n_step_details_button_next', 'Далее', 'yes'),
(461, 'bookly_l10n_step_payment_button_next', 'Далее', 'yes'),
(462, 'bookly_cal_show_only_business_days', '1', 'yes'),
(463, 'bookly_cal_show_only_business_hours', '1', 'yes'),
(464, 'bookly_cal_show_only_staff_with_appointments', '1', 'yes'),
(465, 'bookly_cal_one_participant', '{service_name}\n{client_name}\n{client_phone}\n{client_email}\n{total_price} {payment_type} {payment_status}\nСтатус: {status}\nЗабронировано: {signed_up}\nВместимость: {service_capacity}', 'yes'),
(466, 'bookly_cal_many_participants', '{service_name}\nЗабронировано: {signed_up}\nВместимость: {service_capacity}', 'yes'),
(467, 'bookly_cal_coloring_mode', 'service', 'yes'),
(468, 'bookly_cal_month_view_style', 'classic', 'yes'),
(469, 'bookly_cal_show_new_appointments_badge', '0', 'yes'),
(470, 'bookly_cal_last_seen_appointment', '', 'yes'),
(471, 'bookly_co_logo_attachment_id', '', 'yes'),
(472, 'bookly_co_name', 'Mioka', 'yes'),
(473, 'bookly_co_address', '', 'yes'),
(474, 'bookly_co_phone', '', 'yes'),
(475, 'bookly_co_website', '', 'yes'),
(476, 'bookly_co_email', 'admin@mail.ru', 'yes'),
(477, 'bookly_co_industry', '11', 'yes'),
(478, 'bookly_co_size', '1', 'yes'),
(479, 'bookly_cst_allow_duplicates', '0', 'yes'),
(480, 'bookly_cst_create_account', '0', 'yes'),
(481, 'bookly_cst_default_country_code', '', 'yes'),
(482, 'bookly_cst_first_last_name', '0', 'yes'),
(483, 'bookly_cst_phone_default_country', 'auto', 'yes'),
(484, 'bookly_cst_remember_in_cookie', '0', 'yes'),
(485, 'bookly_cst_required_address', '0', 'yes'),
(486, 'bookly_cst_required_birthday', '0', 'yes'),
(487, 'bookly_cst_required_details', 'a:2:{i:0;s:5:\"phone\";i:1;s:5:\"email\";}', 'yes'),
(488, 'bookly_cst_show_update_details_dialog', '1', 'yes'),
(489, 'bookly_cst_verify_customer_details', 'on_update', 'yes'),
(490, 'bookly_email_sender', 'admin@gmail.com', 'yes'),
(491, 'bookly_email_sender_name', 'Mioka', 'yes'),
(492, 'bookly_email_send_as', 'html', 'yes'),
(493, 'bookly_email_reply_to_customers', '1', 'yes'),
(494, 'bookly_gen_delete_data_on_uninstall', '0', 'yes'),
(495, 'bookly_gen_time_slot_length', '15', 'yes'),
(496, 'bookly_gen_service_duration_as_slot_length', '0', 'yes'),
(497, 'bookly_gen_min_time_prior_booking', '0', 'yes'),
(498, 'bookly_gen_min_time_prior_cancel', '0', 'yes'),
(499, 'bookly_gen_max_days_for_booking', '365', 'yes'),
(500, 'bookly_gen_use_client_time_zone', '0', 'yes'),
(501, 'bookly_gen_allow_staff_edit_profile', '1', 'yes'),
(502, 'bookly_gen_link_assets_method', 'enqueue', 'yes'),
(503, 'bookly_gen_collect_stats', '0', 'yes'),
(504, 'bookly_gen_show_powered_by', '0', 'yes'),
(505, 'bookly_gen_session_type', 'php', 'yes'),
(506, 'bookly_gen_prevent_caching', '1', 'yes'),
(507, 'bookly_gen_prevent_session_locking', '0', 'yes'),
(508, 'bookly_gen_badge_consider_news', '1', 'yes'),
(509, 'bookly_url_approve_page_url', 'http://mioka.serverh', 'yes'),
(510, 'bookly_url_approve_denied_page_url', 'http://mioka.serverh', 'yes'),
(511, 'bookly_url_cancel_page_url', 'http://mioka.serverh', 'yes'),
(512, 'bookly_url_cancel_denied_page_url', 'http://mioka.serverh', 'yes'),
(513, 'bookly_url_reject_page_url', 'http://mioka.serverh', 'yes'),
(514, 'bookly_url_reject_denied_page_url', 'http://mioka.serverh', 'yes'),
(515, 'bookly_sms_administrator_phone', '', 'yes'),
(516, 'bookly_sms_undelivered_count', '0', 'yes'),
(517, 'bookly_l10n_ics_customer_template', '{service_name}\n{staff_name}', 'yes'),
(518, 'bookly_ics_staff_template', '{client_name}\n{client_phone}\n{status}', 'yes'),
(519, 'bookly_cloud_account_products', '', 'yes'),
(520, 'bookly_cloud_auto_recharge_end_at', '', 'yes'),
(521, 'bookly_cloud_auto_recharge_end_at_ts', '0', 'yes'),
(522, 'bookly_cloud_auto_recharge_gateway', '', 'yes'),
(523, 'bookly_cloud_badge_consider_sms', '1', 'yes'),
(524, 'bookly_cloud_cron_api_key', '', 'yes'),
(525, 'bookly_cloud_notify_low_balance', '1', 'yes'),
(526, 'bookly_cloud_promotions', 'a:1:{s:12:\"registration\";a:3:{s:2:\"id\";i:1;s:6:\"amount\";i:5;s:5:\"texts\";a:3:{s:4:\"info\";s:279:\"Зарегистрируйте учётную запись <b>Bookly Cloud</b> и получите <b>Приветственный Бонус в размере $5</b>, чтобы легко начать пользоваться функцией <b>SMS Уведомлений</b>!\";s:4:\"form\";s:95:\"После регистрации Вы получите <b>бонус в размере $5</b>.\";s:6:\"button\";s:0:\"\";}}}', 'yes'),
(527, 'bookly_cloud_renew_auto_recharge_notice_hide_until', '-1', 'yes'),
(528, 'bookly_cloud_square_addition', '0', 'yes'),
(529, 'bookly_cloud_square_api_access_token', '', 'yes'),
(530, 'bookly_cloud_square_api_application_id', '', 'yes'),
(531, 'bookly_cloud_square_api_location_id', '', 'yes'),
(532, 'bookly_cloud_square_enabled', '0', 'yes'),
(533, 'bookly_cloud_square_increase', '0', 'yes'),
(534, 'bookly_cloud_square_sandbox', '0', 'yes'),
(535, 'bookly_cloud_square_timeout', '0', 'yes'),
(536, 'bookly_cloud_stripe_addition', '0', 'yes'),
(537, 'bookly_cloud_stripe_custom_metadata', '0', 'yes'),
(538, 'bookly_cloud_stripe_enabled', '0', 'yes'),
(539, 'bookly_cloud_stripe_increase', '0', 'yes'),
(540, 'bookly_cloud_stripe_metadata', 'a:0:{}', 'yes'),
(541, 'bookly_cloud_stripe_timeout', '0', 'yes'),
(542, 'bookly_cloud_token', '', 'yes'),
(543, 'bookly_cloud_zapier_api_key', '', 'yes'),
(544, 'bookly_bh_monday_start', '08:00:00', 'yes'),
(545, 'bookly_bh_monday_end', '18:00:00', 'yes'),
(546, 'bookly_bh_tuesday_start', '08:00:00', 'yes'),
(547, 'bookly_bh_tuesday_end', '18:00:00', 'yes'),
(548, 'bookly_bh_wednesday_start', '08:00:00', 'yes'),
(549, 'bookly_bh_wednesday_end', '18:00:00', 'yes'),
(550, 'bookly_bh_thursday_end', '18:00:00', 'yes'),
(551, 'bookly_bh_thursday_start', '08:00:00', 'yes'),
(552, 'bookly_bh_friday_start', '08:00:00', 'yes'),
(553, 'bookly_bh_friday_end', '18:00:00', 'yes'),
(554, 'bookly_bh_saturday_start', '', 'yes'),
(555, 'bookly_bh_saturday_end', '', 'yes'),
(556, 'bookly_bh_sunday_start', '', 'yes'),
(557, 'bookly_bh_sunday_end', '', 'yes'),
(558, 'bookly_pmt_currency', 'USD', 'yes'),
(559, 'bookly_pmt_price_format', '{symbol}{sign}{price|2}', 'yes'),
(560, 'bookly_pmt_order', '', 'yes'),
(561, 'bookly_pmt_local', '1', 'yes'),
(562, 'bookly_ntf_processing_interval', '2', 'yes'),
(563, 'bookly_сa_count', '0', 'yes'),
(564, 'bookly_logs_enabled', '0', 'yes'),
(565, 'bookly_appointment_status_pending_color', '#1e73be', 'yes'),
(566, 'bookly_appointment_status_approved_color', '#81d742', 'yes'),
(567, 'bookly_appointment_status_cancelled_color', '#eeee22', 'yes'),
(568, 'bookly_appointment_status_rejected_color', '#dd3333', 'yes'),
(569, 'bookly_appointment_status_mixed_color', '#8224e3', 'yes'),
(570, 'bookly_appointment_default_status', 'approved', 'yes'),
(571, 'bookly_appointment_cancel_action', 'cancel', 'yes'),
(572, 'bookly_show_wpml_resave_required_notice', '0', 'yes'),
(573, 'bookly_email_gateway', 'wp', 'yes'),
(574, 'bookly_smtp_host', '', 'yes'),
(575, 'bookly_smtp_port', '', 'yes'),
(576, 'bookly_smtp_user', '', 'yes'),
(577, 'bookly_smtp_password', '', 'yes'),
(578, 'bookly_smtp_secure', 'none', 'yes'),
(579, 'bookly_cloud_products', 'a:8:{i:0;a:7:{s:2:\"id\";s:3:\"sms\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:41:\"https://i.bookly.info/cloud/sms_96x96.png\";s:7:\"version\";s:4:\"18.6\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:26:\"SMS Уведомления\";s:5:\"price\";s:53:\"Оплата по мере использования\";s:11:\"description\";s:821:\"<p>С помощью сервиса <b>SMS Уведомлений</b> вы сможете информировать своих клиентов и сотрудников о бронированиях, сократите количество неявившихся клиентов и незабронированных интервалов. Сервис предоставляет множество кодов, которые вы можете использовать для <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212411309\" target=\"_blank\">персонализации</a> ваших текстовых сообщений.</p><p>Пополните свой баланс одной из стандартных сумм и больше не упускайте ни одной записи.</p>\";s:9:\"action-on\";s:12:\"Начать\";s:10:\"action-off\";s:18:\"Отключить\";s:20:\"action-revert-cancel\";s:46:\"Я хочу оставить свой план\";s:11:\"info-button\";s:22:\"Стоимость SMS\";s:10:\"info-title\";s:22:\"Стоимость SMS\";}}i:1;a:7:{s:2:\"id\";s:6:\"stripe\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/stripe_96x96.png\";s:7:\"version\";s:4:\"18.6\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:40:\"Платёжная система Stripe\";s:5:\"price\";s:90:\"<small>Комиссия</small> 0.9% <small>за каждую транзакцию</small>\";s:11:\"description\";s:535:\"<p>Активировав <b>Stripe</b>, Вы сможете интегрировать платёжную систему <a href=\"https://stripe.com/\" target=\"_blank\">Stripe</a> в форму бронирования Bookly для обработки онлайн-платежей.</p><p>Нажмите на кнопку <b>Начать</b>, чтобы подключить Bookly к Вашей учётной записи Stripe и позволить клиентам мгновенно оплачивать ваши услуги.</p>\";s:9:\"action-on\";s:12:\"Начать\";s:10:\"action-off\";s:18:\"Отключить\";s:20:\"action-revert-cancel\";s:46:\"Я хочу оставить свой план\";s:11:\"info-button\";s:18:\"Подробнее\";s:10:\"info-title\";s:18:\"Настройка\";}}i:2;a:8:{s:2:\"id\";s:6:\"zapier\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/zapier-96x96.png\";s:7:\"version\";s:4:\"18.7\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:6:\"Zapier\";s:5:\"price\";s:32:\"Ваш план подписки\";s:11:\"description\";s:1171:\"<p><b><a href=\"https://zapier.com/\" target=\"_blank\">Zapier</a></b> позволяет автоматически запускать действия в ваших любимых облачных приложениях при определённых событиях в Bookly: когда создаются или обновляются бронирования, и при добавлении новых клиентов.</p>\n<p>Вы можете бесплатно попробовать <b>интеграцию с Zapier</b> в течение 7 дней, чтобы больше узнать о возможностях и преимуществах сервиса. По истечении пробного периода с вас будет взиматься плата согласно условиям выбранного тарифного плана.</p>\n<p>Выберите план подписки, нажмите на кнопку <b>7 дней бесплатно</b> или <b>Начать</b> чтобы настроить соединение между Bookly и Zapier и автоматизировать ваши рабочие процессы.</p>\";s:9:\"action-on\";s:29:\"7 дней бесплатно\";s:10:\"action-off\";s:33:\"Отменить подписку\";s:20:\"action-revert-cancel\";s:35:\"Сохранить подписку\";s:11:\"info-button\";s:18:\"Подробнее\";s:10:\"info-title\";s:30:\"Интеграция с Zapier\";}s:6:\"prices\";a:6:{i:0;a:3:{s:2:\"id\";s:1:\"1\";s:7:\"caption\";s:99:\"$24<sup>.99</sup> в месяц<br/><small class=\"text-muted\">200 Действий /мес.</small>\";s:4:\"tags\";a:0:{}}i:1;a:3:{s:2:\"id\";s:1:\"2\";s:7:\"caption\";s:99:\"$59<sup>.99</sup> в месяц<br/><small class=\"text-muted\">500 Действий /мес.</small>\";s:4:\"tags\";a:1:{i:0;s:10:\"best_offer\";}}i:2;a:3:{s:2:\"id\";s:1:\"3\";s:7:\"caption\";s:102:\"$124<sup>.99</sup> в месяц<br/><small class=\"text-muted\">1 100 Действий /мес.</small>\";s:4:\"tags\";a:0:{}}i:3;a:3:{s:2:\"id\";s:1:\"4\";s:7:\"caption\";s:102:\"$249<sup>.99</sup> в месяц<br/><small class=\"text-muted\">2 300 Действий /мес.</small>\";s:4:\"tags\";a:0:{}}i:4;a:3:{s:2:\"id\";s:1:\"5\";s:7:\"caption\";s:103:\"$999<sup>.99</sup> в месяц<br/><small class=\"text-muted\">12 000 Действий /мес.</small>\";s:4:\"tags\";a:0:{}}i:5;a:3:{s:2:\"id\";s:1:\"6\";s:7:\"caption\";s:105:\"$1,499<sup>.99</sup> в месяц<br/><small class=\"text-muted\">20 000 Действий /мес.</small>\";s:4:\"tags\";a:0:{}}}}i:3;a:8:{s:2:\"id\";s:4:\"cron\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:42:\"https://i.bookly.info/cloud/cron_96x96.png\";s:7:\"version\";s:4:\"20.9\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:0;s:5:\"texts\";a:8:{s:5:\"title\";s:10:\"Cloud Cron\";s:5:\"price\";s:16:\"$11.99 в год\";s:11:\"description\";s:635:\"<p>Активировав <b>Cloud Cron</b>, вы можете быть уверены, что Bookly выполнит все ваши запланированные действия (email и SMS уведомления, SMS-рассылки, автоматическое изменение статуса встречи) без каких-либо дополнительных настроек.</p>\n\n<p>Чтобы активировать Cloud Cron, нажмите на кнопку <b>7 дней бесплатно</b> или <b>Начать</b> и расширьте свои возможности в планировании.</p>\";s:9:\"action-on\";s:29:\"7 дней бесплатно\";s:10:\"action-off\";s:33:\"Отменить подписку\";s:20:\"action-revert-cancel\";s:35:\"Сохранить подписку\";s:11:\"info-button\";s:0:\"\";s:10:\"info-title\";s:0:\"\";}s:6:\"prices\";a:1:{i:0;a:3:{s:2:\"id\";s:1:\"8\";s:7:\"caption\";s:32:\"$11<sup>.99</sup> в год<br/>\";s:4:\"tags\";a:0:{}}}}i:4;a:7:{s:2:\"id\";s:5:\"voice\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:43:\"https://i.bookly.info/cloud/voice_96x96.png\";s:7:\"version\";s:4:\"21.3\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:41:\"Голосовые Уведомления\";s:5:\"price\";s:53:\"Оплата по мере использования\";s:11:\"description\";s:424:\"С помощью <b>Голосовых Уведомлений</b> вы можете более эффективно информировать своих клиентов о предстоящих записях. Ваши клиенты будут получать автоматические звонки с текстом, который вы можете настроить для различных сценариев.\";s:9:\"action-on\";s:12:\"Начать\";s:10:\"action-off\";s:18:\"Отключить\";s:20:\"action-revert-cancel\";s:46:\"Я хочу оставить свой план\";s:11:\"info-button\";s:18:\"Стоимость\";s:10:\"info-title\";s:41:\"Голосовые уведомления\";}}i:5;a:8:{s:2:\"id\";s:6:\"square\";s:12:\"pro_required\";b:1;s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/square_96x96.jpg\";s:7:\"version\";s:4:\"21.3\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:40:\"Платёжная система Square\";s:5:\"price\";s:16:\"$29.99 в год\";s:11:\"description\";s:546:\"<p>Активировав <b>Square Payments</b>, Вы сможете интегрировать платёжную систему <a href=\"https://squareup.com/\" target=\"_blank\">Square</a> в форму бронирования Bookly для обработки онлайн-платежей.</p><p>Нажмите на кнопку <b>7 дней бесплатно</b> или <b>Начать</b>, чтобы включить Square payments и позволить клиентам мгновенно оплачивать ваши услуги.</p>\";s:9:\"action-on\";s:29:\"7 дней бесплатно\";s:10:\"action-off\";s:33:\"Отменить подписку\";s:20:\"action-revert-cancel\";s:35:\"Сохранить подписку\";s:11:\"info-button\";s:18:\"Подробнее\";s:10:\"info-title\";s:40:\"Платёжная система Square\";}s:6:\"prices\";a:1:{i:0;a:3:{s:2:\"id\";s:1:\"9\";s:7:\"caption\";s:32:\"$29<sup>.99</sup> в год<br/>\";s:4:\"tags\";a:0:{}}}}i:6;a:8:{s:2:\"id\";s:4:\"gift\";s:12:\"pro_required\";b:1;s:8:\"icon_url\";s:42:\"https://i.bookly.info/cloud/gift_96x96.png\";s:7:\"version\";s:4:\"21.4\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:31:\"Подарочные Карты\";s:5:\"price\";s:16:\"$29.99 в год\";s:11:\"description\";s:559:\"<p>Создавайте подарочные карты с предустановленным депозитом, который ваши клиенты смогут использовать в качестве метода оплаты во время онлайн-бронирования.</p><p>Чтобы активировать функцию Подарочные Карты, нажмите на кнопку <b>7 дней бесплатно</b> или <b>Начать</b> и предлагайте ваучеры клиентам через Bookly.</p>\";s:9:\"action-on\";s:29:\"7 дней бесплатно\";s:10:\"action-off\";s:33:\"Отменить подписку\";s:20:\"action-revert-cancel\";s:35:\"Сохранить подписку\";s:11:\"info-button\";s:18:\"Подробнее\";s:10:\"info-title\";s:31:\"Подарочные Карты\";}s:6:\"prices\";a:1:{i:0;a:3:{s:2:\"id\";s:2:\"10\";s:7:\"caption\";s:32:\"$29<sup>.99</sup> в год<br/>\";s:4:\"tags\";a:0:{}}}}i:7;a:8:{s:2:\"id\";s:8:\"whatsapp\";s:12:\"pro_required\";b:0;s:8:\"icon_url\";s:46:\"https://i.bookly.info/cloud/whatsapp_96x96.png\";s:7:\"version\";s:4:\"21.5\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:31:\"WhatsApp Уведомления\";s:5:\"price\";s:32:\"Ваш план подписки\";s:11:\"description\";s:1192:\"<p>Информируйте клиентов и сотрудников о деталях бронирования с помощью мгновенных <b>WhatsApp сообщений</b>. Благодаря функции WhatsApp, интегрированной в Bookly, вы можете отправлять настраиваемые уведомления и напоминания для различных сценариев.</p>\n\n<p>Чтобы использовать эту интеграцию, у вас <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/10053650125202\" target=\"_blank\">должен быть</a> аккаунт разработчика Facebook. Мы рекомендуем вам сначала зарегистрироваться и настроить учетную запись Meta Business. Затем выберите план подписки, нажмите на кнопку <b>7 дней бесплатно</b> или <b>Начать</b>, чтобы активировать функцию WhatsApp Уведомления и постоянно поддерживать связь с клиентами и сотрудниками.</p>\";s:9:\"action-on\";s:29:\"7 дней бесплатно\";s:10:\"action-off\";s:33:\"Отменить подписку\";s:20:\"action-revert-cancel\";s:35:\"Сохранить подписку\";s:11:\"info-button\";s:18:\"Подробнее\";s:10:\"info-title\";s:31:\"WhatsApp Уведомления\";}s:6:\"prices\";a:6:{i:0;a:3:{s:2:\"id\";s:2:\"11\";s:7:\"caption\";s:102:\"$9<sup>.99</sup> в месяц<br/><small class=\"text-muted\">1-100 Сообщений /мес.</small>\";s:4:\"tags\";a:0:{}}i:1;a:3:{s:2:\"id\";s:2:\"16\";s:7:\"caption\";s:105:\"$17<sup>.99</sup> в месяц<br/><small class=\"text-muted\">100-200 Сообщений /мес.</small>\";s:4:\"tags\";a:1:{i:0;s:10:\"best_offer\";}}i:2;a:3:{s:2:\"id\";s:2:\"17\";s:7:\"caption\";s:105:\"$45<sup>.99</sup> в месяц<br/><small class=\"text-muted\">200-500 Сообщений /мес.</small>\";s:4:\"tags\";a:0:{}}i:3;a:3:{s:2:\"id\";s:2:\"18\";s:7:\"caption\";s:106:\"$89<sup>.99</sup> в месяц<br/><small class=\"text-muted\">500-1000 Сообщений /мес.</small>\";s:4:\"tags\";a:0:{}}i:4;a:3:{s:2:\"id\";s:2:\"19\";s:7:\"caption\";s:108:\"$177<sup>.99</sup> в месяц<br/><small class=\"text-muted\">1000-2000 Сообщений /мес.</small>\";s:4:\"tags\";a:0:{}}i:5;a:3:{s:2:\"id\";s:2:\"20\";s:7:\"caption\";s:106:\"$449<sup>.99</sup> в месяц<br/><small class=\"text-muted\"> > 2000 Сообщений /мес.</small>\";s:4:\"tags\";a:0:{}}}}}', 'yes'),
(583, 'installed_appointment-hour-booking', '1687465077', 'yes'),
(584, 'cp_cpappb_last_verified', '2023-06-22 20:27:28', 'yes'),
(585, '_transient_codepeople_promote_banner_appointment-hour-booking', '1687465078', 'yes'),
(592, 'AHB_ONE_TIME_UPDATE', '1', 'yes'),
(659, 'wp_calendar_block_has_published_posts', '', 'yes'),
(791, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(854, 'secret_key', ':yB93aAH^Y_TS>YjOfR4yM5m1];H`2$8*^#u:5p8au[ngW@H=:?03-m>h-t>Q@|3', 'no'),
(865, 'wpcf7_telegram_tkn', '5952497191:AAG3JUJDL_EEN760DFIiMnx-l9B9jmhv4lQ', 'no'),
(866, 'wpcf7_telegram_chats', 'a:1:{i:670224174;a:5:{s:2:\"id\";i:670224174;s:10:\"first_name\";s:7:\"Lokusok\";s:4:\"type\";s:7:\"private\";s:4:\"date\";i:1687861741;s:6:\"status\";s:6:\"active\";}}', 'no'),
(867, 'wpcf7_telegram_last_update_id', '977840261', 'yes'),
(888, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:5:\"20.10\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(889, 'wpseo', 'a:102:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";s:5:\"false\";s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:1;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:23:\"home_url_option_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:5:\"20.10\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:0;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";s:10:\"1687882014\";s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:0;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:28:\"https://dmidrok-agency.store\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:3:{s:14:\"services_types\";s:14:\"services_types\";s:15:\"employees_types\";s:15:\"employees_types\";s:13:\"reviews_types\";s:13:\"reviews_types\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:3:{i:0;s:18:\"siteRepresentation\";i:1;s:14:\"socialProfiles\";i:2;s:19:\"personalPreferences\";}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:0;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";s:10:\"1687882016\";s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:9:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:8:\"services\";i:4;s:9:\"employees\";i:5;s:15:\"portfolio_works\";i:6;s:9:\"documents\";i:7;s:7:\"reviews\";i:8;s:9:\"questions\";}s:28:\"last_known_public_taxonomies\";a:6:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:14:\"services_types\";i:4;s:15:\"employees_types\";i:5;s:13:\"reviews_types\";}s:23:\"last_known_no_unindexed\";a:6:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1688835560;s:27:\"wpseo_total_unindexed_posts\";i:1688748999;s:27:\"wpseo_total_unindexed_terms\";i:1688748999;s:31:\"wpseo_unindexed_post_link_count\";i:1688833447;s:31:\"wpseo_unindexed_term_link_count\";i:1688833447;s:35:\"wpseo_total_unindexed_general_items\";i:1688890525;}}', 'yes'),
(890, 'wpseo_titles', 'a:203:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%%, Автор в %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:64:\"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:57:\"Страница не найдена %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:84:\"Сообщение %%POSTLINK%% появились сначала на %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:54:\"Ошибка 404: страница не найдена\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:19:\"Архивы для\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:31:\"Главная страница\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Вы искали\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:35:\"Mioka | Студия красоты\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:67:\"https://dmidrok-agency.store/wp-content/uploads/2023/06/og-logo.jpg\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";i:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:0;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:14:\"title-services\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-services\";s:0:\"\";s:16:\"noindex-services\";b:0;s:27:\"display-metabox-pt-services\";b:1;s:27:\"post_types-services-maintax\";i:0;s:25:\"schema-page-type-services\";s:7:\"WebPage\";s:28:\"schema-article-type-services\";s:4:\"None\";s:21:\"social-title-services\";s:9:\"%%title%%\";s:27:\"social-description-services\";s:0:\"\";s:25:\"social-image-url-services\";s:0:\"\";s:24:\"social-image-id-services\";i:0;s:15:\"title-employees\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:18:\"metadesc-employees\";s:0:\"\";s:17:\"noindex-employees\";b:0;s:28:\"display-metabox-pt-employees\";b:1;s:28:\"post_types-employees-maintax\";i:0;s:26:\"schema-page-type-employees\";s:7:\"WebPage\";s:29:\"schema-article-type-employees\";s:4:\"None\";s:22:\"social-title-employees\";s:9:\"%%title%%\";s:28:\"social-description-employees\";s:0:\"\";s:26:\"social-image-url-employees\";s:0:\"\";s:25:\"social-image-id-employees\";i:0;s:21:\"title-portfolio_works\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-portfolio_works\";s:0:\"\";s:23:\"noindex-portfolio_works\";b:0;s:34:\"display-metabox-pt-portfolio_works\";b:1;s:34:\"post_types-portfolio_works-maintax\";i:0;s:32:\"schema-page-type-portfolio_works\";s:7:\"WebPage\";s:35:\"schema-article-type-portfolio_works\";s:4:\"None\";s:28:\"social-title-portfolio_works\";s:9:\"%%title%%\";s:34:\"social-description-portfolio_works\";s:0:\"\";s:32:\"social-image-url-portfolio_works\";s:0:\"\";s:31:\"social-image-id-portfolio_works\";i:0;s:15:\"title-documents\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:18:\"metadesc-documents\";s:0:\"\";s:17:\"noindex-documents\";b:0;s:28:\"display-metabox-pt-documents\";b:1;s:28:\"post_types-documents-maintax\";i:0;s:26:\"schema-page-type-documents\";s:7:\"WebPage\";s:29:\"schema-article-type-documents\";s:4:\"None\";s:22:\"social-title-documents\";s:9:\"%%title%%\";s:28:\"social-description-documents\";s:0:\"\";s:26:\"social-image-url-documents\";s:0:\"\";s:25:\"social-image-id-documents\";i:0;s:13:\"title-reviews\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-reviews\";s:0:\"\";s:15:\"noindex-reviews\";b:0;s:26:\"display-metabox-pt-reviews\";b:1;s:26:\"post_types-reviews-maintax\";i:0;s:24:\"schema-page-type-reviews\";s:7:\"WebPage\";s:27:\"schema-article-type-reviews\";s:4:\"None\";s:20:\"social-title-reviews\";s:9:\"%%title%%\";s:26:\"social-description-reviews\";s:0:\"\";s:24:\"social-image-url-reviews\";s:0:\"\";s:23:\"social-image-id-reviews\";i:0;s:15:\"title-questions\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:18:\"metadesc-questions\";s:0:\"\";s:17:\"noindex-questions\";b:0;s:28:\"display-metabox-pt-questions\";b:1;s:28:\"post_types-questions-maintax\";i:0;s:26:\"schema-page-type-questions\";s:7:\"WebPage\";s:29:\"schema-article-type-questions\";s:4:\"None\";s:22:\"social-title-questions\";s:9:\"%%title%%\";s:28:\"social-description-questions\";s:0:\"\";s:26:\"social-image-url-questions\";s:0:\"\";s:25:\"social-image-id-questions\";i:0;s:18:\"title-tax-category\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:27:\"Архивы %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:27:\"Архивы %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:27:\"Архивы %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:24:\"title-tax-services_types\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-tax-services_types\";s:0:\"\";s:34:\"display-metabox-tax-services_types\";b:1;s:26:\"noindex-tax-services_types\";b:0;s:31:\"social-title-tax-services_types\";s:27:\"Архивы %%term_title%%\";s:37:\"social-description-tax-services_types\";s:0:\"\";s:35:\"social-image-url-tax-services_types\";s:0:\"\";s:34:\"social-image-id-tax-services_types\";i:0;s:32:\"taxonomy-services_types-ptparent\";i:0;s:25:\"title-tax-employees_types\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:28:\"metadesc-tax-employees_types\";s:0:\"\";s:35:\"display-metabox-tax-employees_types\";b:1;s:27:\"noindex-tax-employees_types\";b:0;s:32:\"social-title-tax-employees_types\";s:27:\"Архивы %%term_title%%\";s:38:\"social-description-tax-employees_types\";s:0:\"\";s:36:\"social-image-url-tax-employees_types\";s:0:\"\";s:35:\"social-image-id-tax-employees_types\";i:0;s:33:\"taxonomy-employees_types-ptparent\";i:0;s:23:\"title-tax-reviews_types\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-tax-reviews_types\";s:0:\"\";s:33:\"display-metabox-tax-reviews_types\";b:1;s:25:\"noindex-tax-reviews_types\";b:0;s:30:\"social-title-tax-reviews_types\";s:27:\"Архивы %%term_title%%\";s:36:\"social-description-tax-reviews_types\";s:0:\"\";s:34:\"social-image-url-tax-reviews_types\";s:0:\"\";s:33:\"social-image-id-tax-reviews_types\";i:0;s:31:\"taxonomy-reviews_types-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:316;s:17:\"company_logo_meta\";a:10:{s:5:\"width\";i:1280;s:6:\"height\";i:906;s:8:\"filesize\";i:51973;s:3:\"url\";s:67:\"https://dmidrok-agency.store/wp-content/uploads/2023/06/og-logo.jpg\";s:4:\"path\";s:88:\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/og-logo.jpg\";s:4:\"size\";s:4:\"full\";s:2:\"id\";i:316;s:3:\"alt\";s:0:\"\";s:6:\"pixels\";i:1159680;s:4:\"type\";s:10:\"image/jpeg\";}s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(891, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:2:{i:0;s:30:\"https://vk.com/public220943642\";i:1;s:26:\"https://vk.com/id806147588\";}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(1167, 'wpseo_taxonomy_meta', 'a:2:{s:14:\"services_types\";a:1:{i:13;a:3:{s:13:\"wpseo_focuskw\";s:10:\"Брови\";s:13:\"wpseo_linkdex\";s:2:\"28\";s:19:\"wpseo_content_score\";s:1:\"0\";}}s:13:\"reviews_types\";a:2:{i:19;a:3:{s:13:\"wpseo_focuskw\";s:31:\"Текстовые отзывы\";s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}i:20;a:3:{s:13:\"wpseo_focuskw\";s:20:\"Фотоотзывы\";s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:1:\"0\";}}}', 'yes'),
(1168, 'services_types_children', 'a:0:{}', 'yes'),
(1207, 'employees_types_children', 'a:0:{}', 'yes'),
(1322, 'reviews_types_children', 'a:0:{}', 'yes'),
(1332, 'category_children', 'a:0:{}', 'yes'),
(1914, 'wbcr_clearfy_deactive_preinstall_components', 'a:2:{i:0;s:14:\"comments_tools\";i:1;s:15:\"updates_manager\";}', 'yes'),
(1915, 'wbcr_clearfy_deactivated_unused_modules', '1', 'yes'),
(1917, 'wbcr_clearfy_plugin_activated', '1688664106', 'yes'),
(1918, 'wbcr_clearfy_plugin_version', '2.1.9', 'yes'),
(1920, 'wbcr_clearfy_robots_txt_text_cache', '# This space intentionally left blank\n# If you want to learn about why our robots.txt looks like this, read this post: https://yoa.st/robots-txt\nUser-Agent: *\nHost: https://dmidrok-agency.store\nSitemap: https://dmidrok-agency.store/sitemap.xml\n', 'yes'),
(1922, 'wbcr_clearfy_last_check_update_time', '1688664107', 'yes'),
(1923, 'wbcr_clearfy_last_check_update', 'O:8:\"stdClass\":4:{s:4:\"slug\";s:7:\"clearfy\";s:6:\"plugin\";s:19:\"clearfy/clearfy.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:7:\"package\";s:100:\"https://github.com/Creative-Motion-Development/wp-plugin-clearfy/releases/download/1.8.5/clearfy.zip\";}', 'yes'),
(1928, 'wbcr_clearfy_js_optimize', '1', 'yes'),
(1929, 'wbcr_clearfy_js_aggregate', '1', 'yes'),
(1930, 'wbcr_clearfy_css_optimize', '1', 'yes'),
(1931, 'wbcr_clearfy_html_optimize', '1', 'yes'),
(2202, 'site_logo', '449', 'yes'),
(2659, '_site_transient_timeout_theme_roots', '1690803393', 'no'),
(2660, '_site_transient_theme_roots', 'a:1:{s:5:\"mioka\";s:7:\"/themes\";}', 'no'),
(2661, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1690801596;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(2662, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1690801597;s:7:\"checked\";a:1:{s:5:\"mioka\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(2663, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1690801597;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:29:\"cf7-telegram/cf7-telegram.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/cf7-telegram\";s:4:\"slug\";s:12:\"cf7-telegram\";s:6:\"plugin\";s:29:\"cf7-telegram/cf7-telegram.php\";s:11:\"new_version\";s:3:\"0.8\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/cf7-telegram/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/cf7-telegram.0.8.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:56:\"https://s.w.org/plugins/geopattern-icon/cf7-telegram.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"20.12\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.1\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:8:\"9999.1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:8:\"9999.7.7\";s:29:\"cf7-telegram/cf7-telegram.php\";s:6:\"9999.8\";s:24:\"wordpress-seo/wp-seo.php\";s:7:\"9999.10\";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--
-- Создание: Июл 05 2023 г., 19:04
-- Последнее обновление: Июл 31 2023 г., 11:06
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(21, 10, '_edit_lock', '1688835424:1'),
(28, 12, '_edit_last', '1'),
(29, 12, '_edit_lock', '1687630851:1'),
(30, 10, '_edit_last', '1'),
(31, 10, 'map_latitude', '55.375854'),
(32, 10, '_map_latitude', 'field_6491b6460ea38'),
(33, 10, 'longitude_map', '39.051005'),
(34, 10, '_longitude_map', 'field_6491b6a40ea39'),
(35, 11, 'map_latitude', '55.375854'),
(36, 11, '_map_latitude', 'field_6491b6460ea38'),
(37, 11, 'longitude_map', '39.051005'),
(38, 11, '_longitude_map', 'field_6491b6a40ea39'),
(39, 10, 'map_longitude', '39.051005'),
(40, 10, '_map_longitude', 'field_6491b6a40ea39'),
(41, 11, 'map_longitude', '39.051005'),
(42, 11, '_map_longitude', 'field_6491b6a40ea39'),
(43, 10, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(44, 10, '_balloon_text', 'field_6491b8a592556'),
(45, 16, 'map_latitude', '55.375854'),
(46, 16, '_map_latitude', 'field_6491b6460ea38'),
(47, 16, 'longitude_map', '39.051005'),
(48, 16, '_longitude_map', 'field_6491b6a40ea39'),
(49, 16, 'map_longitude', '39.051005'),
(50, 16, '_map_longitude', 'field_6491b6a40ea39'),
(51, 16, 'balloon_text', 'Мы тута ;)'),
(52, 16, '_balloon_text', 'field_6491b8a592556'),
(53, 17, 'map_latitude', '55.375854'),
(54, 17, '_map_latitude', 'field_6491b6460ea38'),
(55, 17, 'longitude_map', '39.051005'),
(56, 17, '_longitude_map', 'field_6491b6a40ea39'),
(57, 17, 'map_longitude', '39.051005'),
(58, 17, '_map_longitude', 'field_6491b6a40ea39'),
(59, 17, 'balloon_text', 'Мы тута ;)'),
(60, 17, '_balloon_text', 'field_6491b8a592556'),
(61, 18, 'map_latitude', '55.375854'),
(62, 18, '_map_latitude', 'field_6491b6460ea38'),
(63, 18, 'longitude_map', '39.051005'),
(64, 18, '_longitude_map', 'field_6491b6a40ea39'),
(65, 18, 'map_longitude', '39.051005'),
(66, 18, '_map_longitude', 'field_6491b6a40ea39'),
(67, 18, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(68, 18, '_balloon_text', 'field_6491b8a592556'),
(69, 10, 'hint_text', 'Мы находимся именно здесь!'),
(70, 10, '_hint_text', 'field_6491b9a622e47'),
(71, 20, 'map_latitude', '55.375854'),
(72, 20, '_map_latitude', 'field_6491b6460ea38'),
(73, 20, 'longitude_map', '39.051005'),
(74, 20, '_longitude_map', 'field_6491b6a40ea39'),
(75, 20, 'map_longitude', '39.051005'),
(76, 20, '_map_longitude', 'field_6491b6a40ea39'),
(77, 20, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(78, 20, '_balloon_text', 'field_6491b8a592556'),
(79, 20, 'hint_text', 'Мы находимся именно здесь!'),
(80, 20, '_hint_text', 'field_6491b9a622e47'),
(81, 21, '_form', '<label>\nВаше имя\n[text* username minlength:2 maxlength:15]\n</label>\n    \n<label>\nМоб. номер\n[tel* usertel]\n</label>\n\n[textarea* usermsg minlength:15 maxlength:250]\n[telegram]\n\n[submit \"Отправить\"]'),
(82, 21, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:41:\"Письмо с сайта [Вопрос]\";s:6:\"sender\";s:34:\"miokamailsite@dmidrok-agency.store\";s:9:\"recipient\";s:23:\"drobkov155099@gmail.com\";s:4:\"body\";s:228:\"<h1>Письмо с сайта</h1>\n\n<p><b>Имя пользователя:</b> [username]</p>\n<p><b>Телефон пользователя:</b> [usertel]</p>\n<p><b>Сообщение пользователя:</b> [usermsg]</p>\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(83, 21, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <wordpress@mioka.serverh>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(84, 21, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:46:\"Важно заполнить это поле.\";s:16:\"invalid_too_long\";s:90:\"В это поле вставлен слишком большой объем данных.\";s:17:\"invalid_too_short\";s:86:\"В это поле вставлен слишком малый объем данных.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:62:\"Загруженный файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:61:\"Введите дату в формате ГГГГ-ММ-ДД.\";s:14:\"date_too_early\";s:71:\"В это поле введена слишком ранняя дата.\";s:13:\"date_too_late\";s:73:\"В это поле введена слишком поздняя дата.\";s:14:\"invalid_number\";s:26:\"Введите число.\";s:16:\"number_too_small\";s:79:\"В это поле введено слишком маленькое число.\";s:16:\"number_too_large\";s:75:\"В это поле введено слишком большое число.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:60:\"Введите адрес электронной почты.\";s:11:\"invalid_url\";s:19:\"Введите URL.\";s:11:\"invalid_tel\";s:43:\"Введите номер телефона.\";}'),
(85, 21, '_additional_settings', ''),
(86, 21, '_locale', 'ru_RU'),
(128, 27, '_edit_last', '1'),
(129, 27, 'color', '#ea3535'),
(130, 27, 'myuser', ''),
(131, 27, 'all_users', ''),
(132, 27, 'dsn_target', ''),
(133, 27, 'sendmail', ''),
(134, 27, 'dsn_target_user', ''),
(135, 27, '_edit_lock', '1687377117:1'),
(136, 27, 'color_text', '#f9f9f9'),
(143, 30, '_edit_last', '1'),
(144, 30, '_edit_lock', '1687465869:1'),
(145, 30, 'oz_book_provides_services', 'all'),
(150, 31, 'oz_start_date_field_id', '24.06.2023'),
(151, 31, 'oz_personal_field_id', '30'),
(152, 31, 'oz_time_rot', '10:45'),
(153, 31, 'oz_clientPhone', '+79998887766'),
(154, 31, 'oz_clientEmail', 'test@mail.ru'),
(155, 31, 'oz_remList', '0'),
(156, 31, 'oz_uslug_set', '29'),
(157, 31, 'oz_uniqid', '0c395c83c062ad6ad9989f80e78f16294b7bba87'),
(158, 31, '_edit_lock', '1687462613:1'),
(159, 32, '_wp_attached_file', '2023/06/team-member-1.jpg'),
(160, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:511;s:4:\"file\";s:25:\"2023/06/team-member-1.jpg\";s:8:\"filesize\";i:80435;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"team-member-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14850;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"team-member-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5230;}s:9:\"thumb-neu\";a:5:{s:4:\"file\";s:25:\"team-member-1-300x382.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19987;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 36, '_wp_attached_file', '2023/06/review-photo-1.jpg'),
(183, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:168;s:6:\"height\";i:168;s:4:\"file\";s:26:\"2023/06/review-photo-1.jpg\";s:8:\"filesize\";i:39236;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"review-photo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7917;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 30, 'oz_specialnost', 'Работает сотрудником'),
(189, 30, 'oz_ind_timeslot', '0'),
(190, 30, 'oz_raspis', '[{\"day\":\"oz_mon\",\"start\":\"10:00\",\"end\":\"21:00\",\"id\":\"line-895336\",\"pId\":30},{\"day\":\"oz_tue\",\"start\":\"10:00\",\"end\":\"21:00\",\"id\":\"line-895336\",\"pId\":30},{\"day\":\"oz_wed\",\"start\":\"10:00\",\"end\":\"21:00\",\"id\":\"line-895336\",\"pId\":30},{\"day\":\"oz_thu\",\"start\":\"10:00\",\"end\":\"21:00\",\"id\":\"line-895336\",\"pId\":30},{\"day\":\"oz_fri\",\"start\":\"10:00\",\"end\":\"21:00\",\"id\":\"line-895336\",\"pId\":30},{\"day\":\"oz_sat\",\"start\":\"10:00\",\"end\":\"21:00\",\"id\":\"line-895336\",\"pId\":30},{\"day\":\"oz_sun\",\"start\":\"10:00\",\"end\":\"21:00\",\"id\":\"line-895336\",\"pId\":30}]'),
(191, 30, 'oz_clientsarray', '{\"0\":{\"start\":\"24.06.2023 10:45\",\"startISO\":\"2023-06-24T10:45:00+03:00\",\"end\":\"2023-06-24T11:30:00+03:00\",\"w_time\":45,\"buffer\":{\"0\":0,\"1\":0}}}'),
(195, 37, '_edit_last', '1'),
(196, 37, '_edit_lock', '1688663775:1'),
(197, 10, 'top_address_bold', ' г. Егорьевск123'),
(198, 10, '_top_address_bold', 'field_6496a30bbff2a'),
(199, 41, 'map_latitude', '55.375854'),
(200, 41, '_map_latitude', 'field_6491b6460ea38'),
(201, 41, 'longitude_map', '39.051005'),
(202, 41, '_longitude_map', 'field_6491b6a40ea39'),
(203, 41, 'map_longitude', '39.051005'),
(204, 41, '_map_longitude', 'field_6491b6a40ea39'),
(205, 41, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(206, 41, '_balloon_text', 'field_6491b8a592556'),
(207, 41, 'hint_text', 'Мы находимся именно здесь!'),
(208, 41, '_hint_text', 'field_6491b9a622e47'),
(209, 41, 'top_address_bold', ' г. Егорьевск123'),
(210, 41, '_top_address_bold', 'field_6496a30bbff2a'),
(211, 10, 'header_address_bold', ' г. Егорьевск'),
(212, 10, '_header_address_bold', 'field_6496a30bbff2a'),
(213, 42, 'map_latitude', '55.375854'),
(214, 42, '_map_latitude', 'field_6491b6460ea38'),
(215, 42, 'longitude_map', '39.051005'),
(216, 42, '_longitude_map', 'field_6491b6a40ea39'),
(217, 42, 'map_longitude', '39.051005'),
(218, 42, '_map_longitude', 'field_6491b6a40ea39'),
(219, 42, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(220, 42, '_balloon_text', 'field_6491b8a592556'),
(221, 42, 'hint_text', 'Мы находимся именно здесь!'),
(222, 42, '_hint_text', 'field_6491b9a622e47'),
(223, 42, 'top_address_bold', ' г. Егорьевск123'),
(224, 42, '_top_address_bold', 'field_6496a30bbff2a'),
(225, 42, 'header_address_bold', ' г. Егорьевск123'),
(226, 42, '_header_address_bold', 'field_6496a30bbff2a'),
(227, 43, 'map_latitude', '55.375854'),
(228, 43, '_map_latitude', 'field_6491b6460ea38'),
(229, 43, 'longitude_map', '39.051005'),
(230, 43, '_longitude_map', 'field_6491b6a40ea39'),
(231, 43, 'map_longitude', '39.051005'),
(232, 43, '_map_longitude', 'field_6491b6a40ea39'),
(233, 43, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(234, 43, '_balloon_text', 'field_6491b8a592556'),
(235, 43, 'hint_text', 'Мы находимся именно здесь!'),
(236, 43, '_hint_text', 'field_6491b9a622e47'),
(237, 43, 'top_address_bold', ' г. Егорьевск123'),
(238, 43, '_top_address_bold', 'field_6496a30bbff2a'),
(239, 43, 'header_address_bold', ' г. Егорьевск'),
(240, 43, '_header_address_bold', 'field_6496a30bbff2a'),
(241, 10, 'header_address_default', '5 мкр., д. 21'),
(242, 10, '_header_address_default', 'field_6496a4413413f'),
(243, 45, 'map_latitude', '55.375854'),
(244, 45, '_map_latitude', 'field_6491b6460ea38'),
(245, 45, 'longitude_map', '39.051005'),
(246, 45, '_longitude_map', 'field_6491b6a40ea39'),
(247, 45, 'map_longitude', '39.051005'),
(248, 45, '_map_longitude', 'field_6491b6a40ea39'),
(249, 45, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(250, 45, '_balloon_text', 'field_6491b8a592556'),
(251, 45, 'hint_text', 'Мы находимся именно здесь!'),
(252, 45, '_hint_text', 'field_6491b9a622e47'),
(253, 45, 'top_address_bold', ' г. Егорьевск123'),
(254, 45, '_top_address_bold', 'field_6496a30bbff2a'),
(255, 45, 'header_address_bold', ' г. Егорьевск'),
(256, 45, '_header_address_bold', 'field_6496a30bbff2a'),
(257, 45, 'header_address_default', '5 мкр., д. 21'),
(258, 45, '_header_address_default', 'field_6496a4413413f'),
(259, 46, 'map_latitude', '55.375854'),
(260, 46, '_map_latitude', 'field_6491b6460ea38'),
(261, 46, 'longitude_map', '39.051005'),
(262, 46, '_longitude_map', 'field_6491b6a40ea39'),
(263, 46, 'map_longitude', '39.051005'),
(264, 46, '_map_longitude', 'field_6491b6a40ea39'),
(265, 46, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(266, 46, '_balloon_text', 'field_6491b8a592556'),
(267, 46, 'hint_text', 'Мы находимся именно здесь!'),
(268, 46, '_hint_text', 'field_6491b9a622e47'),
(269, 46, 'top_address_bold', ' г. Егорьевск123'),
(270, 46, '_top_address_bold', 'field_6496a30bbff2a'),
(271, 46, 'header_address_bold', ' г. Егорьевск'),
(272, 46, '_header_address_bold', 'field_6496a30bbff2a'),
(273, 46, 'header_address_default', '5 мкр., д. 21'),
(274, 46, '_header_address_default', 'field_6496a4413413f'),
(275, 10, 'top_tel_bold', 'WhatsApp'),
(276, 10, '_top_tel_bold', 'field_6496a5e399f9d'),
(277, 10, 'tel_number', '+7 999 888 77 66'),
(278, 10, '_tel_number', 'field_6496a61199f9e'),
(279, 51, 'map_latitude', '55.375854'),
(280, 51, '_map_latitude', 'field_6491b6460ea38'),
(281, 51, 'longitude_map', '39.051005'),
(282, 51, '_longitude_map', 'field_6491b6a40ea39'),
(283, 51, 'map_longitude', '39.051005'),
(284, 51, '_map_longitude', 'field_6491b6a40ea39'),
(285, 51, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(286, 51, '_balloon_text', 'field_6491b8a592556'),
(287, 51, 'hint_text', 'Мы находимся именно здесь!'),
(288, 51, '_hint_text', 'field_6491b9a622e47'),
(289, 51, 'top_address_bold', ' г. Егорьевск123'),
(290, 51, '_top_address_bold', 'field_6496a30bbff2a'),
(291, 51, 'header_address_bold', ' г. Егорьевск'),
(292, 51, '_header_address_bold', 'field_6496a30bbff2a'),
(293, 51, 'header_address_default', '5 мкр., д. 21'),
(294, 51, '_header_address_default', 'field_6496a4413413f'),
(295, 51, 'top_tel_bold', 'WhatsApp'),
(296, 51, '_top_tel_bold', 'field_6496a5e399f9d'),
(297, 51, 'tel_number', '+7 999 888 77 66'),
(298, 51, '_tel_number', 'field_6496a61199f9e'),
(299, 53, '_edit_last', '1'),
(300, 53, '_edit_lock', '1687623186:1'),
(301, 10, 'hero_text_top_bold', 'Студия красоты'),
(302, 10, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(303, 56, 'map_latitude', '55.375854'),
(304, 56, '_map_latitude', 'field_6491b6460ea38'),
(305, 56, 'longitude_map', '39.051005'),
(306, 56, '_longitude_map', 'field_6491b6a40ea39'),
(307, 56, 'map_longitude', '39.051005'),
(308, 56, '_map_longitude', 'field_6491b6a40ea39'),
(309, 56, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(310, 56, '_balloon_text', 'field_6491b8a592556'),
(311, 56, 'hint_text', 'Мы находимся именно здесь!'),
(312, 56, '_hint_text', 'field_6491b9a622e47'),
(313, 56, 'top_address_bold', ' г. Егорьевск123'),
(314, 56, '_top_address_bold', 'field_6496a30bbff2a'),
(315, 56, 'header_address_bold', ' г. Егорьевск'),
(316, 56, '_header_address_bold', 'field_6496a30bbff2a'),
(317, 56, 'header_address_default', '5 мкр., д. 21'),
(318, 56, '_header_address_default', 'field_6496a4413413f'),
(319, 56, 'top_tel_bold', 'WhatsApp'),
(320, 56, '_top_tel_bold', 'field_6496a5e399f9d'),
(321, 56, 'tel_number', '+7 999 888 77 66'),
(322, 56, '_tel_number', 'field_6496a61199f9e'),
(323, 56, 'hero_text_top_bold', 'Студия красоты'),
(324, 56, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(325, 10, 'hero_text_top_default', 'В городе'),
(326, 10, '_hero_text_top_default', 'field_6496a83dc8b00'),
(327, 58, 'map_latitude', '55.375854'),
(328, 58, '_map_latitude', 'field_6491b6460ea38'),
(329, 58, 'longitude_map', '39.051005'),
(330, 58, '_longitude_map', 'field_6491b6a40ea39'),
(331, 58, 'map_longitude', '39.051005'),
(332, 58, '_map_longitude', 'field_6491b6a40ea39'),
(333, 58, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(334, 58, '_balloon_text', 'field_6491b8a592556'),
(335, 58, 'hint_text', 'Мы находимся именно здесь!'),
(336, 58, '_hint_text', 'field_6491b9a622e47'),
(337, 58, 'top_address_bold', ' г. Егорьевск123'),
(338, 58, '_top_address_bold', 'field_6496a30bbff2a'),
(339, 58, 'header_address_bold', ' г. Егорьевск'),
(340, 58, '_header_address_bold', 'field_6496a30bbff2a'),
(341, 58, 'header_address_default', '5 мкр., д. 21'),
(342, 58, '_header_address_default', 'field_6496a4413413f'),
(343, 58, 'top_tel_bold', 'WhatsApp'),
(344, 58, '_top_tel_bold', 'field_6496a5e399f9d'),
(345, 58, 'tel_number', '+7 999 888 77 66'),
(346, 58, '_tel_number', 'field_6496a61199f9e'),
(347, 58, 'hero_text_top_bold', 'Студия красоты'),
(348, 58, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(349, 58, 'hero_text_top_default', 'В городе'),
(350, 58, '_hero_text_top_default', 'field_6496a83dc8b00'),
(351, 10, 'hero_text_bottom_bold', 'Егорьевск'),
(352, 10, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(353, 61, 'map_latitude', '55.375854'),
(354, 61, '_map_latitude', 'field_6491b6460ea38'),
(355, 61, 'longitude_map', '39.051005'),
(356, 61, '_longitude_map', 'field_6491b6a40ea39'),
(357, 61, 'map_longitude', '39.051005'),
(358, 61, '_map_longitude', 'field_6491b6a40ea39'),
(359, 61, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(360, 61, '_balloon_text', 'field_6491b8a592556'),
(361, 61, 'hint_text', 'Мы находимся именно здесь!'),
(362, 61, '_hint_text', 'field_6491b9a622e47'),
(363, 61, 'top_address_bold', ' г. Егорьевск123'),
(364, 61, '_top_address_bold', 'field_6496a30bbff2a'),
(365, 61, 'header_address_bold', ' г. Егорьевск'),
(366, 61, '_header_address_bold', 'field_6496a30bbff2a'),
(367, 61, 'header_address_default', '5 мкр., д. 21'),
(368, 61, '_header_address_default', 'field_6496a4413413f'),
(369, 61, 'top_tel_bold', 'WhatsApp'),
(370, 61, '_top_tel_bold', 'field_6496a5e399f9d'),
(371, 61, 'tel_number', '+7 999 888 77 66'),
(372, 61, '_tel_number', 'field_6496a61199f9e'),
(373, 61, 'hero_text_top_bold', 'Студия красоты'),
(374, 61, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(375, 61, 'hero_text_top_default', 'В городе'),
(376, 61, '_hero_text_top_default', 'field_6496a83dc8b00'),
(377, 61, 'hero_text_bottom_bold', 'Егорьевск'),
(378, 61, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(379, 10, 'hero_action_btn_text', 'Услуги'),
(380, 10, '_hero_action_btn_text', 'field_6496a99d601cb'),
(381, 64, 'map_latitude', '55.375854'),
(382, 64, '_map_latitude', 'field_6491b6460ea38'),
(383, 64, 'longitude_map', '39.051005'),
(384, 64, '_longitude_map', 'field_6491b6a40ea39'),
(385, 64, 'map_longitude', '39.051005'),
(386, 64, '_map_longitude', 'field_6491b6a40ea39'),
(387, 64, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(388, 64, '_balloon_text', 'field_6491b8a592556'),
(389, 64, 'hint_text', 'Мы находимся именно здесь!'),
(390, 64, '_hint_text', 'field_6491b9a622e47'),
(391, 64, 'top_address_bold', ' г. Егорьевск123'),
(392, 64, '_top_address_bold', 'field_6496a30bbff2a'),
(393, 64, 'header_address_bold', ' г. Егорьевск'),
(394, 64, '_header_address_bold', 'field_6496a30bbff2a'),
(395, 64, 'header_address_default', '5 мкр., д. 21'),
(396, 64, '_header_address_default', 'field_6496a4413413f'),
(397, 64, 'top_tel_bold', 'WhatsApp'),
(398, 64, '_top_tel_bold', 'field_6496a5e399f9d'),
(399, 64, 'tel_number', '+7 999 888 77 66'),
(400, 64, '_tel_number', 'field_6496a61199f9e'),
(401, 64, 'hero_text_top_bold', 'Студия красоты'),
(402, 64, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(403, 64, 'hero_text_top_default', 'В городе'),
(404, 64, '_hero_text_top_default', 'field_6496a83dc8b00'),
(405, 64, 'hero_text_bottom_bold', 'Егорьевск'),
(406, 64, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(407, 64, 'hero_action_btn_text', 'К услугам'),
(408, 64, '_hero_action_btn_text', 'field_6496a99d601cb'),
(409, 65, 'map_latitude', '55.375854'),
(410, 65, '_map_latitude', 'field_6491b6460ea38'),
(411, 65, 'longitude_map', '39.051005'),
(412, 65, '_longitude_map', 'field_6491b6a40ea39'),
(413, 65, 'map_longitude', '39.051005'),
(414, 65, '_map_longitude', 'field_6491b6a40ea39'),
(415, 65, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(416, 65, '_balloon_text', 'field_6491b8a592556'),
(417, 65, 'hint_text', 'Мы находимся именно здесь!'),
(418, 65, '_hint_text', 'field_6491b9a622e47'),
(419, 65, 'top_address_bold', ' г. Егорьевск123'),
(420, 65, '_top_address_bold', 'field_6496a30bbff2a'),
(421, 65, 'header_address_bold', ' г. Егорьевск'),
(422, 65, '_header_address_bold', 'field_6496a30bbff2a'),
(423, 65, 'header_address_default', '5 мкр., д. 21'),
(424, 65, '_header_address_default', 'field_6496a4413413f'),
(425, 65, 'top_tel_bold', 'WhatsApp'),
(426, 65, '_top_tel_bold', 'field_6496a5e399f9d'),
(427, 65, 'tel_number', '+7 999 888 77 66'),
(428, 65, '_tel_number', 'field_6496a61199f9e'),
(429, 65, 'hero_text_top_bold', 'Студия красоты'),
(430, 65, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(431, 65, 'hero_text_top_default', 'В городе'),
(432, 65, '_hero_text_top_default', 'field_6496a83dc8b00'),
(433, 65, 'hero_text_bottom_bold', 'Егорьевск'),
(434, 65, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(435, 65, 'hero_action_btn_text', 'Услуги'),
(436, 65, '_hero_action_btn_text', 'field_6496a99d601cb'),
(437, 66, '_edit_last', '1'),
(438, 66, '_edit_lock', '1687623196:1'),
(439, 10, 'first_benefit_title', 'Гарантия качества'),
(440, 10, '_first_benefit_title', 'field_6496ab4b318e3'),
(441, 10, 'first_benefit_description', 'У нашей студии красоты высокая гарантия качества. У нас работают по истине специалисты своего дела, объединяющие в себе множество качеств и умений.'),
(442, 10, '_first_benefit_description', 'field_6496abed45766'),
(443, 10, 'second_benefit_title', 'Низкие цены'),
(444, 10, '_second_benefit_title', 'field_6496ab7d318e5'),
(445, 10, 'second_benefit_description', 'Несмотря на гарантию качества — у нас также и низкие цены. Уверены, каждому по карману любое преобразование в нашей студии.'),
(446, 10, '_second_benefit_description', 'field_6496ac1445767'),
(447, 10, 'third_benefit_title', 'Приятный сервис'),
(448, 10, '_third_benefit_title', 'field_6496ac5045769'),
(449, 10, 'third_benefit_description', 'Наши специалисты своего дела умеют находить подход к абсолютно каждому клиенту и его желаниям. Приятный сервис — абсолютно про нас.'),
(450, 10, '_third_benefit_description', 'field_6496ac6b4576a'),
(451, 77, 'map_latitude', '55.375854'),
(452, 77, '_map_latitude', 'field_6491b6460ea38'),
(453, 77, 'longitude_map', '39.051005'),
(454, 77, '_longitude_map', 'field_6491b6a40ea39'),
(455, 77, 'map_longitude', '39.051005'),
(456, 77, '_map_longitude', 'field_6491b6a40ea39'),
(457, 77, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(458, 77, '_balloon_text', 'field_6491b8a592556'),
(459, 77, 'hint_text', 'Мы находимся именно здесь!'),
(460, 77, '_hint_text', 'field_6491b9a622e47'),
(461, 77, 'top_address_bold', ' г. Егорьевск123'),
(462, 77, '_top_address_bold', 'field_6496a30bbff2a'),
(463, 77, 'header_address_bold', ' г. Егорьевск'),
(464, 77, '_header_address_bold', 'field_6496a30bbff2a'),
(465, 77, 'header_address_default', '5 мкр., д. 21'),
(466, 77, '_header_address_default', 'field_6496a4413413f'),
(467, 77, 'top_tel_bold', 'WhatsApp'),
(468, 77, '_top_tel_bold', 'field_6496a5e399f9d'),
(469, 77, 'tel_number', '+7 999 888 77 66'),
(470, 77, '_tel_number', 'field_6496a61199f9e'),
(471, 77, 'hero_text_top_bold', 'Студия красоты'),
(472, 77, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(473, 77, 'hero_text_top_default', 'В городе'),
(474, 77, '_hero_text_top_default', 'field_6496a83dc8b00'),
(475, 77, 'hero_text_bottom_bold', 'Егорьевск'),
(476, 77, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(477, 77, 'hero_action_btn_text', 'Услуги'),
(478, 77, '_hero_action_btn_text', 'field_6496a99d601cb'),
(479, 77, 'first_benefit_title', 'Гарантия качества'),
(480, 77, '_first_benefit_title', 'field_6496ab4b318e3'),
(481, 77, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений. Повседневная практика показывает, что рамки и место обучения кадров требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям.'),
(482, 77, '_first_benefit_description', 'field_6496abed45766'),
(483, 77, 'second_benefit_title', ''),
(484, 77, '_second_benefit_title', 'field_6496ab7d318e5'),
(485, 77, 'second_benefit_description', ''),
(486, 77, '_second_benefit_description', 'field_6496ac1445767'),
(487, 77, 'third_benefit_title', ''),
(488, 77, '_third_benefit_title', 'field_6496ac5045769'),
(489, 77, 'third_benefit_description', ''),
(490, 77, '_third_benefit_description', 'field_6496ac6b4576a'),
(491, 78, 'map_latitude', '55.375854'),
(492, 78, '_map_latitude', 'field_6491b6460ea38'),
(493, 78, 'longitude_map', '39.051005'),
(494, 78, '_longitude_map', 'field_6491b6a40ea39'),
(495, 78, 'map_longitude', '39.051005'),
(496, 78, '_map_longitude', 'field_6491b6a40ea39'),
(497, 78, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(498, 78, '_balloon_text', 'field_6491b8a592556'),
(499, 78, 'hint_text', 'Мы находимся именно здесь!'),
(500, 78, '_hint_text', 'field_6491b9a622e47'),
(501, 78, 'top_address_bold', ' г. Егорьевск123'),
(502, 78, '_top_address_bold', 'field_6496a30bbff2a'),
(503, 78, 'header_address_bold', ' г. Егорьевск'),
(504, 78, '_header_address_bold', 'field_6496a30bbff2a'),
(505, 78, 'header_address_default', '5 мкр., д. 21'),
(506, 78, '_header_address_default', 'field_6496a4413413f'),
(507, 78, 'top_tel_bold', 'WhatsApp'),
(508, 78, '_top_tel_bold', 'field_6496a5e399f9d'),
(509, 78, 'tel_number', '+7 999 888 77 66'),
(510, 78, '_tel_number', 'field_6496a61199f9e'),
(511, 78, 'hero_text_top_bold', 'Студия красоты'),
(512, 78, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(513, 78, 'hero_text_top_default', 'В городе'),
(514, 78, '_hero_text_top_default', 'field_6496a83dc8b00'),
(515, 78, 'hero_text_bottom_bold', 'Егорьевск'),
(516, 78, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(517, 78, 'hero_action_btn_text', 'Услуги'),
(518, 78, '_hero_action_btn_text', 'field_6496a99d601cb'),
(519, 78, 'first_benefit_title', 'Гарантия качества'),
(520, 78, '_first_benefit_title', 'field_6496ab4b318e3'),
(521, 78, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(522, 78, '_first_benefit_description', 'field_6496abed45766'),
(523, 78, 'second_benefit_title', ''),
(524, 78, '_second_benefit_title', 'field_6496ab7d318e5'),
(525, 78, 'second_benefit_description', ''),
(526, 78, '_second_benefit_description', 'field_6496ac1445767'),
(527, 78, 'third_benefit_title', ''),
(528, 78, '_third_benefit_title', 'field_6496ac5045769'),
(529, 78, 'third_benefit_description', ''),
(530, 78, '_third_benefit_description', 'field_6496ac6b4576a'),
(531, 79, 'map_latitude', '55.375854'),
(532, 79, '_map_latitude', 'field_6491b6460ea38'),
(533, 79, 'longitude_map', '39.051005'),
(534, 79, '_longitude_map', 'field_6491b6a40ea39'),
(535, 79, 'map_longitude', '39.051005'),
(536, 79, '_map_longitude', 'field_6491b6a40ea39'),
(537, 79, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(538, 79, '_balloon_text', 'field_6491b8a592556'),
(539, 79, 'hint_text', 'Мы находимся именно здесь!'),
(540, 79, '_hint_text', 'field_6491b9a622e47'),
(541, 79, 'top_address_bold', ' г. Егорьевск123'),
(542, 79, '_top_address_bold', 'field_6496a30bbff2a'),
(543, 79, 'header_address_bold', ' г. Егорьевск'),
(544, 79, '_header_address_bold', 'field_6496a30bbff2a'),
(545, 79, 'header_address_default', '5 мкр., д. 21'),
(546, 79, '_header_address_default', 'field_6496a4413413f'),
(547, 79, 'top_tel_bold', 'WhatsApp'),
(548, 79, '_top_tel_bold', 'field_6496a5e399f9d'),
(549, 79, 'tel_number', '+7 999 888 77 66'),
(550, 79, '_tel_number', 'field_6496a61199f9e'),
(551, 79, 'hero_text_top_bold', 'Студия красоты'),
(552, 79, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(553, 79, 'hero_text_top_default', 'В городе'),
(554, 79, '_hero_text_top_default', 'field_6496a83dc8b00'),
(555, 79, 'hero_text_bottom_bold', 'Егорьевск'),
(556, 79, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(557, 79, 'hero_action_btn_text', 'Услуги'),
(558, 79, '_hero_action_btn_text', 'field_6496a99d601cb'),
(559, 79, 'first_benefit_title', 'Гарантия качества'),
(560, 79, '_first_benefit_title', 'field_6496ab4b318e3'),
(561, 79, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(562, 79, '_first_benefit_description', 'field_6496abed45766'),
(563, 79, 'second_benefit_title', 'Низкие цены'),
(564, 79, '_second_benefit_title', 'field_6496ab7d318e5'),
(565, 79, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(566, 79, '_second_benefit_description', 'field_6496ac1445767'),
(567, 79, 'third_benefit_title', 'Приятный сервис'),
(568, 79, '_third_benefit_title', 'field_6496ac5045769'),
(569, 79, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(570, 79, '_third_benefit_description', 'field_6496ac6b4576a'),
(571, 80, 'map_latitude', '55.375854'),
(572, 80, '_map_latitude', 'field_6491b6460ea38'),
(573, 80, 'longitude_map', '39.051005'),
(574, 80, '_longitude_map', 'field_6491b6a40ea39'),
(575, 80, 'map_longitude', '39.051005'),
(576, 80, '_map_longitude', 'field_6491b6a40ea39'),
(577, 80, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(578, 80, '_balloon_text', 'field_6491b8a592556'),
(579, 80, 'hint_text', 'Мы находимся именно здесь!'),
(580, 80, '_hint_text', 'field_6491b9a622e47'),
(581, 80, 'top_address_bold', ' г. Егорьевск123'),
(582, 80, '_top_address_bold', 'field_6496a30bbff2a'),
(583, 80, 'header_address_bold', ' г. Егорьевск'),
(584, 80, '_header_address_bold', 'field_6496a30bbff2a'),
(585, 80, 'header_address_default', '5 мкр., д. 21'),
(586, 80, '_header_address_default', 'field_6496a4413413f'),
(587, 80, 'top_tel_bold', 'WhatsApp'),
(588, 80, '_top_tel_bold', 'field_6496a5e399f9d'),
(589, 80, 'tel_number', '+7 999 888 77 66'),
(590, 80, '_tel_number', 'field_6496a61199f9e'),
(591, 80, 'hero_text_top_bold', 'Студия красоты'),
(592, 80, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(593, 80, 'hero_text_top_default', 'В городе'),
(594, 80, '_hero_text_top_default', 'field_6496a83dc8b00'),
(595, 80, 'hero_text_bottom_bold', 'Егорьевск'),
(596, 80, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(597, 80, 'hero_action_btn_text', 'Услуги'),
(598, 80, '_hero_action_btn_text', 'field_6496a99d601cb'),
(599, 80, 'first_benefit_title', 'Гарантия качества'),
(600, 80, '_first_benefit_title', 'field_6496ab4b318e3'),
(601, 80, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(602, 80, '_first_benefit_description', 'field_6496abed45766'),
(603, 80, 'second_benefit_title', 'Низкие цены'),
(604, 80, '_second_benefit_title', 'field_6496ab7d318e5'),
(605, 80, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(606, 80, '_second_benefit_description', 'field_6496ac1445767'),
(607, 80, 'third_benefit_title', 'Приятный сервис'),
(608, 80, '_third_benefit_title', 'field_6496ac5045769'),
(609, 80, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(610, 80, '_third_benefit_description', 'field_6496ac6b4576a'),
(611, 81, '_edit_last', '1'),
(612, 81, '_edit_lock', '1688036451:1'),
(613, 10, 'service_default_title', 'Предоставляемые'),
(614, 10, '_service_default_title', 'field_6496ae0f769bf'),
(615, 10, 'service_bold_title', 'Услуги'),
(616, 10, '_service_bold_title', 'field_6496ae2d769c0'),
(617, 85, 'map_latitude', '55.375854'),
(618, 85, '_map_latitude', 'field_6491b6460ea38'),
(619, 85, 'longitude_map', '39.051005'),
(620, 85, '_longitude_map', 'field_6491b6a40ea39'),
(621, 85, 'map_longitude', '39.051005'),
(622, 85, '_map_longitude', 'field_6491b6a40ea39'),
(623, 85, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(624, 85, '_balloon_text', 'field_6491b8a592556'),
(625, 85, 'hint_text', 'Мы находимся именно здесь!'),
(626, 85, '_hint_text', 'field_6491b9a622e47'),
(627, 85, 'top_address_bold', ' г. Егорьевск123'),
(628, 85, '_top_address_bold', 'field_6496a30bbff2a'),
(629, 85, 'header_address_bold', ' г. Егорьевск'),
(630, 85, '_header_address_bold', 'field_6496a30bbff2a'),
(631, 85, 'header_address_default', '5 мкр., д. 21'),
(632, 85, '_header_address_default', 'field_6496a4413413f'),
(633, 85, 'top_tel_bold', 'WhatsApp'),
(634, 85, '_top_tel_bold', 'field_6496a5e399f9d'),
(635, 85, 'tel_number', '+7 999 888 77 66'),
(636, 85, '_tel_number', 'field_6496a61199f9e'),
(637, 85, 'hero_text_top_bold', 'Студия красоты'),
(638, 85, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(639, 85, 'hero_text_top_default', 'В городе'),
(640, 85, '_hero_text_top_default', 'field_6496a83dc8b00'),
(641, 85, 'hero_text_bottom_bold', 'Егорьевск'),
(642, 85, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(643, 85, 'hero_action_btn_text', 'Услуги'),
(644, 85, '_hero_action_btn_text', 'field_6496a99d601cb'),
(645, 85, 'first_benefit_title', 'Гарантия качества'),
(646, 85, '_first_benefit_title', 'field_6496ab4b318e3'),
(647, 85, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(648, 85, '_first_benefit_description', 'field_6496abed45766'),
(649, 85, 'second_benefit_title', 'Низкие цены'),
(650, 85, '_second_benefit_title', 'field_6496ab7d318e5'),
(651, 85, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(652, 85, '_second_benefit_description', 'field_6496ac1445767'),
(653, 85, 'third_benefit_title', 'Приятный сервис'),
(654, 85, '_third_benefit_title', 'field_6496ac5045769'),
(655, 85, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(656, 85, '_third_benefit_description', 'field_6496ac6b4576a'),
(657, 85, 'service_default_title', 'Предоставляемые нами'),
(658, 85, '_service_default_title', 'field_6496ae0f769bf'),
(659, 85, 'service_bold_title', 'Услуги'),
(660, 85, '_service_bold_title', 'field_6496ae2d769c0'),
(661, 86, 'map_latitude', '55.375854'),
(662, 86, '_map_latitude', 'field_6491b6460ea38'),
(663, 86, 'longitude_map', '39.051005'),
(664, 86, '_longitude_map', 'field_6491b6a40ea39'),
(665, 86, 'map_longitude', '39.051005'),
(666, 86, '_map_longitude', 'field_6491b6a40ea39'),
(667, 86, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(668, 86, '_balloon_text', 'field_6491b8a592556'),
(669, 86, 'hint_text', 'Мы находимся именно здесь!'),
(670, 86, '_hint_text', 'field_6491b9a622e47'),
(671, 86, 'top_address_bold', ' г. Егорьевск123'),
(672, 86, '_top_address_bold', 'field_6496a30bbff2a'),
(673, 86, 'header_address_bold', ' г. Егорьевск'),
(674, 86, '_header_address_bold', 'field_6496a30bbff2a'),
(675, 86, 'header_address_default', '5 мкр., д. 21'),
(676, 86, '_header_address_default', 'field_6496a4413413f'),
(677, 86, 'top_tel_bold', 'WhatsApp'),
(678, 86, '_top_tel_bold', 'field_6496a5e399f9d'),
(679, 86, 'tel_number', '+7 999 888 77 66'),
(680, 86, '_tel_number', 'field_6496a61199f9e'),
(681, 86, 'hero_text_top_bold', 'Студия красоты'),
(682, 86, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(683, 86, 'hero_text_top_default', 'В городе'),
(684, 86, '_hero_text_top_default', 'field_6496a83dc8b00'),
(685, 86, 'hero_text_bottom_bold', 'Егорьевск'),
(686, 86, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(687, 86, 'hero_action_btn_text', 'Услуги'),
(688, 86, '_hero_action_btn_text', 'field_6496a99d601cb'),
(689, 86, 'first_benefit_title', 'Гарантия качества'),
(690, 86, '_first_benefit_title', 'field_6496ab4b318e3'),
(691, 86, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(692, 86, '_first_benefit_description', 'field_6496abed45766'),
(693, 86, 'second_benefit_title', 'Низкие цены'),
(694, 86, '_second_benefit_title', 'field_6496ab7d318e5'),
(695, 86, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(696, 86, '_second_benefit_description', 'field_6496ac1445767'),
(697, 86, 'third_benefit_title', 'Приятный сервис'),
(698, 86, '_third_benefit_title', 'field_6496ac5045769'),
(699, 86, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(700, 86, '_third_benefit_description', 'field_6496ac6b4576a'),
(701, 86, 'service_default_title', 'Предоставляемые нами'),
(702, 86, '_service_default_title', 'field_6496ae0f769bf'),
(703, 86, 'service_bold_title', 'Услуги'),
(704, 86, '_service_bold_title', 'field_6496ae2d769c0'),
(705, 87, 'map_latitude', '55.375854'),
(706, 87, '_map_latitude', 'field_6491b6460ea38'),
(707, 87, 'longitude_map', '39.051005'),
(708, 87, '_longitude_map', 'field_6491b6a40ea39'),
(709, 87, 'map_longitude', '39.051005'),
(710, 87, '_map_longitude', 'field_6491b6a40ea39'),
(711, 87, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(712, 87, '_balloon_text', 'field_6491b8a592556'),
(713, 87, 'hint_text', 'Мы находимся именно здесь!'),
(714, 87, '_hint_text', 'field_6491b9a622e47'),
(715, 87, 'top_address_bold', ' г. Егорьевск123'),
(716, 87, '_top_address_bold', 'field_6496a30bbff2a'),
(717, 87, 'header_address_bold', ' г. Егорьевск'),
(718, 87, '_header_address_bold', 'field_6496a30bbff2a'),
(719, 87, 'header_address_default', '5 мкр., д. 21'),
(720, 87, '_header_address_default', 'field_6496a4413413f'),
(721, 87, 'top_tel_bold', 'WhatsApp'),
(722, 87, '_top_tel_bold', 'field_6496a5e399f9d'),
(723, 87, 'tel_number', '+7 999 888 77 66'),
(724, 87, '_tel_number', 'field_6496a61199f9e'),
(725, 87, 'hero_text_top_bold', 'Студия красоты'),
(726, 87, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(727, 87, 'hero_text_top_default', 'В городе'),
(728, 87, '_hero_text_top_default', 'field_6496a83dc8b00'),
(729, 87, 'hero_text_bottom_bold', 'Егорьевск'),
(730, 87, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(731, 87, 'hero_action_btn_text', 'Услуги'),
(732, 87, '_hero_action_btn_text', 'field_6496a99d601cb'),
(733, 87, 'first_benefit_title', 'Гарантия качества'),
(734, 87, '_first_benefit_title', 'field_6496ab4b318e3'),
(735, 87, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(736, 87, '_first_benefit_description', 'field_6496abed45766'),
(737, 87, 'second_benefit_title', 'Низкие цены'),
(738, 87, '_second_benefit_title', 'field_6496ab7d318e5'),
(739, 87, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(740, 87, '_second_benefit_description', 'field_6496ac1445767'),
(741, 87, 'third_benefit_title', 'Приятный сервис'),
(742, 87, '_third_benefit_title', 'field_6496ac5045769'),
(743, 87, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(744, 87, '_third_benefit_description', 'field_6496ac6b4576a'),
(745, 87, 'service_default_title', 'Предоставляемые'),
(746, 87, '_service_default_title', 'field_6496ae0f769bf'),
(747, 87, 'service_bold_title', 'Услуги'),
(748, 87, '_service_bold_title', 'field_6496ae2d769c0'),
(758, 92, '_wp_attached_file', '2023/06/work-1.jpg'),
(759, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:753;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2023/06/work-1.jpg\";s:8:\"filesize\";i:162247;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"work-1-209x300.jpg\";s:5:\"width\";i:209;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7894;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"work-1-714x1024.jpg\";s:5:\"width\";i:714;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57312;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"work-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3898;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(763, 93, '_edit_last', '1'),
(764, 93, '_edit_lock', '1688750066:1'),
(804, 103, '_wp_attached_file', '2023/06/service-2.jpg'),
(805, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:682;s:4:\"file\";s:21:\"2023/06/service-2.jpg\";s:8:\"filesize\";i:130692;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"service-2-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11638;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"service-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4834;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(814, 106, '_wp_attached_file', '2023/06/service-3.jpg'),
(815, 106, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:551;s:4:\"file\";s:21:\"2023/06/service-3.jpg\";s:8:\"filesize\";i:64523;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"service-3-278x300.jpg\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10820;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"service-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4268;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(829, 110, '_wp_attached_file', '2023/06/service-4.jpg'),
(830, 110, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:682;s:4:\"file\";s:21:\"2023/06/service-4.jpg\";s:8:\"filesize\";i:131537;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"service-4-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13371;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"service-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5774;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(857, 118, '_edit_last', '1'),
(858, 118, '_edit_lock', '1687623215:1'),
(867, 10, 'team_default_title', 'Наша команда'),
(868, 10, '_team_default_title', 'field_6496c2b921134'),
(869, 10, 'team_bold_title', 'Профессионалов'),
(870, 10, '_team_bold_title', 'field_6496c2e521135'),
(871, 123, 'map_latitude', '55.375854'),
(872, 123, '_map_latitude', 'field_6491b6460ea38'),
(873, 123, 'longitude_map', '39.051005'),
(874, 123, '_longitude_map', 'field_6491b6a40ea39'),
(875, 123, 'map_longitude', '39.051005'),
(876, 123, '_map_longitude', 'field_6491b6a40ea39'),
(877, 123, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(878, 123, '_balloon_text', 'field_6491b8a592556'),
(879, 123, 'hint_text', 'Мы находимся именно здесь!'),
(880, 123, '_hint_text', 'field_6491b9a622e47'),
(881, 123, 'top_address_bold', ' г. Егорьевск123'),
(882, 123, '_top_address_bold', 'field_6496a30bbff2a'),
(883, 123, 'header_address_bold', ' г. Егорьевск'),
(884, 123, '_header_address_bold', 'field_6496a30bbff2a'),
(885, 123, 'header_address_default', '5 мкр., д. 21'),
(886, 123, '_header_address_default', 'field_6496a4413413f'),
(887, 123, 'top_tel_bold', 'WhatsApp'),
(888, 123, '_top_tel_bold', 'field_6496a5e399f9d'),
(889, 123, 'tel_number', '+7 999 888 77 66'),
(890, 123, '_tel_number', 'field_6496a61199f9e'),
(891, 123, 'hero_text_top_bold', 'Студия красоты'),
(892, 123, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(893, 123, 'hero_text_top_default', 'В городе'),
(894, 123, '_hero_text_top_default', 'field_6496a83dc8b00'),
(895, 123, 'hero_text_bottom_bold', 'Егорьевск'),
(896, 123, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(897, 123, 'hero_action_btn_text', 'Услуги'),
(898, 123, '_hero_action_btn_text', 'field_6496a99d601cb'),
(899, 123, 'first_benefit_title', 'Гарантия качества'),
(900, 123, '_first_benefit_title', 'field_6496ab4b318e3'),
(901, 123, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(902, 123, '_first_benefit_description', 'field_6496abed45766'),
(903, 123, 'second_benefit_title', 'Низкие цены'),
(904, 123, '_second_benefit_title', 'field_6496ab7d318e5'),
(905, 123, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(906, 123, '_second_benefit_description', 'field_6496ac1445767'),
(907, 123, 'third_benefit_title', 'Приятный сервис'),
(908, 123, '_third_benefit_title', 'field_6496ac5045769'),
(909, 123, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(910, 123, '_third_benefit_description', 'field_6496ac6b4576a'),
(911, 123, 'service_default_title', 'Предоставляемые'),
(912, 123, '_service_default_title', 'field_6496ae0f769bf'),
(913, 123, 'service_bold_title', 'Услуги'),
(914, 123, '_service_bold_title', 'field_6496ae2d769c0'),
(915, 123, 'team_default_title', 'Наша команда'),
(916, 123, '_team_default_title', 'field_6496c2b921134'),
(917, 123, 'team_bold_title', 'Профессионалов'),
(918, 123, '_team_bold_title', 'field_6496c2e521135'),
(920, 125, '_wp_attached_file', '2023/06/team-member-1-1.jpg'),
(921, 125, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:511;s:4:\"file\";s:27:\"2023/06/team-member-1-1.jpg\";s:8:\"filesize\";i:80435;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"team-member-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14850;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"team-member-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5230;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(970, 137, '_edit_last', '1'),
(971, 137, '_edit_lock', '1687623225:1'),
(972, 10, 'photoreviews_title_bold', 'фото'),
(973, 10, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(974, 10, 'photoreviews_title_default', 'отзывы'),
(975, 10, '_photoreviews_title_default', 'field_6496eda7258fa'),
(976, 10, 'photoreviews_link_text', 'Больше фото'),
(977, 10, '_photoreviews_link_text', 'field_6496ee01ad052'),
(978, 10, 'photoreviews_link_href', 'https://vk.com/public220943642'),
(979, 10, '_photoreviews_link_href', 'field_6496ee5fad054'),
(980, 10, 'textreviews_title_bold', ''),
(981, 10, '_textreviews_title_bold', 'field_6496edd2258fb'),
(982, 10, 'textreviews_title_default', 'Отзывы'),
(983, 10, '_textreviews_title_default', 'field_6496edd6258fc'),
(984, 10, 'textreviews_link_text', 'Смотреть все'),
(985, 10, '_textreviews_link_text', 'field_6496ee3aad053'),
(986, 10, 'textreviews_link_href', 'https://vk.com/public220943642'),
(987, 10, '_textreviews_link_href', 'field_6496ee99ad055'),
(988, 148, 'map_latitude', '55.375854'),
(989, 148, '_map_latitude', 'field_6491b6460ea38'),
(990, 148, 'longitude_map', '39.051005'),
(991, 148, '_longitude_map', 'field_6491b6a40ea39'),
(992, 148, 'map_longitude', '39.051005'),
(993, 148, '_map_longitude', 'field_6491b6a40ea39'),
(994, 148, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(995, 148, '_balloon_text', 'field_6491b8a592556'),
(996, 148, 'hint_text', 'Мы находимся именно здесь!'),
(997, 148, '_hint_text', 'field_6491b9a622e47'),
(998, 148, 'top_address_bold', ' г. Егорьевск123'),
(999, 148, '_top_address_bold', 'field_6496a30bbff2a'),
(1000, 148, 'header_address_bold', ' г. Егорьевск'),
(1001, 148, '_header_address_bold', 'field_6496a30bbff2a'),
(1002, 148, 'header_address_default', '5 мкр., д. 21'),
(1003, 148, '_header_address_default', 'field_6496a4413413f'),
(1004, 148, 'top_tel_bold', 'WhatsApp'),
(1005, 148, '_top_tel_bold', 'field_6496a5e399f9d'),
(1006, 148, 'tel_number', '+7 999 888 77 66'),
(1007, 148, '_tel_number', 'field_6496a61199f9e'),
(1008, 148, 'hero_text_top_bold', 'Студия красоты'),
(1009, 148, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1010, 148, 'hero_text_top_default', 'В городе'),
(1011, 148, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1012, 148, 'hero_text_bottom_bold', 'Егорьевск'),
(1013, 148, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1014, 148, 'hero_action_btn_text', 'Услуги'),
(1015, 148, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1016, 148, 'first_benefit_title', 'Гарантия качества'),
(1017, 148, '_first_benefit_title', 'field_6496ab4b318e3'),
(1018, 148, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1019, 148, '_first_benefit_description', 'field_6496abed45766'),
(1020, 148, 'second_benefit_title', 'Низкие цены'),
(1021, 148, '_second_benefit_title', 'field_6496ab7d318e5'),
(1022, 148, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1023, 148, '_second_benefit_description', 'field_6496ac1445767'),
(1024, 148, 'third_benefit_title', 'Приятный сервис'),
(1025, 148, '_third_benefit_title', 'field_6496ac5045769'),
(1026, 148, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1027, 148, '_third_benefit_description', 'field_6496ac6b4576a'),
(1028, 148, 'service_default_title', 'Предоставляемые'),
(1029, 148, '_service_default_title', 'field_6496ae0f769bf'),
(1030, 148, 'service_bold_title', 'Услуги'),
(1031, 148, '_service_bold_title', 'field_6496ae2d769c0'),
(1032, 148, 'team_default_title', 'Наша команда'),
(1033, 148, '_team_default_title', 'field_6496c2b921134'),
(1034, 148, 'team_bold_title', 'Профессионалов'),
(1035, 148, '_team_bold_title', 'field_6496c2e521135'),
(1036, 148, 'photoreviews_title_bold', 'фото'),
(1037, 148, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1038, 148, 'photoreviews_title_default', 'отзывы'),
(1039, 148, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1040, 148, 'photoreviews_link_text', 'Больше фото'),
(1041, 148, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1042, 148, 'photoreviews_link_href', 'https://google.com'),
(1043, 148, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1044, 148, 'textreviews_title_bold', ''),
(1045, 148, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1046, 148, 'textreviews_title_default', 'Отзывы'),
(1047, 148, '_textreviews_title_default', 'field_6496edd6258fc'),
(1048, 148, 'textreviews_link_text', 'Смотреть все'),
(1049, 148, '_textreviews_link_text', 'field_6496ee3aad053'),
(1050, 148, 'textreviews_link_href', 'https://google.com'),
(1051, 148, '_textreviews_link_href', 'field_6496ee99ad055'),
(1052, 149, 'map_latitude', '55.375854'),
(1053, 149, '_map_latitude', 'field_6491b6460ea38'),
(1054, 149, 'longitude_map', '39.051005'),
(1055, 149, '_longitude_map', 'field_6491b6a40ea39'),
(1056, 149, 'map_longitude', '39.051005'),
(1057, 149, '_map_longitude', 'field_6491b6a40ea39'),
(1058, 149, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1059, 149, '_balloon_text', 'field_6491b8a592556'),
(1060, 149, 'hint_text', 'Мы находимся именно здесь!'),
(1061, 149, '_hint_text', 'field_6491b9a622e47'),
(1062, 149, 'top_address_bold', ' г. Егорьевск123'),
(1063, 149, '_top_address_bold', 'field_6496a30bbff2a'),
(1064, 149, 'header_address_bold', ' г. Егорьевск'),
(1065, 149, '_header_address_bold', 'field_6496a30bbff2a'),
(1066, 149, 'header_address_default', '5 мкр., д. 21'),
(1067, 149, '_header_address_default', 'field_6496a4413413f'),
(1068, 149, 'top_tel_bold', 'WhatsApp'),
(1069, 149, '_top_tel_bold', 'field_6496a5e399f9d'),
(1070, 149, 'tel_number', '+7 999 888 77 66'),
(1071, 149, '_tel_number', 'field_6496a61199f9e'),
(1072, 149, 'hero_text_top_bold', 'Студия красоты'),
(1073, 149, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1074, 149, 'hero_text_top_default', 'В городе'),
(1075, 149, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1076, 149, 'hero_text_bottom_bold', 'Егорьевск'),
(1077, 149, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1078, 149, 'hero_action_btn_text', 'Услуги'),
(1079, 149, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1080, 149, 'first_benefit_title', 'Гарантия качества'),
(1081, 149, '_first_benefit_title', 'field_6496ab4b318e3'),
(1082, 149, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(1083, 149, '_first_benefit_description', 'field_6496abed45766'),
(1084, 149, 'second_benefit_title', 'Низкие цены'),
(1085, 149, '_second_benefit_title', 'field_6496ab7d318e5'),
(1086, 149, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1087, 149, '_second_benefit_description', 'field_6496ac1445767'),
(1088, 149, 'third_benefit_title', 'Приятный сервис'),
(1089, 149, '_third_benefit_title', 'field_6496ac5045769'),
(1090, 149, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1091, 149, '_third_benefit_description', 'field_6496ac6b4576a'),
(1092, 149, 'service_default_title', 'Предоставляемые'),
(1093, 149, '_service_default_title', 'field_6496ae0f769bf'),
(1094, 149, 'service_bold_title', 'Услуги'),
(1095, 149, '_service_bold_title', 'field_6496ae2d769c0'),
(1096, 149, 'team_default_title', 'Наша команда'),
(1097, 149, '_team_default_title', 'field_6496c2b921134'),
(1098, 149, 'team_bold_title', 'Профессионалов'),
(1099, 149, '_team_bold_title', 'field_6496c2e521135'),
(1100, 149, 'photoreviews_title_bold', 'фото '),
(1101, 149, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1102, 149, 'photoreviews_title_default', 'отзывы'),
(1103, 149, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1104, 149, 'photoreviews_link_text', 'Больше фото'),
(1105, 149, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1106, 149, 'photoreviews_link_href', 'https://google.com'),
(1107, 149, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1108, 149, 'textreviews_title_bold', ''),
(1109, 149, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1110, 149, 'textreviews_title_default', 'Отзывы'),
(1111, 149, '_textreviews_title_default', 'field_6496edd6258fc'),
(1112, 149, 'textreviews_link_text', 'Смотреть все'),
(1113, 149, '_textreviews_link_text', 'field_6496ee3aad053'),
(1114, 149, 'textreviews_link_href', 'https://google.com'),
(1115, 149, '_textreviews_link_href', 'field_6496ee99ad055'),
(1116, 150, 'map_latitude', '55.375854'),
(1117, 150, '_map_latitude', 'field_6491b6460ea38'),
(1118, 150, 'longitude_map', '39.051005'),
(1119, 150, '_longitude_map', 'field_6491b6a40ea39'),
(1120, 150, 'map_longitude', '39.051005'),
(1121, 150, '_map_longitude', 'field_6491b6a40ea39'),
(1122, 150, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1123, 150, '_balloon_text', 'field_6491b8a592556'),
(1124, 150, 'hint_text', 'Мы находимся именно здесь!'),
(1125, 150, '_hint_text', 'field_6491b9a622e47'),
(1126, 150, 'top_address_bold', ' г. Егорьевск123'),
(1127, 150, '_top_address_bold', 'field_6496a30bbff2a'),
(1128, 150, 'header_address_bold', ' г. Егорьевск'),
(1129, 150, '_header_address_bold', 'field_6496a30bbff2a'),
(1130, 150, 'header_address_default', '5 мкр., д. 21'),
(1131, 150, '_header_address_default', 'field_6496a4413413f'),
(1132, 150, 'top_tel_bold', 'WhatsApp'),
(1133, 150, '_top_tel_bold', 'field_6496a5e399f9d'),
(1134, 150, 'tel_number', '+7 999 888 77 66'),
(1135, 150, '_tel_number', 'field_6496a61199f9e'),
(1136, 150, 'hero_text_top_bold', 'Студия красоты'),
(1137, 150, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1138, 150, 'hero_text_top_default', 'В городе'),
(1139, 150, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1140, 150, 'hero_text_bottom_bold', 'Егорьевск'),
(1141, 150, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1142, 150, 'hero_action_btn_text', 'Услуги'),
(1143, 150, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1144, 150, 'first_benefit_title', 'Гарантия качества'),
(1145, 150, '_first_benefit_title', 'field_6496ab4b318e3'),
(1146, 150, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(1147, 150, '_first_benefit_description', 'field_6496abed45766'),
(1148, 150, 'second_benefit_title', 'Низкие цены'),
(1149, 150, '_second_benefit_title', 'field_6496ab7d318e5'),
(1150, 150, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1151, 150, '_second_benefit_description', 'field_6496ac1445767'),
(1152, 150, 'third_benefit_title', 'Приятный сервис'),
(1153, 150, '_third_benefit_title', 'field_6496ac5045769'),
(1154, 150, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1155, 150, '_third_benefit_description', 'field_6496ac6b4576a'),
(1156, 150, 'service_default_title', 'Предоставляемые'),
(1157, 150, '_service_default_title', 'field_6496ae0f769bf'),
(1158, 150, 'service_bold_title', 'Услуги'),
(1159, 150, '_service_bold_title', 'field_6496ae2d769c0'),
(1160, 150, 'team_default_title', 'Наша команда'),
(1161, 150, '_team_default_title', 'field_6496c2b921134'),
(1162, 150, 'team_bold_title', 'Профессионалов'),
(1163, 150, '_team_bold_title', 'field_6496c2e521135'),
(1164, 150, 'photoreviews_title_bold', 'фото'),
(1165, 150, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1166, 150, 'photoreviews_title_default', 'отзывы'),
(1167, 150, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1168, 150, 'photoreviews_link_text', 'Больше фото'),
(1169, 150, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1170, 150, 'photoreviews_link_href', 'https://google.com'),
(1171, 150, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1172, 150, 'textreviews_title_bold', ''),
(1173, 150, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1174, 150, 'textreviews_title_default', 'Отзывы'),
(1175, 150, '_textreviews_title_default', 'field_6496edd6258fc'),
(1176, 150, 'textreviews_link_text', 'Смотреть все'),
(1177, 150, '_textreviews_link_text', 'field_6496ee3aad053'),
(1178, 150, 'textreviews_link_href', 'https://google.com'),
(1179, 150, '_textreviews_link_href', 'field_6496ee99ad055'),
(1198, 161, '_edit_last', '1'),
(1199, 161, '_edit_lock', '1688155079:1'),
(1313, 180, '_edit_last', '1'),
(1314, 180, '_edit_lock', '1687623236:1'),
(1315, 10, 'works_default_title', 'Наши'),
(1316, 10, '_works_default_title', 'field_6496fc363126b'),
(1317, 10, 'works_bold_title', 'Выполненные работы'),
(1318, 10, '_works_bold_title', 'field_6496fc5b3126c'),
(1319, 184, 'map_latitude', '55.375854'),
(1320, 184, '_map_latitude', 'field_6491b6460ea38'),
(1321, 184, 'longitude_map', '39.051005'),
(1322, 184, '_longitude_map', 'field_6491b6a40ea39'),
(1323, 184, 'map_longitude', '39.051005'),
(1324, 184, '_map_longitude', 'field_6491b6a40ea39'),
(1325, 184, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1326, 184, '_balloon_text', 'field_6491b8a592556'),
(1327, 184, 'hint_text', 'Мы находимся именно здесь!'),
(1328, 184, '_hint_text', 'field_6491b9a622e47'),
(1329, 184, 'top_address_bold', ' г. Егорьевск123'),
(1330, 184, '_top_address_bold', 'field_6496a30bbff2a'),
(1331, 184, 'header_address_bold', ' г. Егорьевск'),
(1332, 184, '_header_address_bold', 'field_6496a30bbff2a'),
(1333, 184, 'header_address_default', '5 мкр., д. 21'),
(1334, 184, '_header_address_default', 'field_6496a4413413f'),
(1335, 184, 'top_tel_bold', 'WhatsApp'),
(1336, 184, '_top_tel_bold', 'field_6496a5e399f9d'),
(1337, 184, 'tel_number', '+7 999 888 77 66'),
(1338, 184, '_tel_number', 'field_6496a61199f9e'),
(1339, 184, 'hero_text_top_bold', 'Студия красоты'),
(1340, 184, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1341, 184, 'hero_text_top_default', 'В городе'),
(1342, 184, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1343, 184, 'hero_text_bottom_bold', 'Егорьевск'),
(1344, 184, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1345, 184, 'hero_action_btn_text', 'Услуги'),
(1346, 184, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1347, 184, 'first_benefit_title', 'Гарантия качества'),
(1348, 184, '_first_benefit_title', 'field_6496ab4b318e3'),
(1349, 184, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(1350, 184, '_first_benefit_description', 'field_6496abed45766'),
(1351, 184, 'second_benefit_title', 'Низкие цены'),
(1352, 184, '_second_benefit_title', 'field_6496ab7d318e5'),
(1353, 184, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1354, 184, '_second_benefit_description', 'field_6496ac1445767'),
(1355, 184, 'third_benefit_title', 'Приятный сервис'),
(1356, 184, '_third_benefit_title', 'field_6496ac5045769'),
(1357, 184, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1358, 184, '_third_benefit_description', 'field_6496ac6b4576a'),
(1359, 184, 'service_default_title', 'Предоставляемые'),
(1360, 184, '_service_default_title', 'field_6496ae0f769bf'),
(1361, 184, 'service_bold_title', 'Услуги'),
(1362, 184, '_service_bold_title', 'field_6496ae2d769c0'),
(1363, 184, 'team_default_title', 'Наша команда'),
(1364, 184, '_team_default_title', 'field_6496c2b921134'),
(1365, 184, 'team_bold_title', 'Профессионалов'),
(1366, 184, '_team_bold_title', 'field_6496c2e521135'),
(1367, 184, 'photoreviews_title_bold', 'фото'),
(1368, 184, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1369, 184, 'photoreviews_title_default', 'отзывы'),
(1370, 184, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1371, 184, 'photoreviews_link_text', 'Больше фото'),
(1372, 184, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1373, 184, 'photoreviews_link_href', 'https://google.com'),
(1374, 184, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1375, 184, 'textreviews_title_bold', ''),
(1376, 184, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1377, 184, 'textreviews_title_default', 'Отзывы'),
(1378, 184, '_textreviews_title_default', 'field_6496edd6258fc'),
(1379, 184, 'textreviews_link_text', 'Смотреть все'),
(1380, 184, '_textreviews_link_text', 'field_6496ee3aad053'),
(1381, 184, 'textreviews_link_href', 'https://google.com'),
(1382, 184, '_textreviews_link_href', 'field_6496ee99ad055'),
(1383, 184, 'works_default_title', 'Наши'),
(1384, 184, '_works_default_title', 'field_6496fc363126b'),
(1385, 184, 'works_bold_title', 'Выполненные работы'),
(1386, 184, '_works_bold_title', 'field_6496fc5b3126c'),
(1387, 185, '_edit_last', '1'),
(1388, 185, '_edit_lock', '1688750191:1'),
(1399, 191, '_wp_attached_file', '2023/06/8CiYmw3yg0M.jpg'),
(1400, 191, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:809;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2023/06/8CiYmw3yg0M.jpg\";s:8:\"filesize\";i:261653;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"8CiYmw3yg0M-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11299;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"8CiYmw3yg0M-767x1024.jpg\";s:5:\"width\";i:767;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95124;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"8CiYmw3yg0M-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4945;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"8CiYmw3yg0M-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95329;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1412, 195, '_wp_attached_file', '2023/06/hwiqKml-cdw.jpg'),
(1413, 195, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:685;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2023/06/hwiqKml-cdw.jpg\";s:8:\"filesize\";i:279973;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"hwiqKml-cdw-190x300.jpg\";s:5:\"width\";i:190;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12100;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"hwiqKml-cdw-649x1024.jpg\";s:5:\"width\";i:649;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105902;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"hwiqKml-cdw-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5825;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1436, 202, '_wp_attached_file', '2023/06/r-hYlIZJY8I.jpg'),
(1437, 202, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:905;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2023/06/r-hYlIZJY8I.jpg\";s:8:\"filesize\";i:246592;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"r-hYlIZJY8I-251x300.jpg\";s:5:\"width\";i:251;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12434;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"r-hYlIZJY8I-858x1024.jpg\";s:5:\"width\";i:858;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88485;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"r-hYlIZJY8I-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5299;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"r-hYlIZJY8I-768x917.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:917;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:73174;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1444, 205, '_wp_attached_file', '2023/06/work-3.jpg'),
(1445, 205, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:718;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2023/06/work-3.jpg\";s:8:\"filesize\";i:187870;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"work-3-199x300.jpg\";s:5:\"width\";i:199;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8578;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"work-3-681x1024.jpg\";s:5:\"width\";i:681;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71388;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"work-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4157;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1461, 211, '_wp_attached_file', '2023/06/work-2.jpg'),
(1462, 211, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:810;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2023/06/work-2.jpg\";s:8:\"filesize\";i:302932;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"work-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11178;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"work-2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112374;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"work-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4568;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"work-2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112374;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1483, 217, '_wp_attached_file', '2023/06/0Z-3zFlGtxw.jpg'),
(1484, 217, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:810;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2023/06/0Z-3zFlGtxw.jpg\";s:8:\"filesize\";i:190207;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"0Z-3zFlGtxw-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8453;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"0Z-3zFlGtxw-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64763;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"0Z-3zFlGtxw-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4267;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"0Z-3zFlGtxw-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64763;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1491, 220, '_wp_attached_file', '2023/06/service-2-1.jpg'),
(1492, 220, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:682;s:4:\"file\";s:23:\"2023/06/service-2-1.jpg\";s:8:\"filesize\";i:130692;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"service-2-1-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11638;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"service-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4834;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1513, 226, '_edit_last', '1'),
(1514, 226, '_edit_lock', '1687725082:1'),
(1515, 10, 'questions_default_title', 'Ответы на'),
(1516, 10, '_questions_default_title', 'field_6497094bf5fe4'),
(1517, 10, 'questions_bold_title', 'Частые вопросы'),
(1518, 10, '_questions_bold_title', 'field_64970960f5fe5'),
(1519, 230, 'map_latitude', '55.375854'),
(1520, 230, '_map_latitude', 'field_6491b6460ea38'),
(1521, 230, 'longitude_map', '39.051005'),
(1522, 230, '_longitude_map', 'field_6491b6a40ea39'),
(1523, 230, 'map_longitude', '39.051005'),
(1524, 230, '_map_longitude', 'field_6491b6a40ea39'),
(1525, 230, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1526, 230, '_balloon_text', 'field_6491b8a592556'),
(1527, 230, 'hint_text', 'Мы находимся именно здесь!'),
(1528, 230, '_hint_text', 'field_6491b9a622e47'),
(1529, 230, 'top_address_bold', ' г. Егорьевск123'),
(1530, 230, '_top_address_bold', 'field_6496a30bbff2a'),
(1531, 230, 'header_address_bold', ' г. Егорьевск'),
(1532, 230, '_header_address_bold', 'field_6496a30bbff2a'),
(1533, 230, 'header_address_default', '5 мкр., д. 21'),
(1534, 230, '_header_address_default', 'field_6496a4413413f'),
(1535, 230, 'top_tel_bold', 'WhatsApp'),
(1536, 230, '_top_tel_bold', 'field_6496a5e399f9d'),
(1537, 230, 'tel_number', '+7 999 888 77 66'),
(1538, 230, '_tel_number', 'field_6496a61199f9e'),
(1539, 230, 'hero_text_top_bold', 'Студия красоты'),
(1540, 230, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1541, 230, 'hero_text_top_default', 'В городе'),
(1542, 230, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1543, 230, 'hero_text_bottom_bold', 'Егорьевск'),
(1544, 230, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1545, 230, 'hero_action_btn_text', 'Услуги'),
(1546, 230, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1547, 230, 'first_benefit_title', 'Гарантия качества'),
(1548, 230, '_first_benefit_title', 'field_6496ab4b318e3'),
(1549, 230, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(1550, 230, '_first_benefit_description', 'field_6496abed45766'),
(1551, 230, 'second_benefit_title', 'Низкие цены'),
(1552, 230, '_second_benefit_title', 'field_6496ab7d318e5'),
(1553, 230, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1554, 230, '_second_benefit_description', 'field_6496ac1445767'),
(1555, 230, 'third_benefit_title', 'Приятный сервис'),
(1556, 230, '_third_benefit_title', 'field_6496ac5045769'),
(1557, 230, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1558, 230, '_third_benefit_description', 'field_6496ac6b4576a'),
(1559, 230, 'service_default_title', 'Предоставляемые'),
(1560, 230, '_service_default_title', 'field_6496ae0f769bf'),
(1561, 230, 'service_bold_title', 'Услуги'),
(1562, 230, '_service_bold_title', 'field_6496ae2d769c0'),
(1563, 230, 'team_default_title', 'Наша команда'),
(1564, 230, '_team_default_title', 'field_6496c2b921134'),
(1565, 230, 'team_bold_title', 'Профессионалов'),
(1566, 230, '_team_bold_title', 'field_6496c2e521135'),
(1567, 230, 'photoreviews_title_bold', 'фото'),
(1568, 230, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1569, 230, 'photoreviews_title_default', 'отзывы'),
(1570, 230, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1571, 230, 'photoreviews_link_text', 'Больше фото'),
(1572, 230, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1573, 230, 'photoreviews_link_href', 'https://google.com'),
(1574, 230, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1575, 230, 'textreviews_title_bold', ''),
(1576, 230, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1577, 230, 'textreviews_title_default', 'Отзывы'),
(1578, 230, '_textreviews_title_default', 'field_6496edd6258fc'),
(1579, 230, 'textreviews_link_text', 'Смотреть все'),
(1580, 230, '_textreviews_link_text', 'field_6496ee3aad053'),
(1581, 230, 'textreviews_link_href', 'https://google.com'),
(1582, 230, '_textreviews_link_href', 'field_6496ee99ad055'),
(1583, 230, 'works_default_title', 'Наши'),
(1584, 230, '_works_default_title', 'field_6496fc363126b'),
(1585, 230, 'works_bold_title', 'Выполненные работы'),
(1586, 230, '_works_bold_title', 'field_6496fc5b3126c'),
(1587, 230, 'questions_default_title', 'Ответы на'),
(1588, 230, '_questions_default_title', 'field_6497094bf5fe4'),
(1589, 230, 'questions_bold_title', 'Частые вопросы'),
(1590, 230, '_questions_bold_title', 'field_64970960f5fe5'),
(1609, 244, '_edit_last', '1'),
(1610, 244, '_edit_lock', '1687623321:1'),
(1611, 10, 'documents_default_title', 'Необходимые'),
(1612, 10, '_documents_default_title', 'field_64970d0e865f1'),
(1613, 10, 'documents_bold_title', 'Документы и сертификаты'),
(1614, 10, '_documents_bold_title', 'field_64970d28865f2'),
(1615, 248, 'map_latitude', '55.375854'),
(1616, 248, '_map_latitude', 'field_6491b6460ea38'),
(1617, 248, 'longitude_map', '39.051005'),
(1618, 248, '_longitude_map', 'field_6491b6a40ea39'),
(1619, 248, 'map_longitude', '39.051005'),
(1620, 248, '_map_longitude', 'field_6491b6a40ea39'),
(1621, 248, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1622, 248, '_balloon_text', 'field_6491b8a592556'),
(1623, 248, 'hint_text', 'Мы находимся именно здесь!'),
(1624, 248, '_hint_text', 'field_6491b9a622e47'),
(1625, 248, 'top_address_bold', ' г. Егорьевск123'),
(1626, 248, '_top_address_bold', 'field_6496a30bbff2a'),
(1627, 248, 'header_address_bold', ' г. Егорьевск'),
(1628, 248, '_header_address_bold', 'field_6496a30bbff2a'),
(1629, 248, 'header_address_default', '5 мкр., д. 21'),
(1630, 248, '_header_address_default', 'field_6496a4413413f'),
(1631, 248, 'top_tel_bold', 'WhatsApp'),
(1632, 248, '_top_tel_bold', 'field_6496a5e399f9d'),
(1633, 248, 'tel_number', '+7 999 888 77 66'),
(1634, 248, '_tel_number', 'field_6496a61199f9e'),
(1635, 248, 'hero_text_top_bold', 'Студия красоты'),
(1636, 248, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1637, 248, 'hero_text_top_default', 'В городе'),
(1638, 248, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1639, 248, 'hero_text_bottom_bold', 'Егорьевск'),
(1640, 248, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1641, 248, 'hero_action_btn_text', 'Услуги'),
(1642, 248, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1643, 248, 'first_benefit_title', 'Гарантия качества'),
(1644, 248, '_first_benefit_title', 'field_6496ab4b318e3'),
(1645, 248, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(1646, 248, '_first_benefit_description', 'field_6496abed45766'),
(1647, 248, 'second_benefit_title', 'Низкие цены'),
(1648, 248, '_second_benefit_title', 'field_6496ab7d318e5'),
(1649, 248, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1650, 248, '_second_benefit_description', 'field_6496ac1445767'),
(1651, 248, 'third_benefit_title', 'Приятный сервис'),
(1652, 248, '_third_benefit_title', 'field_6496ac5045769'),
(1653, 248, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1654, 248, '_third_benefit_description', 'field_6496ac6b4576a'),
(1655, 248, 'service_default_title', 'Предоставляемые'),
(1656, 248, '_service_default_title', 'field_6496ae0f769bf'),
(1657, 248, 'service_bold_title', 'Услуги'),
(1658, 248, '_service_bold_title', 'field_6496ae2d769c0'),
(1659, 248, 'team_default_title', 'Наша команда'),
(1660, 248, '_team_default_title', 'field_6496c2b921134'),
(1661, 248, 'team_bold_title', 'Профессионалов'),
(1662, 248, '_team_bold_title', 'field_6496c2e521135'),
(1663, 248, 'photoreviews_title_bold', 'фото'),
(1664, 248, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1665, 248, 'photoreviews_title_default', 'отзывы'),
(1666, 248, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1667, 248, 'photoreviews_link_text', 'Больше фото'),
(1668, 248, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1669, 248, 'photoreviews_link_href', 'https://google.com'),
(1670, 248, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1671, 248, 'textreviews_title_bold', ''),
(1672, 248, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1673, 248, 'textreviews_title_default', 'Отзывы'),
(1674, 248, '_textreviews_title_default', 'field_6496edd6258fc'),
(1675, 248, 'textreviews_link_text', 'Смотреть все'),
(1676, 248, '_textreviews_link_text', 'field_6496ee3aad053'),
(1677, 248, 'textreviews_link_href', 'https://google.com'),
(1678, 248, '_textreviews_link_href', 'field_6496ee99ad055'),
(1679, 248, 'works_default_title', 'Наши'),
(1680, 248, '_works_default_title', 'field_6496fc363126b'),
(1681, 248, 'works_bold_title', 'Выполненные работы'),
(1682, 248, '_works_bold_title', 'field_6496fc5b3126c'),
(1683, 248, 'questions_default_title', 'Ответы на'),
(1684, 248, '_questions_default_title', 'field_6497094bf5fe4'),
(1685, 248, 'questions_bold_title', 'Частые вопросы'),
(1686, 248, '_questions_bold_title', 'field_64970960f5fe5'),
(1687, 248, 'documents_default_title', 'Необходимые'),
(1688, 248, '_documents_default_title', 'field_64970d0e865f1'),
(1689, 248, 'documents_bold_title', 'Документы и сертификаты'),
(1690, 248, '_documents_bold_title', 'field_64970d28865f2'),
(1691, 10, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(1692, 10, '_documents_subtitle', 'field_64970e7c7ee71'),
(1693, 250, 'map_latitude', '55.375854'),
(1694, 250, '_map_latitude', 'field_6491b6460ea38'),
(1695, 250, 'longitude_map', '39.051005'),
(1696, 250, '_longitude_map', 'field_6491b6a40ea39'),
(1697, 250, 'map_longitude', '39.051005'),
(1698, 250, '_map_longitude', 'field_6491b6a40ea39'),
(1699, 250, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1700, 250, '_balloon_text', 'field_6491b8a592556'),
(1701, 250, 'hint_text', 'Мы находимся именно здесь!'),
(1702, 250, '_hint_text', 'field_6491b9a622e47'),
(1703, 250, 'top_address_bold', ' г. Егорьевск123'),
(1704, 250, '_top_address_bold', 'field_6496a30bbff2a'),
(1705, 250, 'header_address_bold', ' г. Егорьевск'),
(1706, 250, '_header_address_bold', 'field_6496a30bbff2a'),
(1707, 250, 'header_address_default', '5 мкр., д. 21'),
(1708, 250, '_header_address_default', 'field_6496a4413413f'),
(1709, 250, 'top_tel_bold', 'WhatsApp'),
(1710, 250, '_top_tel_bold', 'field_6496a5e399f9d'),
(1711, 250, 'tel_number', '+7 999 888 77 66'),
(1712, 250, '_tel_number', 'field_6496a61199f9e'),
(1713, 250, 'hero_text_top_bold', 'Студия красоты'),
(1714, 250, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1715, 250, 'hero_text_top_default', 'В городе'),
(1716, 250, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1717, 250, 'hero_text_bottom_bold', 'Егорьевск'),
(1718, 250, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1719, 250, 'hero_action_btn_text', 'Услуги'),
(1720, 250, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1721, 250, 'first_benefit_title', 'Гарантия качества'),
(1722, 250, '_first_benefit_title', 'field_6496ab4b318e3'),
(1723, 250, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(1724, 250, '_first_benefit_description', 'field_6496abed45766'),
(1725, 250, 'second_benefit_title', 'Низкие цены'),
(1726, 250, '_second_benefit_title', 'field_6496ab7d318e5'),
(1727, 250, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1728, 250, '_second_benefit_description', 'field_6496ac1445767'),
(1729, 250, 'third_benefit_title', 'Приятный сервис'),
(1730, 250, '_third_benefit_title', 'field_6496ac5045769'),
(1731, 250, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1732, 250, '_third_benefit_description', 'field_6496ac6b4576a'),
(1733, 250, 'service_default_title', 'Предоставляемые'),
(1734, 250, '_service_default_title', 'field_6496ae0f769bf'),
(1735, 250, 'service_bold_title', 'Услуги'),
(1736, 250, '_service_bold_title', 'field_6496ae2d769c0'),
(1737, 250, 'team_default_title', 'Наша команда'),
(1738, 250, '_team_default_title', 'field_6496c2b921134'),
(1739, 250, 'team_bold_title', 'Профессионалов'),
(1740, 250, '_team_bold_title', 'field_6496c2e521135'),
(1741, 250, 'photoreviews_title_bold', 'фото'),
(1742, 250, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1743, 250, 'photoreviews_title_default', 'отзывы'),
(1744, 250, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1745, 250, 'photoreviews_link_text', 'Больше фото'),
(1746, 250, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1747, 250, 'photoreviews_link_href', 'https://google.com'),
(1748, 250, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1749, 250, 'textreviews_title_bold', ''),
(1750, 250, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1751, 250, 'textreviews_title_default', 'Отзывы'),
(1752, 250, '_textreviews_title_default', 'field_6496edd6258fc'),
(1753, 250, 'textreviews_link_text', 'Смотреть все'),
(1754, 250, '_textreviews_link_text', 'field_6496ee3aad053'),
(1755, 250, 'textreviews_link_href', 'https://google.com'),
(1756, 250, '_textreviews_link_href', 'field_6496ee99ad055'),
(1757, 250, 'works_default_title', 'Наши'),
(1758, 250, '_works_default_title', 'field_6496fc363126b'),
(1759, 250, 'works_bold_title', 'Выполненные работы'),
(1760, 250, '_works_bold_title', 'field_6496fc5b3126c'),
(1761, 250, 'questions_default_title', 'Ответы на'),
(1762, 250, '_questions_default_title', 'field_6497094bf5fe4'),
(1763, 250, 'questions_bold_title', 'Частые вопросы'),
(1764, 250, '_questions_bold_title', 'field_64970960f5fe5'),
(1765, 250, 'documents_default_title', 'Необходимые'),
(1766, 250, '_documents_default_title', 'field_64970d0e865f1'),
(1767, 250, 'documents_bold_title', 'Документы и сертификаты'),
(1768, 250, '_documents_bold_title', 'field_64970d28865f2'),
(1769, 250, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(1770, 250, '_documents_subtitle', 'field_64970e7c7ee71'),
(1772, 252, '_wp_attached_file', '2023/06/document-1.png'),
(1773, 252, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:547;s:6:\"height\";i:780;s:4:\"file\";s:22:\"2023/06/document-1.png\";s:8:\"filesize\";i:39229;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"document-1-210x300.png\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5495;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"document-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1380;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1799, 265, '_edit_last', '1'),
(1800, 265, '_edit_lock', '1687627288:1'),
(1801, 10, 'contacts_default_title', 'Наши'),
(1802, 10, '_contacts_default_title', 'field_649715eb53952'),
(1803, 10, 'contacts_bold_title', 'Контактные данные'),
(1804, 10, '_contacts_bold_title', 'field_6497160c53953'),
(1805, 10, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(1806, 10, '_contacts_subtitle', 'field_6497162e53954'),
(1807, 270, 'map_latitude', '55.375854'),
(1808, 270, '_map_latitude', 'field_6491b6460ea38'),
(1809, 270, 'longitude_map', '39.051005'),
(1810, 270, '_longitude_map', 'field_6491b6a40ea39'),
(1811, 270, 'map_longitude', '39.051005'),
(1812, 270, '_map_longitude', 'field_6491b6a40ea39'),
(1813, 270, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1814, 270, '_balloon_text', 'field_6491b8a592556'),
(1815, 270, 'hint_text', 'Мы находимся именно здесь!'),
(1816, 270, '_hint_text', 'field_6491b9a622e47'),
(1817, 270, 'top_address_bold', ' г. Егорьевск123'),
(1818, 270, '_top_address_bold', 'field_6496a30bbff2a'),
(1819, 270, 'header_address_bold', ' г. Егорьевск'),
(1820, 270, '_header_address_bold', 'field_6496a30bbff2a'),
(1821, 270, 'header_address_default', '5 мкр., д. 21'),
(1822, 270, '_header_address_default', 'field_6496a4413413f'),
(1823, 270, 'top_tel_bold', 'WhatsApp'),
(1824, 270, '_top_tel_bold', 'field_6496a5e399f9d'),
(1825, 270, 'tel_number', '+7 999 888 77 66'),
(1826, 270, '_tel_number', 'field_6496a61199f9e'),
(1827, 270, 'hero_text_top_bold', 'Студия красоты'),
(1828, 270, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1829, 270, 'hero_text_top_default', 'В городе'),
(1830, 270, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1831, 270, 'hero_text_bottom_bold', 'Егорьевск'),
(1832, 270, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1833, 270, 'hero_action_btn_text', 'Услуги'),
(1834, 270, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1835, 270, 'first_benefit_title', 'Гарантия качества'),
(1836, 270, '_first_benefit_title', 'field_6496ab4b318e3'),
(1837, 270, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(1838, 270, '_first_benefit_description', 'field_6496abed45766'),
(1839, 270, 'second_benefit_title', 'Низкие цены'),
(1840, 270, '_second_benefit_title', 'field_6496ab7d318e5'),
(1841, 270, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1842, 270, '_second_benefit_description', 'field_6496ac1445767'),
(1843, 270, 'third_benefit_title', 'Приятный сервис'),
(1844, 270, '_third_benefit_title', 'field_6496ac5045769'),
(1845, 270, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1846, 270, '_third_benefit_description', 'field_6496ac6b4576a'),
(1847, 270, 'service_default_title', 'Предоставляемые'),
(1848, 270, '_service_default_title', 'field_6496ae0f769bf'),
(1849, 270, 'service_bold_title', 'Услуги'),
(1850, 270, '_service_bold_title', 'field_6496ae2d769c0'),
(1851, 270, 'team_default_title', 'Наша команда'),
(1852, 270, '_team_default_title', 'field_6496c2b921134'),
(1853, 270, 'team_bold_title', 'Профессионалов'),
(1854, 270, '_team_bold_title', 'field_6496c2e521135'),
(1855, 270, 'photoreviews_title_bold', 'фото'),
(1856, 270, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1857, 270, 'photoreviews_title_default', 'отзывы'),
(1858, 270, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1859, 270, 'photoreviews_link_text', 'Больше фото'),
(1860, 270, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1861, 270, 'photoreviews_link_href', 'https://google.com'),
(1862, 270, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1863, 270, 'textreviews_title_bold', ''),
(1864, 270, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1865, 270, 'textreviews_title_default', 'Отзывы'),
(1866, 270, '_textreviews_title_default', 'field_6496edd6258fc'),
(1867, 270, 'textreviews_link_text', 'Смотреть все'),
(1868, 270, '_textreviews_link_text', 'field_6496ee3aad053'),
(1869, 270, 'textreviews_link_href', 'https://google.com'),
(1870, 270, '_textreviews_link_href', 'field_6496ee99ad055'),
(1871, 270, 'works_default_title', 'Наши'),
(1872, 270, '_works_default_title', 'field_6496fc363126b'),
(1873, 270, 'works_bold_title', 'Выполненные работы'),
(1874, 270, '_works_bold_title', 'field_6496fc5b3126c'),
(1875, 270, 'questions_default_title', 'Ответы на'),
(1876, 270, '_questions_default_title', 'field_6497094bf5fe4'),
(1877, 270, 'questions_bold_title', 'Частые вопросы'),
(1878, 270, '_questions_bold_title', 'field_64970960f5fe5'),
(1879, 270, 'documents_default_title', 'Необходимые'),
(1880, 270, '_documents_default_title', 'field_64970d0e865f1'),
(1881, 270, 'documents_bold_title', 'Документы и сертификаты'),
(1882, 270, '_documents_bold_title', 'field_64970d28865f2'),
(1883, 270, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(1884, 270, '_documents_subtitle', 'field_64970e7c7ee71'),
(1885, 270, 'contacts_default_title', 'Наши'),
(1886, 270, '_contacts_default_title', 'field_649715eb53952'),
(1887, 270, 'contacts_bold_title', 'Контактные данные'),
(1888, 270, '_contacts_bold_title', 'field_6497160c53953'),
(1889, 270, 'contacts_subtitle', ''),
(1890, 270, '_contacts_subtitle', 'field_6497162e53954'),
(1891, 271, 'map_latitude', '55.375854'),
(1892, 271, '_map_latitude', 'field_6491b6460ea38'),
(1893, 271, 'longitude_map', '39.051005'),
(1894, 271, '_longitude_map', 'field_6491b6a40ea39'),
(1895, 271, 'map_longitude', '39.051005'),
(1896, 271, '_map_longitude', 'field_6491b6a40ea39'),
(1897, 271, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1898, 271, '_balloon_text', 'field_6491b8a592556'),
(1899, 271, 'hint_text', 'Мы находимся именно здесь!'),
(1900, 271, '_hint_text', 'field_6491b9a622e47'),
(1901, 271, 'top_address_bold', ' г. Егорьевск123'),
(1902, 271, '_top_address_bold', 'field_6496a30bbff2a'),
(1903, 271, 'header_address_bold', ' г. Егорьевск'),
(1904, 271, '_header_address_bold', 'field_6496a30bbff2a'),
(1905, 271, 'header_address_default', '5 мкр., д. 21'),
(1906, 271, '_header_address_default', 'field_6496a4413413f'),
(1907, 271, 'top_tel_bold', 'WhatsApp'),
(1908, 271, '_top_tel_bold', 'field_6496a5e399f9d'),
(1909, 271, 'tel_number', '+7 999 888 77 66'),
(1910, 271, '_tel_number', 'field_6496a61199f9e'),
(1911, 271, 'hero_text_top_bold', 'Студия красоты'),
(1912, 271, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1913, 271, 'hero_text_top_default', 'В городе'),
(1914, 271, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1915, 271, 'hero_text_bottom_bold', 'Егорьевск'),
(1916, 271, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(1917, 271, 'hero_action_btn_text', 'Услуги'),
(1918, 271, '_hero_action_btn_text', 'field_6496a99d601cb'),
(1919, 271, 'first_benefit_title', 'Гарантия качества'),
(1920, 271, '_first_benefit_title', 'field_6496ab4b318e3'),
(1921, 271, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(1922, 271, '_first_benefit_description', 'field_6496abed45766'),
(1923, 271, 'second_benefit_title', 'Низкие цены'),
(1924, 271, '_second_benefit_title', 'field_6496ab7d318e5'),
(1925, 271, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(1926, 271, '_second_benefit_description', 'field_6496ac1445767'),
(1927, 271, 'third_benefit_title', 'Приятный сервис'),
(1928, 271, '_third_benefit_title', 'field_6496ac5045769'),
(1929, 271, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(1930, 271, '_third_benefit_description', 'field_6496ac6b4576a'),
(1931, 271, 'service_default_title', 'Предоставляемые'),
(1932, 271, '_service_default_title', 'field_6496ae0f769bf'),
(1933, 271, 'service_bold_title', 'Услуги'),
(1934, 271, '_service_bold_title', 'field_6496ae2d769c0'),
(1935, 271, 'team_default_title', 'Наша команда'),
(1936, 271, '_team_default_title', 'field_6496c2b921134'),
(1937, 271, 'team_bold_title', 'Профессионалов'),
(1938, 271, '_team_bold_title', 'field_6496c2e521135'),
(1939, 271, 'photoreviews_title_bold', 'фото'),
(1940, 271, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(1941, 271, 'photoreviews_title_default', 'отзывы'),
(1942, 271, '_photoreviews_title_default', 'field_6496eda7258fa'),
(1943, 271, 'photoreviews_link_text', 'Больше фото'),
(1944, 271, '_photoreviews_link_text', 'field_6496ee01ad052'),
(1945, 271, 'photoreviews_link_href', 'https://google.com'),
(1946, 271, '_photoreviews_link_href', 'field_6496ee5fad054'),
(1947, 271, 'textreviews_title_bold', ''),
(1948, 271, '_textreviews_title_bold', 'field_6496edd2258fb'),
(1949, 271, 'textreviews_title_default', 'Отзывы'),
(1950, 271, '_textreviews_title_default', 'field_6496edd6258fc'),
(1951, 271, 'textreviews_link_text', 'Смотреть все'),
(1952, 271, '_textreviews_link_text', 'field_6496ee3aad053'),
(1953, 271, 'textreviews_link_href', 'https://google.com'),
(1954, 271, '_textreviews_link_href', 'field_6496ee99ad055'),
(1955, 271, 'works_default_title', 'Наши'),
(1956, 271, '_works_default_title', 'field_6496fc363126b'),
(1957, 271, 'works_bold_title', 'Выполненные работы'),
(1958, 271, '_works_bold_title', 'field_6496fc5b3126c'),
(1959, 271, 'questions_default_title', 'Ответы на'),
(1960, 271, '_questions_default_title', 'field_6497094bf5fe4'),
(1961, 271, 'questions_bold_title', 'Частые вопросы'),
(1962, 271, '_questions_bold_title', 'field_64970960f5fe5'),
(1963, 271, 'documents_default_title', 'Необходимые'),
(1964, 271, '_documents_default_title', 'field_64970d0e865f1'),
(1965, 271, 'documents_bold_title', 'Документы и сертификаты'),
(1966, 271, '_documents_bold_title', 'field_64970d28865f2'),
(1967, 271, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(1968, 271, '_documents_subtitle', 'field_64970e7c7ee71'),
(1969, 271, 'contacts_default_title', 'Наши'),
(1970, 271, '_contacts_default_title', 'field_649715eb53952'),
(1971, 271, 'contacts_bold_title', 'Контактные данные'),
(1972, 271, '_contacts_bold_title', 'field_6497160c53953'),
(1973, 271, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(1974, 271, '_contacts_subtitle', 'field_6497162e53954'),
(1975, 272, 'map_latitude', '55.375854'),
(1976, 272, '_map_latitude', 'field_6491b6460ea38'),
(1977, 272, 'longitude_map', '39.051005'),
(1978, 272, '_longitude_map', 'field_6491b6a40ea39'),
(1979, 272, 'map_longitude', '39.051005'),
(1980, 272, '_map_longitude', 'field_6491b6a40ea39'),
(1981, 272, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(1982, 272, '_balloon_text', 'field_6491b8a592556'),
(1983, 272, 'hint_text', 'Мы находимся именно здесь!'),
(1984, 272, '_hint_text', 'field_6491b9a622e47'),
(1985, 272, 'top_address_bold', ' г. Егорьевск123'),
(1986, 272, '_top_address_bold', 'field_6496a30bbff2a'),
(1987, 272, 'header_address_bold', ' г. Егорьевск'),
(1988, 272, '_header_address_bold', 'field_6496a30bbff2a'),
(1989, 272, 'header_address_default', '5 мкр., д. 21'),
(1990, 272, '_header_address_default', 'field_6496a4413413f'),
(1991, 272, 'top_tel_bold', 'WhatsApp'),
(1992, 272, '_top_tel_bold', 'field_6496a5e399f9d'),
(1993, 272, 'tel_number', '+7 999 888 77 66'),
(1994, 272, '_tel_number', 'field_6496a61199f9e'),
(1995, 272, 'hero_text_top_bold', 'Студия красоты');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1996, 272, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(1997, 272, 'hero_text_top_default', 'В городе'),
(1998, 272, '_hero_text_top_default', 'field_6496a83dc8b00'),
(1999, 272, 'hero_text_bottom_bold', 'Егорьевск'),
(2000, 272, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2001, 272, 'hero_action_btn_text', 'Услуги'),
(2002, 272, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2003, 272, 'first_benefit_title', 'Гарантия качества'),
(2004, 272, '_first_benefit_title', 'field_6496ab4b318e3'),
(2005, 272, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2006, 272, '_first_benefit_description', 'field_6496abed45766'),
(2007, 272, 'second_benefit_title', 'Низкие цены'),
(2008, 272, '_second_benefit_title', 'field_6496ab7d318e5'),
(2009, 272, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2010, 272, '_second_benefit_description', 'field_6496ac1445767'),
(2011, 272, 'third_benefit_title', 'Приятный сервис'),
(2012, 272, '_third_benefit_title', 'field_6496ac5045769'),
(2013, 272, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2014, 272, '_third_benefit_description', 'field_6496ac6b4576a'),
(2015, 272, 'service_default_title', 'Предоставляемые'),
(2016, 272, '_service_default_title', 'field_6496ae0f769bf'),
(2017, 272, 'service_bold_title', 'Услуги'),
(2018, 272, '_service_bold_title', 'field_6496ae2d769c0'),
(2019, 272, 'team_default_title', 'Наша команда'),
(2020, 272, '_team_default_title', 'field_6496c2b921134'),
(2021, 272, 'team_bold_title', 'Профессионалов'),
(2022, 272, '_team_bold_title', 'field_6496c2e521135'),
(2023, 272, 'photoreviews_title_bold', 'фото'),
(2024, 272, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2025, 272, 'photoreviews_title_default', 'отзывы'),
(2026, 272, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2027, 272, 'photoreviews_link_text', 'Больше фото'),
(2028, 272, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2029, 272, 'photoreviews_link_href', 'https://google.com'),
(2030, 272, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2031, 272, 'textreviews_title_bold', ''),
(2032, 272, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2033, 272, 'textreviews_title_default', 'Отзывы'),
(2034, 272, '_textreviews_title_default', 'field_6496edd6258fc'),
(2035, 272, 'textreviews_link_text', 'Смотреть все'),
(2036, 272, '_textreviews_link_text', 'field_6496ee3aad053'),
(2037, 272, 'textreviews_link_href', 'https://google.com'),
(2038, 272, '_textreviews_link_href', 'field_6496ee99ad055'),
(2039, 272, 'works_default_title', 'Наши'),
(2040, 272, '_works_default_title', 'field_6496fc363126b'),
(2041, 272, 'works_bold_title', 'Выполненные работы'),
(2042, 272, '_works_bold_title', 'field_6496fc5b3126c'),
(2043, 272, 'questions_default_title', 'Ответы на'),
(2044, 272, '_questions_default_title', 'field_6497094bf5fe4'),
(2045, 272, 'questions_bold_title', 'Частые вопросы'),
(2046, 272, '_questions_bold_title', 'field_64970960f5fe5'),
(2047, 272, 'documents_default_title', 'Необходимые'),
(2048, 272, '_documents_default_title', 'field_64970d0e865f1'),
(2049, 272, 'documents_bold_title', 'Документы и сертификаты'),
(2050, 272, '_documents_bold_title', 'field_64970d28865f2'),
(2051, 272, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2052, 272, '_documents_subtitle', 'field_64970e7c7ee71'),
(2053, 272, 'contacts_default_title', 'Наши'),
(2054, 272, '_contacts_default_title', 'field_649715eb53952'),
(2055, 272, 'contacts_bold_title', 'Контактные данные'),
(2056, 272, '_contacts_bold_title', 'field_6497160c53953'),
(2057, 272, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2058, 272, '_contacts_subtitle', 'field_6497162e53954'),
(2059, 10, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2060, 10, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2061, 10, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2062, 10, '_contacts_card_address', 'field_6497186ee5817'),
(2063, 10, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2064, 10, '_contacts_schedule', 'field_649718a2e5818'),
(2065, 10, 'contacts_tel_nums', '+7 999 888 77 66'),
(2066, 10, '_contacts_tel_nums', 'field_64971962e5819'),
(2067, 10, 'contacts_email', 'mioka2023@gmail.com'),
(2068, 10, '_contacts_email', 'field_649719b7e581a'),
(2069, 10, 'contacts_info_title', 'Немного информации'),
(2070, 10, '_contacts_info_title', 'field_649719e3e581c'),
(2071, 10, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2072, 10, '_текст_правой_карточки', 'field_64971a43e581d'),
(2073, 282, 'map_latitude', '55.375854'),
(2074, 282, '_map_latitude', 'field_6491b6460ea38'),
(2075, 282, 'longitude_map', '39.051005'),
(2076, 282, '_longitude_map', 'field_6491b6a40ea39'),
(2077, 282, 'map_longitude', '39.051005'),
(2078, 282, '_map_longitude', 'field_6491b6a40ea39'),
(2079, 282, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(2080, 282, '_balloon_text', 'field_6491b8a592556'),
(2081, 282, 'hint_text', 'Мы находимся именно здесь!'),
(2082, 282, '_hint_text', 'field_6491b9a622e47'),
(2083, 282, 'top_address_bold', ' г. Егорьевск123'),
(2084, 282, '_top_address_bold', 'field_6496a30bbff2a'),
(2085, 282, 'header_address_bold', ' г. Егорьевск'),
(2086, 282, '_header_address_bold', 'field_6496a30bbff2a'),
(2087, 282, 'header_address_default', '5 мкр., д. 21'),
(2088, 282, '_header_address_default', 'field_6496a4413413f'),
(2089, 282, 'top_tel_bold', 'WhatsApp'),
(2090, 282, '_top_tel_bold', 'field_6496a5e399f9d'),
(2091, 282, 'tel_number', '+7 999 888 77 66'),
(2092, 282, '_tel_number', 'field_6496a61199f9e'),
(2093, 282, 'hero_text_top_bold', 'Студия красоты'),
(2094, 282, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(2095, 282, 'hero_text_top_default', 'В городе'),
(2096, 282, '_hero_text_top_default', 'field_6496a83dc8b00'),
(2097, 282, 'hero_text_bottom_bold', 'Егорьевск'),
(2098, 282, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2099, 282, 'hero_action_btn_text', 'Услуги'),
(2100, 282, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2101, 282, 'first_benefit_title', 'Гарантия качества'),
(2102, 282, '_first_benefit_title', 'field_6496ab4b318e3'),
(2103, 282, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2104, 282, '_first_benefit_description', 'field_6496abed45766'),
(2105, 282, 'second_benefit_title', 'Низкие цены'),
(2106, 282, '_second_benefit_title', 'field_6496ab7d318e5'),
(2107, 282, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2108, 282, '_second_benefit_description', 'field_6496ac1445767'),
(2109, 282, 'third_benefit_title', 'Приятный сервис'),
(2110, 282, '_third_benefit_title', 'field_6496ac5045769'),
(2111, 282, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2112, 282, '_third_benefit_description', 'field_6496ac6b4576a'),
(2113, 282, 'service_default_title', 'Предоставляемые'),
(2114, 282, '_service_default_title', 'field_6496ae0f769bf'),
(2115, 282, 'service_bold_title', 'Услуги'),
(2116, 282, '_service_bold_title', 'field_6496ae2d769c0'),
(2117, 282, 'team_default_title', 'Наша команда'),
(2118, 282, '_team_default_title', 'field_6496c2b921134'),
(2119, 282, 'team_bold_title', 'Профессионалов'),
(2120, 282, '_team_bold_title', 'field_6496c2e521135'),
(2121, 282, 'photoreviews_title_bold', 'фото'),
(2122, 282, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2123, 282, 'photoreviews_title_default', 'отзывы'),
(2124, 282, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2125, 282, 'photoreviews_link_text', 'Больше фото'),
(2126, 282, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2127, 282, 'photoreviews_link_href', 'https://google.com'),
(2128, 282, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2129, 282, 'textreviews_title_bold', ''),
(2130, 282, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2131, 282, 'textreviews_title_default', 'Отзывы'),
(2132, 282, '_textreviews_title_default', 'field_6496edd6258fc'),
(2133, 282, 'textreviews_link_text', 'Смотреть все'),
(2134, 282, '_textreviews_link_text', 'field_6496ee3aad053'),
(2135, 282, 'textreviews_link_href', 'https://google.com'),
(2136, 282, '_textreviews_link_href', 'field_6496ee99ad055'),
(2137, 282, 'works_default_title', 'Наши'),
(2138, 282, '_works_default_title', 'field_6496fc363126b'),
(2139, 282, 'works_bold_title', 'Выполненные работы'),
(2140, 282, '_works_bold_title', 'field_6496fc5b3126c'),
(2141, 282, 'questions_default_title', 'Ответы на'),
(2142, 282, '_questions_default_title', 'field_6497094bf5fe4'),
(2143, 282, 'questions_bold_title', 'Частые вопросы'),
(2144, 282, '_questions_bold_title', 'field_64970960f5fe5'),
(2145, 282, 'documents_default_title', 'Необходимые'),
(2146, 282, '_documents_default_title', 'field_64970d0e865f1'),
(2147, 282, 'documents_bold_title', 'Документы и сертификаты'),
(2148, 282, '_documents_bold_title', 'field_64970d28865f2'),
(2149, 282, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2150, 282, '_documents_subtitle', 'field_64970e7c7ee71'),
(2151, 282, 'contacts_default_title', 'Наши'),
(2152, 282, '_contacts_default_title', 'field_649715eb53952'),
(2153, 282, 'contacts_bold_title', 'Контактные данные'),
(2154, 282, '_contacts_bold_title', 'field_6497160c53953'),
(2155, 282, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2156, 282, '_contacts_subtitle', 'field_6497162e53954'),
(2157, 282, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2158, 282, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2159, 282, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2160, 282, '_contacts_card_address', 'field_6497186ee5817'),
(2161, 282, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2162, 282, '_contacts_schedule', 'field_649718a2e5818'),
(2163, 282, 'contacts_tel_nums', '+7 999 888 77 66'),
(2164, 282, '_contacts_tel_nums', 'field_64971962e5819'),
(2165, 282, 'contacts_email', 'mioka2023@gmail.com'),
(2166, 282, '_contacts_email', 'field_649719b7e581a'),
(2167, 282, 'contacts_info_title', 'Немного информации'),
(2168, 282, '_contacts_info_title', 'field_649719e3e581c'),
(2169, 282, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2170, 282, '_текст_правой_карточки', 'field_64971a43e581d'),
(2171, 10, 'contacts_fields_title', 'Mioka | Салон красоты'),
(2172, 10, '_contacts_fields_title', 'field_6497185de5816'),
(2173, 10, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2174, 10, '_contacts_info_text', 'field_64971a43e581d'),
(2175, 283, 'map_latitude', '55.375854'),
(2176, 283, '_map_latitude', 'field_6491b6460ea38'),
(2177, 283, 'longitude_map', '39.051005'),
(2178, 283, '_longitude_map', 'field_6491b6a40ea39'),
(2179, 283, 'map_longitude', '39.051005'),
(2180, 283, '_map_longitude', 'field_6491b6a40ea39'),
(2181, 283, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(2182, 283, '_balloon_text', 'field_6491b8a592556'),
(2183, 283, 'hint_text', 'Мы находимся именно здесь!'),
(2184, 283, '_hint_text', 'field_6491b9a622e47'),
(2185, 283, 'top_address_bold', ' г. Егорьевск123'),
(2186, 283, '_top_address_bold', 'field_6496a30bbff2a'),
(2187, 283, 'header_address_bold', ' г. Егорьевск'),
(2188, 283, '_header_address_bold', 'field_6496a30bbff2a'),
(2189, 283, 'header_address_default', '5 мкр., д. 21'),
(2190, 283, '_header_address_default', 'field_6496a4413413f'),
(2191, 283, 'top_tel_bold', 'WhatsApp'),
(2192, 283, '_top_tel_bold', 'field_6496a5e399f9d'),
(2193, 283, 'tel_number', '+7 999 888 77 66'),
(2194, 283, '_tel_number', 'field_6496a61199f9e'),
(2195, 283, 'hero_text_top_bold', 'Студия красоты'),
(2196, 283, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(2197, 283, 'hero_text_top_default', 'В городе'),
(2198, 283, '_hero_text_top_default', 'field_6496a83dc8b00'),
(2199, 283, 'hero_text_bottom_bold', 'Егорьевск'),
(2200, 283, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2201, 283, 'hero_action_btn_text', 'Услуги'),
(2202, 283, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2203, 283, 'first_benefit_title', 'Гарантия качества'),
(2204, 283, '_first_benefit_title', 'field_6496ab4b318e3'),
(2205, 283, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2206, 283, '_first_benefit_description', 'field_6496abed45766'),
(2207, 283, 'second_benefit_title', 'Низкие цены'),
(2208, 283, '_second_benefit_title', 'field_6496ab7d318e5'),
(2209, 283, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2210, 283, '_second_benefit_description', 'field_6496ac1445767'),
(2211, 283, 'third_benefit_title', 'Приятный сервис'),
(2212, 283, '_third_benefit_title', 'field_6496ac5045769'),
(2213, 283, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2214, 283, '_third_benefit_description', 'field_6496ac6b4576a'),
(2215, 283, 'service_default_title', 'Предоставляемые'),
(2216, 283, '_service_default_title', 'field_6496ae0f769bf'),
(2217, 283, 'service_bold_title', 'Услуги'),
(2218, 283, '_service_bold_title', 'field_6496ae2d769c0'),
(2219, 283, 'team_default_title', 'Наша команда'),
(2220, 283, '_team_default_title', 'field_6496c2b921134'),
(2221, 283, 'team_bold_title', 'Профессионалов'),
(2222, 283, '_team_bold_title', 'field_6496c2e521135'),
(2223, 283, 'photoreviews_title_bold', 'фото'),
(2224, 283, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2225, 283, 'photoreviews_title_default', 'отзывы'),
(2226, 283, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2227, 283, 'photoreviews_link_text', 'Больше фото'),
(2228, 283, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2229, 283, 'photoreviews_link_href', 'https://google.com'),
(2230, 283, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2231, 283, 'textreviews_title_bold', ''),
(2232, 283, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2233, 283, 'textreviews_title_default', 'Отзывы'),
(2234, 283, '_textreviews_title_default', 'field_6496edd6258fc'),
(2235, 283, 'textreviews_link_text', 'Смотреть все'),
(2236, 283, '_textreviews_link_text', 'field_6496ee3aad053'),
(2237, 283, 'textreviews_link_href', 'https://google.com'),
(2238, 283, '_textreviews_link_href', 'field_6496ee99ad055'),
(2239, 283, 'works_default_title', 'Наши'),
(2240, 283, '_works_default_title', 'field_6496fc363126b'),
(2241, 283, 'works_bold_title', 'Выполненные работы'),
(2242, 283, '_works_bold_title', 'field_6496fc5b3126c'),
(2243, 283, 'questions_default_title', 'Ответы на'),
(2244, 283, '_questions_default_title', 'field_6497094bf5fe4'),
(2245, 283, 'questions_bold_title', 'Частые вопросы'),
(2246, 283, '_questions_bold_title', 'field_64970960f5fe5'),
(2247, 283, 'documents_default_title', 'Необходимые'),
(2248, 283, '_documents_default_title', 'field_64970d0e865f1'),
(2249, 283, 'documents_bold_title', 'Документы и сертификаты'),
(2250, 283, '_documents_bold_title', 'field_64970d28865f2'),
(2251, 283, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2252, 283, '_documents_subtitle', 'field_64970e7c7ee71'),
(2253, 283, 'contacts_default_title', 'Наши'),
(2254, 283, '_contacts_default_title', 'field_649715eb53952'),
(2255, 283, 'contacts_bold_title', 'Контактные данные'),
(2256, 283, '_contacts_bold_title', 'field_6497160c53953'),
(2257, 283, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2258, 283, '_contacts_subtitle', 'field_6497162e53954'),
(2259, 283, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2260, 283, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2261, 283, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2262, 283, '_contacts_card_address', 'field_6497186ee5817'),
(2263, 283, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2264, 283, '_contacts_schedule', 'field_649718a2e5818'),
(2265, 283, 'contacts_tel_nums', '+7 999 888 77 66'),
(2266, 283, '_contacts_tel_nums', 'field_64971962e5819'),
(2267, 283, 'contacts_email', 'mioka2023@gmail.com'),
(2268, 283, '_contacts_email', 'field_649719b7e581a'),
(2269, 283, 'contacts_info_title', 'Немного информации'),
(2270, 283, '_contacts_info_title', 'field_649719e3e581c'),
(2271, 283, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2272, 283, '_текст_правой_карточки', 'field_64971a43e581d'),
(2273, 283, 'contacts_fields_title', 'Mioka | Салон красоты'),
(2274, 283, '_contacts_fields_title', 'field_6497185de5816'),
(2275, 283, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2276, 283, '_contacts_info_text', 'field_64971a43e581d'),
(2277, 10, 'vk_href', 'https://vk.com/public220943642'),
(2278, 10, '_vk_href', 'field_64971d0e399cf'),
(2279, 286, 'map_latitude', '55.375854'),
(2280, 286, '_map_latitude', 'field_6491b6460ea38'),
(2281, 286, 'longitude_map', '39.051005'),
(2282, 286, '_longitude_map', 'field_6491b6a40ea39'),
(2283, 286, 'map_longitude', '39.051005'),
(2284, 286, '_map_longitude', 'field_6491b6a40ea39'),
(2285, 286, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(2286, 286, '_balloon_text', 'field_6491b8a592556'),
(2287, 286, 'hint_text', 'Мы находимся именно здесь!'),
(2288, 286, '_hint_text', 'field_6491b9a622e47'),
(2289, 286, 'top_address_bold', ' г. Егорьевск123'),
(2290, 286, '_top_address_bold', 'field_6496a30bbff2a'),
(2291, 286, 'header_address_bold', ' г. Егорьевск'),
(2292, 286, '_header_address_bold', 'field_6496a30bbff2a'),
(2293, 286, 'header_address_default', '5 мкр., д. 21'),
(2294, 286, '_header_address_default', 'field_6496a4413413f'),
(2295, 286, 'top_tel_bold', 'WhatsApp'),
(2296, 286, '_top_tel_bold', 'field_6496a5e399f9d'),
(2297, 286, 'tel_number', '+7 999 888 77 66'),
(2298, 286, '_tel_number', 'field_6496a61199f9e'),
(2299, 286, 'hero_text_top_bold', 'Студия красоты'),
(2300, 286, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(2301, 286, 'hero_text_top_default', 'В городе'),
(2302, 286, '_hero_text_top_default', 'field_6496a83dc8b00'),
(2303, 286, 'hero_text_bottom_bold', 'Егорьевск'),
(2304, 286, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2305, 286, 'hero_action_btn_text', 'Услуги'),
(2306, 286, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2307, 286, 'first_benefit_title', 'Гарантия качества'),
(2308, 286, '_first_benefit_title', 'field_6496ab4b318e3'),
(2309, 286, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2310, 286, '_first_benefit_description', 'field_6496abed45766'),
(2311, 286, 'second_benefit_title', 'Низкие цены'),
(2312, 286, '_second_benefit_title', 'field_6496ab7d318e5'),
(2313, 286, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2314, 286, '_second_benefit_description', 'field_6496ac1445767'),
(2315, 286, 'third_benefit_title', 'Приятный сервис'),
(2316, 286, '_third_benefit_title', 'field_6496ac5045769'),
(2317, 286, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2318, 286, '_third_benefit_description', 'field_6496ac6b4576a'),
(2319, 286, 'service_default_title', 'Предоставляемые'),
(2320, 286, '_service_default_title', 'field_6496ae0f769bf'),
(2321, 286, 'service_bold_title', 'Услуги'),
(2322, 286, '_service_bold_title', 'field_6496ae2d769c0'),
(2323, 286, 'team_default_title', 'Наша команда'),
(2324, 286, '_team_default_title', 'field_6496c2b921134'),
(2325, 286, 'team_bold_title', 'Профессионалов'),
(2326, 286, '_team_bold_title', 'field_6496c2e521135'),
(2327, 286, 'photoreviews_title_bold', 'фото'),
(2328, 286, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2329, 286, 'photoreviews_title_default', 'отзывы'),
(2330, 286, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2331, 286, 'photoreviews_link_text', 'Больше фото'),
(2332, 286, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2333, 286, 'photoreviews_link_href', 'https://google.com'),
(2334, 286, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2335, 286, 'textreviews_title_bold', ''),
(2336, 286, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2337, 286, 'textreviews_title_default', 'Отзывы'),
(2338, 286, '_textreviews_title_default', 'field_6496edd6258fc'),
(2339, 286, 'textreviews_link_text', 'Смотреть все'),
(2340, 286, '_textreviews_link_text', 'field_6496ee3aad053'),
(2341, 286, 'textreviews_link_href', 'https://google.com'),
(2342, 286, '_textreviews_link_href', 'field_6496ee99ad055'),
(2343, 286, 'works_default_title', 'Наши'),
(2344, 286, '_works_default_title', 'field_6496fc363126b'),
(2345, 286, 'works_bold_title', 'Выполненные работы'),
(2346, 286, '_works_bold_title', 'field_6496fc5b3126c'),
(2347, 286, 'questions_default_title', 'Ответы на'),
(2348, 286, '_questions_default_title', 'field_6497094bf5fe4'),
(2349, 286, 'questions_bold_title', 'Частые вопросы'),
(2350, 286, '_questions_bold_title', 'field_64970960f5fe5'),
(2351, 286, 'documents_default_title', 'Необходимые'),
(2352, 286, '_documents_default_title', 'field_64970d0e865f1'),
(2353, 286, 'documents_bold_title', 'Документы и сертификаты'),
(2354, 286, '_documents_bold_title', 'field_64970d28865f2'),
(2355, 286, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2356, 286, '_documents_subtitle', 'field_64970e7c7ee71'),
(2357, 286, 'contacts_default_title', 'Наши'),
(2358, 286, '_contacts_default_title', 'field_649715eb53952'),
(2359, 286, 'contacts_bold_title', 'Контактные данные'),
(2360, 286, '_contacts_bold_title', 'field_6497160c53953'),
(2361, 286, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2362, 286, '_contacts_subtitle', 'field_6497162e53954'),
(2363, 286, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2364, 286, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2365, 286, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2366, 286, '_contacts_card_address', 'field_6497186ee5817'),
(2367, 286, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2368, 286, '_contacts_schedule', 'field_649718a2e5818'),
(2369, 286, 'contacts_tel_nums', '+7 999 888 77 66'),
(2370, 286, '_contacts_tel_nums', 'field_64971962e5819'),
(2371, 286, 'contacts_email', 'mioka2023@gmail.com'),
(2372, 286, '_contacts_email', 'field_649719b7e581a'),
(2373, 286, 'contacts_info_title', 'Немного информации'),
(2374, 286, '_contacts_info_title', 'field_649719e3e581c'),
(2375, 286, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2376, 286, '_текст_правой_карточки', 'field_64971a43e581d'),
(2377, 286, 'contacts_fields_title', 'Mioka | Салон красоты'),
(2378, 286, '_contacts_fields_title', 'field_6497185de5816'),
(2379, 286, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2380, 286, '_contacts_info_text', 'field_64971a43e581d'),
(2381, 286, 'vk_href', 'https://vk.com/public220943642'),
(2382, 286, '_vk_href', 'field_64971d0e399cf'),
(2383, 10, 'tg_href', '#'),
(2384, 10, '_tg_href', 'field_64971dc1f4d39'),
(2385, 10, 'ok_href', '#'),
(2386, 10, '_ok_href', 'field_64971dc0f4d38'),
(2387, 10, 'whatsapp_href', '#'),
(2388, 10, '_whatsapp_href', 'field_64971dc0f4d37'),
(2389, 10, 'youtube_href', '#'),
(2390, 10, '_youtube_href', 'field_64971dbff4d36'),
(2391, 292, 'map_latitude', '55.375854'),
(2392, 292, '_map_latitude', 'field_6491b6460ea38'),
(2393, 292, 'longitude_map', '39.051005'),
(2394, 292, '_longitude_map', 'field_6491b6a40ea39'),
(2395, 292, 'map_longitude', '39.051005'),
(2396, 292, '_map_longitude', 'field_6491b6a40ea39'),
(2397, 292, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(2398, 292, '_balloon_text', 'field_6491b8a592556'),
(2399, 292, 'hint_text', 'Мы находимся именно здесь!'),
(2400, 292, '_hint_text', 'field_6491b9a622e47'),
(2401, 292, 'top_address_bold', ' г. Егорьевск123'),
(2402, 292, '_top_address_bold', 'field_6496a30bbff2a'),
(2403, 292, 'header_address_bold', ' г. Егорьевск'),
(2404, 292, '_header_address_bold', 'field_6496a30bbff2a'),
(2405, 292, 'header_address_default', '5 мкр., д. 21'),
(2406, 292, '_header_address_default', 'field_6496a4413413f'),
(2407, 292, 'top_tel_bold', 'WhatsApp'),
(2408, 292, '_top_tel_bold', 'field_6496a5e399f9d'),
(2409, 292, 'tel_number', '+7 999 888 77 66'),
(2410, 292, '_tel_number', 'field_6496a61199f9e'),
(2411, 292, 'hero_text_top_bold', 'Студия красоты'),
(2412, 292, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(2413, 292, 'hero_text_top_default', 'В городе'),
(2414, 292, '_hero_text_top_default', 'field_6496a83dc8b00'),
(2415, 292, 'hero_text_bottom_bold', 'Егорьевск'),
(2416, 292, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2417, 292, 'hero_action_btn_text', 'Услуги'),
(2418, 292, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2419, 292, 'first_benefit_title', 'Гарантия качества'),
(2420, 292, '_first_benefit_title', 'field_6496ab4b318e3'),
(2421, 292, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2422, 292, '_first_benefit_description', 'field_6496abed45766'),
(2423, 292, 'second_benefit_title', 'Низкие цены'),
(2424, 292, '_second_benefit_title', 'field_6496ab7d318e5'),
(2425, 292, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2426, 292, '_second_benefit_description', 'field_6496ac1445767'),
(2427, 292, 'third_benefit_title', 'Приятный сервис'),
(2428, 292, '_third_benefit_title', 'field_6496ac5045769'),
(2429, 292, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2430, 292, '_third_benefit_description', 'field_6496ac6b4576a'),
(2431, 292, 'service_default_title', 'Предоставляемые'),
(2432, 292, '_service_default_title', 'field_6496ae0f769bf'),
(2433, 292, 'service_bold_title', 'Услуги'),
(2434, 292, '_service_bold_title', 'field_6496ae2d769c0'),
(2435, 292, 'team_default_title', 'Наша команда'),
(2436, 292, '_team_default_title', 'field_6496c2b921134'),
(2437, 292, 'team_bold_title', 'Профессионалов'),
(2438, 292, '_team_bold_title', 'field_6496c2e521135'),
(2439, 292, 'photoreviews_title_bold', 'фото'),
(2440, 292, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2441, 292, 'photoreviews_title_default', 'отзывы'),
(2442, 292, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2443, 292, 'photoreviews_link_text', 'Больше фото'),
(2444, 292, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2445, 292, 'photoreviews_link_href', 'https://google.com'),
(2446, 292, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2447, 292, 'textreviews_title_bold', ''),
(2448, 292, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2449, 292, 'textreviews_title_default', 'Отзывы'),
(2450, 292, '_textreviews_title_default', 'field_6496edd6258fc'),
(2451, 292, 'textreviews_link_text', 'Смотреть все'),
(2452, 292, '_textreviews_link_text', 'field_6496ee3aad053'),
(2453, 292, 'textreviews_link_href', 'https://google.com'),
(2454, 292, '_textreviews_link_href', 'field_6496ee99ad055'),
(2455, 292, 'works_default_title', 'Наши'),
(2456, 292, '_works_default_title', 'field_6496fc363126b'),
(2457, 292, 'works_bold_title', 'Выполненные работы'),
(2458, 292, '_works_bold_title', 'field_6496fc5b3126c'),
(2459, 292, 'questions_default_title', 'Ответы на'),
(2460, 292, '_questions_default_title', 'field_6497094bf5fe4'),
(2461, 292, 'questions_bold_title', 'Частые вопросы'),
(2462, 292, '_questions_bold_title', 'field_64970960f5fe5'),
(2463, 292, 'documents_default_title', 'Необходимые'),
(2464, 292, '_documents_default_title', 'field_64970d0e865f1'),
(2465, 292, 'documents_bold_title', 'Документы и сертификаты'),
(2466, 292, '_documents_bold_title', 'field_64970d28865f2'),
(2467, 292, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2468, 292, '_documents_subtitle', 'field_64970e7c7ee71'),
(2469, 292, 'contacts_default_title', 'Наши'),
(2470, 292, '_contacts_default_title', 'field_649715eb53952'),
(2471, 292, 'contacts_bold_title', 'Контактные данные'),
(2472, 292, '_contacts_bold_title', 'field_6497160c53953'),
(2473, 292, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2474, 292, '_contacts_subtitle', 'field_6497162e53954'),
(2475, 292, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2476, 292, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2477, 292, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2478, 292, '_contacts_card_address', 'field_6497186ee5817'),
(2479, 292, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2480, 292, '_contacts_schedule', 'field_649718a2e5818'),
(2481, 292, 'contacts_tel_nums', '+7 999 888 77 66'),
(2482, 292, '_contacts_tel_nums', 'field_64971962e5819'),
(2483, 292, 'contacts_email', 'mioka2023@gmail.com'),
(2484, 292, '_contacts_email', 'field_649719b7e581a'),
(2485, 292, 'contacts_info_title', 'Немного информации'),
(2486, 292, '_contacts_info_title', 'field_649719e3e581c'),
(2487, 292, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2488, 292, '_текст_правой_карточки', 'field_64971a43e581d'),
(2489, 292, 'contacts_fields_title', 'Mioka | Салон красоты'),
(2490, 292, '_contacts_fields_title', 'field_6497185de5816'),
(2491, 292, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2492, 292, '_contacts_info_text', 'field_64971a43e581d'),
(2493, 292, 'vk_href', 'https://vk.com/public220943642'),
(2494, 292, '_vk_href', 'field_64971d0e399cf'),
(2495, 292, 'tg_href', '#'),
(2496, 292, '_tg_href', 'field_64971dc1f4d39'),
(2497, 292, 'ok_href', '#'),
(2498, 292, '_ok_href', 'field_64971dc0f4d38'),
(2499, 292, 'whatsapp_href', '#'),
(2500, 292, '_whatsapp_href', 'field_64971dc0f4d37'),
(2501, 292, 'youtube_href', '#'),
(2502, 292, '_youtube_href', 'field_64971dbff4d36'),
(2503, 10, 'dzen_href', '#'),
(2504, 10, '_dzen_href', 'field_649723992fecf'),
(2505, 293, 'map_latitude', '55.375854'),
(2506, 293, '_map_latitude', 'field_6491b6460ea38'),
(2507, 293, 'longitude_map', '39.051005'),
(2508, 293, '_longitude_map', 'field_6491b6a40ea39'),
(2509, 293, 'map_longitude', '39.051005'),
(2510, 293, '_map_longitude', 'field_6491b6a40ea39'),
(2511, 293, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(2512, 293, '_balloon_text', 'field_6491b8a592556'),
(2513, 293, 'hint_text', 'Мы находимся именно здесь!'),
(2514, 293, '_hint_text', 'field_6491b9a622e47'),
(2515, 293, 'top_address_bold', ' г. Егорьевск123'),
(2516, 293, '_top_address_bold', 'field_6496a30bbff2a'),
(2517, 293, 'header_address_bold', ' г. Егорьевск'),
(2518, 293, '_header_address_bold', 'field_6496a30bbff2a'),
(2519, 293, 'header_address_default', '5 мкр., д. 21'),
(2520, 293, '_header_address_default', 'field_6496a4413413f'),
(2521, 293, 'top_tel_bold', 'WhatsApp'),
(2522, 293, '_top_tel_bold', 'field_6496a5e399f9d'),
(2523, 293, 'tel_number', '+7 999 888 77 66'),
(2524, 293, '_tel_number', 'field_6496a61199f9e'),
(2525, 293, 'hero_text_top_bold', 'Студия красоты'),
(2526, 293, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(2527, 293, 'hero_text_top_default', 'В городе'),
(2528, 293, '_hero_text_top_default', 'field_6496a83dc8b00'),
(2529, 293, 'hero_text_bottom_bold', 'Егорьевск'),
(2530, 293, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2531, 293, 'hero_action_btn_text', 'Услуги'),
(2532, 293, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2533, 293, 'first_benefit_title', 'Гарантия качества'),
(2534, 293, '_first_benefit_title', 'field_6496ab4b318e3'),
(2535, 293, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2536, 293, '_first_benefit_description', 'field_6496abed45766'),
(2537, 293, 'second_benefit_title', 'Низкие цены'),
(2538, 293, '_second_benefit_title', 'field_6496ab7d318e5'),
(2539, 293, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2540, 293, '_second_benefit_description', 'field_6496ac1445767'),
(2541, 293, 'third_benefit_title', 'Приятный сервис'),
(2542, 293, '_third_benefit_title', 'field_6496ac5045769'),
(2543, 293, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2544, 293, '_third_benefit_description', 'field_6496ac6b4576a'),
(2545, 293, 'service_default_title', 'Предоставляемые'),
(2546, 293, '_service_default_title', 'field_6496ae0f769bf'),
(2547, 293, 'service_bold_title', 'Услуги'),
(2548, 293, '_service_bold_title', 'field_6496ae2d769c0'),
(2549, 293, 'team_default_title', 'Наша команда'),
(2550, 293, '_team_default_title', 'field_6496c2b921134'),
(2551, 293, 'team_bold_title', 'Профессионалов'),
(2552, 293, '_team_bold_title', 'field_6496c2e521135'),
(2553, 293, 'photoreviews_title_bold', 'фото'),
(2554, 293, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2555, 293, 'photoreviews_title_default', 'отзывы'),
(2556, 293, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2557, 293, 'photoreviews_link_text', 'Больше фото'),
(2558, 293, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2559, 293, 'photoreviews_link_href', 'https://google.com'),
(2560, 293, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2561, 293, 'textreviews_title_bold', ''),
(2562, 293, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2563, 293, 'textreviews_title_default', 'Отзывы'),
(2564, 293, '_textreviews_title_default', 'field_6496edd6258fc'),
(2565, 293, 'textreviews_link_text', 'Смотреть все'),
(2566, 293, '_textreviews_link_text', 'field_6496ee3aad053'),
(2567, 293, 'textreviews_link_href', 'https://google.com'),
(2568, 293, '_textreviews_link_href', 'field_6496ee99ad055'),
(2569, 293, 'works_default_title', 'Наши'),
(2570, 293, '_works_default_title', 'field_6496fc363126b'),
(2571, 293, 'works_bold_title', 'Выполненные работы'),
(2572, 293, '_works_bold_title', 'field_6496fc5b3126c'),
(2573, 293, 'questions_default_title', 'Ответы на'),
(2574, 293, '_questions_default_title', 'field_6497094bf5fe4'),
(2575, 293, 'questions_bold_title', 'Частые вопросы'),
(2576, 293, '_questions_bold_title', 'field_64970960f5fe5'),
(2577, 293, 'documents_default_title', 'Необходимые'),
(2578, 293, '_documents_default_title', 'field_64970d0e865f1'),
(2579, 293, 'documents_bold_title', 'Документы и сертификаты'),
(2580, 293, '_documents_bold_title', 'field_64970d28865f2'),
(2581, 293, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2582, 293, '_documents_subtitle', 'field_64970e7c7ee71'),
(2583, 293, 'contacts_default_title', 'Наши'),
(2584, 293, '_contacts_default_title', 'field_649715eb53952'),
(2585, 293, 'contacts_bold_title', 'Контактные данные'),
(2586, 293, '_contacts_bold_title', 'field_6497160c53953'),
(2587, 293, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2588, 293, '_contacts_subtitle', 'field_6497162e53954'),
(2589, 293, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2590, 293, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2591, 293, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2592, 293, '_contacts_card_address', 'field_6497186ee5817'),
(2593, 293, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2594, 293, '_contacts_schedule', 'field_649718a2e5818'),
(2595, 293, 'contacts_tel_nums', '+7 999 888 77 66'),
(2596, 293, '_contacts_tel_nums', 'field_64971962e5819'),
(2597, 293, 'contacts_email', 'mioka2023@gmail.com'),
(2598, 293, '_contacts_email', 'field_649719b7e581a'),
(2599, 293, 'contacts_info_title', 'Немного информации'),
(2600, 293, '_contacts_info_title', 'field_649719e3e581c'),
(2601, 293, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2602, 293, '_текст_правой_карточки', 'field_64971a43e581d'),
(2603, 293, 'contacts_fields_title', 'Mioka | Салон красоты'),
(2604, 293, '_contacts_fields_title', 'field_6497185de5816'),
(2605, 293, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2606, 293, '_contacts_info_text', 'field_64971a43e581d'),
(2607, 293, 'vk_href', 'https://vk.com/public220943642'),
(2608, 293, '_vk_href', 'field_64971d0e399cf'),
(2609, 293, 'tg_href', '#'),
(2610, 293, '_tg_href', 'field_64971dc1f4d39'),
(2611, 293, 'ok_href', '#'),
(2612, 293, '_ok_href', 'field_64971dc0f4d38'),
(2613, 293, 'whatsapp_href', '#'),
(2614, 293, '_whatsapp_href', 'field_64971dc0f4d37'),
(2615, 293, 'youtube_href', '#'),
(2616, 293, '_youtube_href', 'field_64971dbff4d36'),
(2617, 293, 'dzen_href', '#'),
(2618, 293, '_dzen_href', 'field_649723992fecf'),
(2619, 294, '_edit_last', '1'),
(2620, 294, '_edit_lock', '1688749833:1'),
(2621, 10, 'footer_contacts_title', 'Контактная информация'),
(2622, 10, '_footer_contacts_title', 'field_6497273aa52cf'),
(2623, 10, 'footer_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2624, 10, '_footer_address', 'field_649726c8a52cc'),
(2625, 10, 'footer_telephone', '+7 999 888 77 66'),
(2626, 10, '_footer_telephone', 'field_649726e5a52cd'),
(2627, 10, 'footer_schedule', 'Работаем ежедневно с 10:00 до 20:00 5 мкр, д 21'),
(2628, 10, '_footer_schedule', 'field_64972708a52ce'),
(2629, 10, 'footer_anchors_title', 'Для посетителей'),
(2630, 10, '_footer_anchors_title', 'field_64972773a52d1'),
(2631, 10, 'footer_form_title', 'Возникли вопросы? Свяжитесь с нами'),
(2632, 10, '_footer_form_title', 'field_64972858a52d3'),
(2633, 304, 'map_latitude', '55.375854'),
(2634, 304, '_map_latitude', 'field_6491b6460ea38'),
(2635, 304, 'longitude_map', '39.051005'),
(2636, 304, '_longitude_map', 'field_6491b6a40ea39'),
(2637, 304, 'map_longitude', '39.051005'),
(2638, 304, '_map_longitude', 'field_6491b6a40ea39'),
(2639, 304, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(2640, 304, '_balloon_text', 'field_6491b8a592556'),
(2641, 304, 'hint_text', 'Мы находимся именно здесь!'),
(2642, 304, '_hint_text', 'field_6491b9a622e47'),
(2643, 304, 'top_address_bold', ' г. Егорьевск123'),
(2644, 304, '_top_address_bold', 'field_6496a30bbff2a'),
(2645, 304, 'header_address_bold', ' г. Егорьевск'),
(2646, 304, '_header_address_bold', 'field_6496a30bbff2a'),
(2647, 304, 'header_address_default', '5 мкр., д. 21'),
(2648, 304, '_header_address_default', 'field_6496a4413413f'),
(2649, 304, 'top_tel_bold', 'WhatsApp'),
(2650, 304, '_top_tel_bold', 'field_6496a5e399f9d'),
(2651, 304, 'tel_number', '+7 999 888 77 66'),
(2652, 304, '_tel_number', 'field_6496a61199f9e'),
(2653, 304, 'hero_text_top_bold', 'Студия красоты'),
(2654, 304, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(2655, 304, 'hero_text_top_default', 'В городе'),
(2656, 304, '_hero_text_top_default', 'field_6496a83dc8b00'),
(2657, 304, 'hero_text_bottom_bold', 'Егорьевск'),
(2658, 304, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2659, 304, 'hero_action_btn_text', 'Услуги'),
(2660, 304, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2661, 304, 'first_benefit_title', 'Гарантия качества'),
(2662, 304, '_first_benefit_title', 'field_6496ab4b318e3'),
(2663, 304, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2664, 304, '_first_benefit_description', 'field_6496abed45766'),
(2665, 304, 'second_benefit_title', 'Низкие цены'),
(2666, 304, '_second_benefit_title', 'field_6496ab7d318e5'),
(2667, 304, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2668, 304, '_second_benefit_description', 'field_6496ac1445767'),
(2669, 304, 'third_benefit_title', 'Приятный сервис'),
(2670, 304, '_third_benefit_title', 'field_6496ac5045769'),
(2671, 304, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2672, 304, '_third_benefit_description', 'field_6496ac6b4576a'),
(2673, 304, 'service_default_title', 'Предоставляемые'),
(2674, 304, '_service_default_title', 'field_6496ae0f769bf'),
(2675, 304, 'service_bold_title', 'Услуги'),
(2676, 304, '_service_bold_title', 'field_6496ae2d769c0'),
(2677, 304, 'team_default_title', 'Наша команда'),
(2678, 304, '_team_default_title', 'field_6496c2b921134'),
(2679, 304, 'team_bold_title', 'Профессионалов'),
(2680, 304, '_team_bold_title', 'field_6496c2e521135'),
(2681, 304, 'photoreviews_title_bold', 'фото'),
(2682, 304, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2683, 304, 'photoreviews_title_default', 'отзывы'),
(2684, 304, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2685, 304, 'photoreviews_link_text', 'Больше фото'),
(2686, 304, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2687, 304, 'photoreviews_link_href', 'https://google.com'),
(2688, 304, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2689, 304, 'textreviews_title_bold', ''),
(2690, 304, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2691, 304, 'textreviews_title_default', 'Отзывы'),
(2692, 304, '_textreviews_title_default', 'field_6496edd6258fc'),
(2693, 304, 'textreviews_link_text', 'Смотреть все'),
(2694, 304, '_textreviews_link_text', 'field_6496ee3aad053'),
(2695, 304, 'textreviews_link_href', 'https://google.com'),
(2696, 304, '_textreviews_link_href', 'field_6496ee99ad055'),
(2697, 304, 'works_default_title', 'Наши'),
(2698, 304, '_works_default_title', 'field_6496fc363126b'),
(2699, 304, 'works_bold_title', 'Выполненные работы'),
(2700, 304, '_works_bold_title', 'field_6496fc5b3126c'),
(2701, 304, 'questions_default_title', 'Ответы на'),
(2702, 304, '_questions_default_title', 'field_6497094bf5fe4'),
(2703, 304, 'questions_bold_title', 'Частые вопросы'),
(2704, 304, '_questions_bold_title', 'field_64970960f5fe5'),
(2705, 304, 'documents_default_title', 'Необходимые'),
(2706, 304, '_documents_default_title', 'field_64970d0e865f1'),
(2707, 304, 'documents_bold_title', 'Документы и сертификаты'),
(2708, 304, '_documents_bold_title', 'field_64970d28865f2'),
(2709, 304, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2710, 304, '_documents_subtitle', 'field_64970e7c7ee71'),
(2711, 304, 'contacts_default_title', 'Наши'),
(2712, 304, '_contacts_default_title', 'field_649715eb53952'),
(2713, 304, 'contacts_bold_title', 'Контактные данные'),
(2714, 304, '_contacts_bold_title', 'field_6497160c53953'),
(2715, 304, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2716, 304, '_contacts_subtitle', 'field_6497162e53954'),
(2717, 304, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2718, 304, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2719, 304, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2720, 304, '_contacts_card_address', 'field_6497186ee5817'),
(2721, 304, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2722, 304, '_contacts_schedule', 'field_649718a2e5818'),
(2723, 304, 'contacts_tel_nums', '+7 999 888 77 66'),
(2724, 304, '_contacts_tel_nums', 'field_64971962e5819'),
(2725, 304, 'contacts_email', 'mioka2023@gmail.com'),
(2726, 304, '_contacts_email', 'field_649719b7e581a'),
(2727, 304, 'contacts_info_title', 'Немного информации'),
(2728, 304, '_contacts_info_title', 'field_649719e3e581c'),
(2729, 304, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2730, 304, '_текст_правой_карточки', 'field_64971a43e581d'),
(2731, 304, 'contacts_fields_title', 'Mioka | Салон красоты'),
(2732, 304, '_contacts_fields_title', 'field_6497185de5816'),
(2733, 304, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2734, 304, '_contacts_info_text', 'field_64971a43e581d'),
(2735, 304, 'vk_href', 'https://vk.com/public220943642'),
(2736, 304, '_vk_href', 'field_64971d0e399cf'),
(2737, 304, 'tg_href', '#'),
(2738, 304, '_tg_href', 'field_64971dc1f4d39'),
(2739, 304, 'ok_href', '#'),
(2740, 304, '_ok_href', 'field_64971dc0f4d38'),
(2741, 304, 'whatsapp_href', '#'),
(2742, 304, '_whatsapp_href', 'field_64971dc0f4d37'),
(2743, 304, 'youtube_href', '#'),
(2744, 304, '_youtube_href', 'field_64971dbff4d36'),
(2745, 304, 'dzen_href', '#'),
(2746, 304, '_dzen_href', 'field_649723992fecf'),
(2747, 304, 'footer_contacts_title', 'Контактная информация'),
(2748, 304, '_footer_contacts_title', 'field_6497273aa52cf'),
(2749, 304, 'footer_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2750, 304, '_footer_address', 'field_649726c8a52cc'),
(2751, 304, 'footer_telephone', '+7 999 888 77 66'),
(2752, 304, '_footer_telephone', 'field_649726e5a52cd'),
(2753, 304, 'footer_schedule', 'Работаем ежедневно с 10:00 до 20:00 5 мкр, д 21'),
(2754, 304, '_footer_schedule', 'field_64972708a52ce'),
(2755, 304, 'footer_anchors_title', 'Для посетителей'),
(2756, 304, '_footer_anchors_title', 'field_64972773a52d1'),
(2757, 304, 'footer_form_title', 'Возникли вопросы? Свяжитесь с нами'),
(2758, 304, '_footer_form_title', 'field_64972858a52d3'),
(2759, 305, 'map_latitude', '55.375854'),
(2760, 305, '_map_latitude', 'field_6491b6460ea38'),
(2761, 305, 'longitude_map', '39.051005'),
(2762, 305, '_longitude_map', 'field_6491b6a40ea39'),
(2763, 305, 'map_longitude', '39.051005'),
(2764, 305, '_map_longitude', 'field_6491b6a40ea39'),
(2765, 305, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(2766, 305, '_balloon_text', 'field_6491b8a592556'),
(2767, 305, 'hint_text', 'Мы находимся именно здесь!'),
(2768, 305, '_hint_text', 'field_6491b9a622e47'),
(2769, 305, 'top_address_bold', ' г. Егорьевск123'),
(2770, 305, '_top_address_bold', 'field_6496a30bbff2a'),
(2771, 305, 'header_address_bold', ' г. Егорьевск'),
(2772, 305, '_header_address_bold', 'field_6496a30bbff2a'),
(2773, 305, 'header_address_default', '5 мкр., д. 21'),
(2774, 305, '_header_address_default', 'field_6496a4413413f'),
(2775, 305, 'top_tel_bold', 'WhatsApp'),
(2776, 305, '_top_tel_bold', 'field_6496a5e399f9d'),
(2777, 305, 'tel_number', '+7 999 888 77 66'),
(2778, 305, '_tel_number', 'field_6496a61199f9e'),
(2779, 305, 'hero_text_top_bold', 'Студия красоты'),
(2780, 305, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(2781, 305, 'hero_text_top_default', 'В городе'),
(2782, 305, '_hero_text_top_default', 'field_6496a83dc8b00'),
(2783, 305, 'hero_text_bottom_bold', 'Егорьевск'),
(2784, 305, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2785, 305, 'hero_action_btn_text', 'Услуги'),
(2786, 305, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2787, 305, 'first_benefit_title', 'Гарантия качества'),
(2788, 305, '_first_benefit_title', 'field_6496ab4b318e3'),
(2789, 305, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2790, 305, '_first_benefit_description', 'field_6496abed45766'),
(2791, 305, 'second_benefit_title', 'Низкие цены');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2792, 305, '_second_benefit_title', 'field_6496ab7d318e5'),
(2793, 305, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2794, 305, '_second_benefit_description', 'field_6496ac1445767'),
(2795, 305, 'third_benefit_title', 'Приятный сервис'),
(2796, 305, '_third_benefit_title', 'field_6496ac5045769'),
(2797, 305, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2798, 305, '_third_benefit_description', 'field_6496ac6b4576a'),
(2799, 305, 'service_default_title', 'Предоставляемые'),
(2800, 305, '_service_default_title', 'field_6496ae0f769bf'),
(2801, 305, 'service_bold_title', 'Услуги'),
(2802, 305, '_service_bold_title', 'field_6496ae2d769c0'),
(2803, 305, 'team_default_title', 'Наша команда'),
(2804, 305, '_team_default_title', 'field_6496c2b921134'),
(2805, 305, 'team_bold_title', 'Профессионалов'),
(2806, 305, '_team_bold_title', 'field_6496c2e521135'),
(2807, 305, 'photoreviews_title_bold', 'фото'),
(2808, 305, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2809, 305, 'photoreviews_title_default', 'отзывы'),
(2810, 305, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2811, 305, 'photoreviews_link_text', 'Больше фото'),
(2812, 305, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2813, 305, 'photoreviews_link_href', 'https://google.com'),
(2814, 305, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2815, 305, 'textreviews_title_bold', ''),
(2816, 305, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2817, 305, 'textreviews_title_default', 'Отзывы'),
(2818, 305, '_textreviews_title_default', 'field_6496edd6258fc'),
(2819, 305, 'textreviews_link_text', 'Смотреть все'),
(2820, 305, '_textreviews_link_text', 'field_6496ee3aad053'),
(2821, 305, 'textreviews_link_href', 'https://google.com'),
(2822, 305, '_textreviews_link_href', 'field_6496ee99ad055'),
(2823, 305, 'works_default_title', 'Наши'),
(2824, 305, '_works_default_title', 'field_6496fc363126b'),
(2825, 305, 'works_bold_title', 'Выполненные работы'),
(2826, 305, '_works_bold_title', 'field_6496fc5b3126c'),
(2827, 305, 'questions_default_title', 'Ответы на'),
(2828, 305, '_questions_default_title', 'field_6497094bf5fe4'),
(2829, 305, 'questions_bold_title', 'Частые вопросы'),
(2830, 305, '_questions_bold_title', 'field_64970960f5fe5'),
(2831, 305, 'documents_default_title', 'Необходимые'),
(2832, 305, '_documents_default_title', 'field_64970d0e865f1'),
(2833, 305, 'documents_bold_title', 'Документы и сертификаты'),
(2834, 305, '_documents_bold_title', 'field_64970d28865f2'),
(2835, 305, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2836, 305, '_documents_subtitle', 'field_64970e7c7ee71'),
(2837, 305, 'contacts_default_title', 'Наши'),
(2838, 305, '_contacts_default_title', 'field_649715eb53952'),
(2839, 305, 'contacts_bold_title', 'Контактные данные'),
(2840, 305, '_contacts_bold_title', 'field_6497160c53953'),
(2841, 305, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2842, 305, '_contacts_subtitle', 'field_6497162e53954'),
(2843, 305, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2844, 305, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2845, 305, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2846, 305, '_contacts_card_address', 'field_6497186ee5817'),
(2847, 305, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2848, 305, '_contacts_schedule', 'field_649718a2e5818'),
(2849, 305, 'contacts_tel_nums', '+7 999 888 77 66'),
(2850, 305, '_contacts_tel_nums', 'field_64971962e5819'),
(2851, 305, 'contacts_email', 'mioka2023@gmail.com'),
(2852, 305, '_contacts_email', 'field_649719b7e581a'),
(2853, 305, 'contacts_info_title', 'Немного информации'),
(2854, 305, '_contacts_info_title', 'field_649719e3e581c'),
(2855, 305, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2856, 305, '_текст_правой_карточки', 'field_64971a43e581d'),
(2857, 305, 'contacts_fields_title', 'Mioka | Салон красоты'),
(2858, 305, '_contacts_fields_title', 'field_6497185de5816'),
(2859, 305, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2860, 305, '_contacts_info_text', 'field_64971a43e581d'),
(2861, 305, 'vk_href', 'https://vk.com/public220943642'),
(2862, 305, '_vk_href', 'field_64971d0e399cf'),
(2863, 305, 'tg_href', '#'),
(2864, 305, '_tg_href', 'field_64971dc1f4d39'),
(2865, 305, 'ok_href', '#'),
(2866, 305, '_ok_href', 'field_64971dc0f4d38'),
(2867, 305, 'whatsapp_href', '#'),
(2868, 305, '_whatsapp_href', 'field_64971dc0f4d37'),
(2869, 305, 'youtube_href', '#'),
(2870, 305, '_youtube_href', 'field_64971dbff4d36'),
(2871, 305, 'dzen_href', '#'),
(2872, 305, '_dzen_href', 'field_649723992fecf'),
(2873, 305, 'footer_contacts_title', 'Контактная информация'),
(2874, 305, '_footer_contacts_title', 'field_6497273aa52cf'),
(2875, 305, 'footer_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2876, 305, '_footer_address', 'field_649726c8a52cc'),
(2877, 305, 'footer_telephone', '+7 999 888 77 66'),
(2878, 305, '_footer_telephone', 'field_649726e5a52cd'),
(2879, 305, 'footer_schedule', 'Работаем ежедневно с 10:00 до 20:00 5 мкр, д 21'),
(2880, 305, '_footer_schedule', 'field_64972708a52ce'),
(2881, 305, 'footer_anchors_title', 'Для посетителей'),
(2882, 305, '_footer_anchors_title', 'field_64972773a52d1'),
(2883, 305, 'footer_form_title', 'Возникли вопросы? Свяжитесь с нами'),
(2884, 305, '_footer_form_title', 'field_64972858a52d3'),
(2885, 10, 'скрипт_карты', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(2886, 10, '_скрипт_карты', 'field_6497325edb330'),
(2887, 309, 'map_latitude', '55.375854'),
(2888, 309, '_map_latitude', 'field_6491b6460ea38'),
(2889, 309, 'longitude_map', '39.051005'),
(2890, 309, '_longitude_map', 'field_6491b6a40ea39'),
(2891, 309, 'map_longitude', '39.051005'),
(2892, 309, '_map_longitude', 'field_6491b6a40ea39'),
(2893, 309, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(2894, 309, '_balloon_text', 'field_6491b8a592556'),
(2895, 309, 'hint_text', 'Мы находимся именно здесь!'),
(2896, 309, '_hint_text', 'field_6491b9a622e47'),
(2897, 309, 'top_address_bold', ' г. Егорьевск123'),
(2898, 309, '_top_address_bold', 'field_6496a30bbff2a'),
(2899, 309, 'header_address_bold', ' г. Егорьевск'),
(2900, 309, '_header_address_bold', 'field_6496a30bbff2a'),
(2901, 309, 'header_address_default', '5 мкр., д. 21'),
(2902, 309, '_header_address_default', 'field_6496a4413413f'),
(2903, 309, 'top_tel_bold', 'WhatsApp'),
(2904, 309, '_top_tel_bold', 'field_6496a5e399f9d'),
(2905, 309, 'tel_number', '+7 999 888 77 66'),
(2906, 309, '_tel_number', 'field_6496a61199f9e'),
(2907, 309, 'hero_text_top_bold', 'Студия красоты'),
(2908, 309, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(2909, 309, 'hero_text_top_default', 'В городе'),
(2910, 309, '_hero_text_top_default', 'field_6496a83dc8b00'),
(2911, 309, 'hero_text_bottom_bold', 'Егорьевск'),
(2912, 309, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(2913, 309, 'hero_action_btn_text', 'Услуги'),
(2914, 309, '_hero_action_btn_text', 'field_6496a99d601cb'),
(2915, 309, 'first_benefit_title', 'Гарантия качества'),
(2916, 309, '_first_benefit_title', 'field_6496ab4b318e3'),
(2917, 309, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(2918, 309, '_first_benefit_description', 'field_6496abed45766'),
(2919, 309, 'second_benefit_title', 'Низкие цены'),
(2920, 309, '_second_benefit_title', 'field_6496ab7d318e5'),
(2921, 309, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(2922, 309, '_second_benefit_description', 'field_6496ac1445767'),
(2923, 309, 'third_benefit_title', 'Приятный сервис'),
(2924, 309, '_third_benefit_title', 'field_6496ac5045769'),
(2925, 309, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(2926, 309, '_third_benefit_description', 'field_6496ac6b4576a'),
(2927, 309, 'service_default_title', 'Предоставляемые'),
(2928, 309, '_service_default_title', 'field_6496ae0f769bf'),
(2929, 309, 'service_bold_title', 'Услуги'),
(2930, 309, '_service_bold_title', 'field_6496ae2d769c0'),
(2931, 309, 'team_default_title', 'Наша команда'),
(2932, 309, '_team_default_title', 'field_6496c2b921134'),
(2933, 309, 'team_bold_title', 'Профессионалов'),
(2934, 309, '_team_bold_title', 'field_6496c2e521135'),
(2935, 309, 'photoreviews_title_bold', 'фото'),
(2936, 309, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(2937, 309, 'photoreviews_title_default', 'отзывы'),
(2938, 309, '_photoreviews_title_default', 'field_6496eda7258fa'),
(2939, 309, 'photoreviews_link_text', 'Больше фото'),
(2940, 309, '_photoreviews_link_text', 'field_6496ee01ad052'),
(2941, 309, 'photoreviews_link_href', 'https://google.com'),
(2942, 309, '_photoreviews_link_href', 'field_6496ee5fad054'),
(2943, 309, 'textreviews_title_bold', ''),
(2944, 309, '_textreviews_title_bold', 'field_6496edd2258fb'),
(2945, 309, 'textreviews_title_default', 'Отзывы'),
(2946, 309, '_textreviews_title_default', 'field_6496edd6258fc'),
(2947, 309, 'textreviews_link_text', 'Смотреть все'),
(2948, 309, '_textreviews_link_text', 'field_6496ee3aad053'),
(2949, 309, 'textreviews_link_href', 'https://google.com'),
(2950, 309, '_textreviews_link_href', 'field_6496ee99ad055'),
(2951, 309, 'works_default_title', 'Наши'),
(2952, 309, '_works_default_title', 'field_6496fc363126b'),
(2953, 309, 'works_bold_title', 'Выполненные работы'),
(2954, 309, '_works_bold_title', 'field_6496fc5b3126c'),
(2955, 309, 'questions_default_title', 'Ответы на'),
(2956, 309, '_questions_default_title', 'field_6497094bf5fe4'),
(2957, 309, 'questions_bold_title', 'Частые вопросы'),
(2958, 309, '_questions_bold_title', 'field_64970960f5fe5'),
(2959, 309, 'documents_default_title', 'Необходимые'),
(2960, 309, '_documents_default_title', 'field_64970d0e865f1'),
(2961, 309, 'documents_bold_title', 'Документы и сертификаты'),
(2962, 309, '_documents_bold_title', 'field_64970d28865f2'),
(2963, 309, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2964, 309, '_documents_subtitle', 'field_64970e7c7ee71'),
(2965, 309, 'contacts_default_title', 'Наши'),
(2966, 309, '_contacts_default_title', 'field_649715eb53952'),
(2967, 309, 'contacts_bold_title', 'Контактные данные'),
(2968, 309, '_contacts_bold_title', 'field_6497160c53953'),
(2969, 309, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(2970, 309, '_contacts_subtitle', 'field_6497162e53954'),
(2971, 309, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(2972, 309, '_заголовок_левой_карточки', 'field_6497185de5816'),
(2973, 309, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(2974, 309, '_contacts_card_address', 'field_6497186ee5817'),
(2975, 309, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(2976, 309, '_contacts_schedule', 'field_649718a2e5818'),
(2977, 309, 'contacts_tel_nums', '+7 999 888 77 66'),
(2978, 309, '_contacts_tel_nums', 'field_64971962e5819'),
(2979, 309, 'contacts_email', 'mioka2023@gmail.com'),
(2980, 309, '_contacts_email', 'field_649719b7e581a'),
(2981, 309, 'contacts_info_title', 'Немного информации'),
(2982, 309, '_contacts_info_title', 'field_649719e3e581c'),
(2983, 309, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2984, 309, '_текст_правой_карточки', 'field_64971a43e581d'),
(2985, 309, 'contacts_fields_title', 'Mioka | Салон красоты'),
(2986, 309, '_contacts_fields_title', 'field_6497185de5816'),
(2987, 309, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(2988, 309, '_contacts_info_text', 'field_64971a43e581d'),
(2989, 309, 'vk_href', 'https://vk.com/public220943642'),
(2990, 309, '_vk_href', 'field_64971d0e399cf'),
(2991, 309, 'tg_href', '#'),
(2992, 309, '_tg_href', 'field_64971dc1f4d39'),
(2993, 309, 'ok_href', '#'),
(2994, 309, '_ok_href', 'field_64971dc0f4d38'),
(2995, 309, 'whatsapp_href', '#'),
(2996, 309, '_whatsapp_href', 'field_64971dc0f4d37'),
(2997, 309, 'youtube_href', '#'),
(2998, 309, '_youtube_href', 'field_64971dbff4d36'),
(2999, 309, 'dzen_href', '#'),
(3000, 309, '_dzen_href', 'field_649723992fecf'),
(3001, 309, 'footer_contacts_title', 'Контактная информация'),
(3002, 309, '_footer_contacts_title', 'field_6497273aa52cf'),
(3003, 309, 'footer_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3004, 309, '_footer_address', 'field_649726c8a52cc'),
(3005, 309, 'footer_telephone', '+7 999 888 77 66'),
(3006, 309, '_footer_telephone', 'field_649726e5a52cd'),
(3007, 309, 'footer_schedule', 'Работаем ежедневно с 10:00 до 20:00 5 мкр, д 21'),
(3008, 309, '_footer_schedule', 'field_64972708a52ce'),
(3009, 309, 'footer_anchors_title', 'Для посетителей'),
(3010, 309, '_footer_anchors_title', 'field_64972773a52d1'),
(3011, 309, 'footer_form_title', 'Возникли вопросы? Свяжитесь с нами'),
(3012, 309, '_footer_form_title', 'field_64972858a52d3'),
(3013, 309, 'скрипт_карты', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(3014, 309, '_скрипт_карты', 'field_6497325edb330'),
(3015, 10, 'map_constructor', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(3016, 10, '_map_constructor', 'field_6497325edb330'),
(3017, 310, 'map_latitude', '55.375854'),
(3018, 310, '_map_latitude', 'field_6491b6460ea38'),
(3019, 310, 'longitude_map', '39.051005'),
(3020, 310, '_longitude_map', 'field_6491b6a40ea39'),
(3021, 310, 'map_longitude', '39.051005'),
(3022, 310, '_map_longitude', 'field_6491b6a40ea39'),
(3023, 310, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(3024, 310, '_balloon_text', 'field_6491b8a592556'),
(3025, 310, 'hint_text', 'Мы находимся именно здесь!'),
(3026, 310, '_hint_text', 'field_6491b9a622e47'),
(3027, 310, 'top_address_bold', ' г. Егорьевск123'),
(3028, 310, '_top_address_bold', 'field_6496a30bbff2a'),
(3029, 310, 'header_address_bold', ' г. Егорьевск'),
(3030, 310, '_header_address_bold', 'field_6496a30bbff2a'),
(3031, 310, 'header_address_default', '5 мкр., д. 21'),
(3032, 310, '_header_address_default', 'field_6496a4413413f'),
(3033, 310, 'top_tel_bold', 'WhatsApp'),
(3034, 310, '_top_tel_bold', 'field_6496a5e399f9d'),
(3035, 310, 'tel_number', '+7 999 888 77 66'),
(3036, 310, '_tel_number', 'field_6496a61199f9e'),
(3037, 310, 'hero_text_top_bold', 'Студия красоты'),
(3038, 310, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(3039, 310, 'hero_text_top_default', 'В городе'),
(3040, 310, '_hero_text_top_default', 'field_6496a83dc8b00'),
(3041, 310, 'hero_text_bottom_bold', 'Егорьевск'),
(3042, 310, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(3043, 310, 'hero_action_btn_text', 'Услуги'),
(3044, 310, '_hero_action_btn_text', 'field_6496a99d601cb'),
(3045, 310, 'first_benefit_title', 'Гарантия качества'),
(3046, 310, '_first_benefit_title', 'field_6496ab4b318e3'),
(3047, 310, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(3048, 310, '_first_benefit_description', 'field_6496abed45766'),
(3049, 310, 'second_benefit_title', 'Низкие цены'),
(3050, 310, '_second_benefit_title', 'field_6496ab7d318e5'),
(3051, 310, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(3052, 310, '_second_benefit_description', 'field_6496ac1445767'),
(3053, 310, 'third_benefit_title', 'Приятный сервис'),
(3054, 310, '_third_benefit_title', 'field_6496ac5045769'),
(3055, 310, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(3056, 310, '_third_benefit_description', 'field_6496ac6b4576a'),
(3057, 310, 'service_default_title', 'Предоставляемые'),
(3058, 310, '_service_default_title', 'field_6496ae0f769bf'),
(3059, 310, 'service_bold_title', 'Услуги'),
(3060, 310, '_service_bold_title', 'field_6496ae2d769c0'),
(3061, 310, 'team_default_title', 'Наша команда'),
(3062, 310, '_team_default_title', 'field_6496c2b921134'),
(3063, 310, 'team_bold_title', 'Профессионалов'),
(3064, 310, '_team_bold_title', 'field_6496c2e521135'),
(3065, 310, 'photoreviews_title_bold', 'фото'),
(3066, 310, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(3067, 310, 'photoreviews_title_default', 'отзывы'),
(3068, 310, '_photoreviews_title_default', 'field_6496eda7258fa'),
(3069, 310, 'photoreviews_link_text', 'Больше фото'),
(3070, 310, '_photoreviews_link_text', 'field_6496ee01ad052'),
(3071, 310, 'photoreviews_link_href', 'https://google.com'),
(3072, 310, '_photoreviews_link_href', 'field_6496ee5fad054'),
(3073, 310, 'textreviews_title_bold', ''),
(3074, 310, '_textreviews_title_bold', 'field_6496edd2258fb'),
(3075, 310, 'textreviews_title_default', 'Отзывы'),
(3076, 310, '_textreviews_title_default', 'field_6496edd6258fc'),
(3077, 310, 'textreviews_link_text', 'Смотреть все'),
(3078, 310, '_textreviews_link_text', 'field_6496ee3aad053'),
(3079, 310, 'textreviews_link_href', 'https://google.com'),
(3080, 310, '_textreviews_link_href', 'field_6496ee99ad055'),
(3081, 310, 'works_default_title', 'Наши'),
(3082, 310, '_works_default_title', 'field_6496fc363126b'),
(3083, 310, 'works_bold_title', 'Выполненные работы'),
(3084, 310, '_works_bold_title', 'field_6496fc5b3126c'),
(3085, 310, 'questions_default_title', 'Ответы на'),
(3086, 310, '_questions_default_title', 'field_6497094bf5fe4'),
(3087, 310, 'questions_bold_title', 'Частые вопросы'),
(3088, 310, '_questions_bold_title', 'field_64970960f5fe5'),
(3089, 310, 'documents_default_title', 'Необходимые'),
(3090, 310, '_documents_default_title', 'field_64970d0e865f1'),
(3091, 310, 'documents_bold_title', 'Документы и сертификаты'),
(3092, 310, '_documents_bold_title', 'field_64970d28865f2'),
(3093, 310, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(3094, 310, '_documents_subtitle', 'field_64970e7c7ee71'),
(3095, 310, 'contacts_default_title', 'Наши'),
(3096, 310, '_contacts_default_title', 'field_649715eb53952'),
(3097, 310, 'contacts_bold_title', 'Контактные данные'),
(3098, 310, '_contacts_bold_title', 'field_6497160c53953'),
(3099, 310, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(3100, 310, '_contacts_subtitle', 'field_6497162e53954'),
(3101, 310, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(3102, 310, '_заголовок_левой_карточки', 'field_6497185de5816'),
(3103, 310, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3104, 310, '_contacts_card_address', 'field_6497186ee5817'),
(3105, 310, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(3106, 310, '_contacts_schedule', 'field_649718a2e5818'),
(3107, 310, 'contacts_tel_nums', '+7 999 888 77 66'),
(3108, 310, '_contacts_tel_nums', 'field_64971962e5819'),
(3109, 310, 'contacts_email', 'mioka2023@gmail.com'),
(3110, 310, '_contacts_email', 'field_649719b7e581a'),
(3111, 310, 'contacts_info_title', 'Немного информации'),
(3112, 310, '_contacts_info_title', 'field_649719e3e581c'),
(3113, 310, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(3114, 310, '_текст_правой_карточки', 'field_64971a43e581d'),
(3115, 310, 'contacts_fields_title', 'Mioka | Салон красоты'),
(3116, 310, '_contacts_fields_title', 'field_6497185de5816'),
(3117, 310, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(3118, 310, '_contacts_info_text', 'field_64971a43e581d'),
(3119, 310, 'vk_href', 'https://vk.com/public220943642'),
(3120, 310, '_vk_href', 'field_64971d0e399cf'),
(3121, 310, 'tg_href', '#'),
(3122, 310, '_tg_href', 'field_64971dc1f4d39'),
(3123, 310, 'ok_href', '#'),
(3124, 310, '_ok_href', 'field_64971dc0f4d38'),
(3125, 310, 'whatsapp_href', '#'),
(3126, 310, '_whatsapp_href', 'field_64971dc0f4d37'),
(3127, 310, 'youtube_href', '#'),
(3128, 310, '_youtube_href', 'field_64971dbff4d36'),
(3129, 310, 'dzen_href', '#'),
(3130, 310, '_dzen_href', 'field_649723992fecf'),
(3131, 310, 'footer_contacts_title', 'Контактная информация'),
(3132, 310, '_footer_contacts_title', 'field_6497273aa52cf'),
(3133, 310, 'footer_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3134, 310, '_footer_address', 'field_649726c8a52cc'),
(3135, 310, 'footer_telephone', '+7 999 888 77 66'),
(3136, 310, '_footer_telephone', 'field_649726e5a52cd'),
(3137, 310, 'footer_schedule', 'Работаем ежедневно с 10:00 до 20:00 5 мкр, д 21'),
(3138, 310, '_footer_schedule', 'field_64972708a52ce'),
(3139, 310, 'footer_anchors_title', 'Для посетителей'),
(3140, 310, '_footer_anchors_title', 'field_64972773a52d1'),
(3141, 310, 'footer_form_title', 'Возникли вопросы? Свяжитесь с нами'),
(3142, 310, '_footer_form_title', 'field_64972858a52d3'),
(3143, 310, 'скрипт_карты', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(3144, 310, '_скрипт_карты', 'field_6497325edb330'),
(3145, 310, 'map_constructor', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(3146, 310, '_map_constructor', 'field_6497325edb330'),
(3175, 316, '_wp_attached_file', '2023/06/og-logo.jpg'),
(3176, 316, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:906;s:4:\"file\";s:19:\"2023/06/og-logo.jpg\";s:8:\"filesize\";i:51973;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"og-logo-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3121;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"og-logo-1024x725.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:725;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17057;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"og-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1749;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"og-logo-768x544.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:544;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11455;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3177, 10, '_yoast_wpseo_focuskw', 'Студия красоты'),
(3178, 10, '_yoast_wpseo_title', '«%%sitename%% | %%sitedesc%%» в городе Егорьевск'),
(3179, 10, '_yoast_wpseo_metadesc', 'Студия красоты Mioka, город Егорьевск. Мы находимся по адресу: г. Егорьевск, 5-й микрорайон, дом 21. Делаем качественно и по небольшим ценам.'),
(3180, 10, '_yoast_wpseo_linkdex', '42'),
(3181, 10, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(3182, 10, '_yoast_wpseo_wordproof_timestamp', ''),
(3183, 10, '_yoast_wpseo_is_cornerstone', '1'),
(3184, 318, '_edit_last', '1'),
(3185, 318, '_edit_lock', '1688033094:1'),
(3186, 322, '_edit_lock', '1688799841:1'),
(3187, 322, '_edit_last', '1'),
(3188, 322, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(3189, 322, '_yoast_wpseo_wordproof_timestamp', ''),
(3190, 322, 'order_default_title', 'Оформление'),
(3191, 322, '_order_default_title', 'field_649d40748da81'),
(3192, 322, 'order_bold_title', 'Записи'),
(3193, 322, '_order_bold_title', 'field_649d40aa8da82'),
(3194, 324, 'order_default_title', 'Оформление'),
(3195, 324, '_order_default_title', 'field_649d40748da81'),
(3196, 324, 'order_bold_title', 'Записи'),
(3197, 324, '_order_bold_title', 'field_649d40aa8da82'),
(3198, 322, 'order_submit_text', 'Оформить'),
(3199, 322, '_order_submit_text', 'field_649d41bb15e48'),
(3200, 327, 'order_default_title', 'Оформление'),
(3201, 327, '_order_default_title', 'field_649d40748da81'),
(3202, 327, 'order_bold_title', 'Записи'),
(3203, 327, '_order_bold_title', 'field_649d40aa8da82'),
(3204, 327, 'order_submit_text', ''),
(3205, 327, '_order_submit_text', 'field_649d41bb15e48'),
(3206, 328, 'order_default_title', 'Оформление'),
(3207, 328, '_order_default_title', 'field_649d40748da81'),
(3208, 328, 'order_bold_title', 'Записи'),
(3209, 328, '_order_bold_title', 'field_649d40aa8da82'),
(3210, 328, 'order_submit_text', 'Оформить'),
(3211, 328, '_order_submit_text', 'field_649d41bb15e48'),
(3220, 338, '_edit_last', '1'),
(3221, 338, '_edit_lock', '1688038665:1'),
(3222, 338, '_thumbnail_id', '92'),
(3223, 338, 'service_price', '1135'),
(3224, 338, '_service_price', 'field_6496b40f155f8'),
(3225, 338, 'service_href', 'https://google.com'),
(3226, 338, '_service_href', 'field_6496ba4caafb0'),
(3230, 340, '_edit_lock', '1688059213:1'),
(3231, 340, '_edit_last', '1'),
(3232, 340, 'service_price', '500'),
(3233, 340, '_service_price', 'field_6496b40f155f8'),
(3234, 340, 'service_href', 'https://google.com'),
(3235, 340, '_service_href', 'field_6496ba4caafb0'),
(3236, 341, '_edit_lock', '1688750011:1'),
(3237, 341, '_edit_last', '1'),
(3238, 341, 'service_price', '400'),
(3239, 341, '_service_price', 'field_6496b40f155f8'),
(3240, 341, 'service_href', 'https://google.com'),
(3241, 341, '_service_href', 'field_6496ba4caafb0'),
(3242, 342, '_edit_lock', '1688750045:1'),
(3243, 342, '_thumbnail_id', '110'),
(3244, 342, '_edit_last', '1'),
(3245, 342, 'service_price', '600'),
(3246, 342, '_service_price', 'field_6496b40f155f8'),
(3247, 342, 'service_href', 'https://google.com'),
(3248, 342, '_service_href', 'field_6496ba4caafb0'),
(3250, 341, '_thumbnail_id', '106'),
(3251, 340, '_thumbnail_id', '220'),
(3252, 344, '_edit_lock', '1688750027:1'),
(3253, 344, '_thumbnail_id', '125'),
(3254, 344, '_edit_last', '1'),
(3255, 344, 'team_member_position', ''),
(3256, 344, '_team_member_position', 'field_6496caaf1bc9d'),
(3257, 344, 'team_member_btn_action_href', ''),
(3258, 344, '_team_member_btn_action_href', 'field_6496cb0c1bc9e'),
(3259, 345, '_edit_lock', '1688891236:1'),
(3260, 345, '_thumbnail_id', '110'),
(3261, 345, '_edit_last', '1'),
(3262, 345, 'team_member_position', ''),
(3263, 345, '_team_member_position', 'field_6496caaf1bc9d'),
(3264, 345, 'team_member_btn_action_href', ''),
(3265, 345, '_team_member_btn_action_href', 'field_6496cb0c1bc9e'),
(3267, 347, '_edit_lock', '1688574176:1'),
(3268, 348, '_wp_attached_file', '2023/06/work-1-1.jpg'),
(3269, 348, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:753;s:6:\"height\";i:1080;s:4:\"file\";s:20:\"2023/06/work-1-1.jpg\";s:8:\"filesize\";i:162247;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"work-1-1-209x300.jpg\";s:5:\"width\";i:209;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7894;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"work-1-1-714x1024.jpg\";s:5:\"width\";i:714;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57312;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"work-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3898;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3270, 347, '_thumbnail_id', '348'),
(3271, 347, '_edit_last', '1'),
(3272, 347, 'team_member_position', ''),
(3273, 347, '_team_member_position', 'field_6496caaf1bc9d'),
(3274, 347, 'team_member_btn_action_href', ''),
(3275, 347, '_team_member_btn_action_href', 'field_6496cb0c1bc9e'),
(3276, 349, '_edit_lock', '1688571023:1'),
(3277, 349, '_thumbnail_id', '36'),
(3278, 349, '_edit_last', '1'),
(3279, 349, 'team_member_position', ''),
(3280, 349, '_team_member_position', 'field_6496caaf1bc9d'),
(3281, 349, 'team_member_btn_action_href', ''),
(3282, 349, '_team_member_btn_action_href', 'field_6496cb0c1bc9e'),
(3284, 352, '_edit_last', '1'),
(3285, 352, '_edit_lock', '1688071713:1'),
(3293, 352, '_thumbnail_id', '220'),
(3294, 352, 'work_item_price', '1000'),
(3295, 352, '_work_item_price', 'field_6496fd62d9020'),
(3296, 362, '_edit_lock', '1688071733:1'),
(3297, 362, '_thumbnail_id', '217'),
(3298, 362, '_edit_last', '1'),
(3299, 362, 'work_item_price', '950'),
(3300, 362, '_work_item_price', 'field_6496fd62d9020'),
(3301, 363, '_edit_lock', '1688071788:1'),
(3302, 363, '_thumbnail_id', '211'),
(3303, 363, '_edit_last', '1'),
(3304, 363, 'work_item_price', '1300'),
(3305, 363, '_work_item_price', 'field_6496fd62d9020'),
(3306, 364, '_edit_lock', '1688071834:1'),
(3307, 364, '_thumbnail_id', '205'),
(3308, 364, '_edit_last', '1'),
(3309, 364, 'work_item_price', '800'),
(3310, 364, '_work_item_price', 'field_6496fd62d9020'),
(3311, 365, '_edit_lock', '1688071855:1'),
(3312, 365, '_thumbnail_id', '202'),
(3313, 365, '_edit_last', '1'),
(3314, 365, 'work_item_price', '1000'),
(3315, 365, '_work_item_price', 'field_6496fd62d9020'),
(3316, 366, '_edit_lock', '1688071847:1'),
(3317, 366, '_thumbnail_id', '195'),
(3318, 366, '_edit_last', '1'),
(3319, 366, 'work_item_price', '900'),
(3320, 366, '_work_item_price', 'field_6496fd62d9020'),
(3321, 367, '_edit_lock', '1688202979:1'),
(3322, 367, '_thumbnail_id', '191'),
(3323, 367, '_edit_last', '1'),
(3324, 367, 'work_item_price', '700'),
(3325, 367, '_work_item_price', 'field_6496fd62d9020'),
(3326, 368, '_edit_lock', '1688072031:1'),
(3327, 368, '_thumbnail_id', '348'),
(3328, 368, '_edit_last', '1'),
(3329, 368, 'work_item_price', '1500'),
(3330, 368, '_work_item_price', 'field_6496fd62d9020'),
(3368, 370, '_edit_lock', '1688151489:1'),
(3369, 370, '_thumbnail_id', '252'),
(3370, 371, '_edit_lock', '1688151506:1'),
(3371, 371, '_thumbnail_id', '252'),
(3372, 372, '_edit_lock', '1688151523:1'),
(3373, 372, '_thumbnail_id', '252'),
(3374, 373, '_edit_lock', '1688151540:1'),
(3375, 373, '_thumbnail_id', '252'),
(3376, 374, '_edit_lock', '1688151560:1'),
(3377, 374, '_thumbnail_id', '252'),
(3378, 375, '_edit_lock', '1688151577:1'),
(3379, 375, '_thumbnail_id', '252'),
(3381, 377, '_edit_lock', '1688153274:1'),
(3382, 377, '_edit_last', '1'),
(3383, 377, 'textreview_datetime', '20.08.19'),
(3384, 377, '_textreview_datetime', 'field_6496f2f800fd9'),
(3385, 377, 'textreview_place', ''),
(3386, 377, '_textreview_place', 'field_6496f35100fda'),
(3387, 377, 'textreview_stars_number', ''),
(3388, 377, '_textreview_stars_number', 'field_6496f38700fdb'),
(3389, 378, '_edit_lock', '1688152690:1'),
(3390, 378, '_edit_last', '1'),
(3391, 378, 'textreview_datetime', '22.09.23 10:12'),
(3392, 378, '_textreview_datetime', 'field_6496f2f800fd9'),
(3393, 378, 'textreview_place', 'Егорьевск'),
(3394, 378, '_textreview_place', 'field_6496f35100fda'),
(3395, 378, 'textreview_stars_number', '5'),
(3396, 378, '_textreview_stars_number', 'field_6496f38700fdb'),
(3397, 379, '_edit_lock', '1688152814:1'),
(3398, 379, '_edit_last', '1'),
(3399, 379, 'textreview_datetime', '25.03.23 12:23'),
(3400, 379, '_textreview_datetime', 'field_6496f2f800fd9'),
(3401, 379, 'textreview_place', 'Егорьевск'),
(3402, 379, '_textreview_place', 'field_6496f35100fda'),
(3403, 379, 'textreview_stars_number', '4'),
(3404, 379, '_textreview_stars_number', 'field_6496f38700fdb'),
(3405, 380, '_edit_lock', '1688750868:1'),
(3434, 380, '_thumbnail_id', '202'),
(3435, 383, '_edit_lock', '1688153407:1'),
(3436, 383, '_thumbnail_id', '195'),
(3437, 384, '_edit_lock', '1688153440:1'),
(3438, 384, '_thumbnail_id', '348'),
(3439, 385, '_edit_lock', '1688153489:1'),
(3440, 385, '_thumbnail_id', '205'),
(3453, 386, '_edit_lock', '1688154168:1'),
(3454, 387, '_edit_lock', '1688154212:1'),
(3455, 388, '_edit_lock', '1688154240:1'),
(3456, 389, '_edit_lock', '1688154255:1'),
(3457, 390, '_edit_lock', '1688154277:1'),
(3458, 391, '_edit_lock', '1688154298:1'),
(3498, 344, 'meta_box_employees_services', ''),
(3499, 394, '_edit_last', '1'),
(3500, 394, '_edit_lock', '1688472564:1'),
(3501, 344, 'employees_services_list', 'Маникюр=300; Долговременная укладка без коррекции и окрашивания; Долговременная укладка без окрашивания; Коррекция бровей=650; Окрашивание | коррекция; Комплекс долговременная укладка; Ваксинг одной зоны'),
(3502, 344, '_employees_services_list', 'field_649ff943760c8'),
(3503, 347, 'meta_box_employees_services', ''),
(3504, 345, 'meta_box_employees_services', ''),
(3505, 345, 'employees_services_list', 'Коррекция бровей=350; Окрашивание | коррекция'),
(3506, 345, '_employees_services_list', 'field_649ff943760c8'),
(3507, 396, '_edit_last', '1'),
(3508, 396, '_edit_lock', '1688574683:1'),
(3509, 344, 'schedule_monday_start', '11:20:00'),
(3510, 344, '_schedule_monday_start', 'field_64a0217f1c96b'),
(3511, 344, 'schedule_monday_end', '17:35:00'),
(3512, 344, '_schedule_monday_end', 'field_64a036eabc6a6'),
(3513, 344, 'schedule_tuesday_start', '10:00:00'),
(3514, 344, '_schedule_tuesday_start', 'field_64a0370ebc6a8'),
(3515, 344, 'schedule_tuesday_end', '20:00:00'),
(3516, 344, '_schedule_tuesday_end', 'field_64a03711bc6a9'),
(3517, 344, 'schedule_wednesday_start', '10:00:00'),
(3518, 344, '_schedule_wednesday_start', 'field_64a0378d676b9'),
(3519, 344, 'schedule_wednesday_end', '20:00:00'),
(3520, 344, '_schedule_wednesday_end', 'field_64a037c7676ba'),
(3521, 344, 'schedule_thursday_start', '08:15:00'),
(3522, 344, '_schedule_thursday_start', 'field_64a037f2676bc'),
(3523, 344, 'schedule_thursday_end', '18:00:00'),
(3524, 344, '_schedule_thursday_end', 'field_64a03818676be'),
(3525, 344, 'schedule_friday_start', '10:00:00'),
(3526, 344, '_schedule_friday_start', 'field_64a0385f676c1'),
(3527, 344, 'schedule_friday_end', '20:00:00'),
(3528, 344, '_schedule_friday_end', 'field_64a03876676c2'),
(3529, 344, 'schedule_saturday_start', '10:00:00'),
(3530, 344, '_schedule_saturday_start', 'field_64a0389b676c4'),
(3531, 344, 'schedule_saturday_end', '20:00:00'),
(3532, 344, '_schedule_saturday_end', 'field_64a0389f676c5'),
(3533, 344, 'schedule_sunday_start', '10:00:00'),
(3534, 344, '_schedule_sunday_start', 'field_64a038d3676c7'),
(3535, 344, 'schedule_sunday_end', '20:00:00'),
(3536, 344, '_schedule_sunday_end', 'field_64a038f2676c8'),
(3537, 349, 'meta_box_employees_services', ''),
(3538, 419, '_edit_last', '1'),
(3539, 419, '_edit_lock', '1688222741:1'),
(3540, 419, '_wp_trash_meta_status', 'publish'),
(3541, 419, '_wp_trash_meta_time', '1688222891'),
(3542, 419, '_wp_desired_post_slug', 'post_type_64a03c562b011'),
(3543, 344, 'schedule_monday_is_weekend', 'Не является'),
(3544, 344, '_schedule_monday_is_weekend', 'field_64a053c5a76d9'),
(3545, 344, 'schedule_tuesday_is_weekend', 'Является'),
(3546, 344, '_schedule_tuesday_is_weekend', 'field_64a056a92e7e5'),
(3547, 344, 'schedule_wednesday_is_weekend', 'Является'),
(3548, 344, '_schedule_wednesday_is_weekend', 'field_64a05703bf433'),
(3549, 344, 'schedule_thursday_is_weekend', 'Является'),
(3550, 344, '_schedule_thursday_is_weekend', 'field_64a0573ebf434'),
(3551, 344, 'schedule_friday_is_weekend', 'Не является'),
(3552, 344, '_schedule_friday_is_weekend', 'field_64a0578cbf435'),
(3553, 344, 'schedule_saturday_is_weekend', 'Является'),
(3554, 344, '_schedule_saturday_is_weekend', 'field_64a057babf436'),
(3555, 344, 'schedule_sunday_is_weekend', 'Является'),
(3556, 344, '_schedule_sunday_is_weekend', 'field_64a057e1bf437'),
(3557, 345, 'schedule_monday_start', '10:00:00'),
(3558, 345, '_schedule_monday_start', 'field_64a0217f1c96b'),
(3559, 345, 'schedule_monday_end', '20:00:00'),
(3560, 345, '_schedule_monday_end', 'field_64a036eabc6a6'),
(3561, 345, 'schedule_monday_is_weekend', 'Не является'),
(3562, 345, '_schedule_monday_is_weekend', 'field_64a053c5a76d9'),
(3563, 345, 'schedule_tuesday_start', '10:00:00'),
(3564, 345, '_schedule_tuesday_start', 'field_64a0370ebc6a8'),
(3565, 345, 'schedule_tuesday_end', '20:00:00'),
(3566, 345, '_schedule_tuesday_end', 'field_64a03711bc6a9'),
(3567, 345, 'schedule_tuesday_is_weekend', 'Не является'),
(3568, 345, '_schedule_tuesday_is_weekend', 'field_64a056a92e7e5'),
(3569, 345, 'schedule_wednesday_start', '10:00:00'),
(3570, 345, '_schedule_wednesday_start', 'field_64a0378d676b9'),
(3571, 345, 'schedule_wednesday_end', '20:00:00'),
(3572, 345, '_schedule_wednesday_end', 'field_64a037c7676ba'),
(3573, 345, 'schedule_wednesday_is_weekend', 'Не является'),
(3574, 345, '_schedule_wednesday_is_weekend', 'field_64a05703bf433'),
(3575, 345, 'schedule_thursday_start', '10:00:00'),
(3576, 345, '_schedule_thursday_start', 'field_64a037f2676bc'),
(3577, 345, 'schedule_thursday_end', '20:00:00'),
(3578, 345, '_schedule_thursday_end', 'field_64a03818676be'),
(3579, 345, 'schedule_thursday_is_weekend', 'Не является'),
(3580, 345, '_schedule_thursday_is_weekend', 'field_64a0573ebf434'),
(3581, 345, 'schedule_friday_start', '10:00:00'),
(3582, 345, '_schedule_friday_start', 'field_64a0385f676c1'),
(3583, 345, 'schedule_friday_end', '20:00:00'),
(3584, 345, '_schedule_friday_end', 'field_64a03876676c2'),
(3585, 345, 'schedule_friday_is_weekend', 'Не является'),
(3586, 345, '_schedule_friday_is_weekend', 'field_64a0578cbf435'),
(3587, 345, 'schedule_saturday_is_weekend', 'Является'),
(3588, 345, '_schedule_saturday_is_weekend', 'field_64a057babf436'),
(3589, 345, 'schedule_sunday_is_weekend', 'Является'),
(3590, 345, '_schedule_sunday_is_weekend', 'field_64a057e1bf437'),
(3591, 433, '_edit_lock', '1688296120:1'),
(3592, 433, '_edit_last', '1'),
(3593, 433, 'service_price', '300'),
(3594, 433, '_service_price', 'field_6496b40f155f8'),
(3595, 433, 'service_href', ''),
(3596, 433, '_service_href', 'field_6496ba4caafb0'),
(3597, 434, '_edit_lock', '1688469852:1'),
(3598, 434, '_edit_last', '1'),
(3599, 434, 'service_price', '1300-1500'),
(3600, 434, '_service_price', 'field_6496b40f155f8'),
(3601, 434, 'service_href', ''),
(3602, 434, '_service_href', 'field_6496ba4caafb0'),
(3603, 435, '_wp_attached_file', '2023/07/service-5.jpg'),
(3604, 435, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2023/07/service-5.jpg\";s:8:\"filesize\";i:125104;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"service-5-170x300.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8969;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"service-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5338;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3605, 433, '_thumbnail_id', '435'),
(3606, 436, '_wp_attached_file', '2023/07/service-6.jpg'),
(3607, 436, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:682;s:4:\"file\";s:21:\"2023/07/service-6.jpg\";s:8:\"filesize\";i:102223;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"service-6-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10510;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"service-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4644;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3608, 434, '_thumbnail_id', '436'),
(3609, 437, '_form', '[text specialist-name id:specialist-name-modal]\n[text tel-number id:tel-number-modal]\n[text service-name id:service-name-modal]\n[text datetime id:datetame-modal]\n[submit]\n\n[telegram]'),
(3610, 437, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:18:\"Заявка Mioka\";s:6:\"sender\";s:34:\"miokamailsite@dmidrok-agency.store\";s:9:\"recipient\";s:23:\"drobkov155099@gmail.com\";s:4:\"body\";s:264:\"<h1>Новая заявка на услугу!</h1>\n\n<p><b>Выбранный специалист</b>: [specialist-name]</p>\n\n<p><u>Телефон:</u> [tel-number] </p>\n<p><u>Услуга:</u> [service-name] </p>\n<p><u>Дата и время:</u> [datetime] </p>\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(3611, 437, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <wordpress@mioka.serverh>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(3612, 437, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:46:\"Важно заполнить это поле.\";s:16:\"invalid_too_long\";s:90:\"В это поле вставлен слишком большой объем данных.\";s:17:\"invalid_too_short\";s:86:\"В это поле вставлен слишком малый объем данных.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:62:\"Загруженный файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:61:\"Введите дату в формате ГГГГ-ММ-ДД.\";s:14:\"date_too_early\";s:71:\"В это поле введена слишком ранняя дата.\";s:13:\"date_too_late\";s:73:\"В это поле введена слишком поздняя дата.\";s:14:\"invalid_number\";s:26:\"Введите число.\";s:16:\"number_too_small\";s:79:\"В это поле введено слишком маленькое число.\";s:16:\"number_too_large\";s:75:\"В это поле введено слишком большое число.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:60:\"Введите адрес электронной почты.\";s:11:\"invalid_url\";s:19:\"Введите URL.\";s:11:\"invalid_tel\";s:43:\"Введите номер телефона.\";}'),
(3613, 437, '_additional_settings', ''),
(3614, 437, '_locale', 'ru_RU'),
(3617, 347, 'employees_services_list', 'Ваксинг одной зоны; Долговременная укладка без коррекции и окрашивания; Долговременная укладка без окрашивания'),
(3618, 347, '_employees_services_list', 'field_649ff943760c8'),
(3619, 347, 'schedule_monday_is_weekend', 'Не является'),
(3620, 347, '_schedule_monday_is_weekend', 'field_64a053c5a76d9'),
(3621, 347, 'schedule_tuesday_is_weekend', 'Является'),
(3622, 347, '_schedule_tuesday_is_weekend', 'field_64a056a92e7e5'),
(3623, 347, 'schedule_wednesday_is_weekend', 'Является'),
(3624, 347, '_schedule_wednesday_is_weekend', 'field_64a05703bf433'),
(3625, 347, 'schedule_thursday_is_weekend', 'Является'),
(3626, 347, '_schedule_thursday_is_weekend', 'field_64a0573ebf434'),
(3627, 347, 'schedule_friday_is_weekend', 'Является'),
(3628, 347, '_schedule_friday_is_weekend', 'field_64a0578cbf435'),
(3629, 347, 'schedule_saturday_is_weekend', 'Является'),
(3630, 347, '_schedule_saturday_is_weekend', 'field_64a057babf436'),
(3631, 347, 'schedule_sunday_is_weekend', 'Является'),
(3632, 347, '_schedule_sunday_is_weekend', 'field_64a057e1bf437'),
(3633, 349, 'employees_services_list', 'Окрашивание | коррекция; Коррекция бровей'),
(3634, 349, '_employees_services_list', 'field_649ff943760c8'),
(3635, 349, 'schedule_monday_is_weekend', 'Является'),
(3636, 349, '_schedule_monday_is_weekend', 'field_64a053c5a76d9'),
(3637, 349, 'schedule_tuesday_is_weekend', 'Является'),
(3638, 349, '_schedule_tuesday_is_weekend', 'field_64a056a92e7e5'),
(3639, 349, 'schedule_wednesday_is_weekend', 'Является'),
(3640, 349, '_schedule_wednesday_is_weekend', 'field_64a05703bf433'),
(3641, 349, 'schedule_thursday_is_weekend', 'Является'),
(3642, 349, '_schedule_thursday_is_weekend', 'field_64a0573ebf434'),
(3643, 349, 'schedule_friday_is_weekend', 'Является'),
(3644, 349, '_schedule_friday_is_weekend', 'field_64a0578cbf435'),
(3645, 349, 'schedule_saturday_is_weekend', 'Является'),
(3646, 349, '_schedule_saturday_is_weekend', 'field_64a057babf436'),
(3647, 349, 'schedule_sunday_is_weekend', 'Является'),
(3648, 349, '_schedule_sunday_is_weekend', 'field_64a057e1bf437'),
(3649, 438, '_edit_lock', '1688799294:1'),
(3650, 438, '_thumbnail_id', '36'),
(3651, 438, '_edit_last', '1'),
(3652, 438, 'service_price', '1135'),
(3653, 438, '_service_price', 'field_6496b40f155f8'),
(3654, 438, 'service_href', ''),
(3655, 438, '_service_href', 'field_6496ba4caafb0'),
(3656, 347, 'schedule_monday_start', '12:15:00'),
(3657, 347, '_schedule_monday_start', 'field_64a0217f1c96b'),
(3658, 347, 'schedule_monday_end', '21:10:00'),
(3659, 347, '_schedule_monday_end', 'field_64a036eabc6a6'),
(3660, 347, 'schedule_friday_start', '12:40:00'),
(3661, 347, '_schedule_friday_start', 'field_64a0385f676c1'),
(3662, 347, 'schedule_friday_end', '21:10:00'),
(3663, 347, '_schedule_friday_end', 'field_64a03876676c2'),
(3664, 347, '_wp_trash_meta_status', 'publish'),
(3665, 347, '_wp_trash_meta_time', '1688573424'),
(3666, 347, '_wp_desired_post_slug', '%d0%b1%d1%83%d0%b4%d1%83%d1%89%d0%b8%d0%b9-%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba'),
(3669, 349, '_wp_trash_meta_status', 'publish'),
(3670, 349, '_wp_trash_meta_time', '1688573435'),
(3671, 349, '_wp_desired_post_slug', '%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba-%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba%d0%be%d0%b2%d0%b8%d1%87'),
(3672, 441, '_edit_lock', '1688799346:1'),
(3673, 441, 'meta_box_employees_services', ''),
(3674, 441, '_thumbnail_id', '348'),
(3675, 441, '_edit_last', '1'),
(3676, 441, 'employees_services_list', 'Окрашивание | коррекция; Коррекция бровей; Комплекс долговременная укладка; Тестовая услуга'),
(3677, 441, '_employees_services_list', 'field_649ff943760c8'),
(3678, 441, 'schedule_monday_start', '14:20:00'),
(3679, 441, '_schedule_monday_start', 'field_64a0217f1c96b'),
(3680, 441, 'schedule_monday_end', '20:15:00'),
(3681, 441, '_schedule_monday_end', 'field_64a036eabc6a6'),
(3682, 441, 'schedule_monday_is_weekend', 'Не является'),
(3683, 441, '_schedule_monday_is_weekend', 'field_64a053c5a76d9'),
(3684, 441, 'schedule_tuesday_is_weekend', 'Является'),
(3685, 441, '_schedule_tuesday_is_weekend', 'field_64a056a92e7e5'),
(3686, 441, 'schedule_wednesday_is_weekend', 'Не является'),
(3687, 441, '_schedule_wednesday_is_weekend', 'field_64a05703bf433'),
(3688, 441, 'schedule_thursday_is_weekend', 'Является'),
(3689, 441, '_schedule_thursday_is_weekend', 'field_64a0573ebf434'),
(3690, 441, 'schedule_friday_start', '15:10:00'),
(3691, 441, '_schedule_friday_start', 'field_64a0385f676c1'),
(3692, 441, 'schedule_friday_end', '22:15:00'),
(3693, 441, '_schedule_friday_end', 'field_64a03876676c2'),
(3694, 441, 'schedule_friday_is_weekend', 'Не является'),
(3695, 441, '_schedule_friday_is_weekend', 'field_64a0578cbf435'),
(3696, 441, 'schedule_saturday_is_weekend', 'Не является'),
(3697, 441, '_schedule_saturday_is_weekend', 'field_64a057babf436'),
(3698, 441, 'schedule_sunday_is_weekend', 'Является'),
(3699, 441, '_schedule_sunday_is_weekend', 'field_64a057e1bf437'),
(3700, 441, 'schedule_wednesday_start', '10:00:00'),
(3701, 441, '_schedule_wednesday_start', 'field_64a0378d676b9'),
(3702, 441, 'schedule_wednesday_end', '22:00:00'),
(3703, 441, '_schedule_wednesday_end', 'field_64a037c7676ba'),
(3704, 441, 'schedule_saturday_start', '15:40:00'),
(3705, 441, '_schedule_saturday_start', 'field_64a0389b676c4'),
(3706, 441, 'schedule_saturday_end', '20:00:00'),
(3707, 441, '_schedule_saturday_end', 'field_64a0389f676c5'),
(3708, 441, 'schedule_thursday_start', '15:00:00');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3709, 441, '_schedule_thursday_start', 'field_64a037f2676bc'),
(3710, 441, 'schedule_thursday_end', '21:20:00'),
(3711, 441, '_schedule_thursday_end', 'field_64a03818676be'),
(3712, 10, 'studio_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3713, 10, '_studio_address', 'field_64a6ee5854f13'),
(3714, 10, 'order_submit_text', ''),
(3715, 10, '_order_submit_text', 'field_649d416b7de2e'),
(3716, 444, 'map_latitude', '55.375854'),
(3717, 444, '_map_latitude', 'field_6491b6460ea38'),
(3718, 444, 'longitude_map', '39.051005'),
(3719, 444, '_longitude_map', 'field_6491b6a40ea39'),
(3720, 444, 'map_longitude', '39.051005'),
(3721, 444, '_map_longitude', 'field_6491b6a40ea39'),
(3722, 444, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(3723, 444, '_balloon_text', 'field_6491b8a592556'),
(3724, 444, 'hint_text', 'Мы находимся именно здесь!'),
(3725, 444, '_hint_text', 'field_6491b9a622e47'),
(3726, 444, 'top_address_bold', ' г. Егорьевск123'),
(3727, 444, '_top_address_bold', 'field_6496a30bbff2a'),
(3728, 444, 'header_address_bold', ' г. Егорьевск'),
(3729, 444, '_header_address_bold', 'field_6496a30bbff2a'),
(3730, 444, 'header_address_default', '5 мкр., д. 21'),
(3731, 444, '_header_address_default', 'field_6496a4413413f'),
(3732, 444, 'top_tel_bold', 'WhatsApp'),
(3733, 444, '_top_tel_bold', 'field_6496a5e399f9d'),
(3734, 444, 'tel_number', '+7 999 888 77 66'),
(3735, 444, '_tel_number', 'field_6496a61199f9e'),
(3736, 444, 'hero_text_top_bold', 'Студия красоты'),
(3737, 444, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(3738, 444, 'hero_text_top_default', 'В городе'),
(3739, 444, '_hero_text_top_default', 'field_6496a83dc8b00'),
(3740, 444, 'hero_text_bottom_bold', 'Егорьевск'),
(3741, 444, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(3742, 444, 'hero_action_btn_text', 'Услуги'),
(3743, 444, '_hero_action_btn_text', 'field_6496a99d601cb'),
(3744, 444, 'first_benefit_title', 'Гарантия качества'),
(3745, 444, '_first_benefit_title', 'field_6496ab4b318e3'),
(3746, 444, 'first_benefit_description', 'Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение новых предложений.'),
(3747, 444, '_first_benefit_description', 'field_6496abed45766'),
(3748, 444, 'second_benefit_title', 'Низкие цены'),
(3749, 444, '_second_benefit_title', 'field_6496ab7d318e5'),
(3750, 444, 'second_benefit_description', 'Разнообразный и богатый опыт сложившаяся структура организации позволяет оценить значение существенных финансовых и административных условий.'),
(3751, 444, '_second_benefit_description', 'field_6496ac1445767'),
(3752, 444, 'third_benefit_title', 'Приятный сервис'),
(3753, 444, '_third_benefit_title', 'field_6496ac5045769'),
(3754, 444, 'third_benefit_description', 'Товарищи! постоянный количественный рост и сфера нашей активности играет важную роль в формировании существенных финансовых и административных условий.'),
(3755, 444, '_third_benefit_description', 'field_6496ac6b4576a'),
(3756, 444, 'service_default_title', 'Предоставляемые'),
(3757, 444, '_service_default_title', 'field_6496ae0f769bf'),
(3758, 444, 'service_bold_title', 'Услуги'),
(3759, 444, '_service_bold_title', 'field_6496ae2d769c0'),
(3760, 444, 'team_default_title', 'Наша команда'),
(3761, 444, '_team_default_title', 'field_6496c2b921134'),
(3762, 444, 'team_bold_title', 'Профессионалов'),
(3763, 444, '_team_bold_title', 'field_6496c2e521135'),
(3764, 444, 'photoreviews_title_bold', 'фото'),
(3765, 444, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(3766, 444, 'photoreviews_title_default', 'отзывы'),
(3767, 444, '_photoreviews_title_default', 'field_6496eda7258fa'),
(3768, 444, 'photoreviews_link_text', 'Больше фото'),
(3769, 444, '_photoreviews_link_text', 'field_6496ee01ad052'),
(3770, 444, 'photoreviews_link_href', 'https://google.com'),
(3771, 444, '_photoreviews_link_href', 'field_6496ee5fad054'),
(3772, 444, 'textreviews_title_bold', ''),
(3773, 444, '_textreviews_title_bold', 'field_6496edd2258fb'),
(3774, 444, 'textreviews_title_default', 'Отзывы'),
(3775, 444, '_textreviews_title_default', 'field_6496edd6258fc'),
(3776, 444, 'textreviews_link_text', 'Смотреть все'),
(3777, 444, '_textreviews_link_text', 'field_6496ee3aad053'),
(3778, 444, 'textreviews_link_href', 'https://google.com'),
(3779, 444, '_textreviews_link_href', 'field_6496ee99ad055'),
(3780, 444, 'works_default_title', 'Наши'),
(3781, 444, '_works_default_title', 'field_6496fc363126b'),
(3782, 444, 'works_bold_title', 'Выполненные работы'),
(3783, 444, '_works_bold_title', 'field_6496fc5b3126c'),
(3784, 444, 'questions_default_title', 'Ответы на'),
(3785, 444, '_questions_default_title', 'field_6497094bf5fe4'),
(3786, 444, 'questions_bold_title', 'Частые вопросы'),
(3787, 444, '_questions_bold_title', 'field_64970960f5fe5'),
(3788, 444, 'documents_default_title', 'Необходимые'),
(3789, 444, '_documents_default_title', 'field_64970d0e865f1'),
(3790, 444, 'documents_bold_title', 'Документы и сертификаты'),
(3791, 444, '_documents_bold_title', 'field_64970d28865f2'),
(3792, 444, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(3793, 444, '_documents_subtitle', 'field_64970e7c7ee71'),
(3794, 444, 'contacts_default_title', 'Наши'),
(3795, 444, '_contacts_default_title', 'field_649715eb53952'),
(3796, 444, 'contacts_bold_title', 'Контактные данные'),
(3797, 444, '_contacts_bold_title', 'field_6497160c53953'),
(3798, 444, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(3799, 444, '_contacts_subtitle', 'field_6497162e53954'),
(3800, 444, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(3801, 444, '_заголовок_левой_карточки', 'field_6497185de5816'),
(3802, 444, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3803, 444, '_contacts_card_address', 'field_6497186ee5817'),
(3804, 444, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(3805, 444, '_contacts_schedule', 'field_649718a2e5818'),
(3806, 444, 'contacts_tel_nums', '+7 999 888 77 66'),
(3807, 444, '_contacts_tel_nums', 'field_64971962e5819'),
(3808, 444, 'contacts_email', 'mioka2023@gmail.com'),
(3809, 444, '_contacts_email', 'field_649719b7e581a'),
(3810, 444, 'contacts_info_title', 'Немного информации'),
(3811, 444, '_contacts_info_title', 'field_649719e3e581c'),
(3812, 444, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(3813, 444, '_текст_правой_карточки', 'field_64971a43e581d'),
(3814, 444, 'contacts_fields_title', 'Mioka | Салон красоты'),
(3815, 444, '_contacts_fields_title', 'field_6497185de5816'),
(3816, 444, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(3817, 444, '_contacts_info_text', 'field_64971a43e581d'),
(3818, 444, 'vk_href', 'https://vk.com/public220943642'),
(3819, 444, '_vk_href', 'field_64971d0e399cf'),
(3820, 444, 'tg_href', '#'),
(3821, 444, '_tg_href', 'field_64971dc1f4d39'),
(3822, 444, 'ok_href', '#'),
(3823, 444, '_ok_href', 'field_64971dc0f4d38'),
(3824, 444, 'whatsapp_href', '#'),
(3825, 444, '_whatsapp_href', 'field_64971dc0f4d37'),
(3826, 444, 'youtube_href', '#'),
(3827, 444, '_youtube_href', 'field_64971dbff4d36'),
(3828, 444, 'dzen_href', '#'),
(3829, 444, '_dzen_href', 'field_649723992fecf'),
(3830, 444, 'footer_contacts_title', 'Контактная информация'),
(3831, 444, '_footer_contacts_title', 'field_6497273aa52cf'),
(3832, 444, 'footer_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3833, 444, '_footer_address', 'field_649726c8a52cc'),
(3834, 444, 'footer_telephone', '+7 999 888 77 66'),
(3835, 444, '_footer_telephone', 'field_649726e5a52cd'),
(3836, 444, 'footer_schedule', 'Работаем ежедневно с 10:00 до 20:00 5 мкр, д 21'),
(3837, 444, '_footer_schedule', 'field_64972708a52ce'),
(3838, 444, 'footer_anchors_title', 'Для посетителей'),
(3839, 444, '_footer_anchors_title', 'field_64972773a52d1'),
(3840, 444, 'footer_form_title', 'Возникли вопросы? Свяжитесь с нами'),
(3841, 444, '_footer_form_title', 'field_64972858a52d3'),
(3842, 444, 'скрипт_карты', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(3843, 444, '_скрипт_карты', 'field_6497325edb330'),
(3844, 444, 'map_constructor', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(3845, 444, '_map_constructor', 'field_6497325edb330'),
(3846, 444, 'studio_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3847, 444, '_studio_address', 'field_64a6ee5854f13'),
(3848, 444, 'order_submit_text', ''),
(3849, 444, '_order_submit_text', 'field_649d416b7de2e'),
(3851, 446, 'map_latitude', '55.375854'),
(3852, 446, '_map_latitude', 'field_6491b6460ea38'),
(3853, 446, 'longitude_map', '39.051005'),
(3854, 446, '_longitude_map', 'field_6491b6a40ea39'),
(3855, 446, 'map_longitude', '39.051005'),
(3856, 446, '_map_longitude', 'field_6491b6a40ea39'),
(3857, 446, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(3858, 446, '_balloon_text', 'field_6491b8a592556'),
(3859, 446, 'hint_text', 'Мы находимся именно здесь!'),
(3860, 446, '_hint_text', 'field_6491b9a622e47'),
(3861, 446, 'top_address_bold', ' г. Егорьевск123'),
(3862, 446, '_top_address_bold', 'field_6496a30bbff2a'),
(3863, 446, 'header_address_bold', ' г. Егорьевск'),
(3864, 446, '_header_address_bold', 'field_6496a30bbff2a'),
(3865, 446, 'header_address_default', '5 мкр., д. 21'),
(3866, 446, '_header_address_default', 'field_6496a4413413f'),
(3867, 446, 'top_tel_bold', 'WhatsApp'),
(3868, 446, '_top_tel_bold', 'field_6496a5e399f9d'),
(3869, 446, 'tel_number', '+7 999 888 77 66'),
(3870, 446, '_tel_number', 'field_6496a61199f9e'),
(3871, 446, 'hero_text_top_bold', 'Студия красоты'),
(3872, 446, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(3873, 446, 'hero_text_top_default', 'В городе'),
(3874, 446, '_hero_text_top_default', 'field_6496a83dc8b00'),
(3875, 446, 'hero_text_bottom_bold', 'Егорьевск'),
(3876, 446, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(3877, 446, 'hero_action_btn_text', 'Услуги'),
(3878, 446, '_hero_action_btn_text', 'field_6496a99d601cb'),
(3879, 446, 'first_benefit_title', 'Гарантия качества'),
(3880, 446, '_first_benefit_title', 'field_6496ab4b318e3'),
(3881, 446, 'first_benefit_description', 'У нашей студии красоты высокая гарантия качества. У нас работают по истине специалисты своего дела, объединяющие в себе множество качеств и умений.'),
(3882, 446, '_first_benefit_description', 'field_6496abed45766'),
(3883, 446, 'second_benefit_title', 'Низкие цены'),
(3884, 446, '_second_benefit_title', 'field_6496ab7d318e5'),
(3885, 446, 'second_benefit_description', 'Несмотря на гарантию качества — у нас также и низкие цены. Уверены, каждому по карману любое преобразование в нашей студии.'),
(3886, 446, '_second_benefit_description', 'field_6496ac1445767'),
(3887, 446, 'third_benefit_title', 'Приятный сервис'),
(3888, 446, '_third_benefit_title', 'field_6496ac5045769'),
(3889, 446, 'third_benefit_description', 'Наши специалисты своего дела умеют находить подход к абсолютно каждому клиенту и его желаниям. Приятный сервис — абсолютно про нас.'),
(3890, 446, '_third_benefit_description', 'field_6496ac6b4576a'),
(3891, 446, 'service_default_title', 'Предоставляемые'),
(3892, 446, '_service_default_title', 'field_6496ae0f769bf'),
(3893, 446, 'service_bold_title', 'Услуги'),
(3894, 446, '_service_bold_title', 'field_6496ae2d769c0'),
(3895, 446, 'team_default_title', 'Наша команда'),
(3896, 446, '_team_default_title', 'field_6496c2b921134'),
(3897, 446, 'team_bold_title', 'Профессионалов'),
(3898, 446, '_team_bold_title', 'field_6496c2e521135'),
(3899, 446, 'photoreviews_title_bold', 'фото'),
(3900, 446, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(3901, 446, 'photoreviews_title_default', 'отзывы'),
(3902, 446, '_photoreviews_title_default', 'field_6496eda7258fa'),
(3903, 446, 'photoreviews_link_text', 'Больше фото'),
(3904, 446, '_photoreviews_link_text', 'field_6496ee01ad052'),
(3905, 446, 'photoreviews_link_href', 'https://google.com'),
(3906, 446, '_photoreviews_link_href', 'field_6496ee5fad054'),
(3907, 446, 'textreviews_title_bold', ''),
(3908, 446, '_textreviews_title_bold', 'field_6496edd2258fb'),
(3909, 446, 'textreviews_title_default', 'Отзывы'),
(3910, 446, '_textreviews_title_default', 'field_6496edd6258fc'),
(3911, 446, 'textreviews_link_text', 'Смотреть все'),
(3912, 446, '_textreviews_link_text', 'field_6496ee3aad053'),
(3913, 446, 'textreviews_link_href', 'https://google.com'),
(3914, 446, '_textreviews_link_href', 'field_6496ee99ad055'),
(3915, 446, 'works_default_title', 'Наши'),
(3916, 446, '_works_default_title', 'field_6496fc363126b'),
(3917, 446, 'works_bold_title', 'Выполненные работы'),
(3918, 446, '_works_bold_title', 'field_6496fc5b3126c'),
(3919, 446, 'questions_default_title', 'Ответы на'),
(3920, 446, '_questions_default_title', 'field_6497094bf5fe4'),
(3921, 446, 'questions_bold_title', 'Частые вопросы'),
(3922, 446, '_questions_bold_title', 'field_64970960f5fe5'),
(3923, 446, 'documents_default_title', 'Необходимые'),
(3924, 446, '_documents_default_title', 'field_64970d0e865f1'),
(3925, 446, 'documents_bold_title', 'Документы и сертификаты'),
(3926, 446, '_documents_bold_title', 'field_64970d28865f2'),
(3927, 446, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(3928, 446, '_documents_subtitle', 'field_64970e7c7ee71'),
(3929, 446, 'contacts_default_title', 'Наши'),
(3930, 446, '_contacts_default_title', 'field_649715eb53952'),
(3931, 446, 'contacts_bold_title', 'Контактные данные'),
(3932, 446, '_contacts_bold_title', 'field_6497160c53953'),
(3933, 446, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(3934, 446, '_contacts_subtitle', 'field_6497162e53954'),
(3935, 446, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(3936, 446, '_заголовок_левой_карточки', 'field_6497185de5816'),
(3937, 446, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3938, 446, '_contacts_card_address', 'field_6497186ee5817'),
(3939, 446, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(3940, 446, '_contacts_schedule', 'field_649718a2e5818'),
(3941, 446, 'contacts_tel_nums', '+7 999 888 77 66'),
(3942, 446, '_contacts_tel_nums', 'field_64971962e5819'),
(3943, 446, 'contacts_email', 'mioka2023@gmail.com'),
(3944, 446, '_contacts_email', 'field_649719b7e581a'),
(3945, 446, 'contacts_info_title', 'Немного информации'),
(3946, 446, '_contacts_info_title', 'field_649719e3e581c'),
(3947, 446, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(3948, 446, '_текст_правой_карточки', 'field_64971a43e581d'),
(3949, 446, 'contacts_fields_title', 'Mioka | Салон красоты'),
(3950, 446, '_contacts_fields_title', 'field_6497185de5816'),
(3951, 446, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(3952, 446, '_contacts_info_text', 'field_64971a43e581d'),
(3953, 446, 'vk_href', 'https://vk.com/public220943642'),
(3954, 446, '_vk_href', 'field_64971d0e399cf'),
(3955, 446, 'tg_href', '#'),
(3956, 446, '_tg_href', 'field_64971dc1f4d39'),
(3957, 446, 'ok_href', '#'),
(3958, 446, '_ok_href', 'field_64971dc0f4d38'),
(3959, 446, 'whatsapp_href', '#'),
(3960, 446, '_whatsapp_href', 'field_64971dc0f4d37'),
(3961, 446, 'youtube_href', '#'),
(3962, 446, '_youtube_href', 'field_64971dbff4d36'),
(3963, 446, 'dzen_href', '#'),
(3964, 446, '_dzen_href', 'field_649723992fecf'),
(3965, 446, 'footer_contacts_title', 'Контактная информация'),
(3966, 446, '_footer_contacts_title', 'field_6497273aa52cf'),
(3967, 446, 'footer_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3968, 446, '_footer_address', 'field_649726c8a52cc'),
(3969, 446, 'footer_telephone', '+7 999 888 77 66'),
(3970, 446, '_footer_telephone', 'field_649726e5a52cd'),
(3971, 446, 'footer_schedule', 'Работаем ежедневно с 10:00 до 20:00 5 мкр, д 21'),
(3972, 446, '_footer_schedule', 'field_64972708a52ce'),
(3973, 446, 'footer_anchors_title', 'Для посетителей'),
(3974, 446, '_footer_anchors_title', 'field_64972773a52d1'),
(3975, 446, 'footer_form_title', 'Возникли вопросы? Свяжитесь с нами'),
(3976, 446, '_footer_form_title', 'field_64972858a52d3'),
(3977, 446, 'скрипт_карты', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(3978, 446, '_скрипт_карты', 'field_6497325edb330'),
(3979, 446, 'map_constructor', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(3980, 446, '_map_constructor', 'field_6497325edb330'),
(3981, 446, 'studio_address', 'г. Егорьевск, 5 мкр., д. 21'),
(3982, 446, '_studio_address', 'field_64a6ee5854f13'),
(3983, 446, 'order_submit_text', ''),
(3984, 446, '_order_submit_text', 'field_649d416b7de2e'),
(3985, 447, 'map_latitude', '55.375854'),
(3986, 447, '_map_latitude', 'field_6491b6460ea38'),
(3987, 447, 'longitude_map', '39.051005'),
(3988, 447, '_longitude_map', 'field_6491b6a40ea39'),
(3989, 447, 'map_longitude', '39.051005'),
(3990, 447, '_map_longitude', 'field_6491b6a40ea39'),
(3991, 447, 'balloon_text', 'г. Егорьевск, 5 мкр., д. 21'),
(3992, 447, '_balloon_text', 'field_6491b8a592556'),
(3993, 447, 'hint_text', 'Мы находимся именно здесь!'),
(3994, 447, '_hint_text', 'field_6491b9a622e47'),
(3995, 447, 'top_address_bold', ' г. Егорьевск123'),
(3996, 447, '_top_address_bold', 'field_6496a30bbff2a'),
(3997, 447, 'header_address_bold', ' г. Егорьевск'),
(3998, 447, '_header_address_bold', 'field_6496a30bbff2a'),
(3999, 447, 'header_address_default', '5 мкр., д. 21'),
(4000, 447, '_header_address_default', 'field_6496a4413413f'),
(4001, 447, 'top_tel_bold', 'WhatsApp'),
(4002, 447, '_top_tel_bold', 'field_6496a5e399f9d'),
(4003, 447, 'tel_number', '+7 999 888 77 66'),
(4004, 447, '_tel_number', 'field_6496a61199f9e'),
(4005, 447, 'hero_text_top_bold', 'Студия красоты'),
(4006, 447, '_hero_text_top_bold', 'field_6496a7b25edf9'),
(4007, 447, 'hero_text_top_default', 'В городе'),
(4008, 447, '_hero_text_top_default', 'field_6496a83dc8b00'),
(4009, 447, 'hero_text_bottom_bold', 'Егорьевск'),
(4010, 447, '_hero_text_bottom_bold', 'field_6496a92968f99'),
(4011, 447, 'hero_action_btn_text', 'Услуги'),
(4012, 447, '_hero_action_btn_text', 'field_6496a99d601cb'),
(4013, 447, 'first_benefit_title', 'Гарантия качества'),
(4014, 447, '_first_benefit_title', 'field_6496ab4b318e3'),
(4015, 447, 'first_benefit_description', 'У нашей студии красоты высокая гарантия качества. У нас работают по истине специалисты своего дела, объединяющие в себе множество качеств и умений.'),
(4016, 447, '_first_benefit_description', 'field_6496abed45766'),
(4017, 447, 'second_benefit_title', 'Низкие цены'),
(4018, 447, '_second_benefit_title', 'field_6496ab7d318e5'),
(4019, 447, 'second_benefit_description', 'Несмотря на гарантию качества — у нас также и низкие цены. Уверены, каждому по карману любое преобразование в нашей студии.'),
(4020, 447, '_second_benefit_description', 'field_6496ac1445767'),
(4021, 447, 'third_benefit_title', 'Приятный сервис'),
(4022, 447, '_third_benefit_title', 'field_6496ac5045769'),
(4023, 447, 'third_benefit_description', 'Наши специалисты своего дела умеют находить подход к абсолютно каждому клиенту и его желаниям. Приятный сервис — абсолютно про нас.'),
(4024, 447, '_third_benefit_description', 'field_6496ac6b4576a'),
(4025, 447, 'service_default_title', 'Предоставляемые'),
(4026, 447, '_service_default_title', 'field_6496ae0f769bf'),
(4027, 447, 'service_bold_title', 'Услуги'),
(4028, 447, '_service_bold_title', 'field_6496ae2d769c0'),
(4029, 447, 'team_default_title', 'Наша команда'),
(4030, 447, '_team_default_title', 'field_6496c2b921134'),
(4031, 447, 'team_bold_title', 'Профессионалов'),
(4032, 447, '_team_bold_title', 'field_6496c2e521135'),
(4033, 447, 'photoreviews_title_bold', 'фото'),
(4034, 447, '_photoreviews_title_bold', 'field_6496ed72258f9'),
(4035, 447, 'photoreviews_title_default', 'отзывы'),
(4036, 447, '_photoreviews_title_default', 'field_6496eda7258fa'),
(4037, 447, 'photoreviews_link_text', 'Больше фото'),
(4038, 447, '_photoreviews_link_text', 'field_6496ee01ad052'),
(4039, 447, 'photoreviews_link_href', 'https://vk.com/public220943642'),
(4040, 447, '_photoreviews_link_href', 'field_6496ee5fad054'),
(4041, 447, 'textreviews_title_bold', ''),
(4042, 447, '_textreviews_title_bold', 'field_6496edd2258fb'),
(4043, 447, 'textreviews_title_default', 'Отзывы'),
(4044, 447, '_textreviews_title_default', 'field_6496edd6258fc'),
(4045, 447, 'textreviews_link_text', 'Смотреть все'),
(4046, 447, '_textreviews_link_text', 'field_6496ee3aad053'),
(4047, 447, 'textreviews_link_href', 'https://vk.com/public220943642'),
(4048, 447, '_textreviews_link_href', 'field_6496ee99ad055'),
(4049, 447, 'works_default_title', 'Наши'),
(4050, 447, '_works_default_title', 'field_6496fc363126b'),
(4051, 447, 'works_bold_title', 'Выполненные работы'),
(4052, 447, '_works_bold_title', 'field_6496fc5b3126c'),
(4053, 447, 'questions_default_title', 'Ответы на'),
(4054, 447, '_questions_default_title', 'field_6497094bf5fe4'),
(4055, 447, 'questions_bold_title', 'Частые вопросы'),
(4056, 447, '_questions_bold_title', 'field_64970960f5fe5'),
(4057, 447, 'documents_default_title', 'Необходимые'),
(4058, 447, '_documents_default_title', 'field_64970d0e865f1'),
(4059, 447, 'documents_bold_title', 'Документы и сертификаты'),
(4060, 447, '_documents_bold_title', 'field_64970d28865f2'),
(4061, 447, 'documents_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(4062, 447, '_documents_subtitle', 'field_64970e7c7ee71'),
(4063, 447, 'contacts_default_title', 'Наши'),
(4064, 447, '_contacts_default_title', 'field_649715eb53952'),
(4065, 447, 'contacts_bold_title', 'Контактные данные'),
(4066, 447, '_contacts_bold_title', 'field_6497160c53953'),
(4067, 447, 'contacts_subtitle', 'Далеко-далеко, за словесными горами в стране гласных и согласных живут рыбные тексты. Текстов ipsum, всемогущая свой силуэт рукопись диких семантика переулка переписывается то большого даже безорфографичный он?'),
(4068, 447, '_contacts_subtitle', 'field_6497162e53954'),
(4069, 447, 'заголовок_левой_карточки', 'Mioka | Салон красоты'),
(4070, 447, '_заголовок_левой_карточки', 'field_6497185de5816'),
(4071, 447, 'contacts_card_address', 'г. Егорьевск, 5 мкр., д. 21'),
(4072, 447, '_contacts_card_address', 'field_6497186ee5817'),
(4073, 447, 'contacts_schedule', 'Пн—Вс: с 10:00 до 20:00'),
(4074, 447, '_contacts_schedule', 'field_649718a2e5818'),
(4075, 447, 'contacts_tel_nums', '+7 999 888 77 66'),
(4076, 447, '_contacts_tel_nums', 'field_64971962e5819'),
(4077, 447, 'contacts_email', 'mioka2023@gmail.com'),
(4078, 447, '_contacts_email', 'field_649719b7e581a'),
(4079, 447, 'contacts_info_title', 'Немного информации'),
(4080, 447, '_contacts_info_title', 'field_649719e3e581c'),
(4081, 447, 'текст_правой_карточки', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(4082, 447, '_текст_правой_карточки', 'field_64971a43e581d'),
(4083, 447, 'contacts_fields_title', 'Mioka | Салон красоты'),
(4084, 447, '_contacts_fields_title', 'field_6497185de5816'),
(4085, 447, 'contacts_info_text', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Прямо толку грустный взобравшись они.'),
(4086, 447, '_contacts_info_text', 'field_64971a43e581d'),
(4087, 447, 'vk_href', 'https://vk.com/public220943642'),
(4088, 447, '_vk_href', 'field_64971d0e399cf'),
(4089, 447, 'tg_href', '#'),
(4090, 447, '_tg_href', 'field_64971dc1f4d39'),
(4091, 447, 'ok_href', '#'),
(4092, 447, '_ok_href', 'field_64971dc0f4d38'),
(4093, 447, 'whatsapp_href', '#'),
(4094, 447, '_whatsapp_href', 'field_64971dc0f4d37'),
(4095, 447, 'youtube_href', '#'),
(4096, 447, '_youtube_href', 'field_64971dbff4d36'),
(4097, 447, 'dzen_href', '#'),
(4098, 447, '_dzen_href', 'field_649723992fecf'),
(4099, 447, 'footer_contacts_title', 'Контактная информация'),
(4100, 447, '_footer_contacts_title', 'field_6497273aa52cf'),
(4101, 447, 'footer_address', 'г. Егорьевск, 5 мкр., д. 21'),
(4102, 447, '_footer_address', 'field_649726c8a52cc'),
(4103, 447, 'footer_telephone', '+7 999 888 77 66'),
(4104, 447, '_footer_telephone', 'field_649726e5a52cd'),
(4105, 447, 'footer_schedule', 'Работаем ежедневно с 10:00 до 20:00 5 мкр, д 21'),
(4106, 447, '_footer_schedule', 'field_64972708a52ce'),
(4107, 447, 'footer_anchors_title', 'Для посетителей'),
(4108, 447, '_footer_anchors_title', 'field_64972773a52d1'),
(4109, 447, 'footer_form_title', 'Возникли вопросы? Свяжитесь с нами'),
(4110, 447, '_footer_form_title', 'field_64972858a52d3'),
(4111, 447, 'скрипт_карты', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(4112, 447, '_скрипт_карты', 'field_6497325edb330'),
(4113, 447, 'map_constructor', '<script type=\"text/javascript\" charset=\"utf-8\" async src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A384e78ea9d7d76dcef7da46d7ec91ee20f72afb0070bc3465384b8903e7d2ece&amp;width=100%25&amp;height=400&amp;lang=ru_RU&amp;scroll=true\"></script>'),
(4114, 447, '_map_constructor', 'field_6497325edb330'),
(4115, 447, 'studio_address', 'г. Егорьевск, 5 мкр., д. 21'),
(4116, 447, '_studio_address', 'field_64a6ee5854f13'),
(4117, 447, 'order_submit_text', ''),
(4118, 447, '_order_submit_text', 'field_649d416b7de2e'),
(4121, 449, '_wp_attached_file', '2023/07/logo.svg'),
(4122, 449, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:42816;}'),
(4125, 451, '_wp_trash_meta_status', 'publish'),
(4126, 451, '_wp_trash_meta_time', '1688836359');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--
-- Создание: Июл 05 2023 г., 19:04
-- Последнее обновление: Июл 31 2023 г., 11:06
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(10, 1, '2023-06-19 19:28:07', '2023-06-19 16:28:07', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2023-07-08 09:19:43', '2023-07-08 06:19:43', '', 0, 'http://mioka.serverh/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-06-19 19:28:07', '2023-06-19 16:28:07', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-19 19:28:07', '2023-06-19 16:28:07', '', 10, 'http://mioka.serverh/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-06-20 17:25:08', '2023-06-20 14:25:08', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Настройка интерактивной карты', '%d0%bd%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%b0%d0%ba%d1%82%d0%b8%d0%b2%d0%bd%d0%be%d0%b9-%d0%ba%d0%b0%d1%80%d1%82%d1%8b', 'publish', 'closed', 'closed', '', 'group_6491b6459076b', '', '', '2023-06-24 21:15:51', '2023-06-24 18:15:51', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2023-06-20 17:25:08', '2023-06-20 14:25:08', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Широта карты\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"55.375854\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите широту карты', 'map_latitude', 'publish', 'closed', 'closed', '', 'field_6491b6460ea38', '', '', '2023-06-24 21:14:57', '2023-06-24 18:14:57', '', 12, 'http://mioka.serverh/?post_type=acf-field&#038;p=13', 3, 'acf-field', '', 0),
(14, 1, '2023-06-20 17:25:08', '2023-06-20 14:25:08', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"Долгота карты\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"39.051005\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите долготу карты', 'map_longitude', 'publish', 'closed', 'closed', '', 'field_6491b6a40ea39', '', '', '2023-06-24 21:14:57', '2023-06-24 18:14:57', '', 12, 'http://mioka.serverh/?post_type=acf-field&#038;p=14', 4, 'acf-field', '', 0),
(15, 1, '2023-06-20 17:33:39', '2023-06-20 14:33:39', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:46:\"Текст при клике на маркер\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Текст при нажатии на маркер на карте', 'balloon_text', 'publish', 'closed', 'closed', '', 'field_6491b8a592556', '', '', '2023-06-24 21:14:57', '2023-06-24 18:14:57', '', 12, 'http://mioka.serverh/?post_type=acf-field&#038;p=15', 6, 'acf-field', '', 0),
(16, 1, '2023-06-20 17:34:05', '2023-06-20 14:34:05', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-20 17:34:05', '2023-06-20 14:34:05', '', 10, 'http://mioka.serverh/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-06-20 17:34:52', '2023-06-20 14:34:52', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-20 17:34:52', '2023-06-20 14:34:52', '', 10, 'http://mioka.serverh/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-06-20 17:36:00', '2023-06-20 14:36:00', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-20 17:36:00', '2023-06-20 14:36:00', '', 10, 'http://mioka.serverh/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-06-20 17:38:06', '2023-06-20 14:38:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:36:\"Текст при наведении\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Текст при наведении на маркер на карте', 'hint_text', 'publish', 'closed', 'closed', '', 'field_6491b9a622e47', '', '', '2023-06-24 21:14:57', '2023-06-24 18:14:57', '', 12, 'http://mioka.serverh/?post_type=acf-field&#038;p=19', 5, 'acf-field', '', 0),
(20, 1, '2023-06-20 17:39:02', '2023-06-20 14:39:02', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-20 17:39:02', '2023-06-20 14:39:02', '', 10, 'http://mioka.serverh/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-06-20 17:47:53', '2023-06-20 14:47:53', '<label>\r\nВаше имя\r\n[text* username minlength:2 maxlength:15]\r\n</label>\r\n    \r\n<label>\r\nМоб. номер\r\n[tel* usertel]\r\n</label>\r\n\r\n[textarea* usermsg minlength:15 maxlength:250]\r\n[telegram]\r\n\r\n[submit \"Отправить\"]\n1\nПисьмо с сайта [Вопрос]\nmiokamailsite@dmidrok-agency.store\ndrobkov155099@gmail.com\n<h1>Письмо с сайта</h1>\r\n\r\n<p><b>Имя пользователя:</b> [username]</p>\r\n<p><b>Телефон пользователя:</b> [usertel]</p>\r\n<p><b>Сообщение пользователя:</b> [usermsg]</p>\n\n\n1\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@mioka.serverh>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nВажно заполнить это поле.\nВ это поле вставлен слишком большой объем данных.\nВ это поле вставлен слишком малый объем данных.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nЗагруженный файл слишком большой.\nПри загрузке файла произошла ошибка.\nВведите дату в формате ГГГГ-ММ-ДД.\nВ это поле введена слишком ранняя дата.\nВ это поле введена слишком поздняя дата.\nВведите число.\nВ это поле введено слишком маленькое число.\nВ это поле введено слишком большое число.\nНеверный ответ на проверочный вопрос.\nВведите адрес электронной почты.\nВведите URL.\nВведите номер телефона.', 'Контактная форма 1 (Подвал сайта)', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2023-07-06 18:22:03', '2023-07-06 15:22:03', '', 0, 'http://mioka.serverh/?post_type=wpcf7_contact_form&#038;p=21', 0, 'wpcf7_contact_form', '', 0),
(27, 1, '2023-06-21 22:53:33', '2023-06-21 19:53:33', 'afdsfdsfdsfsdfsd ds fdsfdsfsdfds fdsfdsf', 'Test note', '', 'publish', 'open', 'closed', '', 'test-note', '', '', '2023-06-21 22:54:01', '2023-06-21 19:54:01', '', 0, 'http://mioka.serverh/?post_type=wpf_post_it&#038;p=27', 0, 'wpf_post_it', '', 0),
(30, 1, '2023-06-22 22:31:46', '2023-06-22 19:31:46', '<img class=\"alignnone size-medium wp-image-32\" src=\"https://dmidrok-agency.store//wp-content/uploads/2023/06/team-member-1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nСамый лучший сотрудник', 'Сотрудник Сотрудникович', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba-%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba%d0%be%d0%b2%d0%b8%d1%87', '', '', '2023-06-22 23:29:31', '2023-06-22 20:29:31', '', 0, 'http://mioka.serverh/?post_type=personal&#038;p=30', 0, 'personal', '', 0),
(31, 1, '2023-06-22 22:38:21', '2023-06-22 19:38:21', '', 'Дмитрий', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%bc%d0%b8%d1%82%d1%80%d0%b8%d0%b9', '', '', '2023-06-22 22:38:21', '2023-06-22 19:38:21', '', 0, 'http://mioka.serverh/clients/%d0%b4%d0%bc%d0%b8%d1%82%d1%80%d0%b8%d0%b9/', 0, 'clients', '', 0),
(32, 1, '2023-06-22 22:39:42', '2023-06-22 19:39:42', '', 'team-member-1', '', 'inherit', 'open', 'closed', '', 'team-member-1', '', '', '2023-06-22 22:39:42', '2023-06-22 19:39:42', '', 30, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/team-member-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2023-06-22 23:11:19', '2023-06-22 20:11:19', '', 'review-photo-1', '', 'inherit', 'open', 'closed', '', 'review-photo-1', '', '', '2023-06-22 23:11:19', '2023-06-22 20:11:19', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/review-photo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2023-06-24 11:02:05', '2023-06-24 08:02:05', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[01] Контактные данные', '01-%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d1%8b%d0%b5-%d0%b4%d0%b0%d0%bd%d0%bd%d1%8b%d0%b5', 'publish', 'closed', 'closed', '', 'group_6496a2c0e405b', '', '', '2023-07-06 19:42:31', '2023-07-06 16:42:31', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(40, 1, '2023-06-24 11:06:04', '2023-06-24 08:06:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:40:\"Например: г. Егорьевск\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите выделенную часть', 'header_address_bold', 'publish', 'closed', 'closed', '', 'field_6496a30bbff2a', '', '', '2023-07-06 19:40:36', '2023-07-06 16:40:36', '', 37, 'http://mioka.serverh/?post_type=acf-field&#038;p=40', 4, 'acf-field', '', 0),
(41, 1, '2023-06-24 11:06:24', '2023-06-24 08:06:24', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:06:24', '2023-06-24 08:06:24', '', 10, 'http://mioka.serverh/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-06-24 11:07:14', '2023-06-24 08:07:14', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:07:14', '2023-06-24 08:07:14', '', 10, 'http://mioka.serverh/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-06-24 11:07:26', '2023-06-24 08:07:26', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:07:26', '2023-06-24 08:07:26', '', 10, 'http://mioka.serverh/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-06-24 11:08:37', '2023-06-24 08:08:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"Например: 5 мкр., д. 21\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите стандартную часть адреса', 'header_address_default', 'publish', 'closed', 'closed', '', 'field_6496a4413413f', '', '', '2023-07-06 19:40:36', '2023-07-06 16:40:36', '', 37, 'http://mioka.serverh/?post_type=acf-field&#038;p=44', 5, 'acf-field', '', 0),
(45, 1, '2023-06-24 11:09:11', '2023-06-24 08:09:11', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:09:11', '2023-06-24 08:09:11', '', 10, 'http://mioka.serverh/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-06-24 11:09:29', '2023-06-24 08:09:29', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:09:29', '2023-06-24 08:09:29', '', 10, 'http://mioka.serverh/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-06-24 11:13:09', '2023-06-24 08:13:09', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Адрес в шапке сайта', 'адрес_в_шапке_сайта', 'publish', 'closed', 'closed', '', 'field_6496a5682fadd', '', '', '2023-07-06 19:40:36', '2023-07-06 16:40:36', '', 37, 'http://mioka.serverh/?post_type=acf-field&#038;p=47', 3, 'acf-field', '', 0),
(48, 1, '2023-06-24 11:16:44', '2023-06-24 08:16:44', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Номер телефона в шапке сайта', 'номер_телефона_в_шапке_сайта', 'publish', 'closed', 'closed', '', 'field_6496a5af99f9c', '', '', '2023-07-06 19:40:37', '2023-07-06 16:40:37', '', 37, 'http://mioka.serverh/?post_type=acf-field&#038;p=48', 6, 'acf-field', '', 0),
(49, 1, '2023-06-24 11:16:44', '2023-06-24 08:16:44', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:26:\"Например: WhatsApp\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите текст над номером', 'top_tel_bold', 'publish', 'closed', 'closed', '', 'field_6496a5e399f9d', '', '', '2023-07-06 19:40:37', '2023-07-06 16:40:37', '', 37, 'http://mioka.serverh/?post_type=acf-field&#038;p=49', 7, 'acf-field', '', 0),
(50, 1, '2023-06-24 11:16:44', '2023-06-24 08:16:44', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:30:\"Формат: +7 999 888 77 66\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите номер телефона', 'tel_number', 'publish', 'closed', 'closed', '', 'field_6496a61199f9e', '', '', '2023-06-24 11:20:20', '2023-06-24 08:20:20', '', 37, 'http://mioka.serverh/?post_type=acf-field&#038;p=50', 1, 'acf-field', '', 0),
(51, 1, '2023-06-24 11:17:07', '2023-06-24 08:17:07', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:17:07', '2023-06-24 08:17:07', '', 10, 'http://mioka.serverh/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-06-24 11:19:44', '2023-06-24 08:19:44', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Общие контактные данные', 'общие_контактные_данные', 'publish', 'closed', 'closed', '', 'field_6496a70098b54', '', '', '2023-06-24 11:20:20', '2023-06-24 08:20:20', '', 37, 'http://mioka.serverh/?post_type=acf-field&#038;p=52', 0, 'acf-field', '', 0),
(53, 1, '2023-06-24 11:23:25', '2023-06-24 08:23:25', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[02] Приветственная секция (первая секция)', '02-%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82%d1%81%d1%82%d0%b2%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%81%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-%d0%bf%d0%b5%d1%80%d0%b2%d0%b0%d1%8f-%d1%81%d0%b5%d0%ba%d1%86%d0%b8', 'publish', 'closed', 'closed', '', 'group_6496a76082629', '', '', '2023-06-24 19:15:27', '2023-06-24 16:15:27', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=53', 0, 'acf-field-group', '', 0),
(54, 1, '2023-06-24 11:23:25', '2023-06-24 08:23:25', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Верхняя часть заголовка', 'верхняя_часть_заголовка', 'publish', 'closed', 'closed', '', 'field_6496a7605edf8', '', '', '2023-06-24 11:29:20', '2023-06-24 08:29:20', '', 53, 'http://mioka.serverh/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(55, 1, '2023-06-24 11:23:25', '2023-06-24 08:23:25', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:134:\"Показывается в верхней части, в её самом начале.\r\nНапример: студия красоты\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенная часть текста', 'hero_text_top_bold', 'publish', 'closed', 'closed', '', 'field_6496a7b25edf9', '', '', '2023-06-24 11:25:13', '2023-06-24 08:25:13', '', 53, 'http://mioka.serverh/?post_type=acf-field&#038;p=55', 1, 'acf-field', '', 0),
(56, 1, '2023-06-24 11:23:58', '2023-06-24 08:23:58', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:23:58', '2023-06-24 08:23:58', '', 10, 'http://mioka.serverh/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-06-24 11:25:13', '2023-06-24 08:25:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:109:\"Показывается в верхней части, в её конце.\r\nНапример: в городе\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычная часть текста', 'hero_text_top_default', 'publish', 'closed', 'closed', '', 'field_6496a83dc8b00', '', '', '2023-06-24 11:29:20', '2023-06-24 08:29:20', '', 53, 'http://mioka.serverh/?post_type=acf-field&#038;p=57', 2, 'acf-field', '', 0),
(58, 1, '2023-06-24 11:25:57', '2023-06-24 08:25:57', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:25:57', '2023-06-24 08:25:57', '', 10, 'http://mioka.serverh/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-06-24 11:29:20', '2023-06-24 08:29:20', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Нижняя часть заголовка', 'нижняя_часть_заголовка', 'publish', 'closed', 'closed', '', 'field_6496a91868f98', '', '', '2023-06-24 11:29:20', '2023-06-24 08:29:20', '', 53, 'http://mioka.serverh/?post_type=acf-field&p=59', 3, 'acf-field', '', 0),
(60, 1, '2023-06-24 11:29:20', '2023-06-24 08:29:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:36:\"Например: Егорьевск\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите нижнюю часть заголовка', 'hero_text_bottom_bold', 'publish', 'closed', 'closed', '', 'field_6496a92968f99', '', '', '2023-06-24 11:31:11', '2023-06-24 08:31:11', '', 53, 'http://mioka.serverh/?post_type=acf-field&#038;p=60', 4, 'acf-field', '', 0),
(61, 1, '2023-06-24 11:29:39', '2023-06-24 08:29:39', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:29:39', '2023-06-24 08:29:39', '', 10, 'http://mioka.serverh/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-06-24 11:31:11', '2023-06-24 08:31:11', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Кнопка действия', 'кнопка_действия', 'publish', 'closed', 'closed', '', 'field_6496a988601ca', '', '', '2023-06-24 11:31:11', '2023-06-24 08:31:11', '', 53, 'http://mioka.serverh/?post_type=acf-field&p=62', 5, 'acf-field', '', 0),
(63, 1, '2023-06-24 11:31:12', '2023-06-24 08:31:12', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:50:\"Кнопка ведёт к секции услуг\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите текст на кнопке', 'hero_action_btn_text', 'publish', 'closed', 'closed', '', 'field_6496a99d601cb', '', '', '2023-06-24 11:33:20', '2023-06-24 08:33:20', '', 53, 'http://mioka.serverh/?post_type=acf-field&#038;p=63', 6, 'acf-field', '', 0),
(64, 1, '2023-06-24 11:31:50', '2023-06-24 08:31:50', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:31:50', '2023-06-24 08:31:50', '', 10, 'http://mioka.serverh/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-06-24 11:32:08', '2023-06-24 08:32:08', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:32:08', '2023-06-24 08:32:08', '', 10, 'http://mioka.serverh/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-06-24 11:38:59', '2023-06-24 08:38:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[03] Секция преимуществ', '03-%d1%81%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-%d0%bf%d1%80%d0%b5%d0%b8%d0%bc%d1%83%d1%89%d0%b5%d1%81%d1%82%d0%b2', 'publish', 'closed', 'closed', '', 'group_6496aa9f0a86f', '', '', '2023-06-24 19:15:38', '2023-06-24 16:15:38', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(68, 1, '2023-06-24 11:38:59', '2023-06-24 08:38:59', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Первое преимущество', 'первое_преимущество', 'publish', 'closed', 'closed', '', 'field_6496ab32318e2', '', '', '2023-06-24 11:42:38', '2023-06-24 08:42:38', '', 66, 'http://mioka.serverh/?post_type=acf-field&#038;p=68', 0, 'acf-field', '', 0),
(69, 1, '2023-06-24 11:38:59', '2023-06-24 08:38:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:58:\"Введите заголовок преимущества\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок первого преимущество', 'first_benefit_title', 'publish', 'closed', 'closed', '', 'field_6496ab4b318e3', '', '', '2023-06-24 11:42:38', '2023-06-24 08:42:38', '', 66, 'http://mioka.serverh/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(70, 1, '2023-06-24 11:38:59', '2023-06-24 08:38:59', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Второе преимущество', 'второе_преимущество', 'publish', 'closed', 'closed', '', 'field_6496ab70318e4', '', '', '2023-06-24 11:42:38', '2023-06-24 08:42:38', '', 66, 'http://mioka.serverh/?post_type=acf-field&#038;p=70', 3, 'acf-field', '', 0),
(71, 1, '2023-06-24 11:38:59', '2023-06-24 08:38:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:58:\"Введите заголовок преимущества\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок второго преимущества', 'second_benefit_title', 'publish', 'closed', 'closed', '', 'field_6496ab7d318e5', '', '', '2023-06-24 11:42:38', '2023-06-24 08:42:38', '', 66, 'http://mioka.serverh/?post_type=acf-field&#038;p=71', 4, 'acf-field', '', 0),
(72, 1, '2023-06-24 11:42:38', '2023-06-24 08:42:38', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:56:\"Введите описание преимущества\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Описание преимущества', 'first_benefit_description', 'publish', 'closed', 'closed', '', 'field_6496abed45766', '', '', '2023-06-24 11:45:26', '2023-06-24 08:45:26', '', 66, 'http://mioka.serverh/?post_type=acf-field&#038;p=72', 2, 'acf-field', '', 0),
(73, 1, '2023-06-24 11:42:38', '2023-06-24 08:42:38', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:56:\"Введите описание преимущества\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Описание преимущества', 'second_benefit_description', 'publish', 'closed', 'closed', '', 'field_6496ac1445767', '', '', '2023-06-24 11:45:26', '2023-06-24 08:45:26', '', 66, 'http://mioka.serverh/?post_type=acf-field&#038;p=73', 5, 'acf-field', '', 0),
(74, 1, '2023-06-24 11:42:38', '2023-06-24 08:42:38', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Третье преимущество', '_копировать', 'publish', 'closed', 'closed', '', 'field_6496ac4045768', '', '', '2023-06-24 11:42:38', '2023-06-24 08:42:38', '', 66, 'http://mioka.serverh/?post_type=acf-field&p=74', 6, 'acf-field', '', 0),
(75, 1, '2023-06-24 11:42:38', '2023-06-24 08:42:38', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:58:\"Введите заголовок преимущества\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок третьего преимущества', 'third_benefit_title', 'publish', 'closed', 'closed', '', 'field_6496ac5045769', '', '', '2023-06-24 11:42:38', '2023-06-24 08:42:38', '', 66, 'http://mioka.serverh/?post_type=acf-field&p=75', 7, 'acf-field', '', 0),
(76, 1, '2023-06-24 11:42:39', '2023-06-24 08:42:39', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:56:\"Введите описание преимущества\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Описание преимущества', 'third_benefit_description', 'publish', 'closed', 'closed', '', 'field_6496ac6b4576a', '', '', '2023-06-24 11:45:26', '2023-06-24 08:45:26', '', 66, 'http://mioka.serverh/?post_type=acf-field&#038;p=76', 8, 'acf-field', '', 0),
(77, 1, '2023-06-24 11:44:55', '2023-06-24 08:44:55', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:44:55', '2023-06-24 08:44:55', '', 10, 'http://mioka.serverh/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-06-24 11:45:55', '2023-06-24 08:45:55', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:45:55', '2023-06-24 08:45:55', '', 10, 'http://mioka.serverh/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-06-24 11:46:47', '2023-06-24 08:46:47', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:46:47', '2023-06-24 08:46:47', '', 10, 'http://mioka.serverh/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-06-24 11:47:42', '2023-06-24 08:47:42', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:47:42', '2023-06-24 08:47:42', '', 10, 'http://mioka.serverh/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-06-24 11:50:37', '2023-06-24 08:50:37', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[04] Секция услуг', '04-%d1%81%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-%d1%83%d1%81%d0%bb%d1%83%d0%b3', 'publish', 'closed', 'closed', '', 'group_6496adebbda7f', '', '', '2023-06-29 14:03:11', '2023-06-29 11:03:11', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2023-06-24 11:50:37', '2023-06-24 08:50:37', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Заголовок секции', 'заголовок_секции', 'publish', 'closed', 'closed', '', 'field_6496adec769be', '', '', '2023-06-24 11:50:37', '2023-06-24 08:50:37', '', 81, 'http://mioka.serverh/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 1, '2023-06-24 11:50:37', '2023-06-24 08:50:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите обычную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычный заголовок', 'service_default_title', 'publish', 'closed', 'closed', '', 'field_6496ae0f769bf', '', '', '2023-06-24 11:50:37', '2023-06-24 08:50:37', '', 81, 'http://mioka.serverh/?post_type=acf-field&p=83', 1, 'acf-field', '', 0),
(84, 1, '2023-06-24 11:50:37', '2023-06-24 08:50:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:65:\"Введите выделенную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенный заголовок', 'service_bold_title', 'publish', 'closed', 'closed', '', 'field_6496ae2d769c0', '', '', '2023-06-24 13:21:19', '2023-06-24 10:21:19', '', 81, 'http://mioka.serverh/?post_type=acf-field&#038;p=84', 2, 'acf-field', '', 0),
(85, 1, '2023-06-24 11:51:31', '2023-06-24 08:51:31', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:51:31', '2023-06-24 08:51:31', '', 10, 'http://mioka.serverh/?p=85', 0, 'revision', '', 0),
(86, 1, '2023-06-24 11:52:21', '2023-06-24 08:52:21', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:52:21', '2023-06-24 08:52:21', '', 10, 'http://mioka.serverh/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-06-24 11:53:01', '2023-06-24 08:53:01', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 11:53:01', '2023-06-24 08:53:01', '', 10, 'http://mioka.serverh/?p=87', 0, 'revision', '', 0),
(92, 1, '2023-06-24 12:14:07', '2023-06-24 09:14:07', '', 'work-1', '', 'inherit', 'open', 'closed', '', 'work-1', '', '', '2023-06-24 12:14:07', '2023-06-24 09:14:07', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/work-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2023-06-24 12:15:57', '2023-06-24 09:15:57', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Настройка полей услуг', '%d0%bd%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-%d0%bf%d0%be%d0%bb%d0%b5%d0%b9-%d1%83%d1%81%d0%bb%d1%83%d0%b3', 'publish', 'closed', 'closed', '', 'group_6496b40f56207', '', '', '2023-07-07 20:16:47', '2023-07-07 17:16:47', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=93', 0, 'acf-field-group', '', 0),
(94, 1, '2023-06-24 12:15:57', '2023-06-24 09:15:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:66:\"Введите только число: 1000 или 2000 и т.д.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите цену', 'service_price', 'publish', 'closed', 'closed', '', 'field_6496b40f155f8', '', '', '2023-06-24 12:50:04', '2023-06-24 09:50:04', '', 93, 'http://mioka.serverh/?post_type=acf-field&#038;p=94', 0, 'acf-field', '', 0),
(103, 1, '2023-06-24 12:47:48', '2023-06-24 09:47:48', '', 'service-2', '', 'inherit', 'open', 'closed', '', 'service-2', '', '', '2023-06-24 12:47:48', '2023-06-24 09:47:48', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/service-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2023-06-24 12:49:32', '2023-06-24 09:49:32', '', 'service-3', '', 'inherit', 'open', 'closed', '', 'service-3', '', '', '2023-06-24 12:49:32', '2023-06-24 09:49:32', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/service-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2023-06-24 13:12:52', '2023-06-24 10:12:52', '', 'service-4', '', 'inherit', 'open', 'closed', '', 'service-4', '', '', '2023-06-24 13:12:52', '2023-06-24 10:12:52', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/service-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2023-06-24 13:19:28', '2023-06-24 10:19:28', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[05] Команда', '05-%d0%ba%d0%be%d0%bc%d0%b0%d0%bd%d0%b4%d0%b0', 'publish', 'closed', 'closed', '', 'group_6496c2967f7cb', '', '', '2023-06-24 19:15:57', '2023-06-24 16:15:57', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2023-06-24 13:19:28', '2023-06-24 10:19:28', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Заголовок секции', 'заголовок_секции', 'publish', 'closed', 'closed', '', 'field_6496c29621133', '', '', '2023-06-24 13:19:28', '2023-06-24 10:19:28', '', 118, 'http://mioka.serverh/?post_type=acf-field&p=119', 0, 'acf-field', '', 0),
(120, 1, '2023-06-24 13:19:28', '2023-06-24 10:19:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите обычную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычный заголовок', 'team_default_title', 'publish', 'closed', 'closed', '', 'field_6496c2b921134', '', '', '2023-06-24 13:19:28', '2023-06-24 10:19:28', '', 118, 'http://mioka.serverh/?post_type=acf-field&p=120', 1, 'acf-field', '', 0),
(121, 1, '2023-06-24 13:19:28', '2023-06-24 10:19:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:65:\"Введите выделенную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенный заголовок', 'team_bold_title', 'publish', 'closed', 'closed', '', 'field_6496c2e521135', '', '', '2023-06-24 13:21:05', '2023-06-24 10:21:05', '', 118, 'http://mioka.serverh/?post_type=acf-field&#038;p=121', 2, 'acf-field', '', 0),
(123, 1, '2023-06-24 13:22:45', '2023-06-24 10:22:45', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 13:22:45', '2023-06-24 10:22:45', '', 10, 'http://mioka.serverh/?p=123', 0, 'revision', '', 0),
(125, 1, '2023-06-24 13:51:09', '2023-06-24 10:51:09', '', 'team-member-1', '', 'inherit', 'open', 'closed', '', 'team-member-1-2', '', '', '2023-06-24 13:51:09', '2023-06-24 10:51:09', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/team-member-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2023-06-24 14:54:19', '2023-06-24 11:54:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[06] Фотоотзывы и отзывы', '06-%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d1%8b-%d0%b8-%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d1%8b', 'publish', 'closed', 'closed', '', 'group_6496d937126e0', '', '', '2023-06-24 19:16:07', '2023-06-24 16:16:07', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=137', 0, 'acf-field-group', '', 0),
(138, 1, '2023-06-24 14:54:19', '2023-06-24 11:54:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Фотоотзывы', 'фотоотзывы', 'publish', 'closed', 'closed', '', 'field_6496d93726040', '', '', '2023-06-24 14:54:19', '2023-06-24 11:54:19', '', 137, 'http://mioka.serverh/?post_type=acf-field&p=138', 0, 'acf-field', '', 0),
(139, 1, '2023-06-24 14:54:19', '2023-06-24 11:54:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Текстовые отзывы', 'текстовые_отзывы', 'publish', 'closed', 'closed', '', 'field_6496d94926041', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=139', 5, 'acf-field', '', 0),
(140, 1, '2023-06-24 16:22:06', '2023-06-24 13:22:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:172:\"Введите выделенную часть слова заголовка (если это отдельное слово - в конце поставьте пробел)\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенная часть заголовка', 'photoreviews_title_bold', 'publish', 'closed', 'closed', '', 'field_6496ed72258f9', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=140', 1, 'acf-field', '', 0),
(141, 1, '2023-06-24 16:22:06', '2023-06-24 13:22:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычная часть заголовка', 'photoreviews_title_default', 'publish', 'closed', 'closed', '', 'field_6496eda7258fa', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=141', 2, 'acf-field', '', 0),
(142, 1, '2023-06-24 16:22:06', '2023-06-24 13:22:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:172:\"Введите выделенную часть слова заголовка (если это отдельное слово - в конце поставьте пробел)\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенная часть заголовка', 'textreviews_title_bold', 'publish', 'closed', 'closed', '', 'field_6496edd2258fb', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=142', 6, 'acf-field', '', 0),
(143, 1, '2023-06-24 16:22:06', '2023-06-24 13:22:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычная часть заголовка', 'textreviews_title_default', 'publish', 'closed', 'closed', '', 'field_6496edd6258fc', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=143', 7, 'acf-field', '', 0),
(144, 1, '2023-06-24 16:25:02', '2023-06-24 13:25:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:160:\"Текст ссылки, по клику на которую пользователь будет переведён на страницу фотоотзывов\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Текст ссылки \"ещё\"', 'photoreviews_link_text', 'publish', 'closed', 'closed', '', 'field_6496ee01ad052', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=144', 3, 'acf-field', '', 0),
(145, 1, '2023-06-24 16:25:02', '2023-06-24 13:25:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ссылка на страницу фотоотзывов', 'photoreviews_link_href', 'publish', 'closed', 'closed', '', 'field_6496ee5fad054', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=145', 4, 'acf-field', '', 0),
(146, 1, '2023-06-24 16:25:02', '2023-06-24 13:25:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:171:\"Текст ссылки, по клику на которую пользователь будет переведён на страницу текстовых отзывов\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Текст ссылки \"ещё\"', 'textreviews_link_text', 'publish', 'closed', 'closed', '', 'field_6496ee3aad053', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=146', 8, 'acf-field', '', 0),
(147, 1, '2023-06-24 16:25:02', '2023-06-24 13:25:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ссылка на страницу текстовых отзывов', 'textreviews_link_href', 'publish', 'closed', 'closed', '', 'field_6496ee99ad055', '', '', '2023-06-24 16:31:51', '2023-06-24 13:31:51', '', 137, 'http://mioka.serverh/?post_type=acf-field&#038;p=147', 9, 'acf-field', '', 0),
(148, 1, '2023-06-24 16:26:25', '2023-06-24 13:26:25', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 16:26:25', '2023-06-24 13:26:25', '', 10, 'http://mioka.serverh/?p=148', 0, 'revision', '', 0),
(149, 1, '2023-06-24 16:31:12', '2023-06-24 13:31:12', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 16:31:12', '2023-06-24 13:31:12', '', 10, 'http://mioka.serverh/?p=149', 0, 'revision', '', 0),
(150, 1, '2023-06-24 16:31:23', '2023-06-24 13:31:23', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 16:31:23', '2023-06-24 13:31:23', '', 10, 'http://mioka.serverh/?p=150', 0, 'revision', '', 0),
(161, 1, '2023-06-24 16:47:42', '2023-06-24 13:47:42', 'a:8:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"reviews\";}i:1;a:3:{s:5:\"param\";s:13:\"post_taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:25:\"reviews_types:textreviews\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Настройка полей текстового отзыва', '%d0%bd%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-%d0%bf%d0%be%d0%bb%d0%b5%d0%b9-%d1%82%d0%b5%d0%ba%d1%81%d1%82%d0%be%d0%b2%d0%be%d0%b3%d0%be-%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d0%b0', 'publish', 'closed', 'closed', '', 'group_6496f2b7e4c2c', '', '', '2023-06-30 22:27:26', '2023-06-30 19:27:26', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=161', 0, 'acf-field-group', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(163, 1, '2023-06-24 16:47:42', '2023-06-24 13:47:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:143:\"Введите дату и время написания отзыва.\r\nФормата: 20.08.19 22:32 (время можно опустить)\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Дата и время', 'textreview_datetime', 'publish', 'closed', 'closed', '', 'field_6496f2f800fd9', '', '', '2023-06-24 16:53:08', '2023-06-24 13:53:08', '', 161, 'http://mioka.serverh/?post_type=acf-field&#038;p=163', 0, 'acf-field', '', 0),
(164, 1, '2023-06-24 16:47:42', '2023-06-24 13:47:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:100:\"Город, откуда был написан отзыв.\r\nНапример: г. Егорьевск\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Город', 'textreview_place', 'publish', 'closed', 'closed', '', 'field_6496f35100fda', '', '', '2023-06-24 16:53:08', '2023-06-24 13:53:08', '', 161, 'http://mioka.serverh/?post_type=acf-field&#038;p=164', 1, 'acf-field', '', 0),
(165, 1, '2023-06-24 16:47:42', '2023-06-24 13:47:42', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:131:\"Введите количество звёзд отзыва от 1 до 5.\r\nЕсли звёзд нет - не заполняйте.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:5;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Количество звёзд отзыва', 'textreview_stars_number', 'publish', 'closed', 'closed', '', 'field_6496f38700fdb', '', '', '2023-06-24 17:07:41', '2023-06-24 14:07:41', '', 161, 'http://mioka.serverh/?post_type=acf-field&#038;p=165', 2, 'acf-field', '', 0),
(180, 1, '2023-06-24 17:23:44', '2023-06-24 14:23:44', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[07] Выполненные работы', '07-%d0%b2%d1%8b%d0%bf%d0%be%d0%bb%d0%bd%d0%b5%d0%bd%d0%bd%d1%8b%d0%b5-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', 'publish', 'closed', 'closed', '', 'group_6496fc0427331', '', '', '2023-06-24 19:16:17', '2023-06-24 16:16:17', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=180', 0, 'acf-field-group', '', 0),
(181, 1, '2023-06-24 17:23:44', '2023-06-24 14:23:44', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Заголовок секции', 'заголовок_секции', 'publish', 'closed', 'closed', '', 'field_6496fc043126a', '', '', '2023-06-24 17:23:44', '2023-06-24 14:23:44', '', 180, 'http://mioka.serverh/?post_type=acf-field&p=181', 0, 'acf-field', '', 0),
(182, 1, '2023-06-24 17:23:44', '2023-06-24 14:23:44', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите обычную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычный заголовок', 'works_default_title', 'publish', 'closed', 'closed', '', 'field_6496fc363126b', '', '', '2023-06-24 17:23:44', '2023-06-24 14:23:44', '', 180, 'http://mioka.serverh/?post_type=acf-field&p=182', 1, 'acf-field', '', 0),
(183, 1, '2023-06-24 17:23:44', '2023-06-24 14:23:44', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:65:\"Введите выделенную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенный заголовок', 'works_bold_title', 'publish', 'closed', 'closed', '', 'field_6496fc5b3126c', '', '', '2023-06-24 17:23:53', '2023-06-24 14:23:53', '', 180, 'http://mioka.serverh/?post_type=acf-field&#038;p=183', 2, 'acf-field', '', 0),
(184, 1, '2023-06-24 17:24:31', '2023-06-24 14:24:31', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 17:24:31', '2023-06-24 14:24:31', '', 10, 'http://mioka.serverh/?p=184', 0, 'revision', '', 0),
(185, 1, '2023-06-24 17:28:46', '2023-06-24 14:28:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"portfolio_works\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Настройка полей выполненной работы', '%d0%bd%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-%d0%bf%d0%be%d0%bb%d0%b5%d0%b9-%d0%b2%d1%8b%d0%bf%d0%be%d0%bb%d0%bd%d0%b5%d0%bd%d0%bd%d0%be%d0%b9-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', 'publish', 'closed', 'closed', '', 'group_6496fcf6f0596', '', '', '2023-06-30 22:51:25', '2023-06-30 19:51:25', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=185', 0, 'acf-field-group', '', 0),
(186, 1, '2023-06-24 17:28:46', '2023-06-24 14:28:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:64:\"Введите цену за выполненную работу\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Цена', 'work_item_price', 'publish', 'closed', 'closed', '', 'field_6496fd62d9020', '', '', '2023-06-24 17:28:46', '2023-06-24 14:28:46', '', 185, 'http://mioka.serverh/?post_type=acf-field&p=186', 0, 'acf-field', '', 0),
(191, 1, '2023-06-24 18:01:12', '2023-06-24 15:01:12', '', '8CiYmw3yg0M', '', 'inherit', 'open', 'closed', '', '8ciymw3yg0m', '', '', '2023-06-24 18:01:12', '2023-06-24 15:01:12', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/8CiYmw3yg0M.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2023-06-24 18:02:39', '2023-06-24 15:02:39', '', 'hwiqKml-cdw', '', 'inherit', 'open', 'closed', '', 'hwiqkml-cdw', '', '', '2023-06-24 18:02:39', '2023-06-24 15:02:39', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/hwiqKml-cdw.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2023-06-24 18:04:41', '2023-06-24 15:04:41', '', 'r-hYlIZJY8I', '', 'inherit', 'open', 'closed', '', 'r-hylizjy8i', '', '', '2023-06-24 18:04:41', '2023-06-24 15:04:41', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/r-hYlIZJY8I.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2023-06-24 18:08:28', '2023-06-24 15:08:28', '', 'work-3', '', 'inherit', 'open', 'closed', '', 'work-3', '', '', '2023-06-24 18:08:28', '2023-06-24 15:08:28', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/work-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2023-06-24 18:09:43', '2023-06-24 15:09:43', '', 'work-2', '', 'inherit', 'open', 'closed', '', 'work-2', '', '', '2023-06-24 18:09:43', '2023-06-24 15:09:43', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/work-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2023-06-24 18:12:01', '2023-06-24 15:12:01', '', '0Z-3zFlGtxw', '', 'inherit', 'open', 'closed', '', '0z-3zflgtxw', '', '', '2023-06-24 18:12:01', '2023-06-24 15:12:01', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/0Z-3zFlGtxw.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2023-06-24 18:13:12', '2023-06-24 15:13:12', '', 'service-2', '', 'inherit', 'open', 'closed', '', 'service-2-2', '', '', '2023-06-24 18:13:12', '2023-06-24 15:13:12', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/service-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2023-06-24 18:19:40', '2023-06-24 15:19:40', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[08] Ответы на вопросы', '08-%d0%be%d1%82%d0%b2%d0%b5%d1%82%d1%8b-%d0%bd%d0%b0-%d0%b2%d0%be%d0%bf%d1%80%d0%be%d1%81%d1%8b', 'publish', 'closed', 'closed', '', 'group_649709229aae3', '', '', '2023-06-24 19:16:28', '2023-06-24 16:16:28', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=226', 0, 'acf-field-group', '', 0),
(227, 1, '2023-06-24 18:19:40', '2023-06-24 15:19:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Заголовок секции', 'заголовок_секции', 'publish', 'closed', 'closed', '', 'field_64970923f5fe3', '', '', '2023-06-24 18:19:40', '2023-06-24 15:19:40', '', 226, 'http://mioka.serverh/?post_type=acf-field&p=227', 0, 'acf-field', '', 0),
(228, 1, '2023-06-24 18:19:40', '2023-06-24 15:19:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите обычную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычный заголовок', 'questions_default_title', 'publish', 'closed', 'closed', '', 'field_6497094bf5fe4', '', '', '2023-06-24 18:19:40', '2023-06-24 15:19:40', '', 226, 'http://mioka.serverh/?post_type=acf-field&p=228', 1, 'acf-field', '', 0),
(229, 1, '2023-06-24 18:19:40', '2023-06-24 15:19:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:65:\"Введите выделенную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенный заголовок', 'questions_bold_title', 'publish', 'closed', 'closed', '', 'field_64970960f5fe5', '', '', '2023-06-24 18:19:40', '2023-06-24 15:19:40', '', 226, 'http://mioka.serverh/?post_type=acf-field&p=229', 2, 'acf-field', '', 0),
(230, 1, '2023-06-24 18:20:32', '2023-06-24 15:20:32', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 18:20:32', '2023-06-24 15:20:32', '', 10, 'http://mioka.serverh/?p=230', 0, 'revision', '', 0),
(244, 1, '2023-06-24 18:35:31', '2023-06-24 15:35:31', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[09] Документы и сертификаты', '09-%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82%d1%8b-%d0%b8-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82%d1%8b', 'publish', 'closed', 'closed', '', 'group_64970cfa91968', '', '', '2023-06-24 19:16:39', '2023-06-24 16:16:39', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=244', 0, 'acf-field-group', '', 0),
(245, 1, '2023-06-24 18:35:31', '2023-06-24 15:35:31', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Заголовок секции', 'заголовок_секции', 'publish', 'closed', 'closed', '', 'field_64970cfb865f0', '', '', '2023-06-24 18:35:31', '2023-06-24 15:35:31', '', 244, 'http://mioka.serverh/?post_type=acf-field&p=245', 0, 'acf-field', '', 0),
(246, 1, '2023-06-24 18:35:31', '2023-06-24 15:35:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите обычную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычный заголовок', 'documents_default_title', 'publish', 'closed', 'closed', '', 'field_64970d0e865f1', '', '', '2023-06-24 18:35:31', '2023-06-24 15:35:31', '', 244, 'http://mioka.serverh/?post_type=acf-field&p=246', 1, 'acf-field', '', 0),
(247, 1, '2023-06-24 18:35:31', '2023-06-24 15:35:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:65:\"Введите выделенную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенный заголовок', 'documents_bold_title', 'publish', 'closed', 'closed', '', 'field_64970d28865f2', '', '', '2023-06-24 18:39:07', '2023-06-24 15:39:07', '', 244, 'http://mioka.serverh/?post_type=acf-field&#038;p=247', 2, 'acf-field', '', 0),
(248, 1, '2023-06-24 18:39:48', '2023-06-24 15:39:48', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 18:39:48', '2023-06-24 15:39:48', '', 10, 'http://mioka.serverh/?p=248', 0, 'revision', '', 0),
(249, 1, '2023-06-24 18:41:27', '2023-06-24 15:41:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:53:\"Введите текст под заголовком\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст под заголовком', 'documents_subtitle', 'publish', 'closed', 'closed', '', 'field_64970e7c7ee71', '', '', '2023-06-24 18:41:27', '2023-06-24 15:41:27', '', 244, 'http://mioka.serverh/?post_type=acf-field&p=249', 3, 'acf-field', '', 0),
(250, 1, '2023-06-24 18:41:46', '2023-06-24 15:41:46', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 18:41:46', '2023-06-24 15:41:46', '', 10, 'http://mioka.serverh/?p=250', 0, 'revision', '', 0),
(252, 1, '2023-06-24 18:43:10', '2023-06-24 15:43:10', '', 'document-1', '', 'inherit', 'open', 'closed', '', 'document-1', '', '', '2023-06-24 18:43:10', '2023-06-24 15:43:10', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/document-1.png', 0, 'attachment', 'image/png', 0),
(265, 1, '2023-06-24 19:14:19', '2023-06-24 16:14:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', '[10] Контактные данные (последняя секция)', '10-%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d1%8b%d0%b5-%d0%b4%d0%b0%d0%bd%d0%bd%d1%8b%d0%b5-%d0%bf%d0%be%d1%81%d0%bb%d0%b5%d0%b4%d0%bd%d1%8f%d1%8f-%d1%81%d0%b5%d0%ba%d1%86%d0%b8%d1%8f', 'publish', 'closed', 'closed', '', 'group_649715b053ca8', '', '', '2023-06-24 20:11:20', '2023-06-24 17:11:20', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=265', 0, 'acf-field-group', '', 0),
(266, 1, '2023-06-24 19:14:19', '2023-06-24 16:14:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Заголовок секции', 'заголовок_секции', 'publish', 'closed', 'closed', '', 'field_649715b153951', '', '', '2023-06-24 19:14:19', '2023-06-24 16:14:19', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=266', 0, 'acf-field', '', 0),
(267, 1, '2023-06-24 19:14:19', '2023-06-24 16:14:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите обычную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычный заголовок', 'contacts_default_title', 'publish', 'closed', 'closed', '', 'field_649715eb53952', '', '', '2023-06-24 19:14:19', '2023-06-24 16:14:19', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=267', 1, 'acf-field', '', 0),
(268, 1, '2023-06-24 19:14:19', '2023-06-24 16:14:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенный заголовок', 'contacts_bold_title', 'publish', 'closed', 'closed', '', 'field_6497160c53953', '', '', '2023-06-24 19:14:19', '2023-06-24 16:14:19', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=268', 2, 'acf-field', '', 0),
(269, 1, '2023-06-24 19:14:19', '2023-06-24 16:14:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:53:\"Введите текст под заголовком\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст под заголовком', 'contacts_subtitle', 'publish', 'closed', 'closed', '', 'field_6497162e53954', '', '', '2023-06-24 19:17:53', '2023-06-24 16:17:53', '', 265, 'http://mioka.serverh/?post_type=acf-field&#038;p=269', 3, 'acf-field', '', 0),
(270, 1, '2023-06-24 19:17:59', '2023-06-24 16:17:59', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 19:17:59', '2023-06-24 16:17:59', '', 10, 'http://mioka.serverh/?p=270', 0, 'revision', '', 0),
(271, 1, '2023-06-24 19:18:04', '2023-06-24 16:18:04', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 19:18:04', '2023-06-24 16:18:04', '', 10, 'http://mioka.serverh/?p=271', 0, 'revision', '', 0),
(272, 1, '2023-06-24 19:21:15', '2023-06-24 16:21:15', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 19:21:15', '2023-06-24 16:21:15', '', 10, 'http://mioka.serverh/?p=272', 0, 'revision', '', 0),
(273, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Левая карточка (с данными)', 'левая_карточка', 'publish', 'closed', 'closed', '', 'field_6497184fe5815', '', '', '2023-06-24 19:31:31', '2023-06-24 16:31:31', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=273', 4, 'acf-field', '', 0),
(274, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:61:\"Введите заголовок левой карточки\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:33:\"Mioka | Салон красоты\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:28:\"Mioka | Информация\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок левой карточки', 'contacts_fields_title', 'publish', 'closed', 'closed', '', 'field_6497185de5816', '', '', '2023-06-24 19:37:54', '2023-06-24 16:37:54', '', 265, 'http://mioka.serverh/?post_type=acf-field&#038;p=274', 5, 'acf-field', '', 0),
(275, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"Введите адрес\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Адрес', 'contacts_card_address', 'publish', 'closed', 'closed', '', 'field_6497186ee5817', '', '', '2023-06-24 19:43:48', '2023-06-24 16:43:48', '', 265, 'http://mioka.serverh/?post_type=acf-field&#038;p=275', 6, 'acf-field', '', 0),
(276, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:40:\"Введите график работы\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'График работы', 'contacts_schedule', 'publish', 'closed', 'closed', '', 'field_649718a2e5818', '', '', '2023-06-24 19:31:31', '2023-06-24 16:31:31', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=276', 7, 'acf-field', '', 0),
(277, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Введите телефон\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Телефон', 'contacts_tel_nums', 'publish', 'closed', 'closed', '', 'field_64971962e5819', '', '', '2023-06-24 19:31:31', '2023-06-24 16:31:31', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=277', 8, 'acf-field', '', 0),
(278, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:48:\"Введите электронную почту\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Электронная почта', 'contacts_email', 'publish', 'closed', 'closed', '', 'field_649719b7e581a', '', '', '2023-06-24 19:31:31', '2023-06-24 16:31:31', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=278', 9, 'acf-field', '', 0),
(279, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Правая карточка (с текстом)', 'правая_карточка_с_текстом', 'publish', 'closed', 'closed', '', 'field_649719d5e581b', '', '', '2023-06-24 19:35:34', '2023-06-24 16:35:34', '', 265, 'http://mioka.serverh/?post_type=acf-field&#038;p=279', 10, 'acf-field', '', 0),
(280, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"Введите заголовок правой карточки\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:35:\"Немного информации\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:35:\"Немного информации\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок правой карточки', 'contacts_info_title', 'publish', 'closed', 'closed', '', 'field_649719e3e581c', '', '', '2023-06-24 19:31:31', '2023-06-24 16:31:31', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=280', 11, 'acf-field', '', 0),
(281, 1, '2023-06-24 19:31:31', '2023-06-24 16:31:31', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:84:\"Введите текстовое содержимое правой карточки\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст правой карточки', 'contacts_info_text', 'publish', 'closed', 'closed', '', 'field_64971a43e581d', '', '', '2023-06-24 19:37:54', '2023-06-24 16:37:54', '', 265, 'http://mioka.serverh/?post_type=acf-field&#038;p=281', 12, 'acf-field', '', 0),
(282, 1, '2023-06-24 19:36:18', '2023-06-24 16:36:18', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 19:36:18', '2023-06-24 16:36:18', '', 10, 'http://mioka.serverh/?p=282', 0, 'revision', '', 0),
(283, 1, '2023-06-24 19:40:28', '2023-06-24 16:40:28', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 19:40:28', '2023-06-24 16:40:28', '', 10, 'http://mioka.serverh/?p=283', 0, 'revision', '', 0),
(284, 1, '2023-06-24 19:43:48', '2023-06-24 16:43:48', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Ссылки на социальные сети', 'ссылки_на_социальные_сети', 'publish', 'closed', 'closed', '', 'field_64971d00399ce', '', '', '2023-06-24 19:43:48', '2023-06-24 16:43:48', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=284', 13, 'acf-field', '', 0),
(285, 1, '2023-06-24 19:43:49', '2023-06-24 16:43:49', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:39:\"Введите ссылку для ВК\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ссылка на ВКонтакте', 'vk_href', 'publish', 'closed', 'closed', '', 'field_64971d0e399cf', '', '', '2023-06-24 19:43:49', '2023-06-24 16:43:49', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=285', 14, 'acf-field', '', 0),
(286, 1, '2023-06-24 19:44:00', '2023-06-24 16:44:00', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 19:44:00', '2023-06-24 16:44:00', '', 10, 'http://mioka.serverh/?p=286', 0, 'revision', '', 0),
(287, 1, '2023-06-24 19:46:14', '2023-06-24 16:46:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Введите ссылку для TG\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ссылка на Телеграм', 'tg_href', 'publish', 'closed', 'closed', '', 'field_64971dc1f4d39', '', '', '2023-06-24 19:46:14', '2023-06-24 16:46:14', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=287', 15, 'acf-field', '', 0),
(288, 1, '2023-06-24 19:46:14', '2023-06-24 16:46:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"Введите ссылку для Одноклассников\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ссылка на Одноклассники', 'ok_href', 'publish', 'closed', 'closed', '', 'field_64971dc0f4d38', '', '', '2023-06-24 20:06:34', '2023-06-24 17:06:34', '', 265, 'http://mioka.serverh/?post_type=acf-field&#038;p=288', 16, 'acf-field', '', 0),
(289, 1, '2023-06-24 19:46:14', '2023-06-24 16:46:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:43:\"Введите ссылку для WhatsApp\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ссылка на Вацап', 'whatsapp_href', 'publish', 'closed', 'closed', '', 'field_64971dc0f4d37', '', '', '2023-06-24 20:06:34', '2023-06-24 17:06:34', '', 265, 'http://mioka.serverh/?post_type=acf-field&#038;p=289', 17, 'acf-field', '', 0),
(290, 1, '2023-06-24 19:46:14', '2023-06-24 16:46:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Введите ссылку для YouTube\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ссылка на YouTube', 'youtube_href', 'publish', 'closed', 'closed', '', 'field_64971dbff4d36', '', '', '2023-06-24 20:06:34', '2023-06-24 17:06:34', '', 265, 'http://mioka.serverh/?post_type=acf-field&#038;p=290', 18, 'acf-field', '', 0),
(291, 1, '2023-06-24 20:11:20', '2023-06-24 17:11:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:54:\"Введите ссылку на Яндекс Дзен\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ссылка на Яндекс Дзен', 'dzen_href', 'publish', 'closed', 'closed', '', 'field_649723992fecf', '', '', '2023-06-24 20:11:20', '2023-06-24 17:11:20', '', 265, 'http://mioka.serverh/?post_type=acf-field&p=291', 19, 'acf-field', '', 0),
(292, 1, '2023-06-24 20:11:24', '2023-06-24 17:11:24', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 20:11:24', '2023-06-24 17:11:24', '', 10, 'http://mioka.serverh/?p=292', 0, 'revision', '', 0),
(293, 1, '2023-06-24 20:11:36', '2023-06-24 17:11:36', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 20:11:36', '2023-06-24 17:11:36', '', 10, 'http://mioka.serverh/?p=293', 0, 'revision', '', 0),
(294, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Подвал сайта', '%d0%bf%d0%be%d0%b4%d0%b2%d0%b0%d0%bb-%d1%81%d0%b0%d0%b9%d1%82%d0%b0', 'publish', 'closed', 'closed', '', 'group_649726aca2bf6', '', '', '2023-06-24 20:35:51', '2023-06-24 17:35:51', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=294', 0, 'acf-field-group', '', 0),
(295, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Первый блок', 'первый_блок', 'publish', 'closed', 'closed', '', 'field_649726ada52cb', '', '', '2023-06-24 20:34:42', '2023-06-24 17:34:42', '', 294, 'http://mioka.serverh/?post_type=acf-field&p=295', 0, 'acf-field', '', 0),
(296, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите заголовок первого блока\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:41:\"Контактная информация\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок первого блока', 'footer_contacts_title', 'publish', 'closed', 'closed', '', 'field_6497273aa52cf', '', '', '2023-06-24 20:34:42', '2023-06-24 17:34:42', '', 294, 'http://mioka.serverh/?post_type=acf-field&p=296', 1, 'acf-field', '', 0),
(297, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"Введите адрес\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Адрес', 'footer_address', 'publish', 'closed', 'closed', '', 'field_649726c8a52cc', '', '', '2023-06-24 20:34:42', '2023-06-24 17:34:42', '', 294, 'http://mioka.serverh/?post_type=acf-field&p=297', 2, 'acf-field', '', 0),
(298, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Введите номер телефона\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Номер телефона', 'footer_telephone', 'publish', 'closed', 'closed', '', 'field_649726e5a52cd', '', '', '2023-06-24 20:34:42', '2023-06-24 17:34:42', '', 294, 'http://mioka.serverh/?post_type=acf-field&p=298', 3, 'acf-field', '', 0),
(299, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:55:\"Работаем ежедневно с 10:00 до 20:00\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'График работы', 'footer_schedule', 'publish', 'closed', 'closed', '', 'field_64972708a52ce', '', '', '2023-06-24 20:34:42', '2023-06-24 17:34:42', '', 294, 'http://mioka.serverh/?post_type=acf-field&p=299', 4, 'acf-field', '', 0),
(300, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Второй блок', 'второй_блок', 'publish', 'closed', 'closed', '', 'field_64972769a52d0', '', '', '2023-06-24 20:34:42', '2023-06-24 17:34:42', '', 294, 'http://mioka.serverh/?post_type=acf-field&p=300', 5, 'acf-field', '', 0),
(301, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите заголовок второго блока\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:29:\"Для посетителей\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок второго блока', 'footer_anchors_title', 'publish', 'closed', 'closed', '', 'field_64972773a52d1', '', '', '2023-06-24 20:35:51', '2023-06-24 17:35:51', '', 294, 'http://mioka.serverh/?post_type=acf-field&#038;p=301', 6, 'acf-field', '', 0),
(302, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Третий блок', 'третий_блок', 'publish', 'closed', 'closed', '', 'field_64972792a52d2', '', '', '2023-06-24 20:34:42', '2023-06-24 17:34:42', '', 294, 'http://mioka.serverh/?post_type=acf-field&p=302', 7, 'acf-field', '', 0),
(303, 1, '2023-06-24 20:34:42', '2023-06-24 17:34:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:61:\"Введите заголовок третьего блока\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:63:\"Возникли вопросы? Свяжитесь с нами\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите  заголовок третьего блока', 'footer_form_title', 'publish', 'closed', 'closed', '', 'field_64972858a52d3', '', '', '2023-06-24 20:34:42', '2023-06-24 17:34:42', '', 294, 'http://mioka.serverh/?post_type=acf-field&p=303', 8, 'acf-field', '', 0),
(304, 1, '2023-06-24 20:38:57', '2023-06-24 17:38:57', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 20:38:57', '2023-06-24 17:38:57', '', 10, 'http://mioka.serverh/?p=304', 0, 'revision', '', 0),
(305, 1, '2023-06-24 20:44:06', '2023-06-24 17:44:06', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 20:44:06', '2023-06-24 17:44:06', '', 10, 'http://mioka.serverh/?p=305', 0, 'revision', '', 0),
(306, 1, '2023-06-24 21:14:57', '2023-06-24 18:14:57', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Конструкторский вариант', 'конструкторский_вариант', 'publish', 'closed', 'closed', '', 'field_64973252db32f', '', '', '2023-06-24 21:14:57', '2023-06-24 18:14:57', '', 12, 'http://mioka.serverh/?post_type=acf-field&p=306', 0, 'acf-field', '', 0),
(307, 1, '2023-06-24 21:14:57', '2023-06-24 18:14:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:124:\"Скрипт можно получить на сайте конструктора карт https://yandex.ru/map-constructor\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Скрипт карты', 'map_constructor', 'publish', 'closed', 'closed', '', 'field_6497325edb330', '', '', '2023-06-24 21:15:51', '2023-06-24 18:15:51', '', 12, 'http://mioka.serverh/?post_type=acf-field&#038;p=307', 1, 'acf-field', '', 0),
(308, 1, '2023-06-24 21:14:57', '2023-06-24 18:14:57', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Ручной вариант', 'ручной_вариант', 'publish', 'closed', 'closed', '', 'field_64973288db331', '', '', '2023-06-24 21:14:57', '2023-06-24 18:14:57', '', 12, 'http://mioka.serverh/?post_type=acf-field&p=308', 2, 'acf-field', '', 0),
(309, 1, '2023-06-24 21:15:21', '2023-06-24 18:15:21', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 21:15:21', '2023-06-24 18:15:21', '', 10, 'http://mioka.serverh/?p=309', 0, 'revision', '', 0),
(310, 1, '2023-06-24 21:18:21', '2023-06-24 18:18:21', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-06-24 21:18:21', '2023-06-24 18:18:21', '', 10, 'http://mioka.serverh/?p=310', 0, 'revision', '', 0),
(316, 1, '2023-06-27 19:32:33', '2023-06-27 16:32:33', '', 'og-logo', '', 'inherit', 'open', 'closed', '', 'og-logo', '', '', '2023-06-27 19:32:33', '2023-06-27 16:32:33', '', 0, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/og-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(318, 1, '2023-06-29 11:28:56', '2023-06-29 08:28:56', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"322\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Оформление записи [Модальное окно]', '%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d0%b8-%d0%bc%d0%be%d0%b4%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%be%d0%ba%d0%bd%d0%be', 'publish', 'closed', 'closed', '', 'group_649d402cb2c51', '', '', '2023-06-29 11:33:53', '2023-06-29 08:33:53', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=318', 0, 'acf-field-group', '', 0),
(319, 1, '2023-06-29 11:28:55', '2023-06-29 08:28:55', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Заголовок модального окна', 'заголовок_модального_окна', 'publish', 'closed', 'closed', '', 'field_649d402f8da80', '', '', '2023-06-29 11:28:55', '2023-06-29 08:28:55', '', 318, 'http://mioka.serverh/?post_type=acf-field&p=319', 0, 'acf-field', '', 0),
(320, 1, '2023-06-29 11:28:55', '2023-06-29 08:28:55', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Введите обычную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Обычный заголовок', 'order_default_title', 'publish', 'closed', 'closed', '', 'field_649d40748da81', '', '', '2023-06-29 11:28:55', '2023-06-29 08:28:55', '', 318, 'http://mioka.serverh/?post_type=acf-field&p=320', 1, 'acf-field', '', 0),
(321, 1, '2023-06-29 11:28:56', '2023-06-29 08:28:56', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:65:\"Введите выделенную часть заголовка\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Выделенный заголовок', 'order_bold_title', 'publish', 'closed', 'closed', '', 'field_649d40aa8da82', '', '', '2023-06-29 11:28:56', '2023-06-29 08:28:56', '', 318, 'http://mioka.serverh/?post_type=acf-field&p=321', 2, 'acf-field', '', 0),
(322, 1, '2023-06-29 11:29:30', '2023-06-29 08:29:30', '', 'Модальное окно оформления записи', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%be%d0%b4%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%be%d0%ba%d0%bd%d0%be-%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%bb%d0%b5%d0%bd%d0%b8%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d0%b8', '', '', '2023-06-29 11:34:16', '2023-06-29 08:34:16', '', 0, 'http://mioka.serverh/?page_id=322', 0, 'page', '', 0),
(323, 1, '2023-06-29 11:29:30', '2023-06-29 08:29:30', '', 'Модальное окно оформления записи', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2023-06-29 11:29:30', '2023-06-29 08:29:30', '', 322, 'http://mioka.serverh/?p=323', 0, 'revision', '', 0),
(324, 1, '2023-06-29 11:30:06', '2023-06-29 08:30:06', '', 'Модальное окно оформления записи', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2023-06-29 11:30:06', '2023-06-29 08:30:06', '', 322, 'http://mioka.serverh/?p=324', 0, 'revision', '', 0),
(325, 1, '2023-06-29 11:32:23', '2023-06-29 08:32:23', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:70:\"Введите текст, который будет на кнопке\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:16:\"Оформить\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Текст на кнопке', 'order_submit_text', 'publish', 'closed', 'closed', '', 'field_649d416b7de2e', '', '', '2023-06-29 11:32:23', '2023-06-29 08:32:23', '', 81, 'http://mioka.serverh/?post_type=acf-field&p=325', 3, 'acf-field', '', 0),
(326, 1, '2023-06-29 11:33:20', '2023-06-29 08:33:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:43:\"Введите текст на кнопке\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:34:\"Например: Оформить\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Текст на кнопке', 'order_submit_text', 'publish', 'closed', 'closed', '', 'field_649d41bb15e48', '', '', '2023-06-29 11:33:53', '2023-06-29 08:33:53', '', 318, 'http://mioka.serverh/?post_type=acf-field&#038;p=326', 3, 'acf-field', '', 0),
(327, 1, '2023-06-29 11:34:00', '2023-06-29 08:34:00', '', 'Модальное окно оформления записи', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2023-06-29 11:34:00', '2023-06-29 08:34:00', '', 322, 'http://mioka.serverh/?p=327', 0, 'revision', '', 0),
(328, 1, '2023-06-29 11:34:16', '2023-06-29 08:34:16', '', 'Модальное окно оформления записи', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2023-06-29 11:34:16', '2023-06-29 08:34:16', '', 322, 'http://mioka.serverh/?p=328', 0, 'revision', '', 0),
(338, 1, '2023-06-29 14:01:38', '2023-06-29 11:01:38', '<!-- wp:paragraph -->\n<p>Этап работы номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 5</p>\n<!-- /wp:paragraph -->', 'Окрашивание | коррекция', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f', '', '', '2023-06-29 14:37:43', '2023-06-29 11:37:43', '', 0, 'http://mioka.serverh/?post_type=services&#038;p=338', 0, 'services', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(340, 1, '2023-06-29 14:34:57', '2023-06-29 11:34:57', '<!-- wp:paragraph -->\n<p>Этап работы номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 3</p>\n<!-- /wp:paragraph -->', 'Долговременная укладка без окрашивания', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%bb%d0%b3%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%83%d0%ba%d0%bb%d0%b0%d0%b4%d0%ba%d0%b0-%d0%b1%d0%b5%d0%b7-%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0', '', '', '2023-06-29 19:24:21', '2023-06-29 16:24:21', '', 0, 'http://mioka.serverh/?post_type=services&#038;p=340', 0, 'services', '', 0),
(341, 1, '2023-06-29 14:35:35', '2023-06-29 11:35:35', '<!-- wp:paragraph -->\n<p>Этап работы номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 6</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 7</p>\n<!-- /wp:paragraph -->', 'Коррекция бровей', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-%d0%b1%d1%80%d0%be%d0%b2%d0%b5%d0%b9', '', '', '2023-06-29 19:24:01', '2023-06-29 16:24:01', '', 0, 'http://mioka.serverh/?post_type=services&#038;p=341', 0, 'services', '', 0),
(342, 1, '2023-06-29 14:37:12', '2023-06-29 11:37:12', '<!-- wp:paragraph -->\n<p>Этап работы номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 5</p>\n<!-- /wp:paragraph -->', 'Долговременная укладка без коррекции и окрашивания', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%bb%d0%b3%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%83%d0%ba%d0%bb%d0%b0%d0%b4%d0%ba%d0%b0-%d0%b1%d0%b5%d0%b7-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8', '', '', '2023-06-29 14:37:14', '2023-06-29 11:37:14', '', 0, 'http://mioka.serverh/?post_type=services&#038;p=342', 0, 'services', '', 0),
(344, 1, '2023-06-29 20:23:10', '2023-06-29 17:23:10', '<!-- wp:paragraph -->\n<p>Умение сотрудника №1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника №2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника №3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника №4. Продолжение описания и так далее...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника №5</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника №6</p>\n<!-- /wp:paragraph -->', 'Полина Каурова', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%bb%d0%b8%d0%bd%d0%b0-%d0%ba%d0%b0%d1%83%d1%80%d0%be%d0%b2%d0%b0', '', '', '2023-07-07 18:53:08', '2023-07-07 15:53:08', '', 338, 'http://mioka.serverh/?post_type=employees&#038;p=344', 0, 'employees', '', 0),
(345, 1, '2023-06-29 20:27:32', '2023-06-29 17:27:32', '<!-- wp:paragraph -->\n<p>Умение номер 1. Далеко-далеко за словесными горами...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение номер 2. Далеко-далеко за словесными горами...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение номер 5</p>\n<!-- /wp:paragraph -->', 'Алина', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%bb%d0%b8%d0%bd%d0%b0', '', '', '2023-07-04 14:38:34', '2023-07-04 11:38:34', '', 0, 'http://mioka.serverh/?post_type=employees&#038;p=345', 0, 'employees', '', 0),
(347, 1, '2023-06-29 20:29:11', '2023-06-29 17:29:11', '<!-- wp:paragraph -->\n<p>Умение номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение номер 5</p>\n<!-- /wp:paragraph -->', 'Будущий сотрудник', '', 'trash', 'closed', 'closed', '', '%d0%b1%d1%83%d0%b4%d1%83%d1%89%d0%b8%d0%b9-%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba__trashed', '', '', '2023-07-05 19:10:24', '2023-07-05 16:10:24', '', 0, 'http://mioka.serverh/?post_type=employees&#038;p=347', 0, 'employees', '', 0),
(348, 1, '2023-06-29 20:29:01', '2023-06-29 17:29:01', '', 'work-1', '', 'inherit', 'open', 'closed', '', 'work-1-2', '', '', '2023-06-29 20:29:01', '2023-06-29 17:29:01', '', 347, 'https://dmidrok-agency.store//wp-content/uploads/2023/06/work-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(349, 1, '2023-06-29 20:32:25', '2023-06-29 17:32:25', '<!-- wp:paragraph -->\n<p>Умение сотрудника номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника номер 5</p>\n<!-- /wp:paragraph -->', 'Сотрудник Сотрудникович', '', 'trash', 'closed', 'closed', '', '%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba-%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba%d0%be%d0%b2%d0%b8%d1%87__trashed', '', '', '2023-07-05 19:10:35', '2023-07-05 16:10:35', '', 0, 'http://mioka.serverh/?post_type=employees&#038;p=349', 0, 'employees', '', 0),
(352, 1, '2023-06-29 22:02:22', '2023-06-29 19:02:22', '', 'Долговременная укладка без коррекции и окрашивания', '', 'publish', 'closed', 'closed', '', 'r', '', '', '2023-06-29 23:48:31', '2023-06-29 20:48:31', '', 338, 'http://mioka.serverh/?post_type=portfolio_works&#038;p=352', 0, 'portfolio_works', '', 0),
(362, 1, '2023-06-29 23:48:50', '2023-06-29 20:48:50', '', 'Окрашивание | коррекция', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f', '', '', '2023-06-29 23:48:51', '2023-06-29 20:48:51', '', 338, 'http://mioka.serverh/?post_type=portfolio_works&#038;p=362', 0, 'portfolio_works', '', 0),
(363, 1, '2023-06-29 23:49:44', '2023-06-29 20:49:44', '<!-- wp:paragraph -->\n<p>Реализации систем массового участия</p>\n<!-- /wp:paragraph -->', 'Долговременная укладка', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%bb%d0%b3%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%83%d0%ba%d0%bb%d0%b0%d0%b4%d0%ba%d0%b0', '', '', '2023-06-29 23:49:46', '2023-06-29 20:49:46', '', 0, 'http://mioka.serverh/?post_type=portfolio_works&#038;p=363', 0, 'portfolio_works', '', 0),
(364, 1, '2023-06-29 23:50:31', '2023-06-29 20:50:31', '<!-- wp:paragraph -->\n<p>Товарищи! начало повседневной работы</p>\n<!-- /wp:paragraph -->', 'Натуральное окрашивание', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%82%d1%83%d1%80%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5', '', '', '2023-06-29 23:50:32', '2023-06-29 20:50:32', '', 0, 'http://mioka.serverh/?post_type=portfolio_works&#038;p=364', 0, 'portfolio_works', '', 0),
(365, 1, '2023-06-29 23:51:34', '2023-06-29 20:51:34', '<!-- wp:paragraph -->\n<p>Не следует, однако забывать.</p>\n<!-- /wp:paragraph -->', 'Окрашивание | коррекция', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-2', '', '', '2023-06-29 23:51:35', '2023-06-29 20:51:35', '', 338, 'http://mioka.serverh/?post_type=portfolio_works&#038;p=365', 0, 'portfolio_works', '', 0),
(366, 1, '2023-06-29 23:52:03', '2023-06-29 20:52:03', '', 'Окрашивание | коррекция', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-3', '', '', '2023-06-29 23:52:04', '2023-06-29 20:52:04', '', 338, 'http://mioka.serverh/?post_type=portfolio_works&#038;p=366', 0, 'portfolio_works', '', 0),
(367, 1, '2023-06-29 23:52:53', '2023-06-29 20:52:53', '<!-- wp:paragraph -->\n<p>Повседневная практика показывает</p>\n<!-- /wp:paragraph -->', 'Окрашивание | коррекция', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-4', '', '', '2023-07-01 12:16:18', '2023-07-01 09:16:18', '', 338, 'http://mioka.serverh/?post_type=portfolio_works&#038;p=367', 0, 'portfolio_works', '', 0),
(368, 1, '2023-06-29 23:53:48', '2023-06-29 20:53:48', '<!-- wp:paragraph -->\n<p>Идейные соображения высшего порядка</p>\n<!-- /wp:paragraph -->', 'Окрашивание | коррекция', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-5', '', '', '2023-06-29 23:53:49', '2023-06-29 20:53:49', '', 338, 'http://mioka.serverh/?post_type=portfolio_works&#038;p=368', 0, 'portfolio_works', '', 0),
(370, 1, '2023-06-30 22:00:30', '2023-06-30 19:00:30', '', 'Документ | Сертификат № 1', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-1', '', '', '2023-06-30 22:00:30', '2023-06-30 19:00:30', '', 0, 'http://mioka.serverh/?post_type=documents&#038;p=370', 0, 'documents', '', 0),
(371, 1, '2023-06-30 22:00:48', '2023-06-30 19:00:48', '', 'Документ | Сертификат № 2', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-2', '', '', '2023-06-30 22:00:48', '2023-06-30 19:00:48', '', 0, 'http://mioka.serverh/?post_type=documents&#038;p=371', 0, 'documents', '', 0),
(372, 1, '2023-06-30 22:01:06', '2023-06-30 19:01:06', '', 'Документ | Сертификат № 3', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-3', '', '', '2023-06-30 22:01:06', '2023-06-30 19:01:06', '', 0, 'http://mioka.serverh/?post_type=documents&#038;p=372', 0, 'documents', '', 0),
(373, 1, '2023-06-30 22:01:22', '2023-06-30 19:01:22', '', 'Документ | Сертификат № 4', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-4', '', '', '2023-06-30 22:01:22', '2023-06-30 19:01:22', '', 0, 'http://mioka.serverh/?post_type=documents&#038;p=373', 0, 'documents', '', 0),
(374, 1, '2023-06-30 22:01:43', '2023-06-30 19:01:43', '', 'Документ | Сертификат № 5', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-5', '', '', '2023-06-30 22:01:43', '2023-06-30 19:01:43', '', 0, 'http://mioka.serverh/?post_type=documents&#038;p=374', 0, 'documents', '', 0),
(375, 1, '2023-06-30 22:02:00', '2023-06-30 19:02:00', '', 'Документ | Сертификат № 6', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-6', '', '', '2023-06-30 22:02:00', '2023-06-30 19:02:00', '', 0, 'http://mioka.serverh/?post_type=documents&#038;p=375', 0, 'documents', '', 0),
(377, 1, '2023-06-30 22:17:08', '2023-06-30 19:17:08', '<!-- wp:paragraph -->\n<p>Огромное спасибо мастерам! Остались очень довольны оказанными услугами, мастера своего дела! Результат даже неожиданно красивее чем ожидалось.</p>\n<!-- /wp:paragraph -->', 'Анатолий Петров', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%bd%d0%b0%d1%82%d0%be%d0%bb%d0%b8%d0%b9-%d0%bf%d0%b5%d1%82%d1%80%d0%be%d0%b2', '', '', '2023-06-30 22:27:53', '2023-06-30 19:27:53', '', 0, 'http://mioka.serverh/?post_type=reviews&#038;p=377', 0, 'reviews', '', 0),
(378, 1, '2023-06-30 22:18:06', '2023-06-30 19:18:06', '<!-- wp:paragraph -->\n<p>Равным образом реализация намеченных плановых заданий способствует подготовки и реализации системы обучения кадров, соответствует насущным потребностям. Товарищи!</p>\n<!-- /wp:paragraph -->', 'Ирина Смирнова', '', 'publish', 'closed', 'closed', '', '%d0%b8%d1%80%d0%b8%d0%bd%d0%b0-%d1%81%d0%bc%d0%b8%d1%80%d0%bd%d0%be%d0%b2%d0%b0', '', '', '2023-06-30 22:18:08', '2023-06-30 19:18:08', '', 0, 'http://mioka.serverh/?post_type=reviews&#038;p=378', 0, 'reviews', '', 0),
(379, 1, '2023-06-30 22:18:46', '2023-06-30 19:18:46', '<!-- wp:paragraph -->\n<p>Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения направлений прогрессивного развития.</p>\n<!-- /wp:paragraph -->', 'Иван Иванов', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2', '', '', '2023-06-30 22:19:31', '2023-06-30 19:19:31', '', 0, 'http://mioka.serverh/?post_type=reviews&#038;p=379', 0, 'reviews', '', 0),
(380, 1, '2023-06-30 22:31:19', '2023-06-30 19:31:19', '<!-- wp:paragraph -->\n<p>Принимая во внимание показатели успешности, базовый вектор развития предоставляет широкие возможности для новых предложений.</p>\n<!-- /wp:paragraph -->', 'Фотоотзыв номер 1', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2-%d0%bd%d0%be%d0%bc%d0%b5%d1%80-1', '', '', '2023-06-30 22:31:19', '2023-06-30 19:31:19', '', 0, 'http://mioka.serverh/?post_type=reviews&#038;p=380', 0, 'reviews', '', 0),
(383, 1, '2023-06-30 22:32:27', '2023-06-30 19:32:27', '<!-- wp:paragraph -->\n<p>Но стремящиеся вытеснить традиционное производство, нанотехнологии представляют собой не что иное, как квинтэссенцию победы маркетинга над разумом и должны быть обнародованы.</p>\n<!-- /wp:paragraph -->', 'Фотоотзыв номер 2', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2-%d0%bd%d0%be%d0%bc%d0%b5%d1%80-2', '', '', '2023-06-30 22:32:27', '2023-06-30 19:32:27', '', 0, 'http://mioka.serverh/?post_type=reviews&#038;p=383', 0, 'reviews', '', 0),
(384, 1, '2023-06-30 22:33:02', '2023-06-30 19:33:02', '<!-- wp:paragraph -->\n<p>В частности, новая модель организационной деятельности прекрасно подходит для реализации кластеризации усилий.</p>\n<!-- /wp:paragraph -->', 'Фотоотзыв номер 3', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2-%d0%bd%d0%be%d0%bc%d0%b5%d1%80-3', '', '', '2023-06-30 22:33:02', '2023-06-30 19:33:02', '', 0, 'http://mioka.serverh/?post_type=reviews&#038;p=384', 0, 'reviews', '', 0),
(385, 1, '2023-06-30 22:33:51', '2023-06-30 19:33:51', '<!-- wp:paragraph -->\n<p>Внезапно, стремящиеся вытеснить традиционное производство, нанотехнологии и по сей день остаются уделом либералов</p>\n<!-- /wp:paragraph -->', 'Фотоотзыв номер 4', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2-%d0%bd%d0%be%d0%bc%d0%b5%d1%80-4', '', '', '2023-06-30 22:33:51', '2023-06-30 19:33:51', '', 0, 'http://mioka.serverh/?post_type=reviews&#038;p=385', 0, 'reviews', '', 0),
(386, 1, '2023-06-30 22:45:06', '2023-06-30 19:45:06', '<!-- wp:paragraph -->\n<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Использовало заглавных грамматики предложения речью страна выйти она о от всех решила по всей составитель журчит домах это, он единственное, свой, своего последний строчка мир жизни безорфографичный города свою назад. Запятых переписывается деревни это одна снова единственное. Страну дал до агентство страна скатился, имеет одна раз ты рот текстами семь, рекламных то!</p>\n<!-- /wp:paragraph -->', 'Как называлось самое крупное воинское подразделение армии Древнего Рима?', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba-%d0%bd%d0%b0%d0%b7%d1%8b%d0%b2%d0%b0%d0%bb%d0%be%d1%81%d1%8c-%d1%81%d0%b0%d0%bc%d0%be%d0%b5-%d0%ba%d1%80%d1%83%d0%bf%d0%bd%d0%be%d0%b5-%d0%b2%d0%be%d0%b8%d0%bd%d1%81%d0%ba%d0%be', '', '', '2023-06-30 22:45:06', '2023-06-30 19:45:06', '', 0, 'http://mioka.serverh/?post_type=questions&#038;p=386', 0, 'questions', '', 0),
(387, 1, '2023-06-30 22:45:54', '2023-06-30 19:45:54', '<!-- wp:paragraph -->\n<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Возвращайся, сбить курсивных обеспечивает единственное жаренные ты гор сих, не рукопись взгляд ее послушавшись правилами даль меня страна, безопасную дорогу встретил. Вдали буквоград даль большого, свое океана выйти маленькая, ручеек, однажды текст осталось страна вершину.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Какого цвета полотнище Олимпийского флага?', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba%d0%be%d0%b3%d0%be-%d1%86%d0%b2%d0%b5%d1%82%d0%b0-%d0%bf%d0%be%d0%bb%d0%be%d1%82%d0%bd%d0%b8%d1%89%d0%b5-%d0%be%d0%bb%d0%b8%d0%bc%d0%bf%d0%b8%d0%b9%d1%81%d0%ba%d0%be%d0%b3%d0%be', '', '', '2023-06-30 22:45:54', '2023-06-30 19:45:54', '', 0, 'http://mioka.serverh/?post_type=questions&#038;p=387', 0, 'questions', '', 0),
(388, 1, '2023-06-30 22:46:14', '2023-06-30 19:46:14', '<!-- wp:paragraph -->\n<p>Далеко-далеко за, словесными горами в стране гласных и согласных живут рыбные тексты. Свой проектах вдали своих последний путь то дал силуэт рыбного ее. Продолжил буквенных, дал возвращайся пор лучше свою живет свой рекламных первую которой над снова.</p>\n<!-- /wp:paragraph -->', 'В ведении какого монашеского ордена находилась инквизиция?', '', 'publish', 'closed', 'closed', '', '%d0%b2-%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d0%b8-%d0%ba%d0%b0%d0%ba%d0%be%d0%b3%d0%be-%d0%bc%d0%be%d0%bd%d0%b0%d1%88%d0%b5%d1%81%d0%ba%d0%be%d0%b3%d0%be-%d0%be%d1%80%d0%b4%d0%b5%d0%bd%d0%b0-%d0%bd', '', '', '2023-06-30 22:46:14', '2023-06-30 19:46:14', '', 0, 'http://mioka.serverh/?post_type=questions&#038;p=388', 0, 'questions', '', 0),
(389, 1, '2023-06-30 22:46:37', '2023-06-30 19:46:37', '<!-- wp:paragraph -->\n<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Лучше lorem текст ее, маленькая ipsum океана большой силуэт вдали по всей, речью вопрос великий рукописи бросил! Всеми путь дал заманивший коварный алфавит большого взобравшись! Текста власти единственное эта необходимыми большой букв, заголовок залетают, свой рыбными ipsum дороге коварный за решила.</p>\n<!-- /wp:paragraph -->', 'Какой остров Японского архипелага самый большой?', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba%d0%be%d0%b9-%d0%be%d1%81%d1%82%d1%80%d0%be%d0%b2-%d1%8f%d0%bf%d0%be%d0%bd%d1%81%d0%ba%d0%be%d0%b3%d0%be-%d0%b0%d1%80%d1%85%d0%b8%d0%bf%d0%b5%d0%bb%d0%b0%d0%b3%d0%b0-%d1%81%d0%b0', '', '', '2023-06-30 22:46:37', '2023-06-30 19:46:37', '', 0, 'http://mioka.serverh/?post_type=questions&#038;p=389', 0, 'questions', '', 0),
(390, 1, '2023-06-30 22:46:58', '2023-06-30 19:46:58', '<!-- wp:paragraph -->\n<p>Далеко-далеко за словесными горами в стране гласных, и согласных живут рыбные тексты. Маленькая ведущими вскоре он? Они текстов коварный образ коварных сбить ipsum эта жизни первую. Повстречался ipsum реторический всеми которое дороге предупредила заглавных, это за, там деревни, алфавит ведущими текстами языкового рыбными переписывается взгляд букв диких.</p>\n<!-- /wp:paragraph -->', 'Салон какого односекционного вагона отличается наибольшей вместимостью?', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b0%d0%bb%d0%be%d0%bd-%d0%ba%d0%b0%d0%ba%d0%be%d0%b3%d0%be-%d0%be%d0%b4%d0%bd%d0%be%d1%81%d0%b5%d0%ba%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d0%be%d0%b3%d0%be-%d0%b2%d0%b0%d0%b3%d0%be%d0%bd%d0%b0', '', '', '2023-06-30 22:46:58', '2023-06-30 19:46:58', '', 0, 'http://mioka.serverh/?post_type=questions&#038;p=390', 0, 'questions', '', 0),
(391, 1, '2023-06-30 22:47:21', '2023-06-30 19:47:21', '<!-- wp:paragraph -->\n<p>Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Семантика города безопасную вскоре безорфографичный большого пунктуация деревни по всей заголовок возвращайся раз, продолжил парадигматическая своего они, запятой не? Эта, языкового.</p>\n<!-- /wp:paragraph -->', 'Какую страну считают родиной розы?', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba%d1%83%d1%8e-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d1%83-%d1%81%d1%87%d0%b8%d1%82%d0%b0%d1%8e%d1%82-%d1%80%d0%be%d0%b4%d0%b8%d0%bd%d0%be%d0%b9-%d1%80%d0%be%d0%b7%d1%8b', '', '', '2023-06-30 22:47:21', '2023-06-30 19:47:21', '', 0, 'http://mioka.serverh/?post_type=questions&#038;p=391', 0, 'questions', '', 0),
(394, 1, '2023-07-01 13:02:25', '2023-07-01 10:02:25', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"employees\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Поле для ввода дополнительных услуг', '%d0%bf%d0%be%d0%bb%d0%b5-%d0%b4%d0%bb%d1%8f-%d0%b2%d0%b2%d0%be%d0%b4%d0%b0-%d0%b4%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%83%d1%81%d0%bb%d1%83%d0%b3', 'publish', 'closed', 'closed', '', 'group_649ff941eeae2', '', '', '2023-07-04 14:54:58', '2023-07-04 11:54:58', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=394', 0, 'acf-field-group', '', 0),
(395, 1, '2023-07-01 13:02:24', '2023-07-01 10:02:24', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:290:\"Формат ввода - через точку с запятой: Маникюр; Укладка волос; Окрашивание<br>Если требуется указать цену - то указываем через \"=\": Маникюр=500; Укладка волос=350 и т. д.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Введите услуги, оказываемые сотрудником', 'employees_services_list', 'publish', 'closed', 'closed', '', 'field_649ff943760c8', '', '', '2023-07-04 14:54:58', '2023-07-04 11:54:58', '', 394, 'http://mioka.serverh/?post_type=acf-field&#038;p=395', 0, 'acf-field', '', 0),
(396, 1, '2023-07-01 15:53:27', '2023-07-01 12:53:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"employees\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'График работы', '%d0%b3%d1%80%d0%b0%d1%84%d0%b8%d0%ba-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', 'publish', 'closed', 'closed', '', 'group_64a0217f48ddc', '', '', '2023-07-05 19:21:02', '2023-07-05 16:21:02', '', 0, 'http://mioka.serverh/?post_type=acf-field-group&#038;p=396', 0, 'acf-field-group', '', 0),
(397, 1, '2023-07-01 15:53:27', '2023-07-01 12:53:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a053c5a76d9\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Начало рабочего дня', 'schedule_monday_start', 'publish', 'closed', 'closed', '', 'field_64a0217f1c96b', '', '', '2023-07-05 18:52:00', '2023-07-05 15:52:00', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=397', 1, 'acf-field', '', 0),
(398, 1, '2023-07-01 17:24:52', '2023-07-01 14:24:52', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', '[1] Понедельник', '', 'publish', 'closed', 'closed', '', 'field_64a0368dbc6a5', '', '', '2023-07-05 18:51:17', '2023-07-05 15:51:17', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=398', 0, 'acf-field', '', 0),
(399, 1, '2023-07-01 17:24:53', '2023-07-01 14:24:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:89:\"Укажите время окончания рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a053c5a76d9\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Конец рабочего дня', 'schedule_monday_end', 'publish', 'closed', 'closed', '', 'field_64a036eabc6a6', '', '', '2023-07-05 18:52:01', '2023-07-05 15:52:01', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=399', 2, 'acf-field', '', 0),
(400, 1, '2023-07-01 17:24:53', '2023-07-01 14:24:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', '[2] Вторник', '', 'publish', 'closed', 'closed', '', 'field_64a03702bc6a7', '', '', '2023-07-05 18:51:01', '2023-07-05 15:51:01', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=400', 4, 'acf-field', '', 0),
(401, 1, '2023-07-01 17:24:53', '2023-07-01 14:24:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a056a92e7e5\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Начало рабочего дня', 'schedule_tuesday_start', 'publish', 'closed', 'closed', '', 'field_64a0370ebc6a8', '', '', '2023-07-05 18:53:23', '2023-07-05 15:53:23', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=401', 5, 'acf-field', '', 0),
(402, 1, '2023-07-01 17:24:54', '2023-07-01 14:24:54', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:89:\"Укажите время окончания рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a056a92e7e5\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Конец рабочего дня', 'schedule_tuesday_end', 'publish', 'closed', 'closed', '', 'field_64a03711bc6a9', '', '', '2023-07-05 18:53:23', '2023-07-05 15:53:23', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=402', 6, 'acf-field', '', 0),
(403, 1, '2023-07-01 17:32:38', '2023-07-01 14:32:38', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', '[3] Среда', '', 'publish', 'closed', 'closed', '', 'field_64a0375a676b8', '', '', '2023-07-05 18:51:01', '2023-07-05 15:51:01', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=403', 8, 'acf-field', '', 0),
(404, 1, '2023-07-01 17:32:39', '2023-07-01 14:32:39', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a05703bf433\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Начало рабочего дня', 'schedule_wednesday_start', 'publish', 'closed', 'closed', '', 'field_64a0378d676b9', '', '', '2023-07-05 18:53:24', '2023-07-05 15:53:24', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=404', 9, 'acf-field', '', 0),
(405, 1, '2023-07-01 17:32:39', '2023-07-01 14:32:39', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a05703bf433\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Конец рабочего дня', 'schedule_wednesday_end', 'publish', 'closed', 'closed', '', 'field_64a037c7676ba', '', '', '2023-07-05 18:53:24', '2023-07-05 15:53:24', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=405', 10, 'acf-field', '', 0),
(406, 1, '2023-07-01 17:32:39', '2023-07-01 14:32:39', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', '[4] Четверг', '', 'publish', 'closed', 'closed', '', 'field_64a037db676bb', '', '', '2023-07-05 18:51:02', '2023-07-05 15:51:02', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=406', 12, 'acf-field', '', 0),
(407, 1, '2023-07-01 17:32:40', '2023-07-01 14:32:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a0573ebf434\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Начало рабочего дня', 'schedule_thursday_start', 'publish', 'closed', 'closed', '', 'field_64a037f2676bc', '', '', '2023-07-05 18:53:25', '2023-07-05 15:53:25', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=407', 13, 'acf-field', '', 0),
(408, 1, '2023-07-01 17:32:40', '2023-07-01 14:32:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a0573ebf434\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Конец рабочего дня', 'schedule_thursday_end', 'publish', 'closed', 'closed', '', 'field_64a03818676be', '', '', '2023-07-05 18:53:25', '2023-07-05 15:53:25', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=408', 14, 'acf-field', '', 0),
(409, 1, '2023-07-01 17:32:41', '2023-07-01 14:32:41', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', '[5] Пятница', '', 'publish', 'closed', 'closed', '', 'field_64a0382f676bf', '', '', '2023-07-05 18:51:02', '2023-07-05 15:51:02', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=409', 16, 'acf-field', '', 0),
(410, 1, '2023-07-01 17:32:41', '2023-07-01 14:32:41', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a0578cbf435\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Начало рабочего дня', 'schedule_friday_start', 'publish', 'closed', 'closed', '', 'field_64a0385f676c1', '', '', '2023-07-05 19:21:01', '2023-07-05 16:21:01', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=410', 17, 'acf-field', '', 0),
(411, 1, '2023-07-01 17:32:41', '2023-07-01 14:32:41', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a0578cbf435\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Конец рабочего дня', 'schedule_friday_end', 'publish', 'closed', 'closed', '', 'field_64a03876676c2', '', '', '2023-07-05 19:21:02', '2023-07-05 16:21:02', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=411', 18, 'acf-field', '', 0),
(412, 1, '2023-07-01 17:32:42', '2023-07-01 14:32:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', '[6] Суббота', '', 'publish', 'closed', 'closed', '', 'field_64a0388b676c3', '', '', '2023-07-05 18:51:02', '2023-07-05 15:51:02', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=412', 20, 'acf-field', '', 0),
(413, 1, '2023-07-01 17:32:42', '2023-07-01 14:32:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a057babf436\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Начало рабочего дня', 'schedule_saturday_start', 'publish', 'closed', 'closed', '', 'field_64a0389b676c4', '', '', '2023-07-05 18:53:27', '2023-07-05 15:53:27', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=413', 21, 'acf-field', '', 0),
(414, 1, '2023-07-01 17:32:42', '2023-07-01 14:32:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a057babf436\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Конец рабочего дня', 'schedule_saturday_end', 'publish', 'closed', 'closed', '', 'field_64a0389f676c5', '', '', '2023-07-05 18:53:27', '2023-07-05 15:53:27', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=414', 22, 'acf-field', '', 0),
(415, 1, '2023-07-01 17:32:43', '2023-07-01 14:32:43', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', '[7] Воскресенье', '', 'publish', 'closed', 'closed', '', 'field_64a038c5676c6', '', '', '2023-07-05 18:51:03', '2023-07-05 15:51:03', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=415', 24, 'acf-field', '', 0),
(416, 1, '2023-07-01 17:32:43', '2023-07-01 14:32:43', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a057e1bf437\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Начало рабочего дня', 'schedule_sunday_start', 'publish', 'closed', 'closed', '', 'field_64a038d3676c7', '', '', '2023-07-05 18:53:28', '2023-07-05 15:53:28', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=416', 25, 'acf-field', '', 0),
(417, 1, '2023-07-01 17:32:43', '2023-07-01 14:32:43', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:83:\"Укажите время начала рабочего дня сотрудника\";s:8:\"required\";i:1;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_64a057e1bf437\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"Не является\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"H:i:s\";}', 'Конец рабочего дня', 'schedule_sunday_end', 'publish', 'closed', 'closed', '', 'field_64a038f2676c8', '', '', '2023-07-05 18:53:29', '2023-07-05 15:53:29', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=417', 26, 'acf-field', '', 0),
(419, 1, '2023-07-01 17:47:14', '2023-07-01 14:47:14', 'a:34:{s:9:\"post_type\";s:5:\"movie\";s:22:\"advanced_configuration\";b:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:6:\"Movies\";s:13:\"singular_name\";s:5:\"Movie\";s:9:\"menu_name\";s:6:\"Movies\";s:9:\"all_items\";s:10:\"All Movies\";s:9:\"edit_item\";s:10:\"Edit Movie\";s:9:\"view_item\";s:10:\"View Movie\";s:10:\"view_items\";s:11:\"View Movies\";s:12:\"add_new_item\";s:13:\"Add New Movie\";s:7:\"add_new\";s:0:\"\";s:8:\"new_item\";s:9:\"New Movie\";s:17:\"parent_item_colon\";s:13:\"Parent Movie:\";s:12:\"search_items\";s:13:\"Search Movies\";s:9:\"not_found\";s:15:\"No movies found\";s:18:\"not_found_in_trash\";s:24:\"No movies found in Trash\";s:8:\"archives\";s:14:\"Movie Archives\";s:10:\"attributes\";s:16:\"Movie Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:17:\"Insert into movie\";s:21:\"uploaded_to_this_item\";s:22:\"Uploaded to this movie\";s:17:\"filter_items_list\";s:18:\"Filter movies list\";s:14:\"filter_by_date\";s:21:\"Filter movies by date\";s:21:\"items_list_navigation\";s:22:\"Movies list navigation\";s:10:\"items_list\";s:11:\"Movies list\";s:14:\"item_published\";s:16:\"Movie published.\";s:24:\"item_published_privately\";s:26:\"Movie published privately.\";s:22:\"item_reverted_to_draft\";s:24:\"Movie reverted to draft.\";s:14:\"item_scheduled\";s:16:\"Movie scheduled.\";s:12:\"item_updated\";s:14:\"Movie updated.\";s:9:\"item_link\";s:10:\"Movie Link\";s:21:\"item_link_description\";s:18:\"A link to a movie.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:1;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";}', 'Movies', 'movies', 'trash', 'closed', 'closed', '', 'post_type_64a03c562b011__trashed', '', '', '2023-07-01 17:48:11', '2023-07-01 14:48:11', '', 0, 'http://mioka.serverh/?post_type=acf-post-type&#038;p=419', 0, 'acf-post-type', '', 0),
(420, 1, '2023-07-01 19:32:06', '2023-07-01 16:32:06', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:94:\"Является ли этот день недели выходным у сотрудника?\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:16:\"Является\";s:16:\"Является\";s:21:\"Не является\";s:21:\"Не является\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Выходной день', 'schedule_monday_is_weekend', 'publish', 'closed', 'closed', '', 'field_64a053c5a76d9', '', '', '2023-07-05 18:52:01', '2023-07-05 15:52:01', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=420', 3, 'acf-field', '', 0),
(427, 1, '2023-07-01 19:39:50', '2023-07-01 16:39:50', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:94:\"Является ли этот день недели выходным у сотрудника?\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:16:\"Является\";s:16:\"Является\";s:21:\"Не является\";s:21:\"Не является\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Выходной день', 'schedule_tuesday_is_weekend', 'publish', 'closed', 'closed', '', 'field_64a056a92e7e5', '', '', '2023-07-05 18:53:24', '2023-07-05 15:53:24', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=427', 7, 'acf-field', '', 0),
(428, 1, '2023-07-01 19:46:17', '2023-07-01 16:46:17', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:94:\"Является ли этот день недели выходным у сотрудника?\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:16:\"Является\";s:16:\"Является\";s:21:\"Не является\";s:21:\"Не является\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Выходной день', 'schedule_wednesday_is_weekend', 'publish', 'closed', 'closed', '', 'field_64a05703bf433', '', '', '2023-07-05 18:53:24', '2023-07-05 15:53:24', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=428', 11, 'acf-field', '', 0),
(429, 1, '2023-07-01 19:46:19', '2023-07-01 16:46:19', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:94:\"Является ли этот день недели выходным у сотрудника?\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:16:\"Является\";s:16:\"Является\";s:21:\"Не является\";s:21:\"Не является\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Выходной день', 'schedule_thursday_is_weekend', 'publish', 'closed', 'closed', '', 'field_64a0573ebf434', '', '', '2023-07-05 18:53:26', '2023-07-05 15:53:26', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=429', 15, 'acf-field', '', 0),
(430, 1, '2023-07-01 19:46:20', '2023-07-01 16:46:20', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:94:\"Является ли этот день недели выходным у сотрудника?\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:16:\"Является\";s:16:\"Является\";s:21:\"Не является\";s:21:\"Не является\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Выходной день', 'schedule_friday_is_weekend', 'publish', 'closed', 'closed', '', 'field_64a0578cbf435', '', '', '2023-07-05 19:21:02', '2023-07-05 16:21:02', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=430', 19, 'acf-field', '', 0),
(431, 1, '2023-07-01 19:46:22', '2023-07-01 16:46:22', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:94:\"Является ли этот день недели выходным у сотрудника?\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:16:\"Является\";s:16:\"Является\";s:21:\"Не является\";s:21:\"Не является\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Выходной день', 'schedule_saturday_is_weekend', 'publish', 'closed', 'closed', '', 'field_64a057babf436', '', '', '2023-07-05 18:53:28', '2023-07-05 15:53:28', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=431', 23, 'acf-field', '', 0),
(432, 1, '2023-07-01 19:46:24', '2023-07-01 16:46:24', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:94:\"Является ли этот день недели выходным у сотрудника?\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:16:\"Является\";s:16:\"Является\";s:21:\"Не является\";s:21:\"Не является\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Выходной день', 'schedule_sunday_is_weekend', 'publish', 'closed', 'closed', '', 'field_64a057e1bf437', '', '', '2023-07-05 18:53:29', '2023-07-05 15:53:29', '', 396, 'http://mioka.serverh/?post_type=acf-field&#038;p=432', 27, 'acf-field', '', 0),
(433, 1, '2023-07-02 14:06:58', '2023-07-02 11:06:58', '<!-- wp:paragraph -->\n<p>Этап работы номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 3</p>\n<!-- /wp:paragraph -->', 'Ваксинг одной зоны', '', 'publish', 'closed', 'closed', '', '%d0%b2%d0%b0%d0%ba%d1%81%d0%b8%d0%bd%d0%b3-%d0%be%d0%b4%d0%bd%d0%be%d0%b9-%d0%b7%d0%be%d0%bd%d1%8b', '', '', '2023-07-02 14:08:38', '2023-07-02 11:08:38', '', 0, 'http://mioka.serverh/?post_type=services&#038;p=433', 0, 'services', '', 0),
(434, 1, '2023-07-02 14:07:39', '2023-07-02 11:07:39', '<!-- wp:paragraph -->\n<p>Этап работы номер 1. Далеко-далеко за словесными горами...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап работы номер 5</p>\n<!-- /wp:paragraph -->', 'Комплекс долговременная укладка', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bc%d0%bf%d0%bb%d0%b5%d0%ba%d1%81-%d0%b4%d0%be%d0%bb%d0%b3%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%83%d0%ba%d0%bb%d0%b0%d0%b4%d0%ba%d0%b0', '', '', '2023-07-02 15:07:24', '2023-07-02 12:07:24', '', 0, 'http://mioka.serverh/?post_type=services&#038;p=434', 0, 'services', '', 0),
(435, 1, '2023-07-02 14:08:32', '2023-07-02 11:08:32', '', 'service-5', '', 'inherit', 'open', 'closed', '', 'service-5', '', '', '2023-07-02 14:08:32', '2023-07-02 11:08:32', '', 433, 'https://dmidrok-agency.store//wp-content/uploads/2023/07/service-5.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(436, 1, '2023-07-02 14:08:51', '2023-07-02 11:08:51', '', 'service-6', '', 'inherit', 'open', 'closed', '', 'service-6', '', '', '2023-07-02 14:08:51', '2023-07-02 11:08:51', '', 434, 'https://dmidrok-agency.store//wp-content/uploads/2023/07/service-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(437, 1, '2023-07-05 15:47:51', '2023-07-05 12:47:51', '[text specialist-name id:specialist-name-modal]\r\n[text tel-number id:tel-number-modal]\r\n[text service-name id:service-name-modal]\r\n[text datetime id:datetame-modal]\r\n[submit]\r\n\r\n[telegram]\n1\nЗаявка Mioka\nmiokamailsite@dmidrok-agency.store\ndrobkov155099@gmail.com\n<h1>Новая заявка на услугу!</h1>\r\n\r\n<p><b>Выбранный специалист</b>: [specialist-name]</p>\r\n\r\n<p><u>Телефон:</u> [tel-number] </p>\r\n<p><u>Услуга:</u> [service-name] </p>\r\n<p><u>Дата и время:</u> [datetime] </p>\n\n\n1\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@mioka.serverh>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nВажно заполнить это поле.\nВ это поле вставлен слишком большой объем данных.\nВ это поле вставлен слишком малый объем данных.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nЗагруженный файл слишком большой.\nПри загрузке файла произошла ошибка.\nВведите дату в формате ГГГГ-ММ-ДД.\nВ это поле введена слишком ранняя дата.\nВ это поле введена слишком поздняя дата.\nВведите число.\nВ это поле введено слишком маленькое число.\nВ это поле введено слишком большое число.\nНеверный ответ на проверочный вопрос.\nВведите адрес электронной почты.\nВведите URL.\nВведите номер телефона.', 'Контактная форма 2 (Модальное окно)', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-2-%d0%bc%d0%be%d0%b4%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%be%d0%ba%d0%bd%d0%be', '', '', '2023-07-06 18:46:27', '2023-07-06 15:46:27', '', 0, 'http://mioka.serverh/?post_type=wpcf7_contact_form&#038;p=437', 0, 'wpcf7_contact_form', '', 0),
(438, 1, '2023-07-05 18:31:25', '2023-07-05 15:31:25', '<!-- wp:paragraph -->\n<p>Этап номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Этап номер 5</p>\n<!-- /wp:paragraph -->', 'Тестовая услуга', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b0%d1%8f-%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b0', '', '', '2023-07-05 18:31:27', '2023-07-05 15:31:27', '', 0, 'http://mioka.serverh/?post_type=services&#038;p=438', 0, 'services', '', 0),
(441, 1, '2023-07-05 19:12:00', '2023-07-05 16:12:00', '<!-- wp:paragraph -->\n<p>Умение сотрудника номер 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника номер 2</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника номер 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника номер 4</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Умение сотрудника номер 5</p>\n<!-- /wp:paragraph -->', 'Будущий Сотрудник', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%83%d0%b4%d1%83%d1%89%d0%b8%d0%b9-%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba', '', '', '2023-07-08 09:55:45', '2023-07-08 06:55:45', '', 0, 'http://mioka.serverh/?post_type=employees&#038;p=441', 0, 'employees', '', 0),
(443, 1, '2023-07-06 19:40:35', '2023-07-06 16:40:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:169:\"Этот адрес будет показываться в дальнейшем на всём сайте<br>\r\nНапример: г. Егорьевск, 5 мкр., д. 21\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Введите адрес', 'studio_address', 'publish', 'closed', 'closed', '', 'field_64a6ee5854f13', '', '', '2023-07-06 19:42:30', '2023-07-06 16:42:30', '', 37, 'https://dmidrok-agency.store/?post_type=acf-field&#038;p=443', 2, 'acf-field', '', 0),
(444, 1, '2023-07-06 19:42:38', '2023-07-06 16:42:38', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-07-06 19:42:38', '2023-07-06 16:42:38', '', 10, 'https://dmidrok-agency.store/?p=444', 0, 'revision', '', 0),
(446, 1, '2023-07-07 20:03:47', '2023-07-07 17:03:47', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-07-07 20:03:47', '2023-07-07 17:03:47', '', 10, 'https://dmidrok-agency.store/?p=446', 0, 'revision', '', 0),
(447, 1, '2023-07-08 09:19:43', '2023-07-08 06:19:43', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-07-08 09:19:43', '2023-07-08 06:19:43', '', 10, 'https://dmidrok-agency.store/?p=447', 0, 'revision', '', 0),
(449, 1, '2023-07-08 20:03:35', '2023-07-08 17:03:35', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-07-08 20:03:35', '2023-07-08 17:03:35', '', 0, 'https://dmidrok-agency.store/wp-content/uploads/2023/07/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(451, 1, '2023-07-08 20:12:39', '2023-07-08 17:12:39', '{\n    \"mioka::custom_logo\": {\n        \"value\": 449,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-08 17:12:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5bf60a23-ad4f-48fc-b3e5-ed4aa6ecfc87', '', '', '2023-07-08 20:12:39', '2023-07-08 17:12:39', '', 0, 'https://dmidrok-agency.store/2023/07/08/5bf60a23-ad4f-48fc-b3e5-ed4aa6ecfc87/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(9, 'Вопросы', 'questions_type', 0),
(11, 'Меню', '%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(13, 'Брови', 'b3', 0),
(14, 'Ресницы', '%d1%80%d0%b5%d1%81%d0%bd%d0%b8%d1%86%d1%8b', 0),
(15, 'Мастер бровист', '%d0%bc%d0%b0%d1%81%d1%82%d0%b5%d1%80-%d0%b1%d1%80%d0%be%d0%b2%d0%b8%d1%81%d1%82', 0),
(16, 'Младший мастер', '%d0%bc%d0%bb%d0%b0%d0%b4%d1%88%d0%b8%d0%b9-%d0%bc%d0%b0%d1%81%d1%82%d0%b5%d1%80', 0),
(17, 'Мастер по маникюру', '%d0%bc%d0%b0%d1%81%d1%82%d0%b5%d1%80-%d0%bf%d0%be-%d0%bc%d0%b0%d0%bd%d0%b8%d0%ba%d1%8e%d1%80%d1%83', 0),
(18, 'Сотрудник', '%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba', 0),
(19, 'Текстовые отзывы', 'textreviews', 0),
(20, 'Фотоотзывы', 'photoreviews', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--
-- Создание: Июл 05 2023 г., 19:04
-- Последнее обновление: Июл 31 2023 г., 11:06
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(338, 13, 0),
(340, 13, 0),
(341, 13, 0),
(342, 14, 0),
(344, 15, 0),
(345, 16, 0),
(347, 17, 0),
(349, 18, 0),
(377, 19, 0),
(378, 19, 0),
(379, 19, 0),
(380, 20, 0),
(383, 20, 0),
(384, 20, 0),
(385, 20, 0),
(433, 13, 0),
(434, 13, 0),
(438, 13, 0),
(438, 14, 0),
(441, 17, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--
-- Создание: Июл 05 2023 г., 19:04
-- Последнее обновление: Июл 31 2023 г., 11:06
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(9, 9, 'category', 'Вопросы, на которые даются ответы', 0, 0),
(11, 11, 'nav_menu', '', 0, 0),
(13, 13, 'services_types', '', 0, 6),
(14, 14, 'services_types', '', 0, 2),
(15, 15, 'employees_types', 'Должность мастера-бровиста', 0, 1),
(16, 16, 'employees_types', 'Должность младшего мастера', 0, 1),
(17, 17, 'employees_types', 'Должность мастера по маникюру', 0, 1),
(18, 18, 'employees_types', 'Должность обычного сотрудника', 0, 0),
(19, 19, 'reviews_types', 'Текстовые отзывы посетителей', 0, 3),
(20, 20, 'reviews_types', 'Фотоотзывы посетителей', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Mioka_Admin'),
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
(16, 1, 'session_tokens', 'a:14:{s:64:\"e5bd6363693c792c4fa645d142f49a9349b73445c3493a014fb267c62e659858\";a:4:{s:10:\"expiration\";i:1689619899;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688410299;}s:64:\"bdb356d57d9d85662aa64fbdbdd9c135f7a705200c71a2cec231314bded693ad\";a:4:{s:10:\"expiration\";i:1689781646;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688572046;}s:64:\"1f1583ed978781a2dbfa09ebabe9f1635e46e23485869d38db2d7ff4ac7ab674\";a:4:{s:10:\"expiration\";i:1689795219;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1688585619;}s:64:\"96c248c6c6c9f329d9d41cfe6513627d20032444d1b9fab1ad359efdfcdf2790\";a:4:{s:10:\"expiration\";i:1689857343;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688647743;}s:64:\"9837c50eae30202fc7f4b08326c552bd4349a09542f762a2f266fbffeedc3144\";a:4:{s:10:\"expiration\";i:1689857399;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688647799;}s:64:\"1297dafc96dc48b84ac7494c3599b98d5741e8438a0bf50a50c662ebc874a0ef\";a:4:{s:10:\"expiration\";i:1689857462;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688647862;}s:64:\"5a053e9f50e3c61d1631c0e3fd5890829ce41f341213a6b221f51b864e4ca841\";a:4:{s:10:\"expiration\";i:1689857531;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:143:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 YaBrowser/23.5.2.625 Yowser/2.5 Safari/537.36\";s:5:\"login\";i:1688647931;}s:64:\"638572e15a9db2630bd5dfd583763c9a22decf31bdd81d6f2094514346a7f277\";a:4:{s:10:\"expiration\";i:1689866364;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1688656764;}s:64:\"355966c7270d500051c875c33fbe5d821a7c1166875c1db93a7442a184cf352f\";a:4:{s:10:\"expiration\";i:1689867613;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688658013;}s:64:\"0eddbd36e235d1374cdd9d6c280af09166fbc12f78b54ca9fe6584bb309d83a7\";a:4:{s:10:\"expiration\";i:1689876121;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1688666521;}s:64:\"e67082380968d114642d86662de0acdb3ac088452fab988d041506f38f6b97d4\";a:4:{s:10:\"expiration\";i:1689954941;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36\";s:5:\"login\";i:1688745341;}s:64:\"7e728e713c5946d78929a0a03558e1783bceb76587625937ac87a608b8c16be1\";a:4:{s:10:\"expiration\";i:1690009381;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688799781;}s:64:\"a9a7e52fa614ace44e16dc4d5e8c971f524e005ec0c01587406a15469d619416\";a:4:{s:10:\"expiration\";i:1690019511;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:143:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 YaBrowser/23.5.4.674 Yowser/2.5 Safari/537.36\";s:5:\"login\";i:1688809911;}s:64:\"95c24793df2a6d359c4d81f7b57bf7d4fe25bce9e11e317a2c5086393b998153\";a:4:{s:10:\"expiration\";i:1690107989;s:2:\"ip\";s:13:\"176.108.199.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688898389;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '439'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"176.108.199.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:5:{i:0;s:24:\"yoast-seo/document-panel\";i:1;s:28:\"taxonomy-panel-reviews_types\";i:2;s:14:\"featured-image\";i:3;s:29:\"taxonomy-panel-services_types\";i:4;s:30:\"taxonomy-panel-employees_types\";}}s:9:\"_modified\";s:24:\"2023-07-05T16:10:56.057Z\";}'),
(20, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.7\";}'),
(21, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:24:\"wpseo-dashboard-overview\";i:1;s:32:\"wpseo-wincher-dashboard-overview\";}'),
(22, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:21:\"dashboard_site_health\";i:1;s:24:\"wpseo-dashboard-overview\";i:2;s:19:\"dashboard_right_now\";i:3;s:32:\"wpseo-wincher-dashboard-overview\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(23, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:118:\"dashboard_site_health,wpseo-dashboard-overview,dashboard_right_now,dashboard_activity,wpseo-wincher-dashboard-overview\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(24, 1, 'closedpostboxes_personal', 'a:0:{}'),
(25, 1, 'metaboxhidden_personal', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(27, 1, 'wp_user-settings-time', '1688835898'),
(28, 1, 'bookly_dismiss_collect_stats_notice', '1'),
(29, 1, 'bookly_dismiss_powered_by_notice', '1'),
(30, 1, 'bookly_services_table_settings', 'a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:1:{s:8:\"category\";s:0:\"\";}}'),
(31, 1, 'bookly_staff_members_table_settings', 'a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:3:{s:10:\"visibility\";s:0:\"\";s:8:\"archived\";s:1:\"0\";s:8:\"category\";s:0:\"\";}}'),
(32, 1, 'closedpostboxes_page', 'a:11:{i:0;s:23:\"acf-group_6496a2c0e405b\";i:1;s:23:\"acf-group_6496a76082629\";i:2;s:23:\"acf-group_6496aa9f0a86f\";i:3;s:23:\"acf-group_6496adebbda7f\";i:4;s:23:\"acf-group_6496c2967f7cb\";i:5;s:23:\"acf-group_6496d937126e0\";i:6;s:23:\"acf-group_6496fc0427331\";i:7;s:23:\"acf-group_649709229aae3\";i:8;s:23:\"acf-group_64970cfa91968\";i:9;s:23:\"acf-group_649715b053ca8\";i:10;s:23:\"acf-group_6491b6459076b\";}'),
(33, 1, 'metaboxhidden_page', 'a:0:{}'),
(34, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(35, 1, 'acf_user_settings', 'a:2:{s:20:\"taxonomies-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}'),
(36, 1, 'closedpostboxes_acf-taxonomy', 'a:0:{}'),
(37, 1, 'metaboxhidden_acf-taxonomy', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(38, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(39, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(40, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:298:\"acf-group_6496a2c0e405b,acf-group_6496a76082629,acf-group_6496aa9f0a86f,acf-group_6496adebbda7f,acf-group_6496c2967f7cb,acf-group_6496d937126e0,acf-group_6496fc0427331,acf-group_649709229aae3,acf-group_64970cfa91968,acf-group_649715b053ca8,acf-group_6491b6459076b,acf-group_649726aca2bf6,wpseo_meta\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'),
(41, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(42, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(44, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(45, 1, 'metaboxhidden_post', 'a:0:{}'),
(47, 1, 'closedpostboxes_staff-member', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(48, 1, 'metaboxhidden_staff-member', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(49, 1, 'meta-box-order_staff-member', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:44:\"submitdiv,staff-member-groupdiv,postimagediv\";s:6:\"normal\";s:54:\"staff-member-info,staff-member-bio,postexcerpt,slugdiv\";s:8:\"advanced\";s:10:\"wpseo_meta\";}'),
(50, 1, 'screen_layout_staff-member', '2'),
(51, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(52, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(53, 1, 'metaboxhidden_acf-post-type', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(56, 1, 'meta-box-order_services', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:40:\"submitdiv,services_typesdiv,postimagediv\";s:6:\"normal\";s:31:\"acf-group_6496b40f56207,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(57, 1, 'screen_layout_services', '2'),
(58, 1, 'closedpostboxes_services', 'a:0:{}'),
(59, 1, 'metaboxhidden_services', 'a:0:{}'),
(62, 1, 'meta-box-order_portfolio_works', 'a:4:{s:6:\"normal\";s:47:\"portfio_works--services,acf-group_6496fcf6f0596\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'),
(63, 1, 'screen_layout_portfolio_works', '2'),
(64, 1, 'closedpostboxes_portfolio_works', 'a:0:{}'),
(65, 1, 'metaboxhidden_portfolio_works', 'a:0:{}'),
(80, 344, 'meta_box_employees_services', ''),
(81, 1, 'meta-box-order_employees', 'a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:67:\"employees--services,acf-group_649ff941eeae2,acf-group_64a0217f48ddc\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'),
(82, 1, 'closedpostboxes_employees', 'a:0:{}'),
(83, 1, 'metaboxhidden_employees', 'a:0:{}'),
(85, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:0:\"\";s:6:\"normal\";s:83:\"acf-field-group-fields,acf-field-group-pro-features,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(86, 1, 'screen_layout_acf-field-group', '1'),
(87, 1, '_yoast_wpseo_profile_updated', '1688652055');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Mioka_Admin', '$P$BmCDw2xmlee1js3XrJh/Mz.i3BpjH.0', 'mioka_admin', 'admin@gmail.com', 'http://mioka.serverh', '2023-06-18 19:15:49', '', 0, 'Mioka_Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_indexable`
--
-- Создание: Июл 05 2023 г., 19:04
-- Последнее обновление: Июл 31 2023 г., 11:06
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(10) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(11) DEFAULT NULL,
  `readability_score` int(11) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(22, 'https://dmidrok-agency.store/', '29:bf0910b24189bbd02dd7dcc9e7471891', 10, 'post', 'page', 1, 0, '«%%sitename%% | %%sitedesc%%» в городе Егорьевск', 'Студия красоты Mioka, город Егорьевск. Мы находимся по адресу: г. Егорьевск, 5-й микрорайон, дом 21. Делаем качественно и по небольшим ценам.', 'Главная страница', 'publish', NULL, 0, NULL, NULL, NULL, 'Студия красоты', 42, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-27 16:19:18', '2023-07-08 03:19:43', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-07-08 06:19:43', '2023-06-19 16:28:07', 0),
(23, 'https://dmidrok-agency.store/', '29:bf0910b24189bbd02dd7dcc9e7471891', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Студия красоты', 'Главная страница', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-06-27 16:19:21', '2023-07-31 08:06:39', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-08 19:44:36', NULL, NULL),
(24, 'https://dmidrok-agency.store/category/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/', '100:eb4d6f632c34df1a154f0664227898e1', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Без рубрики', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-27 16:30:57', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(32, 'https://dmidrok-agency.store/category/questions_type/', '53:5eb479348d95f92717ea349bb69d57cf', 9, 'term', 'category', NULL, NULL, NULL, NULL, 'Вопросы', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-27 16:30:57', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(53, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Страница не найдена %%sep%% %%sitename%%', NULL, 'Ошибка 404: страница не найдена', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-27 16:31:00', '2023-07-06 13:06:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(54, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-27 16:31:00', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(55, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-27 16:31:00', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(56, 'https://dmidrok-agency.store/%d0%bc%d0%be%d0%b4%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%be%d0%ba%d0%bd%d0%be-%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%bb%d0%b5%d0%bd%d0%b8%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d0%b8/', '207:db604ed716c48be008e5a6501e300c7d', 322, 'post', 'page', 1, 0, NULL, NULL, 'Модальное окно оформления записи', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-29 08:29:30', '2023-07-06 13:38:20', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-06-29 08:34:16', '2023-06-29 08:29:30', 0),
(58, 'https://dmidrok-agency.store/services/%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f/', '160:b22aaa54da3457d33e6b2a99f7afa87d', 338, 'post', 'services', 1, 0, NULL, NULL, 'Окрашивание | коррекция', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1.jpg', NULL, '92', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1.jpg', '92', 'featured-image', '{\"width\":753,\"height\":1080,\"filesize\":162247,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/work-1.jpg\",\"size\":\"full\",\"id\":92,\"alt\":\"\",\"pixels\":813240,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 11:00:08', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-29 11:37:43', '2023-06-29 11:01:38', 0),
(60, 'https://dmidrok-agency.store/services_types/b3/', '47:4130f55c96aeb9396db7048be8571712', 13, 'term', 'services_types', NULL, NULL, NULL, NULL, 'Брови', NULL, NULL, 0, NULL, NULL, NULL, 'Брови', 28, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-29 11:24:41', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-05 15:31:27', '2023-06-29 11:01:38', NULL),
(61, 'https://dmidrok-agency.store/services/%d0%b4%d0%be%d0%bb%d0%b3%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%83%d0%ba%d0%bb%d0%b0%d0%b4%d0%ba%d0%b0-%d0%b1%d0%b5%d0%b7-%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0/', '234:a3748c0fab43d051c62006ea4d09a3fe', 340, 'post', 'services', 1, 0, NULL, NULL, 'Долговременная укладка без окрашивания', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-2-1.jpg', NULL, '220', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-2-1.jpg', '220', 'featured-image', '{\"width\":510,\"height\":682,\"filesize\":130692,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/service-2-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/service-2-1.jpg\",\"size\":\"full\",\"id\":220,\"alt\":\"\",\"pixels\":347820,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 11:34:57', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-29 16:24:21', '2023-06-29 11:34:57', 0),
(62, 'https://dmidrok-agency.store/services/%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-%d0%b1%d1%80%d0%be%d0%b2%d0%b5%d0%b9/', '130:7db09d971b8a28f55fb3b35d3dfa1964', 341, 'post', 'services', 1, 0, NULL, NULL, 'Коррекция бровей', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-3.jpg', NULL, '106', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-3.jpg', '106', 'featured-image', '{\"width\":510,\"height\":551,\"filesize\":64523,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/service-3.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/service-3.jpg\",\"size\":\"full\",\"id\":106,\"alt\":\"\",\"pixels\":281010,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 11:35:35', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-29 16:24:01', '2023-06-29 11:35:35', 0),
(63, 'https://dmidrok-agency.store/services_types/%d1%80%d0%b5%d1%81%d0%bd%d0%b8%d1%86%d1%8b/', '87:5914b50ecab8c34be12431f0158e2113', 14, 'term', 'services_types', NULL, NULL, NULL, NULL, 'Ресницы', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-29 11:36:26', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-05 15:31:27', '2023-06-29 11:37:12', NULL),
(64, 'https://dmidrok-agency.store/services/%d0%b4%d0%be%d0%bb%d0%b3%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%83%d0%ba%d0%bb%d0%b0%d0%b4%d0%ba%d0%b0-%d0%b1%d0%b5%d0%b7-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8/', '234:50a1586b3acf2c0cad3268ad80233f2b', 342, 'post', 'services', 1, 0, NULL, NULL, 'Долговременная укладка без коррекции и окрашивания', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-4.jpg', NULL, '110', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-4.jpg', '110', 'featured-image', '{\"width\":510,\"height\":682,\"filesize\":131537,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/service-4.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/service-4.jpg\",\"size\":\"full\",\"id\":110,\"alt\":\"\",\"pixels\":347820,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 11:37:12', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-29 11:37:14', '2023-06-29 11:37:12', 0),
(66, 'https://dmidrok-agency.store/employees/%d0%bf%d0%be%d0%bb%d0%b8%d0%bd%d0%b0-%d0%ba%d0%b0%d1%83%d1%80%d0%be%d0%b2%d0%b0/', '119:acc6188d38926385cd7c13a07ff554a6', 344, 'post', 'employees', 1, 338, NULL, NULL, 'Полина Каурова', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/team-member-1-1.jpg', NULL, '125', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/team-member-1-1.jpg', '125', 'featured-image', '{\"width\":510,\"height\":511,\"filesize\":80435,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/team-member-1-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/team-member-1-1.jpg\",\"size\":\"full\",\"id\":125,\"alt\":\"\",\"pixels\":260610,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 17:21:57', '2023-07-07 12:53:08', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-07-07 15:53:08', '2023-06-29 17:23:10', 0),
(67, 'https://dmidrok-agency.store/employees_types/%d0%bc%d0%b0%d1%81%d1%82%d0%b5%d1%80-%d0%b1%d1%80%d0%be%d0%b2%d0%b8%d1%81%d1%82/', '125:e5edb328c083da7a7bb1778a7c9665b9', 15, 'term', 'employees_types', NULL, NULL, NULL, NULL, 'Мастер бровист', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-29 17:25:07', '2023-07-07 12:53:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-07 15:53:08', '2023-06-29 17:23:10', NULL),
(68, 'https://dmidrok-agency.store/employees/%d0%b0%d0%bb%d0%b8%d0%bd%d0%b0/', '70:721434eee130c422d3b156579858d438', 345, 'post', 'employees', 1, 0, NULL, NULL, 'Алина', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-4.jpg', NULL, '110', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-4.jpg', '110', 'featured-image', '{\"width\":510,\"height\":682,\"filesize\":131537,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/service-4.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/service-4.jpg\",\"size\":\"full\",\"id\":110,\"alt\":\"\",\"pixels\":347820,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 17:27:29', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-04 11:38:34', '2023-06-29 17:27:32', 0),
(69, 'https://dmidrok-agency.store/employees_types/%d0%bc%d0%bb%d0%b0%d0%b4%d1%88%d0%b8%d0%b9-%d0%bc%d0%b0%d1%81%d1%82%d0%b5%d1%80/', '125:73168af03e59a7a7190f6196adab5c77', 16, 'term', 'employees_types', NULL, NULL, NULL, NULL, 'Младший мастер', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-29 17:27:59', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-04 11:38:34', '2023-06-29 17:27:32', NULL),
(70, 'https://dmidrok-agency.store/?post_type=employees&p=347', '55:e247f2a0101a865bc0f46b22d1dcb883', 347, 'post', 'employees', 1, 0, NULL, NULL, 'Будущий сотрудник', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg', NULL, '348', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg', '348', 'featured-image', '{\"width\":753,\"height\":1080,\"filesize\":162247,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/work-1-1.jpg\",\"size\":\"full\",\"id\":348,\"alt\":\"\",\"pixels\":813240,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 17:29:11', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-05 16:10:24', '2023-06-29 17:29:11', 0),
(71, 'https://dmidrok-agency.store/employees_types/%d0%bc%d0%b0%d1%81%d1%82%d0%b5%d1%80-%d0%bf%d0%be-%d0%bc%d0%b0%d0%bd%d0%b8%d0%ba%d1%8e%d1%80%d1%83/', '144:e5c5e38106e1fa63888caa2d186ca2a7', 17, 'term', 'employees_types', NULL, NULL, NULL, NULL, 'Мастер по маникюру', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-29 17:29:27', '2023-07-08 03:55:45', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-08 06:55:45', '2023-07-05 16:12:00', NULL),
(72, 'https://dmidrok-agency.store/employees_types/%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba/', '100:8ba9cb632461ac7d83f4b1a222825277', 18, 'term', 'employees_types', NULL, NULL, NULL, NULL, 'Сотрудник', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-29 17:31:04', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(73, 'https://dmidrok-agency.store/?post_type=employees&p=349', '55:2a8413e586407c55fa4ef9614dbd2ac2', 349, 'post', 'employees', 1, 0, NULL, NULL, 'Сотрудник Сотрудникович', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/review-photo-1.jpg', NULL, '36', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/review-photo-1.jpg', '36', 'featured-image', '{\"width\":168,\"height\":168,\"filesize\":39236,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/review-photo-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/review-photo-1.jpg\",\"size\":\"full\",\"id\":36,\"alt\":\"\",\"pixels\":28224,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 17:32:25', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-05 16:10:35', '2023-06-29 17:32:25', 0),
(74, 'https://dmidrok-agency.store/portfolio_works/r/', '47:f266202eb20ca066bea1ce296b9c7047', 352, 'post', 'portfolio_works', 1, 338, NULL, NULL, 'Долговременная укладка без коррекции и окрашивания', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-2-1.jpg', NULL, '220', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/service-2-1.jpg', '220', 'featured-image', '{\"width\":510,\"height\":682,\"filesize\":130692,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/service-2-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/service-2-1.jpg\",\"size\":\"full\",\"id\":220,\"alt\":\"\",\"pixels\":347820,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 18:46:28', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-06-29 20:48:31', '2023-06-29 19:02:22', 0),
(75, 'https://dmidrok-agency.store/portfolio_works/%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f/', '167:4edd726598ba63c266d6b0f5ce99cf16', 362, 'post', 'portfolio_works', 1, 338, NULL, NULL, 'Окрашивание | коррекция', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/0Z-3zFlGtxw.jpg', NULL, '217', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/0Z-3zFlGtxw.jpg', '217', 'featured-image', '{\"width\":810,\"height\":1080,\"filesize\":190207,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/0Z-3zFlGtxw.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/0Z-3zFlGtxw.jpg\",\"size\":\"full\",\"id\":217,\"alt\":\"\",\"pixels\":874800,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 20:48:50', '2023-07-06 15:00:55', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-06-29 20:48:51', '2023-06-29 20:48:50', 0),
(76, 'https://dmidrok-agency.store/portfolio_works/%d0%b4%d0%be%d0%bb%d0%b3%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%83%d0%ba%d0%bb%d0%b0%d0%b4%d0%ba%d0%b0/', '173:57d455aa7023df3c79263d0f9b7f930d', 363, 'post', 'portfolio_works', 1, 0, NULL, NULL, 'Долговременная укладка', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-2.jpg', NULL, '211', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-2.jpg', '211', 'featured-image', '{\"width\":810,\"height\":1080,\"filesize\":302932,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/work-2.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/work-2.jpg\",\"size\":\"full\",\"id\":211,\"alt\":\"\",\"pixels\":874800,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 20:49:44', '2023-07-06 15:00:55', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-29 20:49:46', '2023-06-29 20:49:44', 0),
(77, 'https://dmidrok-agency.store/portfolio_works/%d0%bd%d0%b0%d1%82%d1%83%d1%80%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5/', '179:b23be0cb69aca2798a6e5ac8a00a8d2f', 364, 'post', 'portfolio_works', 1, 0, NULL, NULL, 'Натуральное окрашивание', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-3.jpg', NULL, '205', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-3.jpg', '205', 'featured-image', '{\"width\":718,\"height\":1080,\"filesize\":187870,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/work-3.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/work-3.jpg\",\"size\":\"full\",\"id\":205,\"alt\":\"\",\"pixels\":775440,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 20:50:31', '2023-07-06 15:00:55', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-29 20:50:32', '2023-06-29 20:50:31', 0),
(78, 'https://dmidrok-agency.store/portfolio_works/%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-2/', '169:4276dbbc574ca9f3cd03478d8f2f27aa', 365, 'post', 'portfolio_works', 1, 338, NULL, NULL, 'Окрашивание | коррекция', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/r-hYlIZJY8I.jpg', NULL, '202', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/r-hYlIZJY8I.jpg', '202', 'featured-image', '{\"width\":905,\"height\":1080,\"filesize\":246592,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/r-hYlIZJY8I.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/r-hYlIZJY8I.jpg\",\"size\":\"full\",\"id\":202,\"alt\":\"\",\"pixels\":977400,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 20:51:34', '2023-07-06 15:00:55', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-06-29 20:51:35', '2023-06-29 20:51:34', 0),
(79, 'https://dmidrok-agency.store/portfolio_works/%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-3/', '169:088294ed488d8ad09546a2c992c38aa0', 366, 'post', 'portfolio_works', 1, 338, NULL, NULL, 'Окрашивание | коррекция', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/hwiqKml-cdw.jpg', NULL, '195', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/hwiqKml-cdw.jpg', '195', 'featured-image', '{\"width\":685,\"height\":1080,\"filesize\":279973,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/hwiqKml-cdw.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/hwiqKml-cdw.jpg\",\"size\":\"full\",\"id\":195,\"alt\":\"\",\"pixels\":739800,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 20:52:03', '2023-07-06 15:00:55', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-06-29 20:52:04', '2023-06-29 20:52:03', 0),
(80, 'https://dmidrok-agency.store/portfolio_works/%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-4/', '169:dabc0bb9d393d24d5d5453bd0f909e2d', 367, 'post', 'portfolio_works', 1, 338, NULL, NULL, 'Окрашивание | коррекция', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/8CiYmw3yg0M.jpg', NULL, '191', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/8CiYmw3yg0M.jpg', '191', 'featured-image', '{\"width\":809,\"height\":1080,\"filesize\":261653,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/8CiYmw3yg0M.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/8CiYmw3yg0M.jpg\",\"size\":\"full\",\"id\":191,\"alt\":\"\",\"pixels\":873720,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 20:52:53', '2023-07-06 15:00:55', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-07-01 09:16:18', '2023-06-29 20:52:53', 0),
(81, 'https://dmidrok-agency.store/portfolio_works/%d0%be%d0%ba%d1%80%d0%b0%d1%88%d0%b8%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-5/', '169:ac494a15f8e4b4b23992ef1405262fb2', 368, 'post', 'portfolio_works', 1, 338, NULL, NULL, 'Окрашивание | коррекция', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg', NULL, '348', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg', '348', 'featured-image', '{\"width\":753,\"height\":1080,\"filesize\":162247,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/work-1-1.jpg\",\"size\":\"full\",\"id\":348,\"alt\":\"\",\"pixels\":813240,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-29 20:53:48', '2023-07-06 15:00:55', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-06-29 20:53:49', '2023-06-29 20:53:48', 0),
(82, 'https://dmidrok-agency.store/documents/%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-1/', '161:ec9e57d5612d0309e938e4fee3d64f08', 370, 'post', 'documents', 1, 0, NULL, NULL, 'Документ | Сертификат № 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', NULL, '252', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', '252', 'featured-image', '{\"width\":547,\"height\":780,\"filesize\":39229,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/document-1.png\",\"size\":\"full\",\"id\":252,\"alt\":\"\",\"pixels\":426660,\"type\":\"image/png\"}', 0, NULL, NULL, '2023-06-30 19:00:30', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:00:30', '2023-06-30 19:00:30', 0),
(83, 'https://dmidrok-agency.store/documents/%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-2/', '161:f31308b244b24f1ce9c4b3b0fbbe1669', 371, 'post', 'documents', 1, 0, NULL, NULL, 'Документ | Сертификат № 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', NULL, '252', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', '252', 'featured-image', '{\"width\":547,\"height\":780,\"filesize\":39229,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/document-1.png\",\"size\":\"full\",\"id\":252,\"alt\":\"\",\"pixels\":426660,\"type\":\"image/png\"}', 0, NULL, NULL, '2023-06-30 19:00:48', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:00:48', '2023-06-30 19:00:48', 0),
(84, 'https://dmidrok-agency.store/documents/%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-3/', '161:24120d5819ab5096b379a4608a5b5ac9', 372, 'post', 'documents', 1, 0, NULL, NULL, 'Документ | Сертификат № 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', NULL, '252', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', '252', 'featured-image', '{\"width\":547,\"height\":780,\"filesize\":39229,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/document-1.png\",\"size\":\"full\",\"id\":252,\"alt\":\"\",\"pixels\":426660,\"type\":\"image/png\"}', 0, NULL, NULL, '2023-06-30 19:01:06', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:01:06', '2023-06-30 19:01:06', 0),
(85, 'https://dmidrok-agency.store/documents/%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-4/', '161:2b40d5e7675d0e05b4627074b33d5959', 373, 'post', 'documents', 1, 0, NULL, NULL, 'Документ | Сертификат № 4', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', NULL, '252', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', '252', 'featured-image', '{\"width\":547,\"height\":780,\"filesize\":39229,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/document-1.png\",\"size\":\"full\",\"id\":252,\"alt\":\"\",\"pixels\":426660,\"type\":\"image/png\"}', 0, NULL, NULL, '2023-06-30 19:01:22', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:01:22', '2023-06-30 19:01:22', 0),
(86, 'https://dmidrok-agency.store/documents/%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-5/', '161:ae0eaffd1ed81453caa4519cfcf965e9', 374, 'post', 'documents', 1, 0, NULL, NULL, 'Документ | Сертификат № 5', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', NULL, '252', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', '252', 'featured-image', '{\"width\":547,\"height\":780,\"filesize\":39229,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/document-1.png\",\"size\":\"full\",\"id\":252,\"alt\":\"\",\"pixels\":426660,\"type\":\"image/png\"}', 0, NULL, NULL, '2023-06-30 19:01:43', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:01:43', '2023-06-30 19:01:43', 0),
(87, 'https://dmidrok-agency.store/documents/%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82-%e2%84%96-6/', '161:b23d7a7c4d1ed200b13fc7a76a09ef7e', 375, 'post', 'documents', 1, 0, NULL, NULL, 'Документ | Сертификат № 6', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', NULL, '252', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png', '252', 'featured-image', '{\"width\":547,\"height\":780,\"filesize\":39229,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/document-1.png\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/document-1.png\",\"size\":\"full\",\"id\":252,\"alt\":\"\",\"pixels\":426660,\"type\":\"image/png\"}', 0, NULL, NULL, '2023-06-30 19:02:00', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:02:00', '2023-06-30 19:02:00', 0),
(88, 'https://dmidrok-agency.store/reviews_types/textreviews/', '55:c18dc7d0747ec6e794b6320c6e27860d', 19, 'term', 'reviews_types', NULL, NULL, NULL, NULL, 'Текстовые отзывы', NULL, NULL, 0, NULL, NULL, NULL, 'Текстовые отзывы', 32, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:13:10', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:27:53', '2023-06-30 19:17:08', NULL),
(89, 'https://dmidrok-agency.store/reviews_types/photoreviews/', '56:7369f53c80001243bba6d1f613b7cc81', 20, 'term', 'reviews_types', NULL, NULL, NULL, NULL, 'Фотоотзывы', NULL, NULL, 0, NULL, NULL, NULL, 'Фотоотзывы', 32, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:13:26', '2023-07-06 14:35:09', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:33:51', '2023-06-30 19:31:19', NULL),
(90, 'https://dmidrok-agency.store/reviews/%d0%b0%d0%bd%d0%b0%d1%82%d0%be%d0%bb%d0%b8%d0%b9-%d0%bf%d0%b5%d1%82%d1%80%d0%be%d0%b2/', '123:21fa6c356ce1718101586e033dcf8a06', 377, 'post', 'reviews', 1, 0, NULL, NULL, 'Анатолий Петров', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:17:08', '2023-07-06 15:21:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:27:53', '2023-06-30 19:17:08', 0),
(91, 'https://dmidrok-agency.store/reviews/%d0%b8%d1%80%d0%b8%d0%bd%d0%b0-%d1%81%d0%bc%d0%b8%d1%80%d0%bd%d0%be%d0%b2%d0%b0/', '117:734c3fa00f1ec38947a6f365e2e47801', 378, 'post', 'reviews', 1, 0, NULL, NULL, 'Ирина Смирнова', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:18:06', '2023-07-06 15:21:02', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:18:08', '2023-06-30 19:18:06', 0),
(92, 'https://dmidrok-agency.store/reviews/%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2/', '99:48f4cbf5419c07e17a27553932ead4c2', 379, 'post', 'reviews', 1, 0, NULL, NULL, 'Иван Иванов', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:18:46', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:19:31', '2023-06-30 19:18:46', 0),
(93, 'https://dmidrok-agency.store/reviews/%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2-%d0%bd%d0%be%d0%bc%d0%b5%d1%80-1/', '125:c4bcc827feb3229e553a98c94c8fc513', 380, 'post', 'reviews', 1, 0, NULL, NULL, 'Фотоотзыв номер 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/r-hYlIZJY8I.jpg', NULL, '202', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/r-hYlIZJY8I.jpg', '202', 'featured-image', '{\"width\":905,\"height\":1080,\"filesize\":246592,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/r-hYlIZJY8I.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/r-hYlIZJY8I.jpg\",\"size\":\"full\",\"id\":202,\"alt\":\"\",\"pixels\":977400,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-30 19:30:26', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:31:19', '2023-06-30 19:31:19', 0),
(94, 'https://dmidrok-agency.store/reviews/%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2-%d0%bd%d0%be%d0%bc%d0%b5%d1%80-2/', '125:02c5ba4aa4b405430b597b6b554ada83', 383, 'post', 'reviews', 1, 0, NULL, NULL, 'Фотоотзыв номер 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/hwiqKml-cdw.jpg', NULL, '195', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/hwiqKml-cdw.jpg', '195', 'featured-image', '{\"width\":685,\"height\":1080,\"filesize\":279973,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/hwiqKml-cdw.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/hwiqKml-cdw.jpg\",\"size\":\"full\",\"id\":195,\"alt\":\"\",\"pixels\":739800,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-30 19:32:27', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:32:27', '2023-06-30 19:32:27', 0),
(95, 'https://dmidrok-agency.store/reviews/%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2-%d0%bd%d0%be%d0%bc%d0%b5%d1%80-3/', '125:3c8f8732f72a7b169e6649af03bb7fb7', 384, 'post', 'reviews', 1, 0, NULL, NULL, 'Фотоотзыв номер 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg', NULL, '348', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg', '348', 'featured-image', '{\"width\":753,\"height\":1080,\"filesize\":162247,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/work-1-1.jpg\",\"size\":\"full\",\"id\":348,\"alt\":\"\",\"pixels\":813240,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-30 19:33:02', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:33:02', '2023-06-30 19:33:02', 0),
(96, 'https://dmidrok-agency.store/reviews/%d1%84%d0%be%d1%82%d0%be%d0%be%d1%82%d0%b7%d1%8b%d0%b2-%d0%bd%d0%be%d0%bc%d0%b5%d1%80-4/', '125:344b14f5374c09fea40a1df2faa45d47', 385, 'post', 'reviews', 1, 0, NULL, NULL, 'Фотоотзыв номер 4', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-3.jpg', NULL, '205', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-3.jpg', '205', 'featured-image', '{\"width\":718,\"height\":1080,\"filesize\":187870,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/work-3.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/work-3.jpg\",\"size\":\"full\",\"id\":205,\"alt\":\"\",\"pixels\":775440,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-06-30 19:33:51', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:33:51', '2023-06-30 19:33:51', 0),
(97, 'https://dmidrok-agency.store/questions/%d0%ba%d0%b0%d0%ba-%d0%bd%d0%b0%d0%b7%d1%8b%d0%b2%d0%b0%d0%bb%d0%be%d1%81%d1%8c-%d1%81%d0%b0%d0%bc%d0%be%d0%b5-%d0%ba%d1%80%d1%83%d0%bf%d0%bd%d0%be%d0%b5-%d0%b2%d0%be%d0%b8%d0%bd%d1%81%d0%ba%d0%be/', '236:9a2c116c5bbd3b8673affdb130cbc0b8', 386, 'post', 'questions', 1, 0, NULL, NULL, 'Как называлось самое крупное воинское подразделение армии Древнего Рима?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:45:06', '2023-07-06 15:02:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:45:06', '2023-06-30 19:45:06', 0),
(98, 'https://dmidrok-agency.store/questions/%d0%ba%d0%b0%d0%ba%d0%be%d0%b3%d0%be-%d1%86%d0%b2%d0%b5%d1%82%d0%b0-%d0%bf%d0%be%d0%bb%d0%be%d1%82%d0%bd%d0%b8%d1%89%d0%b5-%d0%be%d0%bb%d0%b8%d0%bc%d0%bf%d0%b8%d0%b9%d1%81%d0%ba%d0%be%d0%b3%d0%be/', '235:14629c2cebb3606a4276817302a9c947', 387, 'post', 'questions', 1, 0, NULL, NULL, 'Какого цвета полотнище Олимпийского флага?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:45:55', '2023-07-06 15:02:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:45:54', '2023-06-30 19:45:54', 0),
(99, 'https://dmidrok-agency.store/questions/%d0%b2-%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d0%b8-%d0%ba%d0%b0%d0%ba%d0%be%d0%b3%d0%be-%d0%bc%d0%be%d0%bd%d0%b0%d1%88%d0%b5%d1%81%d0%ba%d0%be%d0%b3%d0%be-%d0%be%d1%80%d0%b4%d0%b5%d0%bd%d0%b0-%d0%bd/', '237:7fe888054ceaadd05966eac8ae4ee8aa', 388, 'post', 'questions', 1, 0, NULL, NULL, 'В ведении какого монашеского ордена находилась инквизиция?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:46:15', '2023-07-06 15:02:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:46:14', '2023-06-30 19:46:14', 0),
(100, 'https://dmidrok-agency.store/questions/%d0%ba%d0%b0%d0%ba%d0%be%d0%b9-%d0%be%d1%81%d1%82%d1%80%d0%be%d0%b2-%d1%8f%d0%bf%d0%be%d0%bd%d1%81%d0%ba%d0%be%d0%b3%d0%be-%d0%b0%d1%80%d1%85%d0%b8%d0%bf%d0%b5%d0%bb%d0%b0%d0%b3%d0%b0-%d1%81%d0%b0/', '236:3c4df80984cfd32356737cdaedc1b8b0', 389, 'post', 'questions', 1, 0, NULL, NULL, 'Какой остров Японского архипелага самый большой?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:46:37', '2023-07-06 15:02:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:46:37', '2023-06-30 19:46:37', 0),
(101, 'https://dmidrok-agency.store/questions/%d1%81%d0%b0%d0%bb%d0%be%d0%bd-%d0%ba%d0%b0%d0%ba%d0%be%d0%b3%d0%be-%d0%be%d0%b4%d0%bd%d0%be%d1%81%d0%b5%d0%ba%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d0%be%d0%b3%d0%be-%d0%b2%d0%b0%d0%b3%d0%be%d0%bd%d0%b0/', '235:1fa763634e396d4a4d4ddb346ed94152', 390, 'post', 'questions', 1, 0, NULL, NULL, 'Салон какого односекционного вагона отличается наибольшей вместимостью?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:46:58', '2023-07-06 15:02:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:46:58', '2023-06-30 19:46:58', 0),
(102, 'https://dmidrok-agency.store/questions/%d0%ba%d0%b0%d0%ba%d1%83%d1%8e-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d1%83-%d1%81%d1%87%d0%b8%d1%82%d0%b0%d1%8e%d1%82-%d1%80%d0%be%d0%b4%d0%b8%d0%bd%d0%be%d0%b9-%d1%80%d0%be%d0%b7%d1%8b/', '218:0f2b80061a5d29d441be512a6c486eb4', 391, 'post', 'questions', 1, 0, NULL, NULL, 'Какую страну считают родиной розы?', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-30 19:47:21', '2023-07-06 15:02:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-30 19:47:21', '2023-06-30 19:47:21', 0),
(103, 'https://dmidrok-agency.store/services/%d0%b2%d0%b0%d0%ba%d1%81%d0%b8%d0%bd%d0%b3-%d0%be%d0%b4%d0%bd%d0%be%d0%b9-%d0%b7%d0%be%d0%bd%d1%8b/', '137:cd14ff085d94154d2d125af69357331b', 433, 'post', 'services', 1, 0, NULL, NULL, 'Ваксинг одной зоны', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/07/service-5.jpg', NULL, '435', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/07/service-5.jpg', '435', 'featured-image', '{\"width\":510,\"height\":900,\"filesize\":125104,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/07/service-5.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/07/service-5.jpg\",\"size\":\"full\",\"id\":435,\"alt\":\"\",\"pixels\":459000,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-07-02 11:06:58', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-02 11:08:38', '2023-07-02 11:06:58', 0),
(104, 'https://dmidrok-agency.store/services/%d0%ba%d0%be%d0%bc%d0%bf%d0%bb%d0%b5%d0%ba%d1%81-%d0%b4%d0%be%d0%bb%d0%b3%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%83%d0%ba%d0%bb%d0%b0%d0%b4%d0%ba%d0%b0/', '215:21e43ba639d87ae588f457f8bffce31a', 434, 'post', 'services', 1, 0, NULL, NULL, 'Комплекс долговременная укладка', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/07/service-6.jpg', NULL, '436', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/07/service-6.jpg', '436', 'featured-image', '{\"width\":510,\"height\":682,\"filesize\":102223,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/07/service-6.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/07/service-6.jpg\",\"size\":\"full\",\"id\":436,\"alt\":\"\",\"pixels\":347820,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-07-02 11:07:39', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-02 12:07:24', '2023-07-02 11:07:39', 0),
(105, 'https://dmidrok-agency.store/services/%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b0%d1%8f-%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b0/', '124:11859477cd96c129094f80bc2221d33c', 438, 'post', 'services', 1, 0, NULL, NULL, 'Тестовая услуга', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/review-photo-1.jpg', NULL, '36', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/review-photo-1.jpg', '36', 'featured-image', '{\"width\":168,\"height\":168,\"filesize\":39236,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/review-photo-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/review-photo-1.jpg\",\"size\":\"full\",\"id\":36,\"alt\":\"\",\"pixels\":28224,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-07-05 15:31:25', '2023-07-06 15:34:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-05 15:31:27', '2023-07-05 15:31:25', 0),
(106, 'https://dmidrok-agency.store/employees/%d0%b1%d1%83%d0%b4%d1%83%d1%89%d0%b8%d0%b9-%d1%81%d0%be%d1%82%d1%80%d1%83%d0%b4%d0%bd%d0%b8%d0%ba/', '137:469f4139cd38bf020a25534f0f4853ca', 441, 'post', 'employees', 1, 0, NULL, NULL, 'Будущий Сотрудник', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg', NULL, '348', 'featured-image', NULL, NULL, 'https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg', '348', 'featured-image', '{\"width\":753,\"height\":1080,\"filesize\":162247,\"url\":\"https://dmidrok-agency.store/wp-content/uploads/2023/06/work-1-1.jpg\",\"path\":\"/home/d/drobkoil/dmidrok-agency.store/public_html/wp-content/uploads/2023/06/work-1-1.jpg\",\"size\":\"full\",\"id\":348,\"alt\":\"\",\"pixels\":813240,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2023-07-05 16:11:40', '2023-07-08 03:55:45', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-07-08 06:55:45', '2023-07-05 16:12:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_indexable_hierarchy`
--
-- Создание: Июл 05 2023 г., 19:04
-- Последнее обновление: Июл 31 2023 г., 11:06
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(10) UNSIGNED NOT NULL,
  `ancestor_id` int(10) UNSIGNED NOT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(32, 0, 0, 1),
(56, 0, 0, 1),
(58, 0, 0, 1),
(60, 0, 0, 1),
(61, 0, 0, 1),
(62, 0, 0, 1),
(63, 0, 0, 1),
(64, 0, 0, 1),
(66, 58, 1, 1),
(67, 0, 0, 1),
(68, 0, 0, 1),
(69, 0, 0, 1),
(70, 0, 0, 1),
(71, 0, 0, 1),
(72, 0, 0, 1),
(73, 0, 0, 1),
(74, 58, 1, 1),
(75, 58, 1, 1),
(76, 0, 0, 1),
(77, 0, 0, 1),
(78, 58, 1, 1),
(79, 58, 1, 1),
(80, 58, 1, 1),
(81, 58, 1, 1),
(82, 0, 0, 1),
(83, 0, 0, 1),
(84, 0, 0, 1),
(85, 0, 0, 1),
(86, 0, 0, 1),
(87, 0, 0, 1),
(88, 0, 0, 1),
(89, 0, 0, 1),
(90, 0, 0, 1),
(91, 0, 0, 1),
(92, 0, 0, 1),
(93, 0, 0, 1),
(94, 0, 0, 1),
(95, 0, 0, 1),
(96, 0, 0, 1),
(97, 0, 0, 1),
(98, 0, 0, 1),
(99, 0, 0, 1),
(100, 0, 0, 1),
(101, 0, 0, 1),
(102, 0, 0, 1),
(103, 0, 0, 1),
(104, 0, 0, 1),
(105, 0, 0, 1),
(106, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_migrations`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_primary_term`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_links`
--
-- Создание: Июл 05 2023 г., 19:04
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(10) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `size` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_bookly_appointments`
--
ALTER TABLE `wp_bookly_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `wp_bookly_categories`
--
ALTER TABLE `wp_bookly_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_customers`
--
ALTER TABLE `wp_bookly_customers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_customer_appointments`
--
ALTER TABLE `wp_bookly_customer_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `series_id` (`series_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_bookly_holidays`
--
ALTER TABLE `wp_bookly_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Индексы таблицы `wp_bookly_log`
--
ALTER TABLE `wp_bookly_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_mailing_campaigns`
--
ALTER TABLE `wp_bookly_mailing_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mailing_list_id` (`mailing_list_id`);

--
-- Индексы таблицы `wp_bookly_mailing_lists`
--
ALTER TABLE `wp_bookly_mailing_lists`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_mailing_list_recipients`
--
ALTER TABLE `wp_bookly_mailing_list_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mailing_list_id` (`mailing_list_id`);

--
-- Индексы таблицы `wp_bookly_mailing_queue`
--
ALTER TABLE `wp_bookly_mailing_queue`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_news`
--
ALTER TABLE `wp_bookly_news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_notifications`
--
ALTER TABLE `wp_bookly_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_notifications_queue`
--
ALTER TABLE `wp_bookly_notifications_queue`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_orders`
--
ALTER TABLE `wp_bookly_orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_payments`
--
ALTER TABLE `wp_bookly_payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_schedule_item_breaks`
--
ALTER TABLE `wp_bookly_schedule_item_breaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_schedule_item_id` (`staff_schedule_item_id`);

--
-- Индексы таблицы `wp_bookly_sent_notifications`
--
ALTER TABLE `wp_bookly_sent_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_id_idx` (`ref_id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Индексы таблицы `wp_bookly_series`
--
ALTER TABLE `wp_bookly_series`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_services`
--
ALTER TABLE `wp_bookly_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `wp_bookly_sessions`
--
ALTER TABLE `wp_bookly_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`),
  ADD KEY `expire` (`expire`);

--
-- Индексы таблицы `wp_bookly_shop`
--
ALTER TABLE `wp_bookly_shop`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_staff`
--
ALTER TABLE `wp_bookly_staff`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_staff_schedule_items`
--
ALTER TABLE `wp_bookly_staff_schedule_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_ids_idx` (`staff_id`,`day_index`,`location_id`);

--
-- Индексы таблицы `wp_bookly_staff_services`
--
ALTER TABLE `wp_bookly_staff_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_ids_idx` (`staff_id`,`service_id`,`location_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `wp_bookly_stats`
--
ALTER TABLE `wp_bookly_stats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_bookly_sub_services`
--
ALTER TABLE `wp_bookly_sub_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `sub_service_id` (`sub_service_id`);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_cpappbk_forms`
--
ALTER TABLE `wp_cpappbk_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_cpappbk_messages`
--
ALTER TABLE `wp_cpappbk_messages`
  ADD UNIQUE KEY `id` (`id`);

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
-- Индексы таблицы `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Индексы таблицы `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Индексы таблицы `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Индексы таблицы `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Индексы таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_bookly_appointments`
--
ALTER TABLE `wp_bookly_appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_categories`
--
ALTER TABLE `wp_bookly_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_customers`
--
ALTER TABLE `wp_bookly_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_customer_appointments`
--
ALTER TABLE `wp_bookly_customer_appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_holidays`
--
ALTER TABLE `wp_bookly_holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_log`
--
ALTER TABLE `wp_bookly_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_mailing_campaigns`
--
ALTER TABLE `wp_bookly_mailing_campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_mailing_lists`
--
ALTER TABLE `wp_bookly_mailing_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_mailing_list_recipients`
--
ALTER TABLE `wp_bookly_mailing_list_recipients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_mailing_queue`
--
ALTER TABLE `wp_bookly_mailing_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_news`
--
ALTER TABLE `wp_bookly_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_notifications`
--
ALTER TABLE `wp_bookly_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_notifications_queue`
--
ALTER TABLE `wp_bookly_notifications_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_orders`
--
ALTER TABLE `wp_bookly_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_payments`
--
ALTER TABLE `wp_bookly_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_schedule_item_breaks`
--
ALTER TABLE `wp_bookly_schedule_item_breaks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_sent_notifications`
--
ALTER TABLE `wp_bookly_sent_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_series`
--
ALTER TABLE `wp_bookly_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_services`
--
ALTER TABLE `wp_bookly_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_sessions`
--
ALTER TABLE `wp_bookly_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_shop`
--
ALTER TABLE `wp_bookly_shop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_staff`
--
ALTER TABLE `wp_bookly_staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_staff_schedule_items`
--
ALTER TABLE `wp_bookly_staff_schedule_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_staff_services`
--
ALTER TABLE `wp_bookly_staff_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_stats`
--
ALTER TABLE `wp_bookly_stats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_bookly_sub_services`
--
ALTER TABLE `wp_bookly_sub_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_cpappbk_forms`
--
ALTER TABLE `wp_cpappbk_forms`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_cpappbk_messages`
--
ALTER TABLE `wp_cpappbk_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2665;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4127;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_bookly_appointments`
--
ALTER TABLE `wp_bookly_appointments`
  ADD CONSTRAINT `wp_bookly_appointments_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_appointments_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_customer_appointments`
--
ALTER TABLE `wp_bookly_customer_appointments`
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `wp_bookly_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `wp_bookly_appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_3` FOREIGN KEY (`series_id`) REFERENCES `wp_bookly_series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_4` FOREIGN KEY (`payment_id`) REFERENCES `wp_bookly_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_customer_appointments_ibfk_5` FOREIGN KEY (`order_id`) REFERENCES `wp_bookly_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_holidays`
--
ALTER TABLE `wp_bookly_holidays`
  ADD CONSTRAINT `wp_bookly_holidays_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_mailing_campaigns`
--
ALTER TABLE `wp_bookly_mailing_campaigns`
  ADD CONSTRAINT `wp_bookly_mailing_campaigns_ibfk_1` FOREIGN KEY (`mailing_list_id`) REFERENCES `wp_bookly_mailing_lists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_mailing_list_recipients`
--
ALTER TABLE `wp_bookly_mailing_list_recipients`
  ADD CONSTRAINT `wp_bookly_mailing_list_recipients_ibfk_1` FOREIGN KEY (`mailing_list_id`) REFERENCES `wp_bookly_mailing_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_schedule_item_breaks`
--
ALTER TABLE `wp_bookly_schedule_item_breaks`
  ADD CONSTRAINT `wp_bookly_schedule_item_breaks_ibfk_1` FOREIGN KEY (`staff_schedule_item_id`) REFERENCES `wp_bookly_staff_schedule_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_sent_notifications`
--
ALTER TABLE `wp_bookly_sent_notifications`
  ADD CONSTRAINT `wp_bookly_sent_notifications_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `wp_bookly_notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_services`
--
ALTER TABLE `wp_bookly_services`
  ADD CONSTRAINT `wp_bookly_services_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `wp_bookly_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_staff_schedule_items`
--
ALTER TABLE `wp_bookly_staff_schedule_items`
  ADD CONSTRAINT `wp_bookly_staff_schedule_items_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_staff_services`
--
ALTER TABLE `wp_bookly_staff_services`
  ADD CONSTRAINT `wp_bookly_staff_services_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_staff_services_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wp_bookly_sub_services`
--
ALTER TABLE `wp_bookly_sub_services`
  ADD CONSTRAINT `wp_bookly_sub_services_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wp_bookly_sub_services_ibfk_2` FOREIGN KEY (`sub_service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
