-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 06:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockfly`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `light_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_dark_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_light_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_layout` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sidebar',
  `rtl` tinyint(1) NOT NULL DEFAULT 0,
  `mysqldump_command` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/usr/bin/mysqldump',
  `shortcut_menus` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'top_bottom',
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `left_sidebar_theme` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dark',
  `primary_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#1890ff',
  `date_format` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DD-MM-YYYY',
  `time_format` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hh:mm a',
  `auto_detect_timezone` tinyint(1) NOT NULL DEFAULT 1,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Asia/Kolkata',
  `session_driver` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file',
  `app_debug` tinyint(1) NOT NULL DEFAULT 0,
  `update_app_notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `short_name`, `email`, `phone`, `website`, `light_logo`, `dark_logo`, `small_dark_logo`, `small_light_logo`, `address`, `app_layout`, `rtl`, `mysqldump_command`, `shortcut_menus`, `currency_id`, `lang_id`, `warehouse_id`, `left_sidebar_theme`, `primary_color`, `date_format`, `time_format`, `auto_detect_timezone`, `timezone`, `session_driver`, `app_debug`, `update_app_notification`, `created_at`, `updated_at`, `login_image`) VALUES
(1, 'Stockifly', 'Stockifly', 'company@example.com', '+9199999999', NULL, NULL, NULL, NULL, NULL, '7 street, city, state, 762782', 'sidebar', 0, '/usr/bin/mysqldump', 'top_bottom', 1, 1, 1, 'dark', '#1890ff', 'DD-MM-YYYY', 'hh:mm a', 1, 'Asia/Kolkata', 'file', 0, 1, '2023-03-28 22:06:36', '2023-03-28 22:06:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `position`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 'Dollar', 'USD', '$', 'front', 0, '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(2, 'Rupee', 'INR', '₹', 'front', 0, '2023-03-28 22:06:35', '2023-03-28 22:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_product_cards`
--

CREATE TABLE `front_product_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_website_settings`
--

CREATE TABLE `front_website_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `featured_categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_categories_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Featured Categories',
  `featured_categories_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `featured_products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_products_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Featured Products',
  `featured_products_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `features_lists` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `twitter_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `instagram_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `linkedin_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `youtube_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pages_widget` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_info_widget` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `links_widget` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_company_description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Stockify have many propular products wiht high discount and special offers.',
  `footer_copyright_text` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Copyright 2021 @ Stockify, All rights reserved.',
  `top_banners` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bottom_banners_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bottom_banners_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bottom_banners_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_website_settings`
--

