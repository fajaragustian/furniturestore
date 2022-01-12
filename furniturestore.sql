-- Adminer 4.8.1 MySQL 5.7.33 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `bwastore` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bwastore`;

CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `carts` (`id`, `products_id`, `users_id`, `created_at`, `updated_at`) VALUES
(1,	3,	1,	'2022-01-10 23:48:38',	'2022-01-10 23:48:38');

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `photo`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'Chair',	'assets/category/tbbyJ0ibmACU6j1vj3I5TiFAmw8JaePS4WFtyZ9n.svg',	'chair',	NULL,	'2022-01-10 22:22:06',	'2022-01-10 22:22:06'),
(2,	'Desk',	'assets/category/JEuMAxEmO7Xj3cu5r64tF3HgsA5G1z5hk7VFLAze.svg',	'desk',	NULL,	'2022-01-10 22:23:13',	'2022-01-10 22:23:13'),
(3,	'Buffet',	'assets/category/ZF7jbtIVNAUMvqNwPiuE9Zkl0o6nTmyv7KnJFX1m.svg',	'buffet',	NULL,	'2022-01-10 22:23:21',	'2022-01-10 22:23:21'),
(4,	'Wardrobe',	'assets/category/sKMWcvozcpHbJQ3GVqESfy2V18VCf6zox2xCYxWt.svg',	'wardrobe',	NULL,	'2022-01-10 22:23:35',	'2022-01-10 22:23:35'),
(5,	'Sofa',	'assets/category/9keKKBtM8YdOdPcCHfYLBIG1PEzD7RyoLOzAZkkw.svg',	'sofa',	NULL,	'2022-01-10 22:23:46',	'2022-01-10 22:23:46'),
(6,	'Badroom',	'assets/category/ypIN6tTgBxQsc0o3RNPsDLXtXyKzZzbW9hIobEm1.svg',	'badroom',	NULL,	'2022-01-10 22:24:15',	'2022-01-10 22:24:15');

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `indoregion_districts` (
  `id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regency_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `indoregion_districts_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `indoregion_provinces` (
  `id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `indoregion_provinces_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `indoregion_regencies` (
  `id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `indoregion_regencies_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `indoregion_villages` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `indoregion_villages_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(80,	'2014_10_12_000000_create_users_table',	1),
