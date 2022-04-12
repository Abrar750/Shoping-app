-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 01:42 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$eysJJa8QjXPcHFT7WChJNh$Q4qeXQ5M1kygQCFb1neC79/EQF2XeGBPwkJ9Zl8u0nA=', '2022-04-11 08:34:50.743885', 1, 'Abrar', '', '', 'abrar123@gmail.com', 1, 1, '2022-04-09 05:23:51.550320');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `desc`) VALUES
(1, 'Abrar', 'abrarsiddiqui123@gmail.com', 'Resume', 'Hi my name is Abrar'),
(2, 'Abrar', 'biography75050@gmail.com', 'Resume', 'Hi my name is Abrar Siddiqui i from saharanpur and my qualification graduated in BCA by CCSU'),
(3, 'Abrar', 'biography75050@gmail.com', 'Subject', 'Hi my name Abrar'),
(4, 'Abrar', 'siddiquiabrar620@gmail.com', 'Subject', 'My name is Abrar');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-09 05:25:02.019105', '1', 'WOMAN CLOATHS', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-04-09 05:25:06.094858', '2', 'MAN_CLOATHS', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-04-09 05:25:10.515595', '3', 'BOYS CLOATHS', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-04-09 05:25:17.191196', '4', 'MAN_CLOATHS', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-04-09 05:25:32.997250', '4', 'MAN_CLOATHS', 3, '', 7, 1),
(6, '2022-04-09 05:25:41.511741', '5', 'GIRLS CLOATHS', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-04-09 05:40:44.994684', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2022-04-09 07:04:15.921152', '5', 'GIRLS', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(9, '2022-04-09 07:04:24.121664', '3', 'BOYS', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(10, '2022-04-09 07:04:32.218181', '2', 'MAN', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(11, '2022-04-09 07:04:39.474741', '1', 'WOMAN', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(12, '2022-04-09 07:04:50.349092', '6', 'BOOKS', 1, '[{\"added\": {}}]', 7, 1),
(13, '2022-04-09 07:11:48.819056', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 9, 1),
(14, '2022-04-09 07:21:13.337281', '3', 'Product object (3)', 1, '[{\"added\": {}}]', 9, 1),
(15, '2022-04-09 07:21:49.936089', '4', 'Product object (4)', 1, '[{\"added\": {}}]', 9, 1),
(16, '2022-04-09 07:22:20.418268', '5', 'Product object (5)', 1, '[{\"added\": {}}]', 9, 1),
(17, '2022-04-11 08:40:11.391383', '2', 'Order object (2)', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'store', 'category'),
(10, 'store', 'contact'),
(8, 'store', 'customer'),
(11, 'store', 'order'),
(9, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-09 05:22:02.596837'),
(2, 'auth', '0001_initial', '2022-04-09 05:22:18.892868'),
(3, 'admin', '0001_initial', '2022-04-09 05:22:23.877599'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-09 05:22:23.992559'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-09 05:22:24.313539'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-09 05:22:26.338419'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-09 05:22:27.942355'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-09 05:22:29.921207'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-09 05:22:30.034198'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-09 05:22:31.178161'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-09 05:22:31.289154'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-09 05:22:31.406116'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-09 05:22:33.271004'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-09 05:22:35.274916'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-09 05:22:37.521760'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-09 05:22:37.651741'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-09 05:22:39.715619'),
(18, 'sessions', '0001_initial', '2022-04-09 05:22:40.976543'),
(19, 'store', '0001_initial', '2022-04-09 05:22:44.639323'),
(20, 'store', '0002_alter_customer_phone', '2022-04-09 05:32:46.863291'),
(21, 'store', '0003_contact', '2022-04-10 06:06:38.900536'),
(22, 'store', '0004_order', '2022-04-11 08:33:20.841381'),
(23, 'store', '0005_order_address_order_phone', '2022-04-11 08:44:12.224737'),
(24, 'store', '0006_alter_order_address_alter_order_phone', '2022-04-11 08:45:14.800932');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1tn2xq698ecsvmtla1zpdbyaz6t4k143', '.eJxVj70OgzAMhN8lM0IJSQhhqrr3GZBxAqTlR01gQrx7TcXQLtbp7vPJ3lkD2zo0W_KxCY7VTLDs12sBX34-A_eEuV9yXOY1hjY_kfxKU_5YnB_vF_tXMEAaaNtwp6AqlXFoOkSujVJOGeSt5Rp1Z9FLbXVlrVAkiOGVKUqj_Gl6SaV-gjBSFbQRYgrOhfcWRCFv_RnQYRNBM0yeGFIIcWX1Tg_VMmOK1SJj8js1zeP4AN8mTXo:1ndnFZ:GqsYDdDtiT6tVsEVeKucn4xRGmjLtJdU4CXZfhsGZh4', '2022-04-25 06:10:09.699254'),
('6z93qdw99hyympf2n7o8f7nim38wup8v', '.eJxVjDsOgzAQRO-ydWQZsmYxZfqcAZn1EsgHS7apEHePkWjoRjNv3gbsYoZu22_QuzVP_Zok9rOHDiq4dIPjjyzH4N9ueQXFYclxHtSBqHNN6hm8fB8nexFMLk3lTdqjaxskzzQya0OIHon1YLVhM1qWu7GmtbbCEgqjW6obQjlKuRcprymHn0To6v0PKVk-gw:1ndqVd:X_5uIF1wbNS-83yOgp-7jDAGp_Bxux-uib76yxpS1Pc', '2022-04-25 09:38:57.874941'),
('8nwezwqlwfdbhfj173kuzrpg9oyykegp', 'eyJjYXJ0Ijp7fSwibmFtZSI6IlNlaHJhenMiLCJjdXN0b21lciI6NX0:1ndnnq:x1hX6B0WiKCnQpYbNFtbEGVUnZaNXWRcosoCMt3KJMA', '2022-04-25 06:45:34.904019'),
('9g8z1s0zp7hxoiqmka45i4rk03yd71rl', 'eyJjYXJ0Ijp7IjEiOjF9fQ:1ndRrY:MLetxr3fDC496E9KTFYx3HcbRh2KMH6JCOIKs9AAMwM', '2022-04-24 07:19:56.916448'),
('naei5jqkckhvocurg58q5cly9gy9qarn', 'eyJjYXJ0Ijp7IjIiOjF9fQ:1ndRrs:Z2Cy3QGmjgbAwUufcStet84krucCPn6s2-lODu2HEl8', '2022-04-24 07:20:16.964171');

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `name`) VALUES
(1, 'WOMAN'),
(2, 'MAN'),
(3, 'BOYS'),
(5, 'GIRLS'),
(6, 'BOOKS');

-- --------------------------------------------------------

--
-- Table structure for table `store_customer`
--

CREATE TABLE `store_customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_customer`
--

INSERT INTO `store_customer` (`id`, `name`, `email`, `password`, `phone`, `gender`) VALUES
(1, 'Abrar Siddiqui', 'abrarsiddiqui123@gmail.com', 'pbkdf2_sha256$320000$LdA9KC71bKNtfqN7gLsbju$jAoeIGURCkPv/HxHhVnRc5RKYBEIKkhSm53YW5D1wXw=', 2147483647, 'male'),
(2, 'Sehrazs Maliks', 'sehraz123@gmail.com', 'pbkdf2_sha256$320000$0lVeblUzLYe0Ozri12wzXU$V3MBAJ7jznb3tKwT/bnZfcuKjvwBMkl1Eb/lVFwG4sg=', 2147483647, 'female'),
(3, 'Rehman', 'rehman123@gmail.com', 'pbkdf2_sha256$320000$21alV6swecbcyv5NoDtqvn$CgVxxFkfZISon3ccD0foxTRJf1FZhlCYLr2e5R1jy1M=', 2147483647, 'male'),
(4, 'Bhavana Tyagi', 'tyagi123@gmail.com', 'pbkdf2_sha256$320000$fvurnqE2WbvTDmlNePZjAN$fOHpYJ8QER4CZf7JDSeUvIdduOmWhnff7XCV8srnNbk=', 2147483647, 'female'),
(5, 'Sehrazs', 'sehraz1234@gmail.com', 'pbkdf2_sha256$320000$IPdu5DJAzZXC18xmFEJwHp$EJl4vNFo2ZsSlVJetWv95mCvqP5Xrba+BcWi/jop+g4=', 2147483647, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `quantity`, `price`, `date`, `customer_id`, `product_id`, `address`, `phone`) VALUES
(2, 2, 120, '2022-04-11', 1, 2, '', '0'),
(3, 1, 120, '2022-04-11', 2, 1, 'Vill Kurali, post Kota, distt Saharanpur(U.P.)', '7505062346'),
(4, 3, 145, '2022-04-11', 2, 2, 'Vill Kurali, post Kota, distt Saharanpur(U.P.)', '7505062346'),
(5, 2, 145, '2022-04-11', 2, 3, 'Vill Kurali, post Kota, distt Saharanpur(U.P.)', '7505062346'),
(6, 1, 150, '2022-04-11', 2, 4, 'Vill Kurali, post Kota, distt Saharanpur(U.P.)', '7505062346');

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `images` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `name`, `price`, `desc`, `images`, `category_id`) VALUES
(1, 'T_SHIRT', 120, 'This is very nice', 'static/img/m2-removebg-preview_WoiruY9.png', 2),
(2, 'Paints', 145, 'This is very nice', 'static/img/img-removebg-preview.png', 3),
(3, 'PHIROKH', 145, 'This is very nice', 'static/img/g8-removebg-preview.png', 5),
(4, 'PHIROKH 2', 150, 'This is very nice', 'static/img/g1-removebg-preview.png', 5),
(5, 'Jecket', 170, 'This is very nice', 'static/img/img9-removebg-preview.png', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`),
  ADD KEY `store_order_product_id_11796f0f_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_customer`
--
ALTER TABLE `store_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  ADD CONSTRAINT `store_order_product_id_11796f0f_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
