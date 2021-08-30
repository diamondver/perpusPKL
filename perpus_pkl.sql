/*
 Navicat Premium Data Transfer

 Source Server         : Local Database
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : perpus_pkl

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 30/08/2021 23:13:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_transactions
-- ----------------------------
DROP TABLE IF EXISTS `book_transactions`;
CREATE TABLE `book_transactions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `status` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_transactions
-- ----------------------------

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int NOT NULL,
  `genre_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Buku 1', 'Udin', 4, 1, '2021-08-30 11:57:35', '2021-08-30 15:14:56');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of genres
-- ----------------------------
INSERT INTO `genres` VALUES (1, 'Sci-fi', '2021-08-30 08:52:46', '2021-08-30 08:52:46');
INSERT INTO `genres` VALUES (2, 'Pelajaran', '2021-08-30 12:31:32', '2021-08-30 12:31:32');
INSERT INTO `genres` VALUES (3, 'Action', '2021-08-30 12:32:44', '2021-08-30 12:32:44');

-- ----------------------------
-- Table structure for jurusans
-- ----------------------------
DROP TABLE IF EXISTS `jurusans`;
CREATE TABLE `jurusans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurusans
-- ----------------------------

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (12, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (13, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (14, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (15, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (16, '2021_08_29_023928_create_siswas_table', 1);
INSERT INTO `migrations` VALUES (17, '2021_08_29_024141_create_kelas_table', 1);
INSERT INTO `migrations` VALUES (18, '2021_08_29_024205_create_jurusans_table', 1);
INSERT INTO `migrations` VALUES (19, '2021_08_29_024259_create_rombels_table', 1);
INSERT INTO `migrations` VALUES (20, '2021_08_29_024341_create_transactions_table', 1);
INSERT INTO `migrations` VALUES (21, '2021_08_29_024538_create_books_table', 1);
INSERT INTO `migrations` VALUES (22, '2021_08_29_025006_create_genres_table', 1);
INSERT INTO `migrations` VALUES (23, '2021_08_29_050305_create_book_transactions_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 1, 'perpusToken', '67e06aa7dae33bb7a5572aed0045edab808fbed3c4d312c10bb7cdc1eb965aa2', '[\"*\"]', '2021-08-29 19:49:35', '2021-08-29 04:42:09', '2021-08-29 19:49:35');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 1, 'perpusToken', '5f88f9096ceb44884ce7b609fef831745988084152a76e2792d6b00be70894b5', '[\"*\"]', NULL, '2021-08-29 22:17:38', '2021-08-29 22:17:38');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 1, 'perpusToken', '9b9fea5f1827fa8b83915dc5c524aba495a47e32ed4a3bf062525037439b9cde', '[\"*\"]', NULL, '2021-08-29 22:20:07', '2021-08-29 22:20:07');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 1, 'perpusToken', '82db14d9d57837cd9476abcf2a06008effb7294b859bb9781cb7c086ba06b2b0', '[\"*\"]', NULL, '2021-08-29 22:56:12', '2021-08-29 22:56:12');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 1, 'perpusToken', '2c728b9b5a57fdbed1fd20b5607b2cb707fee610938e73ecdc4ec051b85bc249', '[\"*\"]', NULL, '2021-08-30 00:00:28', '2021-08-30 00:00:28');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 1, 'perpusToken', 'ad257e75692c581a2b267663ef19b7d977e1689b3cd4053980340c1883eda310', '[\"*\"]', NULL, '2021-08-30 00:09:56', '2021-08-30 00:09:56');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 1, 'perpusToken', 'd45b59a6ed0369720932b9b8d55d18955a9a54dec7067a3d9f92dfff65939f59', '[\"*\"]', NULL, '2021-08-30 00:17:18', '2021-08-30 00:17:18');

-- ----------------------------
-- Table structure for rombels
-- ----------------------------
DROP TABLE IF EXISTS `rombels`;
CREATE TABLE `rombels`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `huruf` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rombels
-- ----------------------------

-- ----------------------------
-- Table structure for siswas
-- ----------------------------
DROP TABLE IF EXISTS `siswas`;
CREATE TABLE `siswas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int NOT NULL,
  `jurusan_id` int NOT NULL,
  `rombel_id` int NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siswas
-- ----------------------------

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `siswa_id` int NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `is_back` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_lvl` int NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'User', 'user23', 'user@gmail.com', '$2y$10$dQH/redxbNCa9YAxmdvoJO6FpNF5tjsgWwM5M0h7nQqwy81T/h9OC', 1, NULL, '2021-08-29 04:09:49', '2021-08-29 04:09:49');

SET FOREIGN_KEY_CHECKS = 1;
