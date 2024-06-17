-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 03:58 PM
-- Server version: 8.0.34
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delta-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_goals` json DEFAULT NULL,
  `students_number` int DEFAULT NULL,
  `graduated_students` int DEFAULT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answers` json DEFAULT NULL,
  `constructed_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizational_char_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_dean_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_dean_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_dean_word` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chairman_of_board_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chairman_of_board_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chairman_of_board_word` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `our_goals`, `students_number`, `graduated_students`, `question`, `answers`, `constructed_at`, `organizational_char_image`, `institute_dean_name`, `institute_dean_image`, `institute_dean_word`, `chairman_of_board_name`, `chairman_of_board_image`, `chairman_of_board_word`, `created_at`, `updated_at`) VALUES
(9, 'يهدف معهد الدلتا العالي إلى إتاحة الفرصة للطلاب للحصول على نوعية ممتازة وجادة ومتطورة من دراسات علوم الحاسبات وتكنولوجيا إدارة المعلومات على أيدي نخبة متميزة من أعضاء هيئة التدريس من الجامعات المصرية وعلى أحدث الأجهزة التعليمية المتطورة.', '{\"1\": \"المساهمة في إعداد وتنمية الكوادر الفنية المتخصصة في فروع الدراسة بالمعهد.\", \"2\": \"تنمية القدرات والمهارات للقيادات المتخصصة فى الممارسة العلمية والعملية.\", \"3\": \"تنمية البحث العلمي والعمل على إتاحة الفرص وحل المشكلات.\"}', 5769, 10609, 'ما الدرجة العلمية التي يمنحها المعهد؟', '{\"1\": \"يمنح المعهد بكالوريوس في نظم المعلومات الإدارية (شعبة نظم).\", \"2\": \"يمنح بكالوريوس في المحاسبة والمراجعة (شعبة المحاسبة).\", \"3\": \"معتمد من المجلس الأعلى للجامعات ووزارة التعليم العالي ومنها تقدر تسجل في نقابة التجاريين.\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-26 11:30:56', '2024-06-17 10:53:05'),
(10, NULL, NULL, NULL, NULL, 'ما هو الحد الأدنى للقبول في المعهد؟', '{\"1\": \"الشعبة العلمية: 52.68%\", \"2\": \"الشعبة الأدبية: 54.26%\", \"3\": \"ثانوي صناعي 3 سنوات: 83.85%\", \"4\": \"ثانوي صناعي 5 سنوات: 60%\", \"5\": \"ثانوي تجاري 3 سنوات: 72.93%\", \"6\": \"ثانوي تجاري 5 سنوات: 72.20%\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-17 10:54:59'),
(11, NULL, NULL, NULL, NULL, 'ما هي الأوراق المطلوبة للتقديم في المعهد؟', '{\"1\": \"أصل المؤهل.\", \"2\": \"بطاقة الترشيح.\", \"3\": \"أصل شهادة الميلاد.\", \"4\": \"صورة البطاقة الشخصية.\", \"5\": \"بطاقة 2 جند (للذكور فقط).\", \"6\": \"بطاقة 6 جند (للذكور فقط).\", \"7\": \"عدد 6 صور شخصيه (4 * 6).\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-02 13:08:16', '2024-06-17 10:56:06'),
(12, 'يهدف معهد الدلتا العالي إلى إتاحة الفرصة للطلاب للحصول على نوعية ممتازة وجادة ومتطورة من دراسات علوم الحاسبات وتكنولوجيا إدارة المعلومات على أيدي نخبة متميزة من أعضاء هيئة التدريس من الجامعات المصرية وعلى أحدث الأجهزة التعليمية المتطورة.', NULL, 1500, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-06 16:53:40', '2024-05-06 16:53:40'),
(13, 'يهدف معهد الدلتا العالي إلى إتاحة الفرصة للطلاب للحصول على نوعية ممتازة وجادة ومتطورة من دراسات علوم الحاسبات وتكنولوجيا إدارة المعلومات على أيدي نخبة متميزة من أعضاء هيئة التدريس من الجامعات المصرية وعلى أحدث الأجهزة التعليمية المتطورة.', NULL, 1500, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-06 16:55:23', '2024-05-06 16:55:23'),
(14, NULL, NULL, NULL, NULL, 'شروط القبول بالمعهد؟', '{\"1\": \"المساهمة في إعداد وتنمية الكوادر الفنية المتخصصة في فروع الدراسة بالمعهد\", \"2\": \"تنمية qالقدرات والمهارات للقيادات المتخصصة فى الممارسة العلمية والعملية \", \"3\": \" تنمية البحث العلمي والعمل على إتاحة الفرص وحل المشكلات.\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-07 15:24:43', '2024-06-07 15:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `academic_lives`
--

CREATE TABLE `academic_lives` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_lives`
--

