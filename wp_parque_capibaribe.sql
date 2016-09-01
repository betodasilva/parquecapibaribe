-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 01/09/2016 às 09:17
-- Versão do servidor: 5.7.13-0ubuntu0.16.04.2
-- Versão do PHP: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wp_parque_capibaribe`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_bdq_trs_tweet`
--

CREATE TABLE `wp_pc_bdq_trs_tweet` (
  `id` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `tweet_text` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_screen_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(23,20) NOT NULL,
  `longitude` decimal(23,20) NOT NULL,
  `profile_image_url` text COLLATE utf8mb4_unicode_ci,
  `favorite_count` mediumint(9) NOT NULL,
  `retweet_count` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_bdq_trs_tweet`
--

INSERT INTO `wp_pc_bdq_trs_tweet` (`id`, `created_at`, `tweet_text`, `user_name`, `user_screen_name`, `latitude`, `longitude`, `profile_image_url`, `favorite_count`, `retweet_count`) VALUES
('728177490607411200', '2016-05-05 11:00:17', 'I''m at Rio Capibaribe https://t.co/anIQwQk1Fn', 'Dean', 'DeanArderson', '-34.87613832000000000000', '-8.04888601000000000000', 'http://pbs.twimg.com/profile_images/554486207712088065/oSPqfy5V_normal.jpeg', 0, 0),
('728630251740385280', '2016-05-06 16:59:23', 'Just posted a photo @ Rio Capibaribe https://t.co/fEN9D9psc2', 'buzuzio', 'ThiagoDeMart', '-34.95813000000000000000', '-8.05262000000000000000', 'http://pbs.twimg.com/profile_images/715975666034937856/-jSuvEGN_normal.jpg', 0, 0),
('729119325160869888', '2016-05-08 01:22:48', 'I''m at rio capibaribe in recife, pe https://t.co/DJnXlP5CNo', 'Fredy Victorino', 'fredycito_xx', '-34.88147769000000000000', '-8.06837523000000000000', 'http://pbs.twimg.com/profile_images/492874517677883393/8pr0fhuQ_normal.jpeg', 0, 0),
('730148529621110786', '2016-05-10 21:32:29', 'I''m at Rio Capibaribe in Recife, Pernambuco https://t.co/9TbzbcoPSw', 'Milla #TimBeta', 'camilacml93', '-34.88071203000000000000', '-8.06158790000000000000', 'http://pbs.twimg.com/profile_images/605940876699762688/-Je2_ez3_normal.jpg', 0, 0),
('730475631520174080', '2016-05-11 19:12:16', '02:56PM 051116 @ Rio Capibaribe https://t.co/wnzbdjRFhn', 'Júlio', 'sjuliocb', '-34.95813000000000000000', '-8.05262000000000000000', 'http://pbs.twimg.com/profile_images/723305629163634688/mo3HVE6I_normal.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_commentmeta`
--

CREATE TABLE `wp_pc_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_comments`
--

CREATE TABLE `wp_pc_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_comments`
--

INSERT INTO `wp_pc_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr. WordPress', '', 'https://wordpress.org/', '', '2016-04-19 11:02:16', '2016-04-19 14:02:16', 'Olá, Isto é um comentário.\nPara excluir um comentário, faça o login e veja os comentários de posts. Lá você terá a opção de editá-los ou excluí-los.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_links`
--

CREATE TABLE `wp_pc_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_options`
--

CREATE TABLE `wp_pc_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_options`
--

INSERT INTO `wp_pc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8000/wp-parquecapibaribe', 'yes'),
(2, 'home', 'http://localhost:8000/wp-parquecapibaribe', 'yes'),
(3, 'blogname', 'Parque Capibaribe', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'matheus@badoque.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:2;s:43:"twitter-rest-search/twitter-rest-search.php";i:3;s:35:"wp-cron-cleaner/wp-cron-cleaner.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'parquecapibaribe', 'yes'),
(41, 'stylesheet', 'parquecapibaribe', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:35:"wp-cron-cleaner/wp-cron-cleaner.php";s:14:"WPCC_uninstall";}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_pc_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'pt_BR', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1472565736;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1472565758;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1472565792;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1472565866;a:1:{s:19:"bdqtrs_fetch_tweets";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:15:"fifteen_minutes";s:4:"args";a:0:{}s:8:"interval";i:900;}}}s:7:"version";i:2;}', 'yes'),
(143, '_transient_twentysixteen_categories', '1', 'yes'),
(169, 'current_theme', 'Parque Capibaribe 2016', 'yes'),
(170, 'theme_mods_parquecapibaribe/parquecapibaribefront', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1461599466;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(171, 'theme_switched', '', 'yes'),
(174, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1461599474;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(175, 'theme_mods_parquecapibaribe', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:14:"menu-principal";i:2;}}', 'yes'),
(187, '_transient_twentyfifteen_categories', '1', 'yes'),
(194, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:19:"matheus@badoque.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1472139408;}', 'yes'),
(227, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(299, 'taxonomy_1', 'a:1:{s:9:"subtitulo";s:37:"Subtítulo para ações sem categoria";}', 'yes'),
(301, 'category_children', 'a:0:{}', 'yes'),
(366, 'recently_activated', 'a:2:{s:22:"cron-view/cron-gui.php";i:1463025032;s:43:"twitter-rest-search/twitter-rest-search.php";i:1462988392;}', 'yes'),
(442, 'bdqtrs_settings', 'a:6:{s:26:"bdqtrs_twitter_app_api_key";s:25:"tY3ByDU54sbHN0IjrDEPa7uz4";s:29:"bdqtrs_twitter_app_api_secret";s:50:"NqaYE77exGz2H0eQxHSB9sPkMfVUUf3e98yuJgcxZe75wFphoK";s:12:"bdqtrs_terms";s:14:"rio capibaribe";s:15:"bdqtrs_latitude";s:11:"-8.03427240";s:16:"bdqtrs_longitude";s:11:"-34.9005944";s:13:"bdqtrs_radius";s:4:"95km";}', 'yes'),
(563, '_site_transient_timeout_browser_77d4665d09fc560e08b87156fefd27a8', '1472838310', 'yes'),
(564, '_site_transient_browser_77d4665d09fc560e08b87156fefd27a8', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.0.2743.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(587, 'db_upgraded', '1', 'yes'),
(598, '_transient_doing_cron', '1472648385.8575410842895507812500', 'yes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_postmeta`
--

CREATE TABLE `wp_pc_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_postmeta`
--

INSERT INTO `wp_pc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/parquecapibaribe/'),
(10, 4, '_menu_item_orphaned', '1461937945'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1461937945'),
(29, 2, '_edit_lock', '1462568524:1'),
(30, 7, '_edit_last', '1'),
(31, 7, '_edit_lock', '1461962912:1'),
(40, 10, '_edit_last', '1'),
(41, 10, '_edit_lock', '1462221938:1'),
(42, 12, '_menu_item_type', 'post_type'),
(43, 12, '_menu_item_menu_item_parent', '0'),
(44, 12, '_menu_item_object_id', '10'),
(45, 12, '_menu_item_object', 'page'),
(46, 12, '_menu_item_target', ''),
(47, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 12, '_menu_item_xfn', ''),
(49, 12, '_menu_item_url', ''),
(51, 16, '_edit_last', '1'),
(52, 16, '_edit_lock', '1462796035:1'),
(53, 18, '_menu_item_type', 'post_type'),
(54, 18, '_menu_item_menu_item_parent', '0'),
(55, 18, '_menu_item_object_id', '16'),
(56, 18, '_menu_item_object', 'page'),
(57, 18, '_menu_item_target', ''),
(58, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 18, '_menu_item_xfn', ''),
(60, 18, '_menu_item_url', ''),
(62, 19, '_menu_item_type', 'taxonomy'),
(63, 19, '_menu_item_menu_item_parent', '0'),
(64, 19, '_menu_item_object_id', '1'),
(65, 19, '_menu_item_object', 'category'),
(66, 19, '_menu_item_target', ''),
(67, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 19, '_menu_item_xfn', ''),
(69, 19, '_menu_item_url', ''),
(71, 1, '_edit_lock', '1462833207:1'),
(72, 1, '_edit_last', '1'),
(75, 1, 'post-subtitle', 'Uma legenda para Olá, Mundo!'),
(76, 23, '_wp_attached_file', '2016/04/1920x1200-data-wallpapers-20-737009.jpg'),
(77, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:47:"2016/04/1920x1200-data-wallpapers-20-737009.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"1920x1200-data-wallpapers-20-737009-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"1920x1200-data-wallpapers-20-737009-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:47:"1920x1200-data-wallpapers-20-737009-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:48:"1920x1200-data-wallpapers-20-737009-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:48:"1920x1200-data-wallpapers-20-737009-1000x706.jpg";s:5:"width";i:1000;s:6:"height";i:706;s:9:"mime-type";s:10:"image/jpeg";}s:11:"action-list";a:4:{s:4:"file";s:47:"1920x1200-data-wallpapers-20-737009-750x450.jpg";s:5:"width";i:750;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(78, 1, '_thumbnail_id', '23'),
(81, 24, '_wp_attached_file', '2016/04/melk-landscape-architecture-urban-design-Hance-Park-8.jpg'),
(82, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:900;s:4:"file";s:65:"2016/04/melk-landscape-architecture-urban-design-Hance-Park-8.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:65:"melk-landscape-architecture-urban-design-Hance-Park-8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:65:"melk-landscape-architecture-urban-design-Hance-Park-8-300x141.jpg";s:5:"width";i:300;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:65:"melk-landscape-architecture-urban-design-Hance-Park-8-768x360.jpg";s:5:"width";i:768;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:66:"melk-landscape-architecture-urban-design-Hance-Park-8-1024x480.jpg";s:5:"width";i:1024;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:66:"melk-landscape-architecture-urban-design-Hance-Park-8-1000x706.jpg";s:5:"width";i:1000;s:6:"height";i:706;s:9:"mime-type";s:10:"image/jpeg";}s:11:"action-list";a:4:{s:4:"file";s:65:"melk-landscape-architecture-urban-design-Hance-Park-8-750x450.jpg";s:5:"width";i:750;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(83, 25, '_wp_attached_file', '2016/04/Harold-Park-Park-Life-hero_1.jpg'),
(84, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2880;s:6:"height";i:1396;s:4:"file";s:40:"2016/04/Harold-Park-Park-Life-hero_1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Harold-Park-Park-Life-hero_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"Harold-Park-Park-Life-hero_1-300x145.jpg";s:5:"width";i:300;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"Harold-Park-Park-Life-hero_1-768x372.jpg";s:5:"width";i:768;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"Harold-Park-Park-Life-hero_1-1024x496.jpg";s:5:"width";i:1024;s:6:"height";i:496;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:41:"Harold-Park-Park-Life-hero_1-1000x706.jpg";s:5:"width";i:1000;s:6:"height";i:706;s:9:"mime-type";s:10:"image/jpeg";}s:11:"action-list";a:4:{s:4:"file";s:40:"Harold-Park-Park-Life-hero_1-750x450.jpg";s:5:"width";i:750;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_posts`
--

CREATE TABLE `wp_pc_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_posts`
--

INSERT INTO `wp_pc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-04-19 11:02:16', '2016-04-19 14:02:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas et elit a arcu convallis placerat. Duis lacus elit, vulputate nec nibh ut, mattis hendrerit erat. Suspendisse imperdiet dolor ut felis semper rutrum. Proin lobortis dolor in erat fringilla congue. Maecenas fermentum justo ut ligula accumsan, a luctus risus blandit. Duis odio urna, mollis ac maximus scelerisque, condimentum quis massa. Maecenas pellentesque magna vel tellus euismod, vel lobortis augue ornare. Sed ac varius enim. Vivamus ullamcorper urna nulla. Duis enim est, ornare quis facilisis ut, tincidunt eu turpis. Duis tempus, quam eleifend aliquet scelerisque, risus tellus accumsan odio, et dictum nisl magna eget nisl. Maecenas interdum porta augue sit amet scelerisque. Nulla eget turpis eget enim lobortis suscipit.\r\n\r\nNunc porta consequat eros, et ultrices elit semper a. Donec orci mi, ultricies ornare arcu eget, euismod fermentum risus. Donec semper nulla a enim lobortis posuere. Sed sed ligula luctus, tempus ex non, pretium augue. Phasellus venenatis orci a massa aliquet, sit amet gravida diam condimentum. Maecenas ut venenatis orci. Mauris feugiat vulputate libero, et auctor leo dictum dictum. Aenean pulvinar cursus feugiat. Donec auctor nisi quis urna venenatis sagittis.', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2016-05-06 18:33:00', '2016-05-06 21:33:00', '', 0, 'http://localhost/parquecapibaribe/?p=1', 0, 'post', '', 1),
(2, 1, '2016-04-19 11:02:16', '2016-04-19 14:02:16', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://localhost/parquecapibaribe/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2016-04-19 11:02:16', '2016-04-19 14:02:16', '', 0, 'http://localhost/parquecapibaribe/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-04-29 10:52:24', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-29 10:52:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/parquecapibaribe/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2016-04-29 10:52:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-04-29 10:52:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/parquecapibaribe/?p=5', 1, 'nav_menu_item', '', 0),
(7, 1, '2016-04-29 17:45:20', '2016-04-29 20:45:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque bibendum nibh, sit amet ullamcorper neque lobortis a. Vivamus vel est in sapien efficitur cursus sit amet nec nisl. Nam a nunc varius, commodo augue non, ullamcorper arcu. Aenean sed pulvinar tortor, sit amet mattis mi. Quisque varius lorem dolor, a semper tellus dapibus non. Praesent congue tristique tortor, eget sodales metus tincidunt ut. Donec pretium vitae magna non placerat. Donec id ante massa. In luctus mattis augue in porttitor. Fusce tincidunt erat tortor, euismod hendrerit metus fermentum eget.\r\n\r\nPhasellus faucibus libero sem, nec elementum arcu pellentesque quis. Vestibulum lectus mi, consequat vel mi at, gravida ullamcorper nibh. Nullam sit amet lorem non odio fringilla interdum. In mollis, justo quis rhoncus cursus, quam orci egestas lectus, ut porttitor orci eros nec sem. Fusce elementum accumsan risus vel mollis. Sed mollis interdum augue, eget imperdiet diam condimentum sed. Integer auctor, ipsum vitae laoreet gravida, ligula mauris dictum nisl, vitae porttitor lacus odio ac felis. Proin porta tristique metus, vel auctor turpis pulvinar sit amet. Quisque posuere sagittis accumsan. Curabitur ac leo vitae nunc imperdiet viverra et in est. Nulla facilisi. Vivamus maximus tellus nec pharetra cursus. Vestibulum vitae diam odio. Praesent fermentum hendrerit justo non pulvinar. Quisque pulvinar mattis odio, at mollis nulla rutrum lobortis.', 'Página de Exemplo Filha', '', 'publish', 'closed', 'closed', '', 'pagina-de-exemplo-filha', '', '', '2016-04-29 17:45:20', '2016-04-29 20:45:20', '', 2, 'http://localhost/parquecapibaribe/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-04-29 17:45:20', '2016-04-29 20:45:20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque bibendum nibh, sit amet ullamcorper neque lobortis a. Vivamus vel est in sapien efficitur cursus sit amet nec nisl. Nam a nunc varius, commodo augue non, ullamcorper arcu. Aenean sed pulvinar tortor, sit amet mattis mi. Quisque varius lorem dolor, a semper tellus dapibus non. Praesent congue tristique tortor, eget sodales metus tincidunt ut. Donec pretium vitae magna non placerat. Donec id ante massa. In luctus mattis augue in porttitor. Fusce tincidunt erat tortor, euismod hendrerit metus fermentum eget.\r\n\r\nPhasellus faucibus libero sem, nec elementum arcu pellentesque quis. Vestibulum lectus mi, consequat vel mi at, gravida ullamcorper nibh. Nullam sit amet lorem non odio fringilla interdum. In mollis, justo quis rhoncus cursus, quam orci egestas lectus, ut porttitor orci eros nec sem. Fusce elementum accumsan risus vel mollis. Sed mollis interdum augue, eget imperdiet diam condimentum sed. Integer auctor, ipsum vitae laoreet gravida, ligula mauris dictum nisl, vitae porttitor lacus odio ac felis. Proin porta tristique metus, vel auctor turpis pulvinar sit amet. Quisque posuere sagittis accumsan. Curabitur ac leo vitae nunc imperdiet viverra et in est. Nulla facilisi. Vivamus maximus tellus nec pharetra cursus. Vestibulum vitae diam odio. Praesent fermentum hendrerit justo non pulvinar. Quisque pulvinar mattis odio, at mollis nulla rutrum lobortis.', 'Página de Exemplo Filha', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-04-29 17:45:20', '2016-04-29 20:45:20', '', 7, 'http://localhost/parquecapibaribe/2016/04/29/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-05-02 10:38:22', '2016-05-02 13:38:22', 'Sed dapibus metus sed orci sagittis, non mattis neque mattis. Mauris erat purus, consectetur sed magna sit amet, tincidunt mattis lectus. Sed consequat nisl a neque congue, sed porttitor mauris blandit. Aenean a ante tellus. Nunc eu sodales dolor. Duis et iaculis lectus. Nulla in ante urna. Vivamus convallis est sit amet aliquam vulputate. Nulla ultrices vel dolor rhoncus semper.\r\n<div class="embed-responsive embed-responsive-16by9 col-xs-12 col-sm-8 col-md-12"><iframe class="embed-responsive-item" src="http://www.youtube.com/embed/pzC3zThxC_s" width="300" height="150"></iframe></div>\r\n&nbsp;\r\n\r\nVivamus ut semper tortor. In id sem efficitur, pellentesque neque nec, sollicitudin eros. Maecenas nec maximus mauris, aliquet eleifend ex. Proin porta lorem eu ante venenatis, non ullamcorper mauris venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin lorem enim, sodales a viverra commodo, commodo ac mi.\r\n\r\nMauris tellus sem, malesuada ut cursus et, molestie in nulla. Etiam erat enim, tincidunt sed risus ut, cursus volutpat odio. Cras eu enim mi. Nam ac lorem cursus, maximus elit at, efficitur lectus. Donec rhoncus sem venenatis tortor mollis, in interdum dolor porttitor. Duis molestie, lorem a iaculis tempor, massa diam convallis est, ac gravida purus lectus vel nibh. Maecenas finibus blandit placerat.', 'O que é?', '', 'publish', 'closed', 'closed', '', 'o-que-e', '', '', '2016-05-02 13:02:30', '2016-05-02 16:02:30', '', 0, 'http://localhost/parquecapibaribe/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-05-02 10:38:22', '2016-05-02 13:38:22', '<h2>O que é?</h2>\r\nSed dapibus metus sed orci sagittis, non mattis neque mattis. Mauris erat purus, consectetur sed magna sit amet, tincidunt mattis lectus. Sed consequat nisl a neque congue, sed porttitor mauris blandit. Aenean a ante tellus. Nunc eu sodales dolor. Duis et iaculis lectus. Nulla in ante urna. Vivamus convallis est sit amet aliquam vulputate. Nulla ultrices vel dolor rhoncus semper.\r\n\r\n<iframe class="embed-responsive-item" src="http://www.youtube.com/embed/pzC3zThxC_s" width="300" height="150"></iframe>\r\n\r\nVivamus ut semper tortor. In id sem efficitur, pellentesque neque nec, sollicitudin eros. Maecenas nec maximus mauris, aliquet eleifend ex. Proin porta lorem eu ante venenatis, non ullamcorper mauris venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin lorem enim, sodales a viverra commodo, commodo ac mi.\r\n\r\nMauris tellus sem, malesuada ut cursus et, molestie in nulla. Etiam erat enim, tincidunt sed risus ut, cursus volutpat odio. Cras eu enim mi. Nam ac lorem cursus, maximus elit at, efficitur lectus. Donec rhoncus sem venenatis tortor mollis, in interdum dolor porttitor. Duis molestie, lorem a iaculis tempor, massa diam convallis est, ac gravida purus lectus vel nibh. Maecenas finibus blandit placerat.', 'O que é?', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-05-02 10:38:22', '2016-05-02 13:38:22', '', 10, 'http://localhost/parquecapibaribe/2016/05/02/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-05-02 10:39:15', '2016-05-02 13:39:15', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2016-05-02 17:31:23', '2016-05-02 20:31:23', '', 0, 'http://localhost/parquecapibaribe/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2016-05-02 10:39:51', '2016-05-02 13:39:51', 'Sed dapibus metus sed orci sagittis, non mattis neque mattis. Mauris erat purus, consectetur sed magna sit amet, tincidunt mattis lectus. Sed consequat nisl a neque congue, sed porttitor mauris blandit. Aenean a ante tellus. Nunc eu sodales dolor. Duis et iaculis lectus. Nulla in ante urna. Vivamus convallis est sit amet aliquam vulputate. Nulla ultrices vel dolor rhoncus semper.\r\n\r\n<iframe class="embed-responsive-item" src="http://www.youtube.com/embed/pzC3zThxC_s" width="300" height="150"></iframe>\r\n\r\nVivamus ut semper tortor. In id sem efficitur, pellentesque neque nec, sollicitudin eros. Maecenas nec maximus mauris, aliquet eleifend ex. Proin porta lorem eu ante venenatis, non ullamcorper mauris venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin lorem enim, sodales a viverra commodo, commodo ac mi.\r\n\r\nMauris tellus sem, malesuada ut cursus et, molestie in nulla. Etiam erat enim, tincidunt sed risus ut, cursus volutpat odio. Cras eu enim mi. Nam ac lorem cursus, maximus elit at, efficitur lectus. Donec rhoncus sem venenatis tortor mollis, in interdum dolor porttitor. Duis molestie, lorem a iaculis tempor, massa diam convallis est, ac gravida purus lectus vel nibh. Maecenas finibus blandit placerat.', 'O que é?', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-05-02 10:39:51', '2016-05-02 13:39:51', '', 10, 'http://localhost/parquecapibaribe/2016/05/02/10-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-05-02 10:40:44', '2016-05-02 13:40:44', 'Sed dapibus metus sed orci sagittis, non mattis neque mattis. Mauris erat purus, consectetur sed magna sit amet, tincidunt mattis lectus. Sed consequat nisl a neque congue, sed porttitor mauris blandit. Aenean a ante tellus. Nunc eu sodales dolor. Duis et iaculis lectus. Nulla in ante urna. Vivamus convallis est sit amet aliquam vulputate. Nulla ultrices vel dolor rhoncus semper.\r\n\r\n<div class="embed-responsive embed-responsive-16by9 col-xs-12 col-sm-8 col-md-12"><iframe class="embed-responsive-item" src="http://www.youtube.com/embed/pzC3zThxC_s"></iframe></div>\r\n\r\nVivamus ut semper tortor. In id sem efficitur, pellentesque neque nec, sollicitudin eros. Maecenas nec maximus mauris, aliquet eleifend ex. Proin porta lorem eu ante venenatis, non ullamcorper mauris venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin lorem enim, sodales a viverra commodo, commodo ac mi.\r\n\r\nMauris tellus sem, malesuada ut cursus et, molestie in nulla. Etiam erat enim, tincidunt sed risus ut, cursus volutpat odio. Cras eu enim mi. Nam ac lorem cursus, maximus elit at, efficitur lectus. Donec rhoncus sem venenatis tortor mollis, in interdum dolor porttitor. Duis molestie, lorem a iaculis tempor, massa diam convallis est, ac gravida purus lectus vel nibh. Maecenas finibus blandit placerat.', 'O que é?', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-05-02 10:40:44', '2016-05-02 13:40:44', '', 10, 'http://localhost/parquecapibaribe/2016/05/02/10-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-05-02 10:41:09', '2016-05-02 13:41:09', 'Sed dapibus metus sed orci sagittis, non mattis neque mattis. Mauris erat purus, consectetur sed magna sit amet, tincidunt mattis lectus. Sed consequat nisl a neque congue, sed porttitor mauris blandit. Aenean a ante tellus. Nunc eu sodales dolor. Duis et iaculis lectus. Nulla in ante urna. Vivamus convallis est sit amet aliquam vulputate. Nulla ultrices vel dolor rhoncus semper.\r\n<div class="embed-responsive embed-responsive-16by9 col-xs-12 col-sm-8 col-md-12"><iframe class="embed-responsive-item" src="http://www.youtube.com/embed/pzC3zThxC_s" width="300" height="150"></iframe></div>\r\n&nbsp;\r\n\r\nVivamus ut semper tortor. In id sem efficitur, pellentesque neque nec, sollicitudin eros. Maecenas nec maximus mauris, aliquet eleifend ex. Proin porta lorem eu ante venenatis, non ullamcorper mauris venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin lorem enim, sodales a viverra commodo, commodo ac mi.\r\n\r\nMauris tellus sem, malesuada ut cursus et, molestie in nulla. Etiam erat enim, tincidunt sed risus ut, cursus volutpat odio. Cras eu enim mi. Nam ac lorem cursus, maximus elit at, efficitur lectus. Donec rhoncus sem venenatis tortor mollis, in interdum dolor porttitor. Duis molestie, lorem a iaculis tempor, massa diam convallis est, ac gravida purus lectus vel nibh. Maecenas finibus blandit placerat.', 'O que é?', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-05-02 10:41:09', '2016-05-02 13:41:09', '', 10, 'http://localhost/parquecapibaribe/2016/05/02/10-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-05-02 17:28:46', '2016-05-02 20:28:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc auctor purus in quam aliquam, nec commodo mauris feugiat. Pellentesque id arcu vulputate, tempor nulla nec, volutpat ex. Sed venenatis a elit quis malesuada. Nunc lobortis, arcu at rutrum gravida, massa mauris porta sapien, et iaculis tellus urna non lacus.', 'Participação Popular', '', 'publish', 'closed', 'closed', '', 'participacao-popular', '', '', '2016-05-02 17:28:46', '2016-05-02 20:28:46', '', 0, 'http://localhost/parquecapibaribe/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-05-02 17:28:46', '2016-05-02 20:28:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc auctor purus in quam aliquam, nec commodo mauris feugiat. Pellentesque id arcu vulputate, tempor nulla nec, volutpat ex. Sed venenatis a elit quis malesuada. Nunc lobortis, arcu at rutrum gravida, massa mauris porta sapien, et iaculis tellus urna non lacus.', 'Participação Popular', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-05-02 17:28:46', '2016-05-02 20:28:46', '', 16, 'http://localhost/parquecapibaribe/2016/05/02/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-05-02 17:29:18', '2016-05-02 20:29:18', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2016-05-02 17:31:24', '2016-05-02 20:31:24', '', 0, 'http://localhost/parquecapibaribe/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2016-05-02 17:31:24', '2016-05-02 20:31:24', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-05-02 17:31:24', '2016-05-02 20:31:24', '', 0, 'http://localhost/parquecapibaribe/?p=19', 3, 'nav_menu_item', '', 0),
(21, 1, '2016-05-05 15:06:37', '2016-05-05 18:06:37', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-05-05 15:06:37', '2016-05-05 18:06:37', '', 1, 'http://localhost/parquecapibaribe/2016/05/05/1-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-05-05 17:50:08', '2016-05-05 20:50:08', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!\n\n&nbsp;', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2016-05-05 17:50:08', '2016-05-05 20:50:08', '', 1, 'http://localhost/parquecapibaribe/2016/05/05/1-autosave-v1/', 0, 'revision', '', 0),
(23, 1, '2016-05-06 18:22:58', '2016-05-06 21:22:58', '', '1920x1200-data-wallpapers-20-737009', '', 'inherit', 'open', 'closed', '', '1920x1200-data-wallpapers-20-737009', '', '', '2016-05-06 18:22:58', '2016-05-06 21:22:58', '', 1, 'http://localhost/parquecapibaribe/wp-content/uploads/2016/04/1920x1200-data-wallpapers-20-737009.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-05-06 18:26:06', '2016-05-06 21:26:06', '', 'melk-landscape-architecture-urban-design-Hance-Park-8', '', 'inherit', 'open', 'closed', '', 'melk-landscape-architecture-urban-design-hance-park-8', '', '', '2016-05-06 18:26:06', '2016-05-06 21:26:06', '', 1, 'http://localhost/parquecapibaribe/wp-content/uploads/2016/04/melk-landscape-architecture-urban-design-Hance-Park-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-05-06 18:31:43', '2016-05-06 21:31:43', '', 'Harold Park Park Life hero_1', '', 'inherit', 'open', 'closed', '', 'harold-park-park-life-hero_1', '', '', '2016-05-06 18:31:43', '2016-05-06 21:31:43', '', 1, 'http://localhost/parquecapibaribe/wp-content/uploads/2016/04/Harold-Park-Park-Life-hero_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-05-06 18:33:00', '2016-05-06 21:33:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas et elit a arcu convallis placerat. Duis lacus elit, vulputate nec nibh ut, mattis hendrerit erat. Suspendisse imperdiet dolor ut felis semper rutrum. Proin lobortis dolor in erat fringilla congue. Maecenas fermentum justo ut ligula accumsan, a luctus risus blandit. Duis odio urna, mollis ac maximus scelerisque, condimentum quis massa. Maecenas pellentesque magna vel tellus euismod, vel lobortis augue ornare. Sed ac varius enim. Vivamus ullamcorper urna nulla. Duis enim est, ornare quis facilisis ut, tincidunt eu turpis. Duis tempus, quam eleifend aliquet scelerisque, risus tellus accumsan odio, et dictum nisl magna eget nisl. Maecenas interdum porta augue sit amet scelerisque. Nulla eget turpis eget enim lobortis suscipit.\r\n\r\nNunc porta consequat eros, et ultrices elit semper a. Donec orci mi, ultricies ornare arcu eget, euismod fermentum risus. Donec semper nulla a enim lobortis posuere. Sed sed ligula luctus, tempus ex non, pretium augue. Phasellus venenatis orci a massa aliquet, sit amet gravida diam condimentum. Maecenas ut venenatis orci. Mauris feugiat vulputate libero, et auctor leo dictum dictum. Aenean pulvinar cursus feugiat. Donec auctor nisi quis urna venenatis sagittis.', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-05-06 18:33:00', '2016-05-06 21:33:00', '', 1, 'http://localhost/parquecapibaribe/2016/05/06/1-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-08-26 14:45:10', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-08-26 14:45:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/parquecapibaribe/?p=27', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_termmeta`
--

CREATE TABLE `wp_pc_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_terms`
--

CREATE TABLE `wp_pc_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_terms`
--

INSERT INTO `wp_pc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_term_relationships`
--

CREATE TABLE `wp_pc_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_term_relationships`
--

INSERT INTO `wp_pc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(18, 2, 0),
(19, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_term_taxonomy`
--

CREATE TABLE `wp_pc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_term_taxonomy`
--

INSERT INTO `wp_pc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'Morbi accumsan enim vel blandit porttitor. Nullam ac ornare nibh. Sed commodo interdum tempus. Duis risus justo, ultrices vehicula iaculis et, bibendum et odio. Nam euismod aliquet bibendum. Proin finibus suscipit risus. Nunc facilisis, turpis vel eleifend blandit, risus orci aliquam ex, ac sagittis lorem metus finibus odio.', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_usermeta`
--

CREATE TABLE `wp_pc_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_usermeta`
--

INSERT INTO `wp_pc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'matheuslins'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_pc_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_pc_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:4:{s:64:"72b7245d8ad6d8f62f098f04f3ed35d7d65059559fcb5593926d279b12d6fe64";a:4:{s:10:"expiration";i:1472406309;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1472233509;}s:64:"3dd4c8461a679cd341aaaa3e6800ba925473fbdbaca9831df4a2e18423b80afc";a:4:{s:10:"expiration";i:1472406376;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1472233576;}s:64:"53e945cabc54e58bc536e7a582df99c908f4d0129f2b9a98dc82ba57618b7301";a:4:{s:10:"expiration";i:1473443182;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1472233582;}s:64:"8f1ef92315e47a424f6a368126dd294f8bbda61a1a229373e3ff55d2431741dd";a:4:{s:10:"expiration";i:1472407366;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1472234566;}}'),
(15, 1, 'wp_pc_dashboard_quick_press_last_post_id', '27'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_pc_user-settings', 'post_dfw=off&hidetb=1&editor=tinymce&libraryContent=browse&mfold=o'),
(20, 1, 'wp_pc_user-settings-time', '1462839758'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:6:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_pc_users`
--

CREATE TABLE `wp_pc_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `wp_pc_users`
--

INSERT INTO `wp_pc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B7QORHV96F7v2WDmEr5x3e1CA2Ew6D/', 'admin', 'contato@badoque.com', '', '2016-04-19 14:02:16', '', 0, 'admin');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `wp_pc_bdq_trs_tweet`
--
ALTER TABLE `wp_pc_bdq_trs_tweet`
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `wp_pc_commentmeta`
--
ALTER TABLE `wp_pc_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_pc_comments`
--
ALTER TABLE `wp_pc_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_pc_links`
--
ALTER TABLE `wp_pc_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_pc_options`
--
ALTER TABLE `wp_pc_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Índices de tabela `wp_pc_postmeta`
--
ALTER TABLE `wp_pc_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_pc_posts`
--
ALTER TABLE `wp_pc_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_pc_termmeta`
--
ALTER TABLE `wp_pc_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_pc_terms`
--
ALTER TABLE `wp_pc_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_pc_term_relationships`
--
ALTER TABLE `wp_pc_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_pc_term_taxonomy`
--
ALTER TABLE `wp_pc_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_pc_usermeta`
--
ALTER TABLE `wp_pc_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_pc_users`
--
ALTER TABLE `wp_pc_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `wp_pc_commentmeta`
--
ALTER TABLE `wp_pc_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_pc_comments`
--
ALTER TABLE `wp_pc_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `wp_pc_links`
--
ALTER TABLE `wp_pc_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_pc_options`
--
ALTER TABLE `wp_pc_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;
--
-- AUTO_INCREMENT de tabela `wp_pc_postmeta`
--
ALTER TABLE `wp_pc_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT de tabela `wp_pc_posts`
--
ALTER TABLE `wp_pc_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de tabela `wp_pc_termmeta`
--
ALTER TABLE `wp_pc_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `wp_pc_terms`
--
ALTER TABLE `wp_pc_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `wp_pc_term_taxonomy`
--
ALTER TABLE `wp_pc_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `wp_pc_usermeta`
--
ALTER TABLE `wp_pc_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de tabela `wp_pc_users`
--
ALTER TABLE `wp_pc_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