(81,	'2014_10_12_100000_create_password_resets_table',	1),
(82,	'2017_05_02_140432_create_provinces_tables',	1),
(83,	'2017_05_02_140444_create_regencies_tables',	1),
(84,	'2017_05_02_140454_create_villages_tables',	1),
(85,	'2017_05_02_142019_create_districts_tables',	1),
(86,	'2019_08_19_000000_create_failed_jobs_table',	1),
(87,	'2020_06_16_063015_create_categories_table',	1),
(88,	'2020_06_16_063622_create_products_table',	1),
(89,	'2020_06_16_064045_create_product_galleries_table',	1),
(90,	'2020_06_16_064403_create_carts_table',	1),
(91,	'2020_06_16_065305_create_transactions_table',	1),
(92,	'2020_06_16_065324_create_transaction_details_table',	1),
(93,	'2020_06_30_093721_delete_resi_field_at_transactions_table',	1),
(94,	'2020_06_30_094658_add_resi_and_shipping_status_to_transaction_details_table',	1),
(95,	'2020_06_30_181003_add_code_to_transactions_table',	1),
(96,	'2020_06_30_181055_add_code_to_transaction_details_table',	1),
(97,	'2020_06_30_181504_add_slug_to_products_table',	1),
(98,	'2020_06_30_182106_add_roles_field_to_users_table',	1),
(99,	'2020_07_13_083337_change_nullable_field_at_users_table',	1);

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `users_id`, `categories_id`, `price`, `description`, `deleted_at`, `created_at`, `updated_at`, `slug`) VALUES
(1,	'Kursi Minimalis Abu Abu',	4,	1,	999000,	'<p>Informa menyediakan berbagai pilihan furnitur untuk kebutuhan rumah tangga hingga komersil. Salah satunya adalah Dali Kursi yang hadir dengan desain industrial. Dibuat menggunakan material berkualitas dengan hasil konstruksi yang kokoh, Dali Kursi akan memberikan kenyamanan bagi Anda ketika duduk. Cocok digunakan untuk kebutuhan pribadi hingga tempat umum seperti kafe, working space, dan lainnya.</p>\r\n\r\n<ul>\r\n	<li>Desain industrial</li>\r\n	<li>Cocok digunakan di dalam ruangan</li>\r\n	<li>Tinggi dudukan : 45 cm</li>\r\n	<li>Material : polypropylene, kayu</li>\r\n	<li>Dimensi produk : 55 x 46 x 81.5 cm&nbsp;</li>\r\n	<li>Kursi Dapat Dilipat : tidak</li>\r\n	<li>Kursi Dapat Diputar : tidak</li>\r\n	<li>Kursi Dilengkapi Bantalan : tidak</li>\r\n</ul>',	NULL,	'2022-01-10 23:29:57',	'2022-01-11 01:28:07',	'kursi-minimalis-abu-abu'),
(2,	'Kursi Minimalis - Hitam',	4,	1,	959000,	'<p>Untuk ruang makan indoor mau pun outdoor, Waffle Dining Chair ini tetap cocok untuk lengkapi meja makanmu.Desain kursi makan minimalis yang terbuat dari metal ini terbilang kokoh namun tetap ringan dan mudah untuk dipindahkan ke ruangan manapun.</p>\r\n\r\n<h3>Detail Produk &amp; Spesifikasi</h3>\r\n\r\n<ul>\r\n	<li>Panjang :52 cm</li>\r\n	<li>Lebar :55.5 cm</li>\r\n	<li>Tinggi :85 cm</li>\r\n	<li>Kedalaman Dudukan :45 cm</li>\r\n	<li>Tebal Dudukan :0.5 cm</li>\r\n	<li>Tinggi Sandaran dari Dudukan :43 cm</li>\r\n	<li>Tinggi Dudukan dari Lantai :45 cm</li>\r\n	<li><em>Produk ini terbuat dari material alami. Barang yang akan Anda terima mungkin akan berbeda serat dan warnanya.</em></li>\r\n</ul>',	NULL,	'2022-01-10 23:34:02',	'2022-01-11 01:28:56',	'kursi-minimalis-hitam'),
(3,	'Meja Listrik Pintar',	4,	2,	2599000,	'<h1>Detail - Spesifikasi</h1>\r\n\r\n<ul>\r\n	<li>frame length : 1100-1600 mm</li>\r\n	<li>frame width : 575 mm</li>\r\n	<li>foot length : 650 mm</li>\r\n	<li>stroke : 450mm</li>\r\n	<li>height range : 70cm-115cm</li>\r\n	<li>stages : 2</li>\r\n	<li>column size : 80*50mm</li>\r\n	<li>column shape : upward without hole</li>\r\n	<li>side plate shape : without hole</li>\r\n	<li>desk foot : beveled</li>\r\n	<li>speed : 20 mm/s</li>\r\n	<li>duty cycle : 5min on;18min off</li>\r\n	<li>power wire : EU standard</li>\r\n	<li>anti-collision</li>\r\n	<li>with over heat protection</li>\r\n	<li>with memory function</li>\r\n	<li>with 3 memory preset</li>\r\n	<li>warranty : 1 year</li>\r\n</ul>',	NULL,	'2022-01-10 23:47:38',	'2022-01-11 01:29:43',	'meja-listrik-pintar'),
(4,	'NEW ONE OFFICE DESK',	4,	2,	1060000,	'<p>Modular desking system, designed with originality and durability to meet the basic needs of any office. Each item of HighPoint One is designed to have flexibility in making configurations that fit the office.</p>\r\n\r\n<ul>\r\n	<li>Material : Particle Board density 680 kg/m3</li>\r\n	<li>Board thickness : Top Table 25 mm Modesty Panel 18 mm Table Leg 25 mm / 18 mm</li>\r\n	<li>Top table profile: Half Rounded ( Bull nose profile )</li>\r\n	<li>Profiling process : Soft Forming</li>\r\n	<li>Laminate material : Decorative Paper Melamine Coated</li>\r\n	<li>Edging material : Plastic Molding</li>\r\n	<li>Handle material : Aluminium profile</li>\r\n	<li>Color : Beech and Black</li>\r\n</ul>',	NULL,	'2022-01-10 23:52:22',	'2022-01-11 01:30:39',	'new-one-office-desk'),
(5,	'Meja Buffet Serbaguna 2 Pintu 3 Laci',	4,	3,	690000,	'<p>Deskripsi Meja Buffet Serbaguna Minimalis<br />\r\nLemari yang didesain elegan dengan banyak ruangan untuk menyimpan berbagai macam aksesoris. Terbuat dari bahan particle board berkualitas tinggi yang kuat dan tahan lama. Ideal dijadikan tambahan dekorasi pada rumah Anda.</p>\r\n\r\n<ul>\r\n	<li>Materi : Particel Board</li>\r\n	<li>System : Knock-Down</li>\r\n	<li>Warna : Sonoma oak dan American Walnut=</li>\r\n	<li>Ukuran :</li>\r\n	<li>panjang 120 cm</li>\r\n	<li>lebar 38.2 cm</li>\r\n	<li>tinggi 75 cm<br />\r\n	&nbsp;</li>\r\n</ul>',	NULL,	'2022-01-10 23:55:50',	'2022-01-11 01:31:13',	'meja-buffet-serbaguna-2-pintu-3-laci'),
(6,	'Dekoruma Kanou Buffet - Lemari Kabinet Dapur 2 Pintu 3 Laci Susun',	4,	3,	2600000,	'<p>Furniture dengan style Japandi yang #multifungsi dan #spacesaving siap melengkapi #RumahImpianJadiKenyataan. Kanou Kabinet Dapur dari seri Kanou dilengkapi bagian tengahnya terdapat rak dan laci yang bisa difungsikan sebagai tempat penyimpanan peralatan makan anda. kabinet multifungsi ini cocok diletakkan di ruang makan untuk menyimpan piring dan gelas. Produk ini akan dikirimkan dalam bentuk flat pack Solid Wood Leg, PB Board, Paper Lamination. Yuk mulai #satusudutdulu aja!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Brand : Heim Studio</li>\r\n	<li>Warna : Putih</li>\r\n	<li>Material utama : Solid Wood Leg, PB Board, Paper Lamination</li>\r\n	<li>Ukuran produk : 159.8 x 40 x 80cm</li>\r\n	<li>Ukuran kemasan : 172.5 x 59.5 x 29cm</li>\r\n	<li>Berat produk : 61 kg</li>\r\n	<li>Berat volumetrik : 74,5 kg</li>\r\n</ul>',	NULL,	'2022-01-10 23:59:11',	'2022-01-11 01:32:07',	'dekoruma-kanou-buffet-lemari-kabinet-dapur-2-pintu-3-laci-susun'),
(7,	'Offo Living - Lemari Pakaian 3 pintu',	4,	4,	945000,	'<p>Lemari 3 pintu minimalis, sangat cocok untuk menghiasi kamar anda, dengan warna kayu yang soft dan variasi putih ditengahnya akan menambah cantik suasana di kamar.<br />\r\n𝗞𝗲𝘂𝗻𝗴𝗴𝘂𝗹𝗮𝗻 𝗽𝗿𝗼𝗱𝘂𝗸:<br />\r\n✓ Material produk kokoh.<br />\r\n✓ Warna produk tidak mudah pudar.<br />\r\n✓ Menggunakan material kualitas terbaik sehingga tidak mudah keropos dan tidak mudah berjamur.<br />\r\n𝗦𝗽𝗲𝘀𝗶𝗳𝗶𝗸𝗮𝘀𝗶 𝗽𝗿𝗼𝗱𝘂𝗸:<br />\r\n✓ Bahan: Particle Board<br />\r\n✓ Tipe furniture: lemari pakaian<br />\r\n✓ Ukuran : 120x42x180 cm</p>',	NULL,	'2022-01-11 00:01:55',	'2022-01-11 01:32:46',	'offo-living-lemari-pakaian-3-pintu'),
(8,	'Lemari Pakaian Lemari Baju 3 Pintu',	4,	4,	1785000,	'<p>Dengan material Particle Board dengan ketebalan 15 mm kombinasi 12 mm dan dilaminsi paper pintu dilaminisi PO White, bikin lemari ini cocok banget untuk kamu yang suka warna-warna putih!</p>\r\n\r\n<p>𝗞𝗲𝘂𝗻𝗴𝗴𝘂𝗹𝗮𝗻 𝗽𝗿𝗼𝗱𝘂𝗸<br />\r\n&bull; Ruang penyimpan yang luas.<br />\r\n&bull; Material produk kokoh.<br />\r\n&bull; Petunjuk perakitan yang mudah dipahami.<br />\r\n&bull; Warna produk tidak mudah pudar.<br />\r\n&bull; Menggunakan material kualitas terbaik sehingga tidak mudah keropos dan tidak mudah berjamur.</p>\r\n\r\n<p>𝗦𝗽𝗲𝘀𝗶𝗳𝗶𝗸𝗮𝘀𝗶 𝗽𝗿𝗼𝗱𝘂𝗸<br />\r\n&bull; Bahan: Particle Board<br />\r\n&bull; Tipe furnitur: lemari buka tutup<br />\r\n&bull; Bagian memiliki ketebalan 15 mm dan 12 mm<br />\r\n&bull; Ukuran : P 120 x L 49,5 x T 199 cm<br />\r\n&bull; Laminasi: PO White</p>',	NULL,	'2022-01-11 00:04:32',	'2022-01-11 01:34:52',	'lemari-pakaian-lemari-baju-3-pintu'),
(9,	'Sofa Rotan Sintetis Napolly 3',	4,	5,	1450000,	'<p>Sofa Rotan Sintetis Napolly 3 Dudukan<br />\r\nTipe : Softan 181-A3<br />\r\nWarna: CKMR (Coklat Maroon) &amp; JATI<br />\r\nUkuran: 190 x 65 x 75 cm<br />\r\nBahan: Plastik Polypropylene<br />\r\nBerat : 17kg<br />\r\nPengiriman : Pulau Jawa (Free Ongkir)<br />\r\nJabodetabek : 7 hari.<br />\r\nLuar Jabodetabek : 12 hari (Harap konfirmasi terlebih dahulu )<br />\r\nPengiriman By Seller (Pihak Penjual)<br />\r\nKelebihan produk :<br />\r\n+ Anti Rayap, anti jamur, anti air<br />\r\n+ Kuat menahan beban 750 kg<br />\r\n+ Mudah dibawa dan disimpan<br />\r\n+ Motif Rattan Tekstur Urat Kayu<br />\r\n+ Sangat cocok untuk Indoor maupun Outdoor<br />\r\n+ Made in Indonesia<br />\r\n+ Garansi 5 th (Syarat dan ketentuan berlaku)<br />\r\nKondisi : Tidak Terakit (Perakitan : Knock down)<br />\r\nIsi :1 Dus = 1 Unit</p>',	NULL,	'2022-01-11 00:07:11',	'2022-01-11 01:35:16',	'sofa-rotan-sintetis-napolly-3'),
(10,	'Sofa Rotan Sintetis Napolly 2 Dudukan',	4,	5,	1100000,	'<p>Sofa Rotan Sintetis Napolly 2 Dudukan<br />\r\nTipe : Softan 181-A2<br />\r\nWarna: CKMR (Coklat Maroon) &amp; JATI<br />\r\nUkuran: 131 x 65 x 75 cm<br />\r\nBahan: Plastik Polypropylene<br />\r\nBerat : 12kg<br />\r\nPengiriman : Pulau Jawa (Free Ongkir)<br />\r\nJabodetabek : 7 hari.<br />\r\nLuar Jabodetabek : 12 hari ( Harap konfirmasi terlebih dahulu )<br />\r\nPengiriman By Seller (Pihak Penjual)<br />\r\nKelebihan produk :<br />\r\n+ Anti Rayap, anti jamur, anti air<br />\r\n+ Kuat menahan beban 500kg<br />\r\n+ Mudah dibawa dan disimpan<br />\r\n+ Motif Rattan Tekstur Urat Kayu<br />\r\n+ Sangat cocok untuk Indoor maupun Outdoor<br />\r\n+ Made in Indonesia<br />\r\n+ Garansi 5 th (Syarat dan ketentuan berlaku)</p>',	NULL,	'2022-01-11 00:09:54',	'2022-01-11 01:37:01',	'sofa-rotan-sintetis-napolly-2-dudukan');