INSERT INTO `front_website_settings` (`id`, `warehouse_id`, `featured_categories`, `featured_categories_title`, `featured_categories_subtitle`, `featured_products`, `featured_products_title`, `featured_products_subtitle`, `features_lists`, `facebook_url`, `twitter_url`, `instagram_url`, `linkedin_url`, `youtube_url`, `pages_widget`, `contact_info_widget`, `links_widget`, `footer_company_description`, `footer_copyright_text`, `top_banners`, `bottom_banners_1`, `bottom_banners_2`, `bottom_banners_3`, `created_at`, `updated_at`) VALUES
(1, 1, '[]', 'Featured Categories', '', '[]', 'Featured Products', '', '[]', '', '', '', '', '', '[]', '[]', '[]', 'Stockify have many propular products wiht high discount and special offers.', 'Copyright 2021 @ Stockify, All rights reserved.', '[]', '[]', '[]', '[]', '2023-03-28 22:06:40', '2023-03-28 22:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `langs`
--

CREATE TABLE `langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `langs`
--

INSERT INTO `langs` (`id`, `image`, `name`, `key`, `enabled`, `created_at`, `updated_at`) VALUES
(1, NULL, 'English', 'en', 1, '2023-03-28 22:06:32', '2023-03-28 22:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2021_01_02_193004_create_langs_table', 1),
(3, '2021_01_02_193005_create_translations_table', 1),
(4, '2021_02_01_040700_create_payment_modes_table', 1),
(5, '2021_03_01_040700_create_currencies_table', 1),
(6, '2021_03_02_130932_create_warehouses_table', 1),
(7, '2021_03_03_114417_create_companies_table', 1),
(8, '2021_04_04_000000_create_users_table', 1),
(9, '2021_04_05_190756_entrust_setup_tables', 1),
(10, '2021_05_06_151454_create_brands_table', 1),
(11, '2021_05_06_162224_create_categories_table', 1),
(12, '2021_05_07_033806_create_taxes_table', 1),
(13, '2021_05_07_033823_create_units_table', 1),
(14, '2021_05_08_052842_create_expense_categories_table', 1),
(15, '2021_05_08_052858_create_expenses_table', 1),
(16, '2021_05_08_144116_custom_fields_table', 1),
(17, '2021_05_09_153334_create_products_table', 1),
(18, '2021_05_13_072501_create_orders_table', 1),
(19, '2021_05_13_072518_create_order_items_table', 1),
(20, '2021_05_23_060918_create_payments_table', 1),
(21, '2021_05_23_060919_create_order_payments_table', 1),
(22, '2021_05_28_120405_create_warehouse_stocks_table', 1),
(23, '2021_10_10_100006_create_stock_history_table', 1),
(24, '2022_01_10_115820_create_stock_adjustments_table', 1),
(25, '2022_02_01_094402_create_settings_table', 1),
(26, '2022_02_24_075933_create_notifications_table', 1),
(27, '2022_02_24_122754_create_jobs_table', 1),
(28, '2022_03_07_110707_create_warehouse_history_table', 1),
(29, '2022_04_11_105713_add_login_image_column_in_companies_table', 1),
(30, '2022_04_14_141740_create_order_shipping_address_table', 1),
(31, '2022_04_15_141741_create_user_address_table', 1),
(32, '2022_04_16_054851_create_front_product_cards_table', 1),
(33, '2022_04_17_092949_create_front_website_settings_table', 1),
(34, '2022_04_30_044824_add_rtl_in_companies_warehouses_table', 1),
(35, '2022_05_05_044824_add_setting_records_in_settings_table', 1),
(36, '2022_05_22_004926_add_from_warehouse_id_column_in_orders_table', 1),
(37, '2022_06_24_094848_add_staff_user_id_in_payments_warehouse_history_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sales',
  `order_date` datetime NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_rate` double(8,2) DEFAULT NULL,
  `tax_amount` double NOT NULL DEFAULT 0,
  `discount` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `subtotal` double NOT NULL,
  `total` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT 0,
  `due_amount` double NOT NULL DEFAULT 0,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `total_items` double(8,2) NOT NULL DEFAULT 0.00,
  `total_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `terms_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_custom_fields`
--

CREATE TABLE `order_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `field_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` double(8,2) NOT NULL,
  `unit_price` double NOT NULL,
  `single_unit_price` double NOT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `tax_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_rate` double(8,2) DEFAULT NULL,
  `total_tax` double DEFAULT NULL,
  `total_discount` double DEFAULT NULL,
  `subtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_shipping_address`
--

CREATE TABLE `order_shipping_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'out',
  `payment_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `unused_amount` double NOT NULL DEFAULT 0,
  `paid_amount` double NOT NULL DEFAULT 0,
  `payment_mode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_modes`
--

INSERT INTO `payment_modes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '2023-03-28 22:06:35', '2023-03-28 22:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 'brands_view', 'Brand View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(2, 'brands_create', 'Brand Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(3, 'brands_edit', 'Brand Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(4, 'brands_delete', 'Brand Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(5, 'categories_view', 'Category View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(6, 'categories_create', 'Category Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(7, 'categories_edit', 'Category Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(8, 'categories_delete', 'Category Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(9, 'products_view', 'Product View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(10, 'products_create', 'Product Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(11, 'products_edit', 'Product Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(12, 'products_delete', 'Product Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(13, 'purchases_view', 'Purchase View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(14, 'purchases_create', 'Purchase Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(15, 'purchases_edit', 'Purchase Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(16, 'purchases_delete', 'Purchase Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(17, 'purchase_returns_view', 'Purchase Return View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(18, 'purchase_returns_create', 'Purchase Return Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(19, 'purchase_returns_edit', 'Purchase Return Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(20, 'purchase_returns_delete', 'Purchase Return Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(21, 'payment_out_view', 'Payment Out View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(22, 'payment_out_create', 'Payment Out Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(23, 'payment_out_edit', 'Payment Out Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(24, 'payment_out_delete', 'Payment Out Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(25, 'payment_in_view', 'Payment In View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(26, 'payment_in_create', 'Payment In Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(27, 'payment_in_edit', 'Payment In Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(28, 'payment_in_delete', 'Payment In Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(29, 'sales_view', 'Sales View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(30, 'sales_create', 'Sales Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(31, 'sales_edit', 'Sales Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(32, 'sales_delete', 'Sales Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(33, 'sales_returns_view', 'Sales Return View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(34, 'sales_returns_create', 'Sales Return Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(35, 'sales_returns_edit', 'Sales Return Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(36, 'sales_returns_delete', 'Sales Return Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(37, 'order_payments_view', 'Order Payments View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(38, 'order_payments_create', 'Order Payments Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(39, 'stock_adjustments_view', 'Stock Adjustment View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(40, 'stock_adjustments_create', 'Stock Adjustment Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(41, 'stock_adjustments_edit', 'Stock Adjustment Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(42, 'stock_adjustments_delete', 'Stock Adjustment Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(43, 'stock_transfers_view', 'Stock Transfer View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(44, 'stock_transfers_create', 'Stock Transfer Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(45, 'stock_transfers_edit', 'Stock Transfer Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(46, 'stock_transfers_delete', 'Stock Transfer Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(47, 'expense_categories_view', 'Expense Category View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(48, 'expense_categories_create', 'Expense Category Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(49, 'expense_categories_edit', 'Expense Category Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(50, 'expense_categories_delete', 'Expense Category Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(51, 'expenses_view', 'Expense View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(52, 'expenses_create', 'Expense Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(53, 'expenses_edit', 'Expense Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(54, 'expenses_delete', 'Expense Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(55, 'units_view', 'Unit View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(56, 'units_create', 'Unit Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(57, 'units_edit', 'Unit Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(58, 'units_delete', 'Unit Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(59, 'custom_fields_view', 'Custom Field View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(60, 'custom_fields_create', 'Custom Field Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(61, 'custom_fields_edit', 'Custom Field Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(62, 'custom_fields_delete', 'Custom Field Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(63, 'payment_modes_view', 'Payment Mode View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(64, 'payment_modes_create', 'Payment Mode Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(65, 'payment_modes_edit', 'Payment Mode Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(66, 'payment_modes_delete', 'Payment Mode Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(67, 'currencies_view', 'Currency View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(68, 'currencies_create', 'Currency Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(69, 'currencies_edit', 'Currency Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(70, 'currencies_delete', 'Currency Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(71, 'taxes_view', 'Tax View', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(72, 'taxes_create', 'Tax Create', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(73, 'taxes_edit', 'Tax Edit', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(74, 'taxes_delete', 'Tax Delete', NULL, NULL, '2023-03-28 22:06:36', '2023-03-28 22:06:36'),
(75, 'modules_view', 'Modules View', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(76, 'roles_view', 'Role View', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(77, 'roles_create', 'Role Create', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(78, 'roles_edit', 'Role Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(79, 'roles_delete', 'Role Delete', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(80, 'warehouses_view', 'Warehouse View', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(81, 'warehouses_create', 'Warehouse Create', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(82, 'warehouses_edit', 'Warehouse Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(83, 'warehouses_delete', 'Warehouse Delete', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(84, 'companies_edit', 'Company Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(85, 'translations_view', 'Translation View', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(86, 'translations_create', 'Translation Create', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(87, 'translations_edit', 'Translation Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(88, 'translations_delete', 'Translation Delete', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(89, 'users_view', 'Staff Member View', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(90, 'users_create', 'Staff Member Create', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(91, 'users_edit', 'Staff Member Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(92, 'users_delete', 'Staff Member Delete', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(93, 'customers_view', 'Customer View', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(94, 'customers_create', 'Customer Create', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(95, 'customers_edit', 'Customer Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(96, 'customers_delete', 'Customer Delete', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(97, 'suppliers_view', 'Supplier View', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(98, 'suppliers_create', 'Supplier Create', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(99, 'suppliers_edit', 'Supplier Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(100, 'suppliers_delete', 'Supplier Delete', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(101, 'storage_edit', 'Storage Settings Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(102, 'email_edit', 'Email Settings Edit', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(103, 'pos_view', 'POS View', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(104, 'update_app', 'Update App', NULL, NULL, '2023-03-28 22:06:37', '2023-03-28 22:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_custom_fields`
--

CREATE TABLE `product_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `field_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_stock` double(8,2) NOT NULL DEFAULT 0.00,
  `mrp` double DEFAULT NULL,
  `purchase_price` double NOT NULL,
  `sales_price` double NOT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_tax_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'exclusive',
  `sales_tax_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'exclusive',
  `stock_quantitiy_alert` int(11) DEFAULT NULL,
  `opening_stock` int(11) DEFAULT NULL,
  `opening_stock_date` date DEFAULT NULL,
  `wholesale_price` double DEFAULT NULL,
  `wholesale_quantity` int(11) DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in_stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin is allowed to manage everything of the app.', '2023-03-28 22:06:36', '2023-03-28 22:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credentials` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_type`, `name`, `name_key`, `credentials`, `other_data`, `status`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'storage', 'Local', 'local', NULL, NULL, 1, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(2, 'storage', 'AWS', 'aws', '{\"driver\":\"s3\",\"key\":\"\",\"secret\":\"\",\"region\":\"\",\"bucket\":\"\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(3, 'email', 'SMTP', 'smtp', '{\"from_name\":\"\",\"from_email\":\"\",\"host\":\"\",\"port\":\"\",\"encryption\":\"\",\"username\":\"\",\"password\":\"\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(4, 'send_mail_settings', 'Send mail to warehouse', 'warehouse', '[]', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(5, 'email_templates', 'Stock adjustment created', 'stock_adjustment_create', '{\"title\":\"Stock adjustment created\",\"content\":\"Stock adjustment created by ##staff_member_name## for warehouse ##warehouse_name## for product ##product_name## with ##stock_adjustment_quantity## (##stock_adjustment_type##) quantity\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(6, 'email_templates', 'Stock adjustment updated', 'stock_adjustment_update', '{\"title\":\"Stock adjustment updated\",\"content\":\"Stock adjustment updated by ##staff_member_name## for warehouse ##warehouse_name## for product ##product_name## with ##stock_adjustment_quantity## (##stock_adjustment_type##) quantity\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(7, 'email_templates', 'Stock adjustment deleted', 'stock_adjustment_delete', '{\"title\":\"Stock adjustment deleted\",\"content\":\"Stock adjustment deleted by ##staff_member_name## for warehouse ##warehouse_name## for product ##product_name## with ##stock_adjustment_quantity## (##stock_adjustment_type##) quantity\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(8, 'email_templates', 'Staff Member created', 'staff_member_create', '{\"title\":\"Staff Member created\",\"content\":\"A new staff Member added with ##staff_member_name## name in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(9, 'email_templates', 'Staff Member updated', 'staff_member_update', '{\"title\":\"Staff Member updated\",\"content\":\"Staff Member with name ##staff_member_name## updated in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(10, 'email_templates', 'Staff Member deleted', 'staff_member_delete', '{\"title\":\"Staff Member deleted\",\"content\":\"Staff member with name ##staff_member_name## deleted from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(11, 'email_templates', 'Purchase created', 'purchases_create', '{\"title\":\"Purchase created\",\"content\":\"A new purhcase added by ##staff_member_name## in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(12, 'email_templates', 'Purchase updated', 'purchases_update', '{\"title\":\"Purchase updated\",\"content\":\"Purchase with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(13, 'email_templates', 'Purchase deleted', 'purchases_delete', '{\"title\":\"Purchase deleted\",\"content\":\"Purchase with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(14, 'email_templates', 'Purchase created', 'purchase_returns_create', '{\"title\":\"Purchase created\",\"content\":\"A new purhcase return added by ##staff_member_name## in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(15, 'email_templates', 'Purchase updated', 'purchase_returns_update', '{\"title\":\"Purchase updated\",\"content\":\"Purchase return with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(16, 'email_templates', 'Purchase return deleted', 'purchase_returns_delete', '{\"title\":\"Purchase return deleted\",\"content\":\"Purchase return with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(17, 'email_templates', 'Sales created', 'sales_create', '{\"title\":\"Sales created\",\"content\":\"A new sales added by ##staff_member_name## name in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(18, 'email_templates', 'Sales updated', 'sales_update', '{\"title\":\"Sales updated\",\"content\":\"Sales with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(19, 'email_templates', 'Sales deleted', 'sales_delete', '{\"title\":\"Sales deleted\",\"content\":\"Sales with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(20, 'email_templates', 'Sales return created', 'sales_returns_create', '{\"title\":\"Sales return created\",\"content\":\"A new sales return added by ##staff_member_name## in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(21, 'email_templates', 'Sales return updated', 'sales_returns_update', '{\"title\":\"Sales return updated\",\"content\":\"Sales return with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(22, 'email_templates', 'Sales return deleted', 'sales_returns_delete', '{\"title\":\"Sales return deleted\",\"content\":\"Sales return with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(23, 'email_templates', 'Quotations created', 'quotations_create', '{\"title\":\"Quotations created\",\"content\":\"A new quotations added by ##staff_member_name## name in your warehouse ##warehouse_name## with invoice number ##invoice_number##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(24, 'email_templates', 'Quotations updated', 'quotations_update', '{\"title\":\"Quotations updated\",\"content\":\"Quotations with invoice number ##invoice_number## updated by ##staff_member_name## in your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(25, 'email_templates', 'Quotations deleted', 'quotations_delete', '{\"title\":\"Quotations deleted\",\"content\":\"Quotations with invoice number ##invoice_number## deleted by ##staff_member_name## from your warehouse ##warehouse_name##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(26, 'email_templates', 'Expense created', 'expense_create', '{\"title\":\"Expense created\",\"content\":\"A new expense added by ##staff_member_name## in your warehouse ##warehouse_name## with amount ##expense_amount##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(27, 'email_templates', 'Expense updated', 'expense_update', '{\"title\":\"Expense updated\",\"content\":\"Expense updated by ##staff_member_name## in your warehouse ##warehouse_name## with amount ##expense_amount##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(28, 'email_templates', 'Expense deleted', 'expense_delete', '{\"title\":\"Expense deleted\",\"content\":\"Expense deleted by ##staff_member_name## from your warehouse ##warehouse_name## with amount ##expense_amount##.\"}', NULL, 0, 0, '2023-03-28 22:06:39', '2023-03-28 22:06:39'),
(29, 'shortcut_menus', 'Add Menu', 'shortcut_menus', '[\"staff_member\",\"customer\",\"supplier\",\"brand\",\"category\",\"product\",\"purchase\",\"sales\",\"expense_category\",\"expense\",\"warehouse\",\"currency\",\"unit\",\"language\",\"role\",\"tax\",\"payment_mode\"]', NULL, 1, 0, '2023-03-28 22:06:40', '2023-03-28 22:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments`
--

CREATE TABLE `stock_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `adjustment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_history`
--

CREATE TABLE `stock_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `old_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `order_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'sales',
  `stock_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in',
  `action_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'GST', 18.00, '2023-03-28 22:06:37', '2023-03-28 22:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang_id`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'common', 'enabled', 'Enabled', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(2, 1, 'common', 'disabled', 'Disabled', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(3, 1, 'common', 'id', 'Id', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(4, 1, 'common', 'action', 'Action', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(5, 1, 'common', 'placeholder_default_text', 'Please Enter {0}', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(6, 1, 'common', 'placeholder_social_text', 'Please Enter {0} Url', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(7, 1, 'common', 'placeholder_search_text', 'Search By {0}', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(8, 1, 'common', 'select_default_text', 'Select {0}...', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(9, 1, 'common', 'create', 'Create', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(10, 1, 'common', 'edit', 'Edit', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(11, 1, 'common', 'update', 'Update', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(12, 1, 'common', 'cancel', 'Cancel', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(13, 1, 'common', 'delete', 'Delete', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(14, 1, 'common', 'success', 'Success', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(15, 1, 'common', 'error', 'Error', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(16, 1, 'common', 'yes', 'Yes', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(17, 1, 'common', 'no', 'No', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(18, 1, 'common', 'fix_errors', 'Please Fix Below Errors.', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(19, 1, 'common', 'cancelled', 'Cancelled', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(20, 1, 'common', 'pending', 'Pending', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(21, 1, 'common', 'paid', 'Paid', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(22, 1, 'common', 'completed', 'Completed', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(23, 1, 'common', 'save', 'Save', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(24, 1, 'common', 'all', 'All', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(25, 1, 'common', 'name', 'Name', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(26, 1, 'common', 'back', 'Back', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(27, 1, 'common', 'max_amount', 'Max. Amount', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(28, 1, 'common', 'date_time', 'Date Time', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(29, 1, 'common', 'select_time', 'Select Time', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(30, 1, 'common', 'start_date', 'Start Date', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(31, 1, 'common', 'end_date', 'End Date', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(32, 1, 'common', 'search', 'Search', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(33, 1, 'common', 'date', 'Date', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(34, 1, 'common', 'out_of_stock', 'Out Of Stock', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(35, 1, 'common', 'pay', 'Pay', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(36, 1, 'common', 'received', 'Received', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(37, 1, 'common', 'with_tax', 'With Tax', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(38, 1, 'common', 'without_tax', 'Without Tax', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(39, 1, 'common', 'invoice_number', 'Invoice Number', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(40, 1, 'common', 'ordered', 'Ordered', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(41, 1, 'common', 'confirmed', 'Confirmed', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(42, 1, 'common', 'processing', 'Processing', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(43, 1, 'common', 'shipping', 'Shipping', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(44, 1, 'common', 'delivered', 'Delivered', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(45, 1, 'common', 'confirm', 'Confirm', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(46, 1, 'common', 'title', 'Title', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(47, 1, 'common', 'value', 'Value', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(48, 1, 'common', 'add', 'Add', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(49, 1, 'common', 'view', 'View', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(50, 1, 'common', 'download', 'Download', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(51, 1, 'common', 'change_order_status', 'Change Order Status', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(52, 1, 'common', 'total', 'Total', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(53, 1, 'common', 'print_invoice', 'Print Invoice', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(54, 1, 'common', 'email', 'Email', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(55, 1, 'common', 'phone', 'Phone', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(56, 1, 'common', 'item', 'Item', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(57, 1, 'common', 'items', 'Items', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(58, 1, 'common', 'qty', 'Qty', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(59, 1, 'common', 'rate', 'Rate', '2023-03-28 22:06:32', '2023-03-28 22:06:32'),
(60, 1, 'common', 'purchase_code', 'Purchase Code', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(61, 1, 'common', 'verify_purchase', 'Verify Purchase', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(62, 1, 'common', 'buy_now', 'Buy Now', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(63, 1, 'common', 'install', 'Install', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(64, 1, 'common', 'installing', 'Installing', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(65, 1, 'common', 'updating', 'Updating', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(66, 1, 'common', 'free', 'Free', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(67, 1, 'common', 'domain', 'Domain', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(68, 1, 'common', 'verify', 'Verify', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(69, 1, 'common', 'send', 'Send', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(70, 1, 'common', 'upload', 'Upload', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(71, 1, 'common', 'view_all', 'View All', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(72, 1, 'common', 'unpaid', 'Unpaid', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(73, 1, 'common', 'loading', 'Loading', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(74, 1, 'common', 'update_app', 'Update App', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(75, 1, 'common', 'welcome_back', 'Welcome {0}', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(76, 1, 'common', 'off', 'Off', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(77, 1, 'common', 'on_create', 'On Create', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(78, 1, 'common', 'on_update', 'On Update', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(79, 1, 'common', 'on_delete', 'On Delete', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(80, 1, 'common', 'demo_account_credentials', 'Demo account login credentials', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(81, 1, 'common', 'balance', 'Balance', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(82, 1, 'common', 'party', 'Party', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(83, 1, 'common', 'created_by', 'Created By', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(84, 1, 'common', 'import', 'Import', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(85, 1, 'common', 'file', 'File', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(86, 1, 'common', 'copy_url', 'Copy Url', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(87, 1, 'common', 'print', 'Print', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(88, 1, 'common', 'pdf', 'Pdf', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(89, 1, 'common', 'excel', 'Excel', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(90, 1, 'common', 'particulars', 'Particulars', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(91, 1, 'common', 'amount', 'Amount', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(92, 1, 'common', 'profit', 'Profit', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(93, 1, 'common', 'profit_reports_by_orders', 'Profit Reports By Orders', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(94, 1, 'common', 'profit_reports_by_payments', 'Profit Reports By Payments', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(95, 1, 'menu', 'dashboard', 'Dashboard', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(96, 1, 'menu', 'stock_management', 'Stock Manager', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(97, 1, 'menu', 'purchase', 'Purchase', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(98, 1, 'menu', 'purchases', 'Purchases', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(99, 1, 'menu', 'purchase_returns', 'Purchase Return / Dr. Note', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(100, 1, 'menu', 'sales', 'Sales', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(101, 1, 'menu', 'sales_returns', 'Sales Return / Cr. Note', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(102, 1, 'menu', 'product_manager', 'Product Manager', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(103, 1, 'menu', 'brands', 'Brands', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(104, 1, 'menu', 'categories', 'Categories', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(105, 1, 'menu', 'products', 'Products', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(106, 1, 'menu', 'expense_manager', 'Expenses', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(107, 1, 'menu', 'expense_categories', 'Expense Categories', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(108, 1, 'menu', 'expenses', 'Expenses', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(109, 1, 'menu', 'users', 'Users', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(110, 1, 'menu', 'parties', 'Parties', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(111, 1, 'menu', 'staff_members', 'Staff Members', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(112, 1, 'menu', 'customers', 'Customers', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(113, 1, 'menu', 'suppliers', 'Suppliers', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(114, 1, 'menu', 'settings', 'Settings', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(115, 1, 'menu', 'company', 'Company Settings', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(116, 1, 'menu', 'profile', 'Profile', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(117, 1, 'menu', 'translations', 'Translations', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(118, 1, 'menu', 'languages', 'Languages', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(119, 1, 'menu', 'warehouses', 'Warehouses', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(120, 1, 'menu', 'roles', 'Role & Permissions', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(121, 1, 'menu', 'taxes', 'Taxes', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(122, 1, 'menu', 'currencies', 'Currencies', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(123, 1, 'menu', 'payment_modes', 'Payment Modes', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(124, 1, 'menu', 'units', 'Units', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(125, 1, 'menu', 'login', 'Login', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(126, 1, 'menu', 'logout', 'Logout', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(127, 1, 'menu', 'reports', 'Reports', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(128, 1, 'menu', 'order_payments', 'Order Payments', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(129, 1, 'menu', 'payments', 'Payments', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(130, 1, 'menu', 'stock_alert', 'Stock Alert', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(131, 1, 'menu', 'users_reports', 'Users Reports', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(132, 1, 'menu', 'warehouses_reports', 'Warehouses Reports', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(133, 1, 'menu', 'pos', 'POS', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(134, 1, 'menu', 'stock_adjustment', 'Stock Adjustment', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(135, 1, 'menu', 'verify_product', 'Verify Product', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(136, 1, 'menu', 'modules', 'Modules', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(137, 1, 'menu', 'storage_settings', 'Storage Settings', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(138, 1, 'menu', 'email_settings', 'Email Settings', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(139, 1, 'menu', 'update_app', 'Update App', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(140, 1, 'menu', 'custom_fields', 'Custom Fields', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(141, 1, 'menu', 'payment_in', 'Payment In', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(142, 1, 'menu', 'payment_out', 'Payment Out', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(143, 1, 'menu', 'cash_bank', 'Cash & Bank', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(144, 1, 'menu', 'sales_summary', 'Sales Summary', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(145, 1, 'menu', 'stock_summary', 'Stock Summary', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(146, 1, 'menu', 'rate_list', 'Rate List', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(147, 1, 'menu', 'product_sales_summary', 'Product Sales Summary', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(148, 1, 'menu', 'homepage', 'Buy online products', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(149, 1, 'menu', 'online_orders', 'Online Orders', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(150, 1, 'menu', 'website_setup', 'Website Setup', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(151, 1, 'menu', 'product_cards', 'Product Cards', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(152, 1, 'menu', 'front_settings', 'Front Settings', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(153, 1, 'menu', 'orders', 'Orders', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(154, 1, 'menu', 'quotations', 'Quotations', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(155, 1, 'menu', 'quotation', 'Quotation', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(156, 1, 'menu', 'quotation_estimate', 'Quotation / Estimate', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(157, 1, 'menu', 'database_backup', 'Database Backup', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(158, 1, 'menu', 'stock_transfer', 'Stock Transfer', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(159, 1, 'menu', 'stock_transfers', 'Stock Transfers', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(160, 1, 'menu', 'profit_loss', 'Profit & Loss', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(161, 1, 'dashboard', 'dashboard', 'Dashboard', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(162, 1, 'dashboard', 'recent_stock_history', 'Recent Stock History', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(163, 1, 'dashboard', 'top_selling_product', 'Top Selling Product', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(164, 1, 'dashboard', 'sales_purchases', 'Sales & Purchases', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(165, 1, 'dashboard', 'total_sales', 'Total Sales', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(166, 1, 'dashboard', 'top_customers', 'Top Customers', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(167, 1, 'dashboard', 'total_expenses', 'Total Expenses', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(168, 1, 'dashboard', 'payment_sent', 'Payment Sent', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(169, 1, 'dashboard', 'payment_received', 'Payment Received', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(170, 1, 'dashboard', 'total_sales_items', 'Total Sales Items', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(171, 1, 'dashboard', 'total_sales_returns_items', 'Total Sales Returns Items', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(172, 1, 'dashboard', 'total_purchases_items', 'Total Purchase Items', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(173, 1, 'dashboard', 'total_purchase_returns_items', 'Total Purchase Returns Items', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(174, 1, 'user', 'email_phone', 'Email or Phone', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(175, 1, 'user', 'user', 'User', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(176, 1, 'user', 'name', 'Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(177, 1, 'user', 'created_at', 'Created At', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(178, 1, 'user', 'email', 'Email', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(179, 1, 'user', 'password', 'Password', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(180, 1, 'user', 'login_enabled', 'Login Enabled', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(181, 1, 'user', 'profile_image', 'Profile Image', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(182, 1, 'user', 'company_name', 'Company Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(183, 1, 'user', 'phone', 'Phone Number', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(184, 1, 'user', 'address', 'Address', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(185, 1, 'user', 'city', 'City', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(186, 1, 'user', 'state', 'State', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(187, 1, 'user', 'country', 'Country', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(188, 1, 'user', 'zipcode', 'Zipcode', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(189, 1, 'user', 'billing_address', 'Billing Address', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(190, 1, 'user', 'shipping_address', 'Shipping Address', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(191, 1, 'user', 'opening_balance', 'Opening Balance', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(192, 1, 'user', 'credit_period', 'Credit Period', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(193, 1, 'user', 'credit_limit', 'Credit Limit', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(194, 1, 'user', 'to_receive', 'To Collect', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(195, 1, 'user', 'to_pay', 'To Pay', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(196, 1, 'user', 'receive', 'Receive', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(197, 1, 'user', 'pay', 'Pay', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(198, 1, 'user', 'status', 'Status', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(199, 1, 'user', 'role', 'Role', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(200, 1, 'user', 'days', 'Day(s)', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(201, 1, 'user', 'profile_updated', 'Profile Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(202, 1, 'user', 'password_blank', 'Leave blank if you don\'t want to update password.', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(203, 1, 'user', 'total_sales', 'Total Sales', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(204, 1, 'user', 'total_purchases', 'Total Purchases', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(205, 1, 'user', 'walk_in_customer', 'Walk In Customer', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(206, 1, 'user', 'staff_members_details', 'Staff Member Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(207, 1, 'user', 'customers_details', 'Customer Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(208, 1, 'user', 'suppliers_details', 'Supplier Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(209, 1, 'staff_member', 'add', 'Add New Staff Member', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(210, 1, 'staff_member', 'edit', 'Edit Staff Member', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(211, 1, 'staff_member', 'created', 'Staff Member Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(212, 1, 'staff_member', 'updated', 'Staff Member Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(213, 1, 'staff_member', 'deleted', 'Staff Member Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(214, 1, 'staff_member', 'staff_member_details', 'Staff Member Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(215, 1, 'staff_member', 'staff_member', 'Staff Member', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(216, 1, 'staff_member', 'delete_message', 'Are you sure you want to delete this staff member?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(217, 1, 'staff_member', 'import_staff_members', 'Import Staff Members', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(218, 1, 'customer', 'add', 'Add New Customer', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(219, 1, 'customer', 'edit', 'Edit Customer', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(220, 1, 'customer', 'created', 'Customer Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(221, 1, 'customer', 'updated', 'Customer Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(222, 1, 'customer', 'deleted', 'Customer Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(223, 1, 'customer', 'customer_details', 'Customer Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(224, 1, 'customer', 'delete_message', 'Are you sure you want to delete this customer?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(225, 1, 'customer', 'import_customers', 'Import Customers', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(226, 1, 'supplier', 'add', 'Add New Supplier', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(227, 1, 'supplier', 'edit', 'Edit Supplier', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(228, 1, 'supplier', 'created', 'Supplier Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(229, 1, 'supplier', 'updated', 'Supplier Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(230, 1, 'supplier', 'deleted', 'Supplier Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(231, 1, 'supplier', 'supplier_details', 'Supplier Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(232, 1, 'supplier', 'delete_message', 'Are you sure you want to delete this supplier?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(233, 1, 'supplier', 'import_suppliers', 'Import Suppliers', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(234, 1, 'warehouse', 'add', 'Add New Warehouse', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(235, 1, 'warehouse', 'edit', 'Edit Warehouse', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(236, 1, 'warehouse', 'created', 'Warehouse Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(237, 1, 'warehouse', 'updated', 'Warehouse Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(238, 1, 'warehouse', 'deleted', 'Warehouse Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(239, 1, 'warehouse', 'warehouse_details', 'Warehouse Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(240, 1, 'warehouse', 'warehouse', 'Warehouse', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(241, 1, 'warehouse', 'logo', 'Logo', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(242, 1, 'warehouse', 'dark_logo', 'Dark Logo', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(243, 1, 'warehouse', 'name', 'Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(244, 1, 'warehouse', 'slug', 'Slug', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(245, 1, 'warehouse', 'email', 'Email', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(246, 1, 'warehouse', 'phone', 'Phone', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(247, 1, 'warehouse', 'address', 'Billing Address', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(248, 1, 'warehouse', 'show_email_on_invoice', 'Show email on invoice', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(249, 1, 'warehouse', 'show_phone_on_invoice', 'Show phone on invoice', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(250, 1, 'warehouse', 'terms_condition', 'Terms & Conditions', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(251, 1, 'warehouse', 'bank_details', 'Bank Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(252, 1, 'warehouse', 'signature', 'Signature', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(253, 1, 'warehouse', 'delete_message', 'Are you sure you want to delete this warehouse?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(254, 1, 'warehouse', 'details_will_be_shown_on_invoice', 'Note: Details added below will be shown on your invoices', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(255, 1, 'warehouse', 'online_store', 'Online Store', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(256, 1, 'warehouse', 'online_store_status_updated', 'Online store status updated successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(257, 1, 'warehouse', 'no_online_store_exists', 'No online store exists for this url. Please contact to admin for support.', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(258, 1, 'warehouse', 'view_online_store', 'View Online Store', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(259, 1, 'role', 'add', 'Add New Role', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(260, 1, 'role', 'edit', 'Edit Role', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(261, 1, 'role', 'created', 'Role Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(262, 1, 'role', 'updated', 'Role Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(263, 1, 'role', 'deleted', 'Role Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(264, 1, 'role', 'role_details', 'Role Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(265, 1, 'role', 'delete_message', 'Are you sure you want to delete this role?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(266, 1, 'role', 'display_name', 'Display Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(267, 1, 'role', 'role_name', 'Role Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(268, 1, 'role', 'description', 'Description', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(269, 1, 'role', 'user_management', 'User Management', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(270, 1, 'role', 'permissions', 'Permissions', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(271, 1, 'company', 'updated', 'Company Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(272, 1, 'company', 'name', 'Company Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(273, 1, 'company', 'short_name', 'Company Short Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(274, 1, 'company', 'email', 'Company Email', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(275, 1, 'company', 'phone', 'Company Phone', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(276, 1, 'company', 'address', 'Company Address', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(277, 1, 'company', 'currency', 'Currency', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(278, 1, 'company', 'logo', 'Company Logo', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(279, 1, 'company', 'left_sidebar_theme', 'Left Sidebar Theme', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(280, 1, 'company', 'dark', 'Dark', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(281, 1, 'company', 'light', 'Light', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(282, 1, 'company', 'dark_logo', 'Dark Logo', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(283, 1, 'company', 'light_logo', 'Light Logo', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(284, 1, 'company', 'small_dark_logo', 'Small Dark Logo', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(285, 1, 'company', 'small_light_logo', 'Small Light Logo', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(286, 1, 'company', 'primary_color', 'Primary Color', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(287, 1, 'company', 'default_timezone', 'Default Timezone', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(288, 1, 'company', 'date_format', 'Date Format', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(289, 1, 'company', 'time_format', 'Time Format', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(290, 1, 'company', 'auto_detect_timezone', 'Auto Detect Timezone', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(291, 1, 'company', 'app_debug', 'App Debug', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(292, 1, 'company', 'update_app_notification', 'Update App Notitication', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(293, 1, 'company', 'login_image', 'Login Image', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(294, 1, 'company', 'layout', 'Layout', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(295, 1, 'company', 'rtl', 'RTL', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(296, 1, 'company', 'ltr', 'LTR', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(297, 1, 'company', 'shortcut_menu_Placement', 'Add Menu Placement', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(298, 1, 'company', 'top_and_bottom', 'Top & Bottom', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(299, 1, 'company', 'top_header', 'Top Header', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(300, 1, 'company', 'bottom_corner', 'Bottom Conrer', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(301, 1, 'company', 'shortcut_menu_setting', 'Add Menu Settings', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(302, 1, 'company', 'menu_setting_updated', 'Menu Setting Updated', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(303, 1, 'tax', 'add', 'Add New Tax', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(304, 1, 'tax', 'edit', 'Edit Tax', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(305, 1, 'tax', 'created', 'Tax Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(306, 1, 'tax', 'updated', 'Tax Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(307, 1, 'tax', 'deleted', 'Tax Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(308, 1, 'tax', 'tax_details', 'Tax Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(309, 1, 'tax', 'delete_message', 'Are you sure you want to delete this tax?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(310, 1, 'tax', 'display_name', 'Display Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(311, 1, 'tax', 'name', 'Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(312, 1, 'tax', 'rate', 'Tax Rate', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(313, 1, 'tax', 'no_tax', 'No Tax', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(314, 1, 'currency', 'add', 'Add New Currency', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(315, 1, 'currency', 'edit', 'Edit Currency', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(316, 1, 'currency', 'created', 'Currency Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(317, 1, 'currency', 'updated', 'Currency Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(318, 1, 'currency', 'deleted', 'Currency Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(319, 1, 'currency', 'currency_details', 'Currency Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(320, 1, 'currency', 'delete_message', 'Are you sure you want to delete this currency?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(321, 1, 'currency', 'name', 'Currency Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(322, 1, 'currency', 'symbol', 'Currency Symbol', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(323, 1, 'currency', 'position', 'Currency Position', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(324, 1, 'currency', 'front', 'Front', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(325, 1, 'currency', 'front_position_example', 'Example : $100', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(326, 1, 'currency', 'behind', 'Behind', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(327, 1, 'currency', 'behind_position_example', 'Example : 100$', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(328, 1, 'currency', 'code', 'Currency Code', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(329, 1, 'payment_mode', 'add', 'Add New Payment Mode', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(330, 1, 'payment_mode', 'edit', 'Edit Payment Mode', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(331, 1, 'payment_mode', 'created', 'Payment Mode Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(332, 1, 'payment_mode', 'updated', 'Payment Mode Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(333, 1, 'payment_mode', 'deleted', 'Payment Mode Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(334, 1, 'payment_mode', 'payment_mode_details', 'Payment Mode Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(335, 1, 'payment_mode', 'delete_message', 'Are you sure you want to delete this payment mode?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(336, 1, 'payment_mode', 'name', 'Payment Mode Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(337, 1, 'unit', 'add', 'Add New Unit', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(338, 1, 'unit', 'edit', 'Edit Unit', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(339, 1, 'unit', 'created', 'Unit Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(340, 1, 'unit', 'updated', 'Unit Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(341, 1, 'unit', 'deleted', 'Unit Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(342, 1, 'unit', 'delete_message', 'Are you sure you want to delete this unit?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(343, 1, 'unit', 'unit_details', 'Unit Details', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(344, 1, 'unit', 'name', 'Unit Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(345, 1, 'unit', 'short_name', 'Short Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(346, 1, 'unit', 'base_unit', 'Base Unit', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(347, 1, 'unit', 'operator', 'Operator', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(348, 1, 'unit', 'multiply', 'Multiply (*)', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(349, 1, 'unit', 'divide', 'Divide (/)', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(350, 1, 'unit', 'operator_value', 'Operator Value', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(351, 1, 'custom_field', 'add', 'Add New Custom Field', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(352, 1, 'custom_field', 'edit', 'Edit Custom Field', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(353, 1, 'custom_field', 'created', 'Custom Field Created Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(354, 1, 'custom_field', 'updated', 'Custom Field Updated Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(355, 1, 'custom_field', 'deleted', 'Custom Field Deleted Successfully', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(356, 1, 'custom_field', 'delete_message', 'Are you sure you want to delete this custom field?', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(357, 1, 'custom_field', 'name', 'Field Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(358, 1, 'custom_field', 'value', 'Default Value', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(359, 1, 'custom_field', 'type', 'Field Type', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(360, 1, 'module', 'name', 'Module Name', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(361, 1, 'module', 'verified', 'Verified', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(362, 1, 'module', 'verify_purchase_code', 'Verify Purchase Code', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(363, 1, 'module', 'current_version', 'Current Version', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(364, 1, 'module', 'latest_version', 'Latest Version', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(365, 1, 'module', 'status', 'Status', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(366, 1, 'module', 'installed_modules', 'Installed Modules', '2023-03-28 22:06:33', '2023-03-28 22:06:33'),
(367, 1, 'module', 'other_modules', 'Other Modules', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(368, 1, 'module', 'module_status_updated', 'Modules Status Updated', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(369, 1, 'module', 'downloading_completed', 'Download Completed', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(370, 1, 'module', 'extract_zip_file', 'Extract Zip File', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(371, 1, 'module', 'file_extracted', 'Zip File Extracted', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(372, 1, 'update_app', 'app_details', 'App Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(373, 1, 'update_app', 'name', 'Name', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(374, 1, 'update_app', 'value', 'Value', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(375, 1, 'update_app', 'php_version', 'PHP Version', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(376, 1, 'update_app', 'app_version', 'App Version', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(377, 1, 'update_app', 'laravel_version', 'Laravel Version', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(378, 1, 'update_app', 'mysql_version', 'MySQL Version', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(379, 1, 'update_app', 'vue_version', 'Vue Version', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(380, 1, 'update_app', 'update_app', 'Update App', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(381, 1, 'update_app', 'update_now', 'Update Now', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(382, 1, 'update_app', 'update_available', 'Update Available', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(383, 1, 'update_app', 'verify_again', 'Verify Again', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(384, 1, 'update_app', 'verify_failed', 'Verification Failed', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(385, 1, 'update_app', 'verify_failed_message', 'Your application is not registerd with us. Please verify it', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(386, 1, 'update_app', 'verified_with_other_domain', 'Your purchase code is registerd with other doamin. Please verfiy your purhcase code', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(387, 1, 'expense_category', 'add', 'Add New Expense Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(388, 1, 'expense_category', 'edit', 'Edit Expense Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(389, 1, 'expense_category', 'created', 'Expense Category Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(390, 1, 'expense_category', 'updated', 'Expense Category Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(391, 1, 'expense_category', 'deleted', 'Expense Category Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(392, 1, 'expense_category', 'delete_message', 'Are you sure you want to delete this expense category?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(393, 1, 'expense_category', 'expense_category_details', 'Expense Category Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(394, 1, 'expense_category', 'name', 'Expense Category Name', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(395, 1, 'expense_category', 'description', 'Description', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(396, 1, 'expense', 'add', 'Add New Expense', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(397, 1, 'expense', 'edit', 'Edit Expense', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(398, 1, 'expense', 'created', 'Expense Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(399, 1, 'expense', 'updated', 'Expense Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(400, 1, 'expense', 'deleted', 'Expense Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(401, 1, 'expense', 'delete_message', 'Are you sure you want to delete this expense?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(402, 1, 'expense', 'details', 'Expense Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(403, 1, 'expense', 'warehouse', 'Warehouse', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(404, 1, 'expense', 'expense_category', 'Expense Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(405, 1, 'expense', 'date', 'Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(406, 1, 'expense', 'amount', 'Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(407, 1, 'expense', 'bill', 'Expense Bill', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(408, 1, 'expense', 'user', 'User', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(409, 1, 'expense', 'created_by_user', 'User', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(410, 1, 'expense', 'notes', 'Notes', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(411, 1, 'brand', 'add', 'Add New Brand', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(412, 1, 'brand', 'edit', 'Edit Brand', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(413, 1, 'brand', 'created', 'Brand Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(414, 1, 'brand', 'updated', 'Brand Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(415, 1, 'brand', 'deleted', 'Brand Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(416, 1, 'brand', 'delete_message', 'Are you sure you want to delete this brand?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(417, 1, 'brand', 'details', 'Brand Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(418, 1, 'brand', 'name', 'Name', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(419, 1, 'brand', 'slug', 'Slug', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(420, 1, 'brand', 'logo', 'Brand Logo', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(421, 1, 'brand', 'import_brands', 'Import Brands', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(422, 1, 'category', 'add', 'Add New Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(423, 1, 'category', 'edit', 'Edit Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(424, 1, 'category', 'created', 'Category Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(425, 1, 'category', 'updated', 'Category Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(426, 1, 'category', 'deleted', 'Category Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(427, 1, 'category', 'delete_message', 'Are you sure you want to delete this category?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(428, 1, 'category', 'details', 'Category Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(429, 1, 'category', 'category', 'Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(430, 1, 'category', 'name', 'Name', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(431, 1, 'category', 'slug', 'Slug', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(432, 1, 'category', 'logo', 'Category Logo', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(433, 1, 'category', 'parent_category', 'Parent Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(434, 1, 'category', 'no_parent_category', 'No Parent Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(435, 1, 'category', 'import_categories', 'Import Categories', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(436, 1, 'product', 'add', 'Add New Product', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(437, 1, 'product', 'edit', 'Edit Product', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(438, 1, 'product', 'created', 'Product Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(439, 1, 'product', 'updated', 'Product Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(440, 1, 'product', 'deleted', 'Product Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(441, 1, 'product', 'delete_message', 'Are you sure you want to delete this product?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(442, 1, 'product', 'details', 'Product Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(443, 1, 'product', 'name', 'Name', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(444, 1, 'product', 'slug', 'Slug', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(445, 1, 'product', 'sku', 'SKU', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(446, 1, 'product', 'image', 'Image', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(447, 1, 'product', 'quantitiy_alert', 'Quantity Alert', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(448, 1, 'product', 'brand', 'Brand', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(449, 1, 'product', 'category', 'Category', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(450, 1, 'product', 'price', 'Price', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(451, 1, 'product', 'mrp', 'MRP', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(452, 1, 'product', 'purchase_price', 'Purchase Price', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(453, 1, 'product', 'sales_price', 'Sales Price', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(454, 1, 'product', 'tax_type', 'Tax Type', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(455, 1, 'product', 'description', 'Description', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(456, 1, 'product', 'product', 'Product', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(457, 1, 'product', 'quantity', 'Quantity', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(458, 1, 'product', 'discount', 'Discount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(459, 1, 'product', 'tax', 'Tax', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(460, 1, 'product', 'subtotal', 'SubTotal', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(461, 1, 'product', 'unit', 'Unit', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(462, 1, 'product', 'unit_price', 'Unit Price', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(463, 1, 'product', 'avl_qty', 'Avl. qty:', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(464, 1, 'product', 'order_items', 'Order Items', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(465, 1, 'product', 'inclusive', 'Inclusive', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(466, 1, 'product', 'exclusive', 'Exclusive', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(467, 1, 'product', 'stocks', 'Stocks', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(468, 1, 'product', 'stock_quantity', 'Stock Quantity', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(469, 1, 'product', 'product_orders', 'Product Orders', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(470, 1, 'product', 'stock_history', 'Stock History', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(471, 1, 'product', 'current_stock', 'Current Stock', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(472, 1, 'product', 'item_code', 'Item Code', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(473, 1, 'product', 'barcode_symbology', 'Barcode Symbology', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(474, 1, 'product', 'barcode', 'Barcode', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(475, 1, 'product', 'view_barcode', 'View Barcode', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(476, 1, 'product', 'generate_barcode', 'Generate Barcode', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(477, 1, 'product', 'print_barcode', 'Print Barcode', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(478, 1, 'product', 'price_tax', 'Price & Tax', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(479, 1, 'product', 'custom_fields', 'Custom Fields', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(480, 1, 'product', 'wholesale_rate', 'Wholesale Rate', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(481, 1, 'product', 'wholesale_price', 'Wholesale Price', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(482, 1, 'product', 'wholesale_quantity', 'Wholesale Quantity', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(483, 1, 'product', 'enter_min_quantity', 'Enter Minimum Quantity', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(484, 1, 'product', 'opening_stock', 'Opening Stock', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(485, 1, 'product', 'opening_stock_date', 'Opening Stock Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(486, 1, 'product', 'stock_value', 'Stock Value', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(487, 1, 'product', 'by_purchase', 'By Purchase', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(488, 1, 'product', 'by_sales', 'By Sales', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(489, 1, 'product', 'unit_sold', 'Unit Sold', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(490, 1, 'product', 'import_products', 'Import Products', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(491, 1, 'stock', 'order_type', 'Order Type', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(492, 1, 'stock', 'order_date', 'Order Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(493, 1, 'stock', 'warehouse', 'Warehouse', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(494, 1, 'stock', 'supplier', 'Supplier', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(495, 1, 'stock', 'customer', 'Customer', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(496, 1, 'stock', 'product', 'Product', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(497, 1, 'stock', 'invoice_number', 'Invoice Number', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(498, 1, 'stock', 'invoie_number_blank', 'Leave it blank to generate automatically', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(499, 1, 'stock', 'notes', 'Notes', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(500, 1, 'stock', 'status', 'Order Status', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(501, 1, 'stock', 'order_tax', 'Order Tax', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(502, 1, 'stock', 'discount', 'Discount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(503, 1, 'stock', 'shipping', 'Shipping', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(504, 1, 'stock', 'grand_total', 'Grand Total', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(505, 1, 'stock', 'remarks', 'Remarks', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(506, 1, 'stock', 'pay_now', 'Pay Now', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(507, 1, 'stock', 'reset', 'Reset', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(508, 1, 'stock', 'total_items', 'Total Items', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(509, 1, 'stock', 'paying_amount', 'Paying Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(510, 1, 'stock', 'payable_amount', 'Payable Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(511, 1, 'stock', 'change_return', 'Change Return', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(512, 1, 'stock', 'order_details', 'Order Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(513, 1, 'stock', 'order_canceled', 'Order Canceled Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(514, 1, 'stock', 'order_cancel_message', 'Are you sure you want to cancel this order?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(515, 1, 'stock', 'view_order', 'View Order', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(516, 1, 'stock', 'order_id', 'Order Id', '2023-03-28 22:06:34', '2023-03-28 22:06:34');
INSERT INTO `translations` (`id`, `lang_id`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(517, 1, 'stock', 'shipping_address', 'Shipping Address', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(518, 1, 'stock', 'billing_address', 'Billing Address', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(519, 1, 'stock', 'order_taken_by', 'Order Taken By', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(520, 1, 'stock', 'no_product_found', 'No product found for selected resource', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(521, 1, 'purchase', 'add', 'Add New Purchase', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(522, 1, 'purchase', 'edit', 'Edit Purchase', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(523, 1, 'purchase', 'details', 'Purchase Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(524, 1, 'purchase', 'created', 'Purchase Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(525, 1, 'purchase', 'updated', 'Purchase Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(526, 1, 'purchase', 'deleted', 'Purchase Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(527, 1, 'purchase', 'delete_message', 'Are you sure you want to delete this purchase?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(528, 1, 'purchase', 'purchase_date', 'Purchase Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(529, 1, 'purchase', 'purchase_status', 'Purchase Status', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(530, 1, 'purchase', 'user', 'Supplier', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(531, 1, 'sales', 'add', 'Add New Sales', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(532, 1, 'sales', 'edit', 'Edit Sales', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(533, 1, 'sales', 'details', 'Sales Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(534, 1, 'sales', 'created', 'Sales Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(535, 1, 'sales', 'updated', 'Sales Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(536, 1, 'sales', 'deleted', 'Sales Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(537, 1, 'sales', 'delete_message', 'Are you sure you want to delete this sales?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(538, 1, 'sales', 'sales_date', 'Sales Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(539, 1, 'sales', 'sales_status', 'Sales Status', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(540, 1, 'sales', 'user', 'Customer', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(541, 1, 'sales', 'tax_invoice', 'TAX INVOICE', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(542, 1, 'sales', 'invoice', 'Invoice', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(543, 1, 'purchase_returns', 'add', 'Add New Purchase Return', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(544, 1, 'purchase_returns', 'edit', 'Edit Purchase Return', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(545, 1, 'purchase_returns', 'details', 'Purchase Return Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(546, 1, 'purchase_returns', 'created', 'Purchase Return Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(547, 1, 'purchase_returns', 'updated', 'Purchase Return Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(548, 1, 'purchase_returns', 'deleted', 'Purchase Return Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(549, 1, 'purchase_returns', 'delete_message', 'Are you sure you want to delete this purchase return?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(550, 1, 'purchase_returns', 'purchase_returns_date', 'Return Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(551, 1, 'purchase_returns', 'purchase_returns_status', 'Return Status', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(552, 1, 'purchase_returns', 'user', 'Supplier', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(553, 1, 'sales_returns', 'add', 'Add New Sales Return', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(554, 1, 'sales_returns', 'edit', 'Edit Sales Return', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(555, 1, 'sales_returns', 'details', 'Sales Return Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(556, 1, 'sales_returns', 'created', 'Sales Return Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(557, 1, 'sales_returns', 'updated', 'Sales Return Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(558, 1, 'sales_returns', 'deleted', 'Sales Return Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(559, 1, 'sales_returns', 'delete_message', 'Are you sure you want to delete this sales return?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(560, 1, 'sales_returns', 'sales_returns_date', 'Return Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(561, 1, 'sales_returns', 'sales_returns_status', 'Return Status', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(562, 1, 'sales_returns', 'user', 'Customer', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(563, 1, 'quotation', 'add', 'Add New Quotation', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(564, 1, 'quotation', 'edit', 'Edit Quotation', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(565, 1, 'quotation', 'details', 'Quotation Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(566, 1, 'quotation', 'created', 'Quotation Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(567, 1, 'quotation', 'updated', 'Quotation Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(568, 1, 'quotation', 'deleted', 'Quotation Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(569, 1, 'quotation', 'delete_message', 'Are you sure you want to delete this quotation/estimate?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(570, 1, 'quotation', 'quotation_date', 'Quotation Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(571, 1, 'quotation', 'quotation_status', 'Quotation Status', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(572, 1, 'quotation', 'user', 'Customer', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(573, 1, 'quotation', 'tax_invoice', 'TAX INVOICE', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(574, 1, 'quotation', 'invoice', 'Invoice', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(575, 1, 'quotation', 'convert_to_sale', 'Convert to sale', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(576, 1, 'quotation', 'convert_message', 'Are you really want to convert this quotation to sales?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(577, 1, 'quotation', 'quotation_converted_to_sales', 'Quotation converted to sales successfully.', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(578, 1, 'payments', 'add', 'Add New Payment', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(579, 1, 'payments', 'edit', 'Edit Payment', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(580, 1, 'payments', 'details', 'Payment Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(581, 1, 'payments', 'created', 'Payment Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(582, 1, 'payments', 'updated', 'Payment Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(583, 1, 'payments', 'deleted', 'Payment Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(584, 1, 'payments', 'delete_message', 'Are you sure you want to delete this payment?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(585, 1, 'payments', 'user', 'User', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(586, 1, 'payments', 'amount', 'Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(587, 1, 'payments', 'invoice_amount', 'Invoice Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(588, 1, 'payments', 'payment_number', 'Reference Number', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(589, 1, 'payments', 'payments', 'Payments', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(590, 1, 'payments', 'date', 'Payment Date', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(591, 1, 'payments', 'due_amount', 'Due Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(592, 1, 'payments', 'paid_amount', 'Paid Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(593, 1, 'payments', 'total_amount', 'Total Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(594, 1, 'payments', 'unused_amount', 'Unused Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(595, 1, 'payments', 'settled_amount', 'Settled Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(596, 1, 'payments', 'payment_mode', 'Payment Mode', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(597, 1, 'payments', 'paid_total_amount', 'Paid/Total Amount', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(598, 1, 'payments', 'notes', 'Notes', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(599, 1, 'payments', 'payment_status', 'Payment Status', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(600, 1, 'payments', 'unpaid', 'Unpaid', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(601, 1, 'payments', 'paid', 'Paid', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(602, 1, 'payments', 'transactions', 'Transactions', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(603, 1, 'payments', 'transaction_number', 'Txns No.', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(604, 1, 'payments', 'partially_paid', 'Partially Paid', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(605, 1, 'payments', 'order_payment', 'Order Payment', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(606, 1, 'payments', 'settle_invoice_using_payment', 'Settle below invoices using this payment', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(607, 1, 'payments', 'payment_type', 'Payment Type', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(608, 1, 'payments', 'you_will_pay', 'You Will Pay', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(609, 1, 'payments', 'you_will_receive', 'You Will Receive', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(610, 1, 'payments', 'cash', 'Cash', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(611, 1, 'payments', 'bank', 'Bank', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(612, 1, 'langs', 'add', 'Add New Language', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(613, 1, 'langs', 'edit', 'Edit Language', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(614, 1, 'langs', 'details', 'Language Details', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(615, 1, 'langs', 'created', 'Language Created Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(616, 1, 'langs', 'updated', 'Language Updated Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(617, 1, 'langs', 'deleted', 'Language Deleted Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(618, 1, 'langs', 'delete_message', 'Are you sure you want to delete this language?', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(619, 1, 'langs', 'view_all_langs', 'View All Languages', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(620, 1, 'langs', 'status_updated', 'Langugage status updated', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(621, 1, 'langs', 'name', 'Name', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(622, 1, 'langs', 'key', 'Key', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(623, 1, 'langs', 'flag', 'Flag', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(624, 1, 'langs', 'enabled', 'Enabled', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(625, 1, 'translations', 'fetch_new_translations', 'Fetch New Translations', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(626, 1, 'translations', 'reload_translations', 'Reload Translations', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(627, 1, 'translations', 'reload_successfully', 'Translations Reload Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(628, 1, 'translations', 'fetched_successfully', 'Translations Fetch Successfully', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(629, 1, 'storage_settings', 'updated', 'Storage Settings Updated', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(630, 1, 'storage_settings', 'storage', 'Storage', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(631, 1, 'storage_settings', 'local', 'Local', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(632, 1, 'storage_settings', 'aws', 'AWS S3 Storage', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(633, 1, 'storage_settings', 'aws_key', 'AWS Key', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(634, 1, 'storage_settings', 'aws_secret', 'AWS Secret', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(635, 1, 'storage_settings', 'aws_region', 'AWS Region', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(636, 1, 'storage_settings', 'aws_bucket', 'AWS Bucket', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(637, 1, 'mail_settings', 'updated', 'Mail Settings Updated', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(638, 1, 'mail_settings', 'mail_driver', 'Mail Driver', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(639, 1, 'mail_settings', 'none', 'None', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(640, 1, 'mail_settings', 'mail', 'Mail', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(641, 1, 'mail_settings', 'smtp', 'SMTP', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(642, 1, 'mail_settings', 'from_name', 'Mail From Name', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(643, 1, 'mail_settings', 'from_email', 'Mail From Email', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(644, 1, 'mail_settings', 'host', 'Host', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(645, 1, 'mail_settings', 'port', 'Port', '2023-03-28 22:06:34', '2023-03-28 22:06:34'),
(646, 1, 'mail_settings', 'encryption', 'Encryption', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(647, 1, 'mail_settings', 'username', 'Username', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(648, 1, 'mail_settings', 'password', 'Password', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(649, 1, 'mail_settings', 'send_test_mail', 'Send Test Mail', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(650, 1, 'mail_settings', 'send_mail_setting_saved', 'Send mail setting saved', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(651, 1, 'mail_settings', 'enable_mail_queue', 'Enable Mail Queue', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(652, 1, 'mail_settings', 'send_mail_for', 'Send Mail For', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(653, 1, 'mail_settings', 'email', 'Email address for which you want to send test mail', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(654, 1, 'mail_settings', 'test_mail_sent_successfully', 'Test mail sent successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(655, 1, 'mail_settings', 'stock_adjustment_create', 'Stock Adjustment Create', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(656, 1, 'mail_settings', 'notificaiton_will_be_sent_to_warehouse', 'Notification will be sent to warehouse email', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(657, 1, 'online_orders', 'order_summary', 'Order Summary', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(658, 1, 'online_orders', 'cancel_order', 'Cancel Order', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(659, 1, 'online_orders', 'order_cancelled', 'Order cancelled successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(660, 1, 'online_orders', 'order_cancelled_message', 'This order has been cancelled.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(661, 1, 'online_orders', 'cancel_message', 'Are you sure you want to cancel this online order', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(662, 1, 'online_orders', 'deliver_message', 'Are you sure you want to this order as delivered', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(663, 1, 'online_orders', 'order_confirmed', 'Order confirmed successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(664, 1, 'online_orders', 'order_status_changed', 'Order status changed successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(665, 1, 'online_orders', 'online_orders_date', 'Order Date', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(666, 1, 'online_orders', 'online_orders_status', 'Order Status', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(667, 1, 'online_orders', 'update_orders_status', 'Update Order Status', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(668, 1, 'online_orders', 'confirm_delivery', 'Confirm Delivery', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(669, 1, 'online_orders', 'order_delivered', 'Order delivered successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(670, 1, 'online_orders', 'user', 'Customer', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(671, 1, 'online_orders', 'online_store_url', 'Online Store Url', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(672, 1, 'product_card', 'add', 'Add New Product Card', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(673, 1, 'product_card', 'edit', 'Edit Product Card', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(674, 1, 'product_card', 'details', 'Product Card Details', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(675, 1, 'product_card', 'created', 'Product Card Created Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(676, 1, 'product_card', 'updated', 'Product Card Updated Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(677, 1, 'product_card', 'deleted', 'Product Card Deleted Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(678, 1, 'product_card', 'delete_message', 'Are you sure you want to delete this product card?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(679, 1, 'product_card', 'title', 'Title', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(680, 1, 'product_card', 'subtitle', 'Subtitle', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(681, 1, 'product_card', 'products', 'Products', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(682, 1, 'front_setting', 'products', 'Products', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(683, 1, 'front_setting', 'featured_categories', 'Featured Categories', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(684, 1, 'front_setting', 'featured_categories_title', 'Featured Categories Title', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(685, 1, 'front_setting', 'featured_categories_subtitle', 'Featured Categories Subtitle', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(686, 1, 'front_setting', 'featured_products', 'Featured Products', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(687, 1, 'front_setting', 'featured_products_title', 'Featured Products Title', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(688, 1, 'front_setting', 'featured_products_subtitle', 'Featured Products Subtitle', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(689, 1, 'front_setting', 'social_links', 'Social Links', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(690, 1, 'front_setting', 'facebook', 'Facebook', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(691, 1, 'front_setting', 'twitter', 'Twitter', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(692, 1, 'front_setting', 'instagram', 'Instagram', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(693, 1, 'front_setting', 'linkedin', 'Linkedin', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(694, 1, 'front_setting', 'youtube', 'Youttube', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(695, 1, 'front_setting', 'footer', 'Footer', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(696, 1, 'front_setting', 'banners', 'Banners', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(697, 1, 'front_setting', 'placeholder_social_text', 'Please Enter {0} Url', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(698, 1, 'front_setting', 'footers', 'Footers', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(699, 1, 'front_setting', 'copyright_text', 'Copyright Text', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(700, 1, 'front_setting', 'addLink', 'Add Link', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(701, 1, 'front_setting', 'addContactLink', 'Add Contact Link', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(702, 1, 'front_setting', 'addPageDetails', 'Add Pages Details', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(703, 1, 'front_setting', 'required_text', '{0} Required', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(704, 1, 'front_setting', 'footer_page_widget', 'Footer Page Widget', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(705, 1, 'front_setting', 'footer_contact_widget', 'Footer Contact Widget', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(706, 1, 'front_setting', 'footer_links_widget', 'Footer Links Widget', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(707, 1, 'front_setting', 'bottom_banners', 'Bottom Banners', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(708, 1, 'front_setting', 'top_banners_1', 'Top Banner 1', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(709, 1, 'front_setting', 'top_banners_2', 'Top Banner 2', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(710, 1, 'front_setting', 'top_banners_3', 'Top Banner 3', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(711, 1, 'front_setting', 'add_to_cart', 'Add To Cart', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(712, 1, 'front_setting', 'footer_company_description', 'Footer Company Description', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(713, 1, 'front_setting', 'useful_links', 'Useful Links', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(714, 1, 'front_setting', 'pages', 'Pages', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(715, 1, 'front_setting', 'contact', 'Contact', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(716, 1, 'front_setting', 'all_categories', 'All Categories', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(717, 1, 'front_setting', 'no_results', 'No Results', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(718, 1, 'stock_adjustment', 'add', 'Add New Adjustment', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(719, 1, 'stock_adjustment', 'edit', 'Edit Adjustment', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(720, 1, 'stock_adjustment', 'details', 'Adjustment Details', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(721, 1, 'stock_adjustment', 'created', 'Adjustment Created Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(722, 1, 'stock_adjustment', 'updated', 'Adjustment Updated Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(723, 1, 'stock_adjustment', 'deleted', 'Adjustment Deleted Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(724, 1, 'stock_adjustment', 'delete_message', 'Are you sure you want to delete this stock adjustment?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(725, 1, 'stock_adjustment', 'notes', 'Notes', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(726, 1, 'stock_adjustment', 'current_stock', 'Current Stock', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(727, 1, 'stock_adjustment', 'quantity', 'Quantity', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(728, 1, 'stock_adjustment', 'adjustment_type', 'Adjustment Type', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(729, 1, 'stock_adjustment', 'adjustment_add', 'Add', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(730, 1, 'stock_adjustment', 'adjustment_subtract', 'Subtract', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(731, 1, 'stock_transfer', 'add', 'Add New Transfer', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(732, 1, 'stock_transfer', 'edit', 'Edit Transfer', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(733, 1, 'stock_transfer', 'details', 'Transfer Details', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(734, 1, 'stock_transfer', 'created', 'Transfer Created Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(735, 1, 'stock_transfer', 'updated', 'Transfer Updated Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(736, 1, 'stock_transfer', 'deleted', 'Transfer Deleted Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(737, 1, 'stock_transfer', 'delete_message', 'Are you sure you want to delete this stock adjustment?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(738, 1, 'stock_transfer', 'stock_transfer_date', 'Stock Transfer Date', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(739, 1, 'stock_transfer', 'stock_transfer_status', 'Stock Transfer Status', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(740, 1, 'stock_transfer', 'from_warehouse', 'From Warehouse', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(741, 1, 'stock_transfer', 'to_warehouse', 'To Warehouse', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(742, 1, 'stock_transfer', 'warehouse', 'Warehouse', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(743, 1, 'stock_transfer', 'products', 'Products', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(744, 1, 'stock_transfer', 'notes', 'Notes', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(745, 1, 'stock_transfer', 'quantity', 'Quantity', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(746, 1, 'stock_transfer', 'created_by', 'Created By', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(747, 1, 'stock_transfer', 'received', 'Received', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(748, 1, 'stock_transfer', 'transfered', 'Transfered', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(749, 1, 'database_backup', 'file', 'File', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(750, 1, 'database_backup', 'file_size', 'File Size', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(751, 1, 'database_backup', 'generate_backup', 'Generate Backup', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(752, 1, 'database_backup', 'delete_backup', 'Delete Backup', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(753, 1, 'database_backup', 'backup_generated_successfully', 'Backup Generated Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(754, 1, 'database_backup', 'are_you_sure_generate_backup', 'Are you sure you want to generate database backup?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(755, 1, 'database_backup', 'are_you_sure_delete_backup', 'Are you sure you want to delete this database backup?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(756, 1, 'database_backup', 'backup_locaion_is', 'All generated database file will be stored in storage/app/public/backup folder. ', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(757, 1, 'database_backup', 'settings', 'Command Settings', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(758, 1, 'database_backup', 'backup_command_setting', 'Backup Command Settings', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(759, 1, 'database_backup', 'mysqldump_command_path', 'mysqldump command path', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(760, 1, 'database_backup', 'command_updated', 'Command updated successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(761, 1, 'database_backup', 'window_command_path', 'If you use XAMPP then it will be => C:\\xampp\\mysql\\bin\\mysqldump.exe', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(762, 1, 'database_backup', 'laragon_command_path', 'If you use Laragon then it will be => C:\\laragon\\bin\\mysql\\mysql-5.7.24-winx64\\bin\\mysqldump.exe', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(763, 1, 'database_backup', 'linux_command_path', 'If you are on ubuntu or mac then run following command and enter output here => which mysqldump', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(764, 1, 'messages', 'product_out_of_stock', 'Product is out of stock. Current Stock is {0} while required stock is {1}.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(765, 1, 'messages', 'leave_blank_to_create_parent_category', 'Leave it blank to create parent category', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(766, 1, 'messages', 'somehing_went_wrong', 'Something went wrong. Please contact to administrator.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(767, 1, 'messages', 'verify_success', 'Successfully verified. Redirect to app...', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(768, 1, 'messages', 'login_success', 'Successfully login. Redirect to app...', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(769, 1, 'messages', 'login_success_dashboard', 'Successfully logged into app.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(770, 1, 'messages', 'click_here_to_find_purchase_code', 'Click here to find your purchase code', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(771, 1, 'messages', 'verification_successfull', 'Verification successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(772, 1, 'messages', 'other_domain_linked', 'Other domain linked', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(773, 1, 'messages', 'other_domain_linked_with_purchase_code', 'Other domain is already linked with your purchase code. Please enter your purchase code for more details...', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(774, 1, 'messages', 'first_verify_module_message', 'To enable please \\n verify this module', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(775, 1, 'messages', 'are_you_sure_install_message', 'Are you sure you want to install?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(776, 1, 'messages', 'downloading_started_message', 'Downloading started. Please wait ...', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(777, 1, 'messages', 'file_extracting_message', 'File extracteding. Please wait ...', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(778, 1, 'messages', 'installation_success', 'Installation successfully. Click here to reload page...', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(779, 1, 'messages', 'are_you_sure_update_message', 'Are you sure you want to update? Please take backup before update.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(780, 1, 'messages', 'stmp_success_message', 'Your SMTP settings are correct..', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(781, 1, 'messages', 'stmp_error_message', 'Your SMTP settings are incorrect. Please update it to send mails', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(782, 1, 'messages', 'uploading_failed', 'Uploading failed', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(783, 1, 'messages', 'loading_app_message', 'Please wait... we are preparing something amazing for you', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(784, 1, 'messages', 'fetching_product_details', 'We are fetching product details. Please wait...', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(785, 1, 'messages', 'product_is_upto_date', 'You are on the latest version of app.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(786, 1, 'messages', 'new_app_version_avaialbe', 'New app version {0} is available. Please update to get latest version.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(787, 1, 'messages', 'not_able_to_edit_order', 'Only order status editable, other fields can not be editable becuase this order linked to some payments. Delete those payment(s) and try again.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(788, 1, 'messages', 'click_here_to_download_sample_file', 'Click here to download sample csv file', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(789, 1, 'messages', 'imported_successfully', 'Imported Successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(790, 1, 'popover', 'quantitiy_alert', 'After this stock quanity it will enable low stock warning.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(791, 1, 'popover', 'auto_detect_timezone', 'Allow auto detect timezone from browser for currently logged in user.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(792, 1, 'popover', 'click_here_to_copy_credentials', 'Click here to copy {0} credentials', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(793, 1, 'invoice', 'purchase_invoice', 'Purchase Invoice', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(794, 1, 'invoice', 'purchase_return_invoice', 'Purchase Return Invoice', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(795, 1, 'invoice', 'sales_invoice', 'Sales Invoice', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(796, 1, 'invoice', 'sales_return_invoice', 'Sales Return Invoice', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(797, 1, 'invoice', 'invoice', 'Invoice', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(798, 1, 'invoice', 'order_date', 'Date', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(799, 1, 'invoice', 'order_status', 'Status', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(800, 1, 'invoice', 'payment_status', 'Payment Status', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(801, 1, 'invoice', 'bill_to', 'Bill To', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(802, 1, 'invoice', 'product', 'Product', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(803, 1, 'invoice', 'unit_price', 'Unit Price', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(804, 1, 'invoice', 'quantity', 'Quantity', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(805, 1, 'invoice', 'total', 'Total', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(806, 1, 'invoice', 'notes', 'Notes', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(807, 1, 'invoice', 'subtotal', 'Subtotal', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(808, 1, 'invoice', 'tax', 'Tax', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(809, 1, 'invoice', 'discount', 'Discount', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(810, 1, 'invoice', 'shipping', 'Shipping', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(811, 1, 'invoice', 'total_items', 'Total Items', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(812, 1, 'invoice', 'qty', 'Qty', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(813, 1, 'invoice', 'paid_amount', 'Paid Amount', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(814, 1, 'invoice', 'due_amount', 'Due Amount', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(815, 1, 'invoice', 'thanks_message', 'Thank You For Shopping With Us. Please Come Again', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(816, 1, 'front', 'home', 'Home', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(817, 1, 'front', 'profile', 'Profile', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(818, 1, 'front', 'dashboard', 'Dashboard', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(819, 1, 'front', 'my_orders', 'My Orders', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(820, 1, 'front', 'my_profile', 'My Profile', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(821, 1, 'front', 'logout', 'Logout', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(822, 1, 'front', 'total_orders', 'Total Orders', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(823, 1, 'front', 'pending_orders', 'Pending Orders', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(824, 1, 'front', 'processing_orders', 'Processing Orders', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(825, 1, 'front', 'completed_orders', 'Completed Orders', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(826, 1, 'front', 'recent_orders', 'Recent Orders', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(827, 1, 'front', 'order_history', 'Order History', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(828, 1, 'front', 'profile_settings', 'Profile Settings', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(829, 1, 'front', 'select_shipping_address', 'Select Shipping Address', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(830, 1, 'front', 'checkout_page', 'Checkout Page', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(831, 1, 'front', 'address_details', 'Address Details', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(832, 1, 'front', 'payment_details', 'Payment Details', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(833, 1, 'front', 'add_new_address', 'Add New Address', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(834, 1, 'front', 'cash_on_delivery', 'Cash On Delivery', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(835, 1, 'front', 'continue_shopping', 'Continue Shopping', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(836, 1, 'front', 'confirm_order', 'Confirm Order', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(837, 1, 'front', 'confirm_order_message', 'Are you sure you want to confirm this order?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(838, 1, 'front', 'order_placed', 'Order placeded.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(839, 1, 'front', 'order_placed_message', 'Order placed successfully.', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(840, 1, 'front', 'all_orders', 'All Orders', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(841, 1, 'front', 'follow_us', 'Follow Us', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(842, 1, 'front', 'categories', 'Categories', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(843, 1, 'front', 'pages', 'Pages', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(844, 1, 'front', 'address_deleted', 'Address Deleted', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(845, 1, 'front', 'address_saved', 'Address Saved', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(846, 1, 'front', 'address_delete_message', 'Are you sure you want to delete this address?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(847, 1, 'front', 'setting_updated_successfully', 'Setting updated successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(848, 1, 'front', 'login', 'Login', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(849, 1, 'front', 'login_using_email_password', 'Login using email and password', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(850, 1, 'front', 'logged_in_successfully', 'Logged in successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(851, 1, 'front', 'dont_have_account', 'Don\'t have account?', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(852, 1, 'front', 'signup', 'Signup', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(853, 1, 'front', 'signup_using_email_password', 'Signup using email & password', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(854, 1, 'front', 'already_have_account', 'Already have account', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(855, 1, 'front', 'register_successfully', 'Registered successfully', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(856, 1, 'front', 'click_here_to_login', 'Click here to login', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(857, 1, 'topbar_add_button', 'add_staff_member', 'Add Staff Member', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(858, 1, 'topbar_add_button', 'add_customer', 'Add Customer', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(859, 1, 'topbar_add_button', 'add_supplier', 'Add Supplier', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(860, 1, 'topbar_add_button', 'add_brand', 'Add Brand', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(861, 1, 'topbar_add_button', 'add_category', 'Add Category', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(862, 1, 'topbar_add_button', 'add_product', 'Add Product', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(863, 1, 'topbar_add_button', 'add_sales', 'Add Sales', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(864, 1, 'topbar_add_button', 'add_purchase', 'Add Purchase', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(865, 1, 'topbar_add_button', 'add_expense_cateogory', 'Add Expense Category', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(866, 1, 'topbar_add_button', 'add_expense', 'Add Expense', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(867, 1, 'topbar_add_button', 'add_currency', 'Add Currency', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(868, 1, 'topbar_add_button', 'add_warehouse', 'Add Warehouse', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(869, 1, 'topbar_add_button', 'add_unit', 'Add Unit', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(870, 1, 'topbar_add_button', 'add_language', 'Add Language', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(871, 1, 'topbar_add_button', 'add_role', 'Add Role', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(872, 1, 'topbar_add_button', 'add_tax', 'Add Tax', '2023-03-28 22:06:35', '2023-03-28 22:06:35'),
(873, 1, 'topbar_add_button', 'add_payment_mode', 'Add Payment Mode', '2023-03-28 22:06:35', '2023-03-28 22:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `short_name`, `base_unit`, `parent_id`, `operator`, `operator_value`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 'piece', 'pc', NULL, NULL, 'multiply', '1', 0, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(2, 'meter', 'm', NULL, NULL, 'multiply', '1', 0, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(3, 'kilogram', 'kg', NULL, NULL, 'multiply', '1', 0, '2023-03-28 22:06:37', '2023-03-28 22:06:37'),
(4, 'liter', 'l', NULL, NULL, 'multiply', '1', 0, '2023-03-28 22:06:37', '2023-03-28 22:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customers',
  `login_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verification_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `reset_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Asia/Kolkata',
  `date_format` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'd-m-Y',
  `date_picker_format` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dd-mm-yyyy',
  `time_format` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h:i a',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `warehouse_id`, `role_id`, `user_type`, `login_enabled`, `name`, `email`, `password`, `phone`, `profile_image`, `address`, `shipping_address`, `email_verification_code`, `status`, `reset_code`, `timezone`, `date_format`, `date_picker_format`, `time_format`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'staff_members', 1, 'Admin', 'admin@example.com', '$2y$10$P9BdQXnDamvzTFxwLUm0AOi4ZdaW1OPcE7rAWR1kWr3FoA3yWNqVy', NULL, NULL, NULL, NULL, NULL, 'enabled', NULL, 'Asia/Kolkata', 'd-m-Y', 'dd-mm-yyyy', 'h:i a', '2023-03-28 22:06:36', '2023-03-28 22:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `opening_balance` double NOT NULL DEFAULT 0,
  `opening_balance_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'receive',
  `credit_period` int(11) NOT NULL DEFAULT 0,
  `credit_limit` double NOT NULL DEFAULT 0,
  `purchase_order_count` int(11) NOT NULL DEFAULT 0,
  `purchase_return_count` int(11) NOT NULL DEFAULT 0,
  `sales_order_count` int(11) NOT NULL DEFAULT 0,
  `sales_return_count` int(11) NOT NULL DEFAULT 0,
  `total_amount` double NOT NULL DEFAULT 0,
  `paid_amount` double NOT NULL DEFAULT 0,
  `due_amount` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `warehouse_id`, `user_id`, `opening_balance`, `opening_balance_type`, `credit_period`, `credit_limit`, `purchase_order_count`, `purchase_return_count`, `sales_order_count`, `sales_return_count`, `total_amount`, `paid_amount`, `due_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 'receive', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-03-28 22:06:36', '2023-03-28 22:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_email_on_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `show_phone_on_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_store_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `logo`, `dark_logo`, `name`, `slug`, `email`, `phone`, `show_email_on_invoice`, `show_phone_on_invoice`, `address`, `terms_condition`, `bank_details`, `signature`, `online_store_enabled`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Stockifly', 'stockifly', 'stockifly@example.com', '9999999999', 0, 0, NULL, '1. Goods once sold will not be taken back or exchanged \n2. All disputes are subject to [ENTER_YOUR_CITY_NAME] jurisdiction only', NULL, NULL, 1, '2023-03-28 22:06:35', '2023-03-28 22:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_history`
--

CREATE TABLE `warehouse_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_stocks`
--

CREATE TABLE `warehouse_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stock_quantity` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_currency_id_foreign` (`currency_id`),
  ADD KEY `companies_lang_id_foreign` (`lang_id`),
  ADD KEY `companies_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `expenses_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `front_product_cards`
--
ALTER TABLE `front_product_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `front_product_cards_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `front_website_settings`
--
ALTER TABLE `front_website_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `front_website_settings_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_tax_id_foreign` (`tax_id`),
  ADD KEY `orders_staff_user_id_foreign` (`staff_user_id`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_from_warehouse_id_foreign` (`from_warehouse_id`);

--
-- Indexes for table `order_custom_fields`
--
ALTER TABLE `order_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_custom_fields_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_user_id_foreign` (`user_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_unit_id_foreign` (`unit_id`),
  ADD KEY `order_items_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payments_payment_id_foreign` (`payment_id`),
  ADD KEY `order_payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_shipping_address`
--
ALTER TABLE `order_shipping_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_shipping_address_order_id_foreign` (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `payments_payment_mode_id_foreign` (`payment_mode_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_staff_user_id_foreign` (`staff_user_id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_custom_fields_product_id_foreign` (`product_id`),
  ADD KEY `product_custom_fields_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_product_id_foreign` (`product_id`),
  ADD KEY `product_details_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `product_details_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_adjustments_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `stock_adjustments_product_id_foreign` (`product_id`),
  ADD KEY `stock_adjustments_created_by_foreign` (`created_by`);

--
-- Indexes for table `stock_history`
--
ALTER TABLE `stock_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_history_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `stock_history_product_id_foreign` (`product_id`),
  ADD KEY `stock_history_created_by_foreign` (`created_by`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_address_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `user_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_history`
--
ALTER TABLE `warehouse_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_history_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_history_user_id_foreign` (`user_id`),
  ADD KEY `warehouse_history_order_id_foreign` (`order_id`),
  ADD KEY `warehouse_history_order_item_id_foreign` (`order_item_id`),
  ADD KEY `warehouse_history_product_id_foreign` (`product_id`),
  ADD KEY `warehouse_history_payment_id_foreign` (`payment_id`),
  ADD KEY `warehouse_history_expense_id_foreign` (`expense_id`),
  ADD KEY `warehouse_history_staff_user_id_foreign` (`staff_user_id`);

--
-- Indexes for table `warehouse_stocks`
--
ALTER TABLE `warehouse_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_stocks_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouse_stocks_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_product_cards`
--
ALTER TABLE `front_product_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_website_settings`
--
ALTER TABLE `front_website_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `langs`
--
ALTER TABLE `langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_custom_fields`
--
ALTER TABLE `order_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_shipping_address`
--
ALTER TABLE `order_shipping_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_history`
--
ALTER TABLE `stock_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=874;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouse_history`
--
ALTER TABLE `warehouse_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouse_stocks`
--
ALTER TABLE `warehouse_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `langs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `front_product_cards`
--
ALTER TABLE `front_product_cards`
  ADD CONSTRAINT `front_product_cards_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `front_website_settings`
--
ALTER TABLE `front_website_settings`
  ADD CONSTRAINT `front_website_settings_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_from_warehouse_id_foreign` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_staff_user_id_foreign` FOREIGN KEY (`staff_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_custom_fields`
--
ALTER TABLE `order_custom_fields`
  ADD CONSTRAINT `order_custom_fields_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_payments_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_shipping_address`
--
ALTER TABLE `order_shipping_address`
  ADD CONSTRAINT `order_shipping_address_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_payment_mode_id_foreign` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_staff_user_id_foreign` FOREIGN KEY (`staff_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product_custom_fields`
--
ALTER TABLE `product_custom_fields`
  ADD CONSTRAINT `product_custom_fields_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_custom_fields_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_details_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_details_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD CONSTRAINT `stock_adjustments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_adjustments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_adjustments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_history`
--
ALTER TABLE `stock_history`
  ADD CONSTRAINT `stock_history_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_history_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_history_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `langs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouse_history`
--
ALTER TABLE `warehouse_history`
  ADD CONSTRAINT `warehouse_history_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_staff_user_id_foreign` FOREIGN KEY (`staff_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_history_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `warehouse_stocks`
--
ALTER TABLE `warehouse_stocks`
  ADD CONSTRAINT `warehouse_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `warehouse_stocks_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
