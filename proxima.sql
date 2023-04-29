-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2021 at 07:29 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proxima`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_apply_emp`
--

CREATE TABLE `accounts_apply_emp` (
  `id` int(11) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `efname` varchar(100) NOT NULL,
  `elname` varchar(100) NOT NULL,
  `eemail` varchar(50) NOT NULL,
  `econtact` varchar(12) NOT NULL,
  `eparadd` varchar(200) NOT NULL,
  `epreadd` varchar(200) NOT NULL,
  `eoption` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_apply_emp`
--

INSERT INTO `accounts_apply_emp` (`id`, `ename`, `efname`, `elname`, `eemail`, `econtact`, `eparadd`, `epreadd`, `eoption`) VALUES
(2, 'Shafi Partho', 'MY', 'GOSH', '2018-1-60-219@std.ewubd.edu', '01682860562', 'uouououo', 'uououou', 'Logo Design'),
(5, 'papapa', 'MY', 'GOSHh', 'smpartho02@gmail.com', '01682860562', 'thrtjrt', 'uououou', 'Photos and Videos Editing'),
(6, 'papapa', 'MY', 'GOSHh', 'smpartho02@gmail.com', '01682860562', 'thrtjrt', 'uououou', 'Photos and Videos Editing'),
(7, 'papapa', 'MY', 'name', '2018-1-60-219@std.ewubd.edu', '01682860562', 'uouououo', 'uououou', 'Business Card Design'),
(8, 'papapa', 'MY', 'GOSH', '2018-1-60-219@std.ewubd.edu', '01682860562', 'uouououo', 'uououou', 'Business Card'),
(9, 'ug89hbid', 'MYh', 'Sara', 'ghiwodgid@gmail.com', '01682860562', 'thrtjrt', 'uououou', 'Business Card');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_service_order`
--

CREATE TABLE `accounts_service_order` (
  `id` int(11) NOT NULL,
  `stitle` varchar(500) NOT NULL,
  `sdes` longtext NOT NULL,
  `sreq` longtext NOT NULL,
  `sdel` datetime(6) NOT NULL,
  `sadd` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_service_order`
--

INSERT INTO `accounts_service_order` (`id`, `stitle`, `sdes`, `sreq`, `sdel`, `sadd`) VALUES
(1, '<django.db.models.query_utils.DeferredAttribute object at 0x0000026055EEB130>', 'kkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkk', '2021-01-21 23:51:00.000000', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkk');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add member', 1, 'add_member'),
(2, 'Can change member', 1, 'change_member'),
(3, 'Can delete member', 1, 'delete_member'),
(4, 'Can view member', 1, 'view_member'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add courses', 8, 'add_courses'),
(30, 'Can change courses', 8, 'change_courses'),
(31, 'Can delete courses', 8, 'delete_courses'),
(32, 'Can view courses', 8, 'view_courses'),
(33, 'Can add services', 9, 'add_services'),
(34, 'Can change services', 9, 'change_services'),
(35, 'Can delete services', 9, 'delete_services'),
(36, 'Can view services', 9, 'view_services'),
(37, 'Can add cus contact', 10, 'add_cuscontact'),
(38, 'Can change cus contact', 10, 'change_cuscontact'),
(39, 'Can delete cus contact', 10, 'delete_cuscontact'),
(40, 'Can view cus contact', 10, 'view_cuscontact'),
(41, 'Can add cus contact', 11, 'add_cuscontact'),
(42, 'Can change cus contact', 11, 'change_cuscontact'),
(43, 'Can delete cus contact', 11, 'delete_cuscontact'),
(44, 'Can view cus contact', 11, 'view_cuscontact'),
(45, 'Can add cus_ contact', 11, 'add_cus_contact'),
(46, 'Can change cus_ contact', 11, 'change_cus_contact'),
(47, 'Can delete cus_ contact', 11, 'delete_cus_contact'),
(48, 'Can view cus_ contact', 11, 'view_cus_contact'),
(49, 'Can add apply_emp', 12, 'add_apply_emp'),
(50, 'Can change apply_emp', 12, 'change_apply_emp'),
(51, 'Can delete apply_emp', 12, 'delete_apply_emp'),
(52, 'Can view apply_emp', 12, 'view_apply_emp'),
(53, 'Can add free course_info', 13, 'add_freecourse_info'),
(54, 'Can change free course_info', 13, 'change_freecourse_info'),
(55, 'Can delete free course_info', 13, 'delete_freecourse_info'),
(56, 'Can view free course_info', 13, 'view_freecourse_info'),
(57, 'Can add paid course_info', 14, 'add_paidcourse_info'),
(58, 'Can change paid course_info', 14, 'change_paidcourse_info'),
(59, 'Can delete paid course_info', 14, 'delete_paidcourse_info'),
(60, 'Can view paid course_info', 14, 'view_paidcourse_info'),
(61, 'Can add paid sec', 15, 'add_paidsec'),
(62, 'Can change paid sec', 15, 'change_paidsec'),
(63, 'Can delete paid sec', 15, 'delete_paidsec'),
(64, 'Can view paid sec', 15, 'view_paidsec'),
(65, 'Can add service_order', 16, 'add_service_order'),
(66, 'Can change service_order', 16, 'change_service_order'),
(67, 'Can delete service_order', 16, 'delete_service_order'),
(68, 'Can view service_order', 16, 'view_service_order');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$dO8UFW5qaxZg$qVXm2ECpjGREyxsoS9eCuR2nEGMthi0DLQfP/ZpL59M=', '2021-01-03 17:02:23.252210', 1, 'Shafi', '', '', 'smpartho02@gmail.com', 1, 1, '2020-11-22 06:06:20.000000'),
(2, 'pbkdf2_sha256$216000$TGDjoVt3PWXX$ooz60CJ2JPkiqnHPtqSBwXwIBrg2VMi96CPVJ2WUgCE=', '2021-01-01 14:08:36.883497', 1, 'Partho', '', '', '2018-1-60-219@std.ewubd.edu', 1, 1, '2020-11-22 06:47:52.000000'),
(14, 'pbkdf2_sha256$216000$Wvi5W0LZsNfX$MWDN+5X/+sv7wE/WhKgzjzTLHc63W1vhZFyEDPpS2qY=', NULL, 0, 'Jenny', 'sara', 'jenny', 'saipeekpartho197@gmail.com', 0, 1, '2021-01-01 14:11:00.393740');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(29, 1, 1),
(30, 1, 2),
(31, 1, 3),
(32, 1, 4),
(33, 1, 5),
(34, 1, 6),
(35, 1, 7),
(36, 1, 8),
(37, 1, 9),
(38, 1, 10),
(39, 1, 11),
(40, 1, 12),
(41, 1, 13),
(42, 1, 14),
(43, 1, 15),
(44, 1, 16),
(45, 1, 17),
(46, 1, 18),
(47, 1, 19),
(48, 1, 20),
(49, 1, 21),
(50, 1, 22),
(51, 1, 23),
(52, 1, 24),
(53, 1, 25),
(54, 1, 26),
(55, 1, 27),
(56, 1, 28),
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cus_contact`
--

CREATE TABLE `contacts_cus_contact` (
  `id` int(11) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_email` varchar(50) NOT NULL,
  `cus_sub` varchar(200) NOT NULL,
  `cus_sms` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts_cus_contact`
--

INSERT INTO `contacts_cus_contact` (`id`, `cus_name`, `cus_email`, `cus_sub`, `cus_sms`) VALUES
(3, 'Salam', '2018-1-60-219@std.ewubd.edu', 'hhhhhhhhhhhhhhhhhh', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkhhhhhhhhhhhhhhyyyyyyyyyyyyyyyyyyffffffffffffffffffffffffffffffffffffffff'),
(5, 'Shafi Partho', '2018-1-60-219@std.ewubd.edu', 'hhhhhhhhhhhhhhhhhh', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhuuuuuuuuuuuuuuuuuuuuuuyttttttttttttttooooooooooooooooooo'),
(6, 'Jenny', 'ghiwodgid@gmail.com', 'hgiohgd9sdoh9wpshgw0e9g', 'uigdiulweg8sdgohgosdhg(osdghjWE)hgwjsd0pj'),
(7, 'Younus', 'younus@gmail.com', 'liurhgieorhg9hg4iohgioq34gh34', 'uuuuuuuuuuuuuuuuuuuuujjjjjjjjjjjjjjjjmnmmmmmmmmmmmmmmkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk'),
(8, 'hiihi', 'uggg@fglkfgsoi', 'kokooooooooooooooooooooooooooo', 'yfluuuuuuuuuuuuuuuuuuuubvbbbbbbbbbbbn'),
(9, 'hiihi', 'fdihsdoig@fglkfgsoi', 'kokooooooooooooooooooooooooooo', 'koooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo'),
(10, 'Shafi Partho', 'fghdsd@gmail.com', 'hgiohgd9sdoh9wpshgw0e9g', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk');

-- --------------------------------------------------------

--
-- Table structure for table `courses_courses`
--

CREATE TABLE `courses_courses` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_title` varchar(100) NOT NULL,
  `c_des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_courses`
--

INSERT INTO `courses_courses` (`id`, `c_id`, `c_name`, `c_title`, `c_des`) VALUES
(1, 1, 'Introduction to Java', 'IJava', 'From android applications and web server tools to enterprise software, Java has in a way, formed the backbone of the internet revolution. The strong community, enterprise support, and growing popularity among programmers show that Java is set to stay the first choice for most businesses. Even in Web Development, Desktop GUI Application, Enterprise application, Games and Scientific Applications, Java is an excellent choice.'),
(2, 2, 'Introduction to Python', 'Ipy', 'Python is a versatile language when needed for website development. Python is highly recommended when learning to code because it is simple and easy to learn to code. It has the feature of quickly writing complicated tasks and there are many significant applications that support Python language only. It is considered instrumental in AI and data science.'),
(3, 3, 'Introduction to Bootstrap', 'IBS', 'Bootstrap is one of the most popular, open-source, front-end frameworks on the Web. It gives them the capability to build a functional, attractive website design within minutes. Bootstrap provides a solid foundation for any website, irrespective of project size. Bootstrap has a Powerful Grid System, Rapid Development, Browser Compatibility, Customizability and is an open Source.'),
(4, 4, 'Adobe Photoshop and Illustrator', 'AdPSLS', 'Photoshop is a great skill that can enhance your career opportunities and is also personally rewarding. It gives you the opportunity to work on a variety of additional projects and may provide opportunities for advancement or the ability to work on a more diverse set of projects. Whether using Photoshop to retouch images, or to create compositions adding text and graphics, or building a funny animated GIF, you can put Photoshop skills to use in many ways.'),
(5, 5, 'Video Editing', 'ViEd', 'Video editing is the key to blending images and sounds to make us feel emotionally connected and sometimes truly there in the film we\'re watching. For example, in the film industry, video editing is one of the most important parts. Learning video editing, you can create content according to your own will and you’ll love the recognition that you’d get for your work.'),
(6, 6, 'HTML and CSS', 'HC', 'HTML and CSS are the basic programming languages for web development and design. HTML and CSS are the frameworks used to build websites. You’ll Have the Ability to create unique and cool websites.');

-- --------------------------------------------------------

--
-- Table structure for table `courses_freecourse_info`
--

CREATE TABLE `courses_freecourse_info` (
  `id` int(11) NOT NULL,
  `c_vlink` varchar(200) NOT NULL,
  `c_slink` varchar(200) NOT NULL,
  `c_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_freecourse_info`
--

INSERT INTO `courses_freecourse_info` (`id`, `c_vlink`, `c_slink`, `c_id_id`) VALUES
(3, 'https://www.youtube.com/embed/eIrMbAQSU34', 'https://www.youtube.com/embed/hBh_CC5y8-s', 1),
(4, 'https://www.youtube.com/embed/rfscVS0vtbw', 'https://www.youtube.com/embed/WGJJIrtnfpk', 2),
(5, 'https://www.youtube.com/embed/bPuyoVh9U3g', 'https://www.w3schools.com/bootstrap4/default.asp', 3),
(6, 'https://www.youtube.com/embed/Ib8UBwu3yGA', 'https://www.youtube.com/embed/Ib8UBwu3yGA', 4),
(7, 'https://www.youtube.com/embed/-wpFSpNbDW0', 'https://www.youtube.com/embed/c1bm-pSVLMY', 5),
(8, 'https://www.youtube.com/embed/8gNrZ4lAnAw', 'https://www.youtube.com/embed/QMnv3QrjZoU', 6);

-- --------------------------------------------------------

--
-- Table structure for table `courses_paidcourse_info`
--

CREATE TABLE `courses_paidcourse_info` (
  `id` int(11) NOT NULL,
  `c_fee` int(11) NOT NULL,
  `c_lang` varchar(20) NOT NULL,
  `c_duration` int(11) NOT NULL,
  `c_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_paidcourse_info`
--

INSERT INTO `courses_paidcourse_info` (`id`, `c_fee`, `c_lang`, `c_duration`, `c_id_id`) VALUES
(1, 15000, 'English', 4, 1),
(2, 15000, 'English', 4, 2),
(3, 10000, 'English', 4, 3),
(4, 10000, 'English', 4, 4),
(5, 10000, 'English', 4, 5),
(6, 10000, 'English', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `courses_paidsec`
--

CREATE TABLE `courses_paidsec` (
  `id` int(11) NOT NULL,
  `sec` int(11) NOT NULL,
  `time` longtext NOT NULL,
  `c_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_paidsec`
--

INSERT INTO `courses_paidsec` (`id`, `sec`, `time`, `c_id_id`) VALUES
(1, 1, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 1),
(2, 2, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 1),
(3, 3, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 1),
(4, 1, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 2),
(5, 2, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 2),
(6, 3, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 2),
(7, 1, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 3),
(8, 2, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 3),
(9, 3, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 3),
(10, 1, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 4),
(11, 2, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 4),
(12, 3, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 4),
(13, 1, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 5),
(14, 2, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 5),
(15, 3, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 5),
(16, 1, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 6),
(17, 2, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 6),
(18, 3, 'Monday: 10am-12pm\r\nWednesday: 10am-12pm', 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-22 06:49:13.515621', '2', 'Partho', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 5, 2),
(2, '2020-11-22 06:49:24.436409', '1', 'Shafi', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 5, 2),
(3, '2020-11-22 06:49:50.773279', '2', 'Partho', 2, '[]', 5, 2),
(4, '2020-12-13 11:55:27.529514', '12', 'Jenny', 3, '', 5, 1),
(5, '2020-12-13 11:55:27.586370', '13', 'Shafiul40', 3, '', 5, 1),
(6, '2020-12-13 21:14:36.640592', '1', 'Courses object (1)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-12-13 21:19:20.290960', '2', 'Introduction to Python', 1, '[{\"added\": {}}]', 8, 1),
(8, '2020-12-13 21:20:41.552593', '3', 'Introduction to Bootstrap', 1, '[{\"added\": {}}]', 8, 1),
(9, '2020-12-13 21:21:36.371719', '4', 'Adobe Photoshop and Illustrator', 1, '[{\"added\": {}}]', 8, 1),
(10, '2020-12-13 21:22:06.183297', '5', 'Video Editing', 1, '[{\"added\": {}}]', 8, 1),
(11, '2020-12-13 21:22:58.286923', '6', 'HTML and CSS', 1, '[{\"added\": {}}]', 8, 1),
(12, '2020-12-13 22:12:02.992139', '1', 'Photos & Video Editing', 1, '[{\"added\": {}}]', 9, 1),
(13, '2020-12-13 22:12:26.891370', '2', 'Logo Design', 1, '[{\"added\": {}}]', 9, 1),
(14, '2020-12-13 22:12:47.413606', '3', 'Business Card', 1, '[{\"added\": {}}]', 9, 1),
(15, '2020-12-13 22:13:21.550836', '4', 'Banner Design', 1, '[{\"added\": {}}]', 9, 1),
(16, '2020-12-13 22:13:46.740774', '5', 'App Development', 1, '[{\"added\": {}}]', 9, 1),
(17, '2020-12-13 22:14:21.507341', '6', 'Software Development', 1, '[{\"added\": {}}]', 9, 1),
(18, '2020-12-14 01:54:09.682044', '2', 'Salam', 3, '', 11, 1),
(19, '2020-12-14 01:54:09.765823', '1', 'Salam', 3, '', 11, 1),
(20, '2020-12-14 01:56:54.337128', '4', 'Salam', 3, '', 11, 1),
(21, '2021-01-02 14:28:51.288798', '3', 'papapa', 3, '', 12, 1),
(22, '2021-01-02 14:47:44.602916', '4', 'ug89hbid', 3, '', 12, 1),
(23, '2021-01-02 20:52:12.135176', '1', 'Introduction to Java', 2, '[]', 8, 1),
(24, '2021-01-02 20:56:40.754859', '3', 'Introduction to Java links', 1, '[{\"added\": {}}]', 13, 1),
(25, '2021-01-03 03:13:06.585399', '4', 'Introduction to Python links', 1, '[{\"added\": {}}]', 13, 1),
(26, '2021-01-03 03:14:42.002335', '5', 'Introduction to Bootstrap links', 1, '[{\"added\": {}}]', 13, 1),
(27, '2021-01-03 03:15:23.073719', '6', 'Adobe Photoshop and Illustrator links', 1, '[{\"added\": {}}]', 13, 1),
(28, '2021-01-03 03:15:54.872631', '7', 'Video Editing links', 1, '[{\"added\": {}}]', 13, 1),
(29, '2021-01-03 03:16:29.368145', '8', 'HTML and CSS links', 1, '[{\"added\": {}}]', 13, 1),
(30, '2021-01-03 11:07:08.990566', '1', 'Introduction to Java paid', 1, '[{\"added\": {}}]', 14, 1),
(31, '2021-01-03 11:07:25.439653', '2', 'Introduction to Python paid', 1, '[{\"added\": {}}]', 14, 1),
(32, '2021-01-03 11:07:43.609673', '3', 'Introduction to Bootstrap paid', 1, '[{\"added\": {}}]', 14, 1),
(33, '2021-01-03 11:08:05.176843', '4', 'Adobe Photoshop and Illustrator paid', 1, '[{\"added\": {}}]', 14, 1),
(34, '2021-01-03 11:08:21.121706', '5', 'Video Editing paid', 1, '[{\"added\": {}}]', 14, 1),
(35, '2021-01-03 11:09:07.236768', '6', 'HTML and CSS paid', 1, '[{\"added\": {}}]', 14, 1),
(36, '2021-01-03 11:19:16.210443', '1', 'Introduction to Java time', 1, '[{\"added\": {}}]', 15, 1),
(37, '2021-01-03 11:19:24.381917', '2', 'Introduction to Java time', 1, '[{\"added\": {}}]', 15, 1),
(38, '2021-01-03 11:19:33.587168', '3', 'Introduction to Java time', 1, '[{\"added\": {}}]', 15, 1),
(39, '2021-01-03 11:19:55.162932', '4', 'Introduction to Python time', 1, '[{\"added\": {}}]', 15, 1),
(40, '2021-01-03 11:20:10.952860', '4', 'Introduction to Python time', 2, '[{\"changed\": {\"fields\": [\"Sec\"]}}]', 15, 1),
(41, '2021-01-03 11:20:35.543890', '5', 'Introduction to Python time', 1, '[{\"added\": {}}]', 15, 1),
(42, '2021-01-03 11:20:43.282809', '6', 'Introduction to Python time', 1, '[{\"added\": {}}]', 15, 1),
(43, '2021-01-03 11:21:04.938500', '7', 'Introduction to Bootstrap time', 1, '[{\"added\": {}}]', 15, 1),
(44, '2021-01-03 11:21:12.383117', '8', 'Introduction to Bootstrap time', 1, '[{\"added\": {}}]', 15, 1),
(45, '2021-01-03 11:21:21.271665', '9', 'Introduction to Bootstrap time', 1, '[{\"added\": {}}]', 15, 1),
(46, '2021-01-03 11:21:37.479074', '10', 'Adobe Photoshop and Illustrator time', 1, '[{\"added\": {}}]', 15, 1),
(47, '2021-01-03 11:21:46.564954', '11', 'Adobe Photoshop and Illustrator time', 1, '[{\"added\": {}}]', 15, 1),
(48, '2021-01-03 11:21:53.974960', '12', 'Adobe Photoshop and Illustrator time', 1, '[{\"added\": {}}]', 15, 1),
(49, '2021-01-03 11:22:09.699070', '13', 'Video Editing time', 1, '[{\"added\": {}}]', 15, 1),
(50, '2021-01-03 11:22:17.809685', '14', 'Video Editing time', 1, '[{\"added\": {}}]', 15, 1),
(51, '2021-01-03 11:22:30.565888', '15', 'Video Editing time', 1, '[{\"added\": {}}]', 15, 1),
(52, '2021-01-03 11:22:51.464888', '16', 'HTML and CSS time', 1, '[{\"added\": {}}]', 15, 1),
(53, '2021-01-03 11:23:02.016403', '17', 'HTML and CSS time', 1, '[{\"added\": {}}]', 15, 1),
(54, '2021-01-03 11:23:14.097979', '18', 'HTML and CSS time', 1, '[{\"added\": {}}]', 15, 1),
(55, '2021-01-03 17:52:18.948753', '1', '<django.db.models.query_utils.DeferredAttribute object at 0x0000026055EEB130>', 2, '[]', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'accounts', 'apply_emp'),
(16, 'accounts', 'service_order'),
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(11, 'contacts', 'cus_contact'),
(6, 'contenttypes', 'contenttype'),
(8, 'courses', 'courses'),
(13, 'courses', 'freecourse_info'),
(14, 'courses', 'paidcourse_info'),
(15, 'courses', 'paidsec'),
(10, 'proximaweb', 'cuscontact'),
(1, 'proximaweb', 'member'),
(9, 'services', 'services'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-16 01:18:04.636252'),
(2, 'auth', '0001_initial', '2020-11-16 01:18:06.552077'),
(3, 'admin', '0001_initial', '2020-11-16 01:18:14.265965'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-16 01:18:15.988224'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-16 01:18:16.026123'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-16 01:18:17.142655'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-16 01:18:17.971044'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-16 01:18:18.092720'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-16 01:18:18.125633'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-16 01:18:18.640493'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-16 01:18:18.673435'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-16 01:18:18.709533'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-16 01:18:18.840662'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-16 01:18:18.934412'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-16 01:18:19.033147'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-16 01:18:19.062071'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-16 01:18:19.166792'),
(18, 'proximaweb', '0001_initial', '2020-11-16 01:18:19.585671'),
(19, 'sessions', '0001_initial', '2020-11-16 01:18:20.049430'),
(20, 'courses', '0001_initial', '2020-12-13 19:56:59.188992'),
(21, 'services', '0001_initial', '2020-12-13 22:09:05.906621'),
(22, 'proximaweb', '0002_cuscontact', '2020-12-13 22:46:24.502879'),
(23, 'contacts', '0001_initial', '2020-12-14 01:33:06.219884'),
(24, 'proximaweb', '0003_delete_cuscontact', '2020-12-14 01:33:06.496109'),
(25, 'contacts', '0002_auto_20201214_0737', '2020-12-14 01:38:25.202891'),
(26, 'accounts', '0001_initial', '2021-01-01 18:17:11.621826'),
(27, 'courses', '0002_freecourse_info', '2021-01-02 20:48:44.170758'),
(28, 'courses', '0003_paidcourse_info', '2021-01-03 11:05:04.784297'),
(29, 'courses', '0004_paidsec', '2021-01-03 11:16:25.262308'),
(30, 'accounts', '0002_service_order', '2021-01-03 17:39:33.875050'),
(31, 'accounts', '0003_auto_20210103_2350', '2021-01-03 17:51:15.953385');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3xphccol7irm9xk6w8naaahm2qga6o0s', '.eJxVjDsOwyAQRO9CHSG-i0mZ3mdAu4CDkwgkY1dR7h5bcpFounlv5s0CbmsJW89LmBO7Mskuvx1hfOZ6gPTAem88trouM_FD4SftfGwpv26n-3dQsJd9DQ6kdtE6HRUSJjJCaQ_Gg5gsqJSBrAA_SD1pL6w3e4DISSeGKEiyzxezJzZc:1koawt:sKlMBgXyiDQb_H0pBCHri6fx78RfffQmLZils6Ar2IM', '2020-12-27 23:38:43.311981'),
('eq01t369ctm2tu3ifexkvw7czf8vrxuu', 'e30:1kvLCB:Hgjv3ZRQcMdeczcnfzcxYtO7T_Q6CLSAi6G4wrikPcY', '2021-01-15 14:14:23.604814'),
('ptvl476zti6rrtqko8xh6j5q5o3fyxbb', '.eJxVjEEOwiAQRe_C2hAHOgVcuu8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnERIE6_W6D4SHUHfKd6azK2ui5zkLsiD9rl1Dg9r4f7d1Col29NQIAuj6yVtcEaZXIcgDWDRuRAKmuyMYEzztg0OBxQc0QwyPkcYBTvD9mJN4A:1kw5mI:1aBj7RQmQheu4FswDmenVxzkytj4KU62cNq-Yhdqo6k', '2021-01-17 15:58:46.441954'),
('zfjwtjq36yovneoxo0wgeepy7ie29k6w', '.eJxVjEEOwiAQRe_C2hAHOgVcuu8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnERIE6_W6D4SHUHfKd6azK2ui5zkLsiD9rl1Dg9r4f7d1Col29NQIAuj6yVtcEaZXIcgDWDRuRAKmuyMYEzztg0OBxQc0QwyPkcYBTvD9mJN4A:1kw6lr:U5gJv-rOh914GERs1Z2aOJwI4gKwtB8HMB1o9olVC90', '2021-01-17 17:02:23.338980');

-- --------------------------------------------------------

--
-- Table structure for table `proximaweb_member`
--

CREATE TABLE `proximaweb_member` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(100) NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services_services`
--

CREATE TABLE `services_services` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `c_des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_services`
--

INSERT INTO `services_services` (`id`, `s_id`, `s_name`, `c_des`) VALUES
(1, 1, 'Photos & Video Editing', 'Photo and video editing is an important part of social media and is more like a basic skill even for marketing and promotions for various stuff.'),
(2, 2, 'Logo Design', 'Amplify your brand with a dynamic advertising logo design, that would catch the eyes of your audience and would stay in their mind for the longest.'),
(3, 3, 'Business Card', 'A business card sets the first impression about you and your company on the very first day. Therefore, having a business card that shows your professionalism is important.'),
(4, 4, 'Banner Design', 'Banners are used to draw attention to a business or an event and are instantly noticeable because of their size or color. In any busy area, a banner can be used to separate a business from the rest of the crowd, therefore having an eye-catching banner for any business or event is a must.'),
(5, 5, 'App Development', 'App development has the unique ability to access a large number of potential consumers since it has Accessibility from Variety of Platforms, Targeted Audience, Efficiency and Effectiveness to engage with customers everywhere.'),
(6, 6, 'Software Development', 'Software development brings your business to new heights of integration allowing your company to be accessible from almost anywhere via smartphone or computer. It improves sales and service. The way your customers experience your business is very important and hence, taking care of this part is very crucial.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_apply_emp`
--
ALTER TABLE `accounts_apply_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_service_order`
--
ALTER TABLE `accounts_service_order`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contacts_cus_contact`
--
ALTER TABLE `contacts_cus_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_courses`
--
ALTER TABLE `courses_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_freecourse_info`
--
ALTER TABLE `courses_freecourse_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_freecourse_info_c_id_id_8477286f_fk_courses_courses_id` (`c_id_id`);

--
-- Indexes for table `courses_paidcourse_info`
--
ALTER TABLE `courses_paidcourse_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_paidcourse_info_c_id_id_c6fae9e8_fk_courses_courses_id` (`c_id_id`);

--
-- Indexes for table `courses_paidsec`
--
ALTER TABLE `courses_paidsec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_paidsec_c_id_id_764a7311_fk_courses_courses_id` (`c_id_id`);

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
-- Indexes for table `proximaweb_member`
--
ALTER TABLE `proximaweb_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_services`
--
ALTER TABLE `services_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_apply_emp`
--
ALTER TABLE `accounts_apply_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `accounts_service_order`
--
ALTER TABLE `accounts_service_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `contacts_cus_contact`
--
ALTER TABLE `contacts_cus_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses_courses`
--
ALTER TABLE `courses_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses_freecourse_info`
--
ALTER TABLE `courses_freecourse_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses_paidcourse_info`
--
ALTER TABLE `courses_paidcourse_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses_paidsec`
--
ALTER TABLE `courses_paidsec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `proximaweb_member`
--
ALTER TABLE `proximaweb_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_services`
--
ALTER TABLE `services_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `courses_freecourse_info`
--
ALTER TABLE `courses_freecourse_info`
  ADD CONSTRAINT `courses_freecourse_info_c_id_id_8477286f_fk_courses_courses_id` FOREIGN KEY (`c_id_id`) REFERENCES `courses_courses` (`id`);

--
-- Constraints for table `courses_paidcourse_info`
--
ALTER TABLE `courses_paidcourse_info`
  ADD CONSTRAINT `courses_paidcourse_info_c_id_id_c6fae9e8_fk_courses_courses_id` FOREIGN KEY (`c_id_id`) REFERENCES `courses_courses` (`id`);

--
-- Constraints for table `courses_paidsec`
--
ALTER TABLE `courses_paidsec`
  ADD CONSTRAINT `courses_paidsec_c_id_id_764a7311_fk_courses_courses_id` FOREIGN KEY (`c_id_id`) REFERENCES `courses_courses` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