INSERT INTO `academic_lives` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'أ.د / أحمد أبو الفتوح صالح', 'uploads/files/PSu20ynd8EncF4ywb3pzOxNqAg195INGnaGFtPY2.jpg', '{\"1\": \"مناقشة العميد التقسيمات الخاصة بالجداول والامتحانات وما يترتب عليها من تجهيزات.\", \"2\": \"اكساب الخبرة لجميع الاعضاء من خلال اللقاءات الدورية.\", \"3\": \"الاشراف على تنفيذ القرارات التنفيذية والتأكد من سلامة اجراءات التنفيذ.\"}', NULL, '2024-06-15 11:44:47'),
(2, 'أ.د / أحمد أبو الفتوح صالح', 'uploads/files/WY81BYqsG4CknrnLU1uj5BJsx305uariFhJJbwab.jpg', '{\"1\": \"مناقشة العميد التقسيمات الخاصة بالجداول والامتحانات وما يترتب عليها من تجهيزات.\", \"2\": \"اكساب الخبرة لجميع الاعضاء من خلال اللقاءات الدورية.\", \"3\": \"الاشراف على تنفيذ القرارات التنفيذية والتأكد من سلامة اجراءات التنفيذ.\"}', NULL, '2024-06-15 12:35:22'),
(3, 'أ.د / أحمد أبو الفتوح صالح', 'uploads/files/MBV6AHhYzTEN0OmfM4FYV7sCsj31eZd28fiotqZv.jpg', '{\"1\": \"مناقشة العميد التقسيمات الخاصة بالجداول والامتحانات وما يترتب عليها من تجهيزات.\", \"2\": \"اكساب الخبرة لجميع الاعضاء من خلال اللقاءات الدورية.\", \"3\": \"الاشراف على تنفيذ القرارات التنفيذية والتأكد من سلامة اجراءات التنفيذ.\"}', NULL, '2024-06-15 12:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `all_files`
--

CREATE TABLE `all_files` (
  `id` bigint UNSIGNED NOT NULL,
  `organizational_chart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_institute_regulations` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_institute_regulations` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_schedules_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_schedules_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_schedules_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_schedules_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courses_new` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courses_old` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_schedules_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_schedules_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_schedules_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_schedules_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_guide` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_advising` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scientific_leadership_guide` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scientific_research_database` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_files`
--

INSERT INTO `all_files` (`id`, `organizational_chart`, `old_institute_regulations`, `new_institute_regulations`, `class_schedules_one`, `class_schedules_two`, `class_schedules_three`, `class_schedules_four`, `courses_new`, `courses_old`, `exam_schedules_one`, `exam_schedules_two`, `exam_schedules_three`, `exam_schedules_four`, `student_guide`, `academic_advising`, `scientific_leadership_guide`, `scientific_research_database`, `created_at`, `updated_at`) VALUES
(1, 'uploads/images/KkdiDHUo0VgT8cT48xXPlGXuv3c1lP8AudgG86SG.png', 'uploads/images/1oOW1D70g2WRtJ7eghsDhFtCYVn4bElYjIBN3I6I.pdf', 'uploads/images/Szrq3a7sJ0s3pcsOa2kEeOuL2eiLgW7YOjIe8XMz.pdf', 'uploads/files/F1tpMHRyEeTuBjEQwpG22rKhrgGXQn4Dzfy7uLRv.pdf', 'uploads/files/kdXR4klU0UhxLxKPOpObWrS16u5EaOuV6Ue8Qczl.pdf', 'uploads/files/yrV7BZnenn0y1uv1XOxcd36xD6aH9aEn3PEOmis4.pdf', 'uploads/files/WF3BcBjZTdGx0jJXFe6jwO0UPq3YPoI2hdpyExXn.pdf', 'uploads/files/8kpBEV6mpJFnvvuQBeFA3C8x0kSrER4G7dxFIbg1.pdf', 'uploads/files/bcCTCwRRH12zKs8HtjvW3Ol5w1KMjFtUbfqLf3Ik.pdf', 'uploads/files/OJckstWfm8mj45KDLPJVqMYG3Q9l2MOSV1pJ2nWj.pdf', 'uploads/files/68T6Qjpe3RXJrw9Ao1BHUv3TsqAQJYv2IKV0ebhZ.pdf', 'uploads/files/5ymhlOZCUdKEi86bLZ4NuhHX0HB5rwKgXKV7liOg.pdf', 'uploads/files/1x4S9NF1r9q48Iq5aDzIJouykpleIqqqaDbJSHLj.pdf', 'uploads/files/WIdGcPdlJdb52o4WFVD9IqRIDDoWoJPDCabclvmz.pdf', 'uploads/files/ZHxEBLCikhNZYtLH8y1e8qDBQgNitKj2gDYWZif7.pdf', 'uploads/files/ppiWfVFq4be1oTxPveAkQ5CF2uhWzKEUEZSyBsv0.pdf', 'uploads/files/qjMXQUqNxLcta0FlEFs8hy9CF9Wor2xTwzkYStdE.pdf', NULL, '2024-06-16 18:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint UNSIGNED NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `student_name`, `student_code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mostafa', '522', 'fake data', '2024-06-15 11:09:04', '2024-06-15 11:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `created_ats`
--

CREATE TABLE `created_ats` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `created_ats`
--

INSERT INTO `created_ats` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'بدأ المعهد الدراسة في العام الدراسي 2000/2001 بقسمين هما', '{\"1\": \"قسم نظم المعلومات الإدارية.\", \"2\": \"\\nقسم المحاسبة.\", \"3\": \"\\nوفي عام 2004 تم إضافة قسم جديد هو قسم نظم المعلومات الحاسوبية ويُقدم المعهد حاليًا العديد من البرامج التعليمية في مختلف تخصصات نظم المعلومات الإدارية والمحاسبية، تشمل:\", \"4\": \"\\nبرنامج البكالوريوس في نظم المعلومات الإدارية.\", \"5\": \"\\nبرنامج البكالوريوس في المحاسبة.\", \"6\": \"\"}', '2024-06-15 06:55:30', '2024-06-15 06:57:19'),
(5, NULL, '{\"1\": \"يُعدّ معهد الدلتا العالي لنظم المعلومات الإدارية والمحاسبية بالمنصورة من أهم المعاهد المتخصصة في هذا المجال في مصر ويقدم ايضا المعهد برامج تعليمية عالية الجودة تُلبي احتياجات سوق العمل، ويُشرف على التدريس فيه أعضاء هيئة تدريس ذوي خبرة واسعة في مجال نظم المعلومات الإدارية والمحاسبية.\\n\\nيتخرج من المعهد سنويًا دفعة جديدة من الخريجين الذين يُصبحون على الفور مطلوبين في سوق العمل ويُساهم أيضا المعهد بشكل كبير في تنمية الاقتصاد الوطني ودعم مسيرة التحول الرقمي في مصر.\"}', '2024-06-15 06:59:28', '2024-06-15 06:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follow_up_committees`
--

CREATE TABLE `follow_up_committees` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follow_up_committees`
--

INSERT INTO `follow_up_committees` (`id`, `image`, `title`, `name`, `created_at`, `updated_at`) VALUES
(1, 'uploads/files/H6VA0ZuTX8U5hM05O6N58eLESqN94bkeEJooQo4D.png', 'عميد المعهد', 'أ.د / أحمد أبو الفتوح صالح', '2024-06-16 18:49:20', '2024-06-16 18:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `header_images`
--

CREATE TABLE `header_images` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_images`
--

INSERT INTO `header_images` (`id`, `image`) VALUES
(5, 'uploads/files/dOtSOyg8MQ7zAVZLYYLKkHrxzUZA8EEPSoniak7S.webp'),
(6, 'uploads/files/ld5HlEuCZOgrLPyyX7K9uhL2oqQu8rtVF80QCT04.webp'),
(7, 'uploads/files/NzhrTC3jLYc0YFszYnvwj3ODnvPPpTeIMllGrJNk.webp');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaders_of_collages`
--

CREATE TABLE `leaders_of_collages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_and_visions`
--

CREATE TABLE `message_and_visions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_and_visions`
--

INSERT INTO `message_and_visions` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'روية المعهد', '{\"1\": \"أن يكون معهدا رائدا محليا واقليميا له برامج تعليمية متميزة من خلال الشراكات البحثية والخدمة المجتمعية ونسعى ليكون معهدنا منارة للتميز في مجال علوم المحاسبة ونظم المعلومات الإدارية، ونُقدم برامج تعليمية متقدمة تُواكب أحدث التطورات العالمية، ونُعدّ طلابنا ليصبحوا خبراء في هذا المجال، ونُساهم في تنمية الاقتصاد الوطني ودعم مسيرة التحول الرقمي في مصر.\"}', '2024-06-15 07:43:01', '2024-06-15 07:43:01'),
(2, 'رسالة المعهد', '{\"1\": \"يلتزم معهد الدلتا العالي لنظم المعلومات الادارية والمحاسبية بأعداد خريج متميز يواكب ديناميكية سوق العمل من خلال توفر بيئة تعليمية جاذبه، وانتاج أبحاث علمية تساهم في حل مشاكل المجتمع وتنمية البيئة محليه مع الالتزام بأخلاقيات المهنة. وأيضا نؤمن في معهدنا بأهمية نظم المعلومات الإدارية والمحاسبية في تحقيق النجاح والتميز للمنظمات في مختلف المجالات.\"}', '2024-06-15 07:43:32', '2024-06-15 07:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_20_172252_create_personal_access_tokens_table', 2),
(5, '2024_04_21_181834_create_header_images_table', 3),
(6, '2024_04_22_190336_create_about_us_table', 4),
(7, '2024_06_07_175728_create_created_ats_table', 5),
(8, '2024_06_15_103147_create_message_and_visions_table', 6),
(9, '2024_06_15_105957_create_leaders_of_collages_table', 7),
(10, '2024_06_15_121829_create_all_files_table', 8),
(11, '2024_06_15_140014_create_complaints_table', 9),
(12, '2024_06_15_141840_create_academic_lives_table', 10),
(13, '2024_06_15_154308_create_units_and_departments_table', 11),
(14, '2024_06_16_214523_create_follow_up_committees_table', 12),
(15, '2024_06_16_215825_create_settings_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FGKGoPwaE29fYJLdhCzyJJetdUbvfIsX5KwdoCL4', NULL, '127.0.0.1', 'WhatsApp/2.2422.7 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSW83RkZTRksyQ3lramJjOTVnNXdtaVBpQ2l2VDNqZUFxSkZudHpFRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8wNDc3LTE5Ny0zMi01MC0xOTgubmdyb2stZnJlZS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717872155),
('TD2X2bwTRfTr4NyUzlHvNK42EhuGsUyf3W5hLCut', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1g4ZFI1RHI2M1V4M1ExV1hpWGJvamdXZW9tcURZdm91b3RDc05jRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8wNDc3LTE5Ny0zMi01MC0xOTgubmdyb2stZnJlZS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717872166),
('Uh1c8f041ZcuM1GfGU4H9Eg3qVt7Is9TwZdHUiJ3', NULL, '127.0.0.1', 'PostmanRuntime/7.37.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEwyUnNGb0RvYUFPSnltNDVRcmxEWEJPdU1LOGxZNUxZWUh3RWFobCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718447907),
('uqknrsYSO9TqgsiJUPhbTggLLpz5OK6PSAWn3VKi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFZPZUdGSmlrRGVpZTNIZGVQbVNOcUxwSFNHUEtpUlFaa1p5MUZPTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717794310);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `phone_number`, `address`, `facebook`, `youtube`, `footer_description`, `created_at`, `updated_at`) VALUES
(1, '01013444530 - 0502529809', 'المنصورة - طلخا - أول طريق المنصورة دمياط السريع', 'https://www.facebook.com/groups/689877418208090', 'https://www.facebook.com/groups/689877418208090', 'يهدف معهد الدلتا العالي لنظم المعلومات الإدارية والمحاسبية الي اعداد طالب متميز قادرين على مواكبة تحديات وصعوبات سوق العمل وذلك من خلال توفير أفضل السبل العلمية والتعليمية التي يتم تدريسها على ايدي نخبة من أعضاء هيئة التدريس المتميز وباستخدام أحدث الطرق التعلمية المتطورة.\nوتعمل أيضا على تنمية واعداد كوادر فنية متخصصة في فروع العلوم المحاسبية والمعلوماتية وتنمية البحث العلمي والعمل على اتاحة الفرص وحل المشكلات المتعلقة بالبيئة. وقد تم تأسيس المعهد بموجب القرار الوزاري رقم 1200 لسنة 2000.', NULL, '2024-06-16 19:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `units_and_departments`
--

CREATE TABLE `units_and_departments` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` json NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units_and_departments`
--

INSERT INTO `units_and_departments` (`id`, `title`, `description`, `page_name`, `created_at`, `updated_at`) VALUES
(1, 'مهام مدير وحدة تكنولوجيا المعلومات', '{\"1\": \"الإشراف على البنية التحتية للشبكة والانظمة المتاحة.\", \"2\": \"إدارة فرق من الفنيين ومهندسي النظام وغيرهم من موظفي تكنولوجيا المعلومات.\", \"3\": \"متابعة مشاكل اجهزة الكمبيوتر و تقديم النصيحة بخصوص الحلول المناسبة.\"}', 'information-technology', '2024-06-15 13:01:00', '2024-06-15 13:01:00'),
(2, 'مهام مدير تكنولوجيا المعلومات', '{\"1\": \"الإشراف على البنية التحتية للشبكة والانظمة المتاحة.\", \"2\": \"إدارة فرق من الفنيين ومهندسي النظام وغيرهم من موظفي تكنولوجيا المعلومات.\", \"3\": \"متابعة مشاكل اجهزة الكمبيوتر و تقديم النصيحة بخصوص الحلول المناسبة.\"}', 'information-technology', '2024-06-15 13:10:48', '2024-06-16 18:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_lives`
--
ALTER TABLE `academic_lives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_files`
--
ALTER TABLE `all_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `created_ats`
--
ALTER TABLE `created_ats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `follow_up_committees`
--
ALTER TABLE `follow_up_committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_images`
--
ALTER TABLE `header_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaders_of_collages`
--
ALTER TABLE `leaders_of_collages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_and_visions`
--
ALTER TABLE `message_and_visions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units_and_departments`
--
ALTER TABLE `units_and_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `academic_lives`
--
ALTER TABLE `academic_lives`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `all_files`
--
ALTER TABLE `all_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `created_ats`
--
ALTER TABLE `created_ats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follow_up_committees`
--
ALTER TABLE `follow_up_committees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header_images`
--
ALTER TABLE `header_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaders_of_collages`
--
ALTER TABLE `leaders_of_collages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message_and_visions`
--
ALTER TABLE `message_and_visions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units_and_departments`
--
ALTER TABLE `units_and_departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