CREATE TABLE `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_galleries` (`id`, `photos`, `products_id`, `created_at`, `updated_at`) VALUES
(38,	'assets/product/eIfRSvpav7xIKa56VLzTEClzmhZRskmvISbALuWG.jpg',	1,	'2022-01-11 01:27:45',	'2022-01-11 01:27:45'),
(39,	'assets/product/vRyNlKyAqsuV3MvyzhoGjLZBQ7ySuGf8W4lh0CVR.jpg',	1,	'2022-01-11 01:27:52',	'2022-01-11 01:27:52'),
(40,	'assets/product/kwctFh31IYZl5biHIn7xdCgP1tqolM8xJnuoSsUQ.jpg',	1,	'2022-01-11 01:28:03',	'2022-01-11 01:28:03'),
(41,	'assets/product/wgvrBt6V5qFtJCo53oVcv6WSa6JJOW3hLrQyLahe.jpg',	2,	'2022-01-11 01:28:44',	'2022-01-11 01:28:44'),
(42,	'assets/product/pcwU0W5n5jYDPrBIjp0X71ezUbh3yAKLN6bR99r3.jpg',	2,	'2022-01-11 01:28:53',	'2022-01-11 01:28:53'),
(43,	'assets/product/gjSJ6lxFxdrupFpmVfy7jA0GsK6ojv7rrUwU0CsN.webp',	3,	'2022-01-11 01:29:18',	'2022-01-11 01:29:18'),
(44,	'assets/product/aCCXc6OEg0TIxeaXwiA64dKRNkalVg6OdsKc1WZy.webp',	3,	'2022-01-11 01:29:28',	'2022-01-11 01:29:28'),
(45,	'assets/product/bcKZFJztZ26ZVON3MenL0ynQCf67SWQctZuNNEq3.webp',	3,	'2022-01-11 01:29:36',	'2022-01-11 01:29:36'),
(46,	'assets/product/XFx2ZrfP420AQ2FO8hD8gdcBqWyTrakzYAUiQMjd.jpg',	4,	'2022-01-11 01:30:16',	'2022-01-11 01:30:16'),
(47,	'assets/product/sxt7633VTcSR1YYN1p7LyKks4ipTB82Sj2WBb5Tt.jpg',	4,	'2022-01-11 01:30:23',	'2022-01-11 01:30:23'),
(48,	'assets/product/no3EdxGFvTIFwWqC9PPSFvHq8oIzjGaYwYEanPZq.jpg',	4,	'2022-01-11 01:30:35',	'2022-01-11 01:30:35'),
(49,	'assets/product/syC7X9pR7Id354AJBu9SfSgjwBxn9NykNwxl4zMY.jpg',	5,	'2022-01-11 01:31:00',	'2022-01-11 01:31:00'),
(50,	'assets/product/x2aTbJ5VSxFaHkyRoTkVs0gekhFPZNU3ShzD3YKY.jpg',	5,	'2022-01-11 01:31:09',	'2022-01-11 01:31:09'),
(51,	'assets/product/qnY3nw1IaUya9cxRZKFTcb4CEzkzsd9OWOpyOIEw.jpg',	6,	'2022-01-11 01:31:48',	'2022-01-11 01:31:48'),
(52,	'assets/product/iXvRHZHCz2EBs99Yc4LA1ogF7e7EVbhYCE039NYJ.jpg',	6,	'2022-01-11 01:31:58',	'2022-01-11 01:31:58'),
(53,	'assets/product/lJCNBLbB6jrmDCM0rJyaCsko7lFQdgKEPVYgHiBS.jpg',	6,	'2022-01-11 01:32:04',	'2022-01-11 01:32:04'),
(54,	'assets/product/LVsVKtcdlwhSO6ZoC5AgpHFkd3lG2vT0UIXFls8Q.jpg',	7,	'2022-01-11 01:32:36',	'2022-01-11 01:32:36'),
(55,	'assets/product/8qrWaGozwdq8rWVTYhtgDzSbGuYvqELZB2eR3hNJ.jpg',	7,	'2022-01-11 01:32:43',	'2022-01-11 01:32:43'),
(56,	'assets/product/ElovjPusFcwY33tXDR7t5pycdMWT5SZoymRdSLWN.jpg',	8,	'2022-01-11 01:34:43',	'2022-01-11 01:34:43'),
(57,	'assets/product/hCCpitcvxmESiWhBXie5WJCP3e1dky3I1fDElvLo.jpg',	8,	'2022-01-11 01:34:49',	'2022-01-11 01:34:49'),
(58,	'assets/product/1pMAL1gE9a57kVClWrv0byXkYFPTyssesUiQVSF2.jpg',	9,	'2022-01-11 01:35:08',	'2022-01-11 01:35:08'),
(59,	'assets/product/8LAHHfFepCszPD4CqK1PMHVJTlinnbvZgFwuHBzW.jpg',	9,	'2022-01-11 01:35:13',	'2022-01-11 01:35:13'),
(60,	'assets/product/oLSgGF70PX4vD3W0oQltSLuQLxDqtORWJAcJelSe.jpg',	10,	'2022-01-11 01:35:42',	'2022-01-11 01:35:42'),
(61,	'assets/product/46yyEJLJELGcJJg3Qnor1u3Ww7QXBaC9p58PqaGW.jpg',	10,	'2022-01-11 01:36:59',	'2022-01-11 01:36:59');

CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `inscurance_price` int(11) NOT NULL,
  `shipping_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `transaction_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_one` longtext COLLATE utf8mb4_unicode_ci,
  `address_two` longtext COLLATE utf8mb4_unicode_ci,
  `provinces_id` int(11) DEFAULT NULL,
  `regencies_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `store_status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address_one`, `address_two`, `provinces_id`, `regencies_id`, `zip_code`, `country`, `phone_number`, `store_name`, `categories_id`, `store_status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(4,	'admin',	'admin@gmail.com',	NULL,	'$2y$10$ShFTZX0gLm4BTKrqm1hygOcjWuknP8aRrle51eSZ0RqQewy2bBgD.',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'Admin',	NULL,	0,	NULL,	NULL,	'2022-01-11 00:44:44',	'2022-01-11 01:32:56',	'ADMIN'),
(5,	'FurnitureShop',	'FurnitureShop@gmail.com',	NULL,	'$2y$10$e3EuWVQLfGz1RdoNjYjtZO4RhtAFAisN9DBt4qhT/47uHfqOwrx6O',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	NULL,	1,	NULL,	NULL,	'2022-01-11 00:56:13',	'2022-01-11 00:56:13',	'ADMIN');

-- 2022-01-12 03:42:28
