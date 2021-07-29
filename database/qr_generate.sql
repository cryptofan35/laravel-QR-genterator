/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100419
 Source Host           : localhost:3306
 Source Schema         : qr_generate

 Target Server Type    : MySQL
 Target Server Version : 100419
 File Encoding         : 65001

 Date: 29/07/2021 21:49:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES (1, 1, '1S4u7lJzehk62xDm3DgYgXXYWtbHE6gSP', 1, NULL, NULL, NULL);
INSERT INTO `activations` VALUES (3, 2, 'T9EU3AKLBUrxOYCv0QOcHk8pmJawHNYb', 1, '2021-07-27 09:34:43', '2021-07-27 09:34:42', '2021-07-27 09:34:43');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_07_02_230147_migration_cartalyst_sentinel', 1);
INSERT INTO `migrations` VALUES (2, '2017_05_05_084634_PasswordReset', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  INDEX `password_resets_email_index`(`email`) USING BTREE,
  INDEX `password_resets_token_index`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for persistences
-- ----------------------------
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `persistences_code_unique`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of persistences
-- ----------------------------
INSERT INTO `persistences` VALUES (4, 1, 'leiOaJfbENsMEGvssbuTIIbQWbTbFBgA', '2021-07-26 02:48:59', '2021-07-26 02:48:59');
INSERT INTO `persistences` VALUES (5, 2, 'OP0FkyLgbizqVH31aYBxUgrDiNgzfYUK', '2021-07-26 02:50:03', '2021-07-26 02:50:03');
INSERT INTO `persistences` VALUES (6, 1, 'QapJMlWABwpI3s9mUoEHaMkDuzpRpVIN', '2021-07-26 08:14:06', '2021-07-26 08:14:06');
INSERT INTO `persistences` VALUES (7, 1, 'myMPAdY2UL5yRXKTmlAsxZve0NsNRhlm', '2021-07-26 16:17:43', '2021-07-26 16:17:43');
INSERT INTO `persistences` VALUES (8, 1, 'XBJUyHqS76JESTg8wiWjRj4moX7YJ7Ml', '2021-07-27 07:36:05', '2021-07-27 07:36:05');
INSERT INTO `persistences` VALUES (9, 1, 'hGaOi5vdu0qyweKW5qJ3zSyuSjw4iSGQ', '2021-07-27 07:39:47', '2021-07-27 07:39:47');
INSERT INTO `persistences` VALUES (10, 1, 'NLdDVF2GbmWrmSEkyo8Ynu1CTlDUpRFg', '2021-07-27 08:42:03', '2021-07-27 08:42:03');
INSERT INTO `persistences` VALUES (28, 1, 'Sqp6SiG09IgeWsDcsvcYUEqeN5ErhHgY', '2021-07-27 21:47:46', '2021-07-27 21:47:46');
INSERT INTO `persistences` VALUES (30, 1, 'dX3RDL8KjZXHwfv3PM0tkEsWpXeVGVHK', '2021-07-27 22:04:00', '2021-07-27 22:04:00');
INSERT INTO `persistences` VALUES (31, 1, '7eJ3nDN9uWFdbaazIDEqKMVnLPPoJkZx', '2021-07-27 22:05:15', '2021-07-27 22:05:15');
INSERT INTO `persistences` VALUES (32, 1, 'DkfjdNRAwvdUr6Zycv01hImgbkl4JrAA', '2021-07-27 22:05:41', '2021-07-27 22:05:41');
INSERT INTO `persistences` VALUES (33, 1, 'DKfvwE6jJNOcIQwxANjZRFDwoJAViAep', '2021-07-27 22:07:43', '2021-07-27 22:07:43');
INSERT INTO `persistences` VALUES (34, 1, 'EvGe8uQwDjhq9a14BmJ3a5PIMPAFobsQ', '2021-07-27 22:08:17', '2021-07-27 22:08:17');
INSERT INTO `persistences` VALUES (35, 1, 'rnQOCZgeYO1bjBfV3LPZMf57mphqzBHE', '2021-07-27 22:09:02', '2021-07-27 22:09:02');
INSERT INTO `persistences` VALUES (36, 1, 'bDnky09IF3tV8V7shNfCBBfoBp4QDS4P', '2021-07-27 22:09:33', '2021-07-27 22:09:33');
INSERT INTO `persistences` VALUES (37, 1, '4AW7YGLfJgGs9v4XgtYVKvgleU1XwtRV', '2021-07-27 22:12:14', '2021-07-27 22:12:14');
INSERT INTO `persistences` VALUES (38, 1, 'VikrYD2u1uMfcDYj7cLQJ2qVbtoJSwPS', '2021-07-27 22:12:58', '2021-07-27 22:12:58');
INSERT INTO `persistences` VALUES (39, 1, 'dtXDHLZmSL8v0cmkzujIOYCmHFoi655K', '2021-07-27 22:14:10', '2021-07-27 22:14:10');
INSERT INTO `persistences` VALUES (40, 1, 'lPNvnMCoKvaDqHgLz473jr7C7B7PE3ao', '2021-07-27 22:14:14', '2021-07-27 22:14:14');
INSERT INTO `persistences` VALUES (41, 1, 'qdbQWIxLVbw1R7oE5c426nH5mZqgGcRT', '2021-07-27 22:16:39', '2021-07-27 22:16:39');
INSERT INTO `persistences` VALUES (46, 1, 'LgqjFoz2hzgjF0mz3zCyTIkIRte2QX8r', '2021-07-27 22:22:49', '2021-07-27 22:22:49');
INSERT INTO `persistences` VALUES (47, 1, 'FUWZkAib8IfwH6x1p60Txw0FpP30ePuX', '2021-07-28 07:08:02', '2021-07-28 07:08:02');
INSERT INTO `persistences` VALUES (48, 2, 'xaFSESmFi7o6DZJcqfD9sX9ifDLk9Vyd', '2021-07-28 09:32:03', '2021-07-28 09:32:03');
INSERT INTO `persistences` VALUES (50, 2, 'chhyFKzINJ9BXVG0jRXkejU0j1ebXt8A', '2021-07-29 04:21:53', '2021-07-29 04:21:53');
INSERT INTO `persistences` VALUES (51, 2, 'vJ2rrjPW8TKxKN5pY7y3Zh0XLNm7VyCl', '2021-07-29 06:29:10', '2021-07-29 06:29:10');
INSERT INTO `persistences` VALUES (56, 1, 'kZ5LnuF0ktQ57PHN8LtHCG5f07ZEuiuw', '2021-07-29 17:26:54', '2021-07-29 17:26:54');
INSERT INTO `persistences` VALUES (57, 2, '3eBTpUIYb8LsNoW8WQwT4gaqYQJXCsfa', '2021-07-29 19:42:16', '2021-07-29 19:42:16');

-- ----------------------------
-- Table structure for qr_contents
-- ----------------------------
DROP TABLE IF EXISTS `qr_contents`;
CREATE TABLE `qr_contents`  (
  `qr_id` int NULL DEFAULT 1000000,
  `qr_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qr_contents
-- ----------------------------

-- ----------------------------
-- Table structure for reminders
-- ----------------------------
DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reminders
-- ----------------------------

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users`  (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `role_users` VALUES (2, 2, '2021-07-26 02:30:48', '2021-07-26 02:30:48');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'Admin', '{\"password.request\":true,\"password.email\":true,\"password.reset\":true,\"home.dashboard\":true,\"user.index\":true,\"user.create\":true,\"user.store\":true,\"user.show\":true,\"user.edit\":true,\"user.update\":true,\"user.destroy\":true,\"user.permissions\":true,\"user.save\":true,\"user.activate\":true,\"user.deactivate\":true,\"role.index\":true,\"role.create\":true,\"role.store\":true,\"role.show\":true,\"role.edit\":true,\"role.update\":true,\"role.destroy\":true,\"role.permissions\":true,\"role.save\":true}', NULL, NULL);
INSERT INTO `roles` VALUES (2, 'client', 'client', '{\"home.dashboard\":true}', NULL, NULL);

-- ----------------------------
-- Table structure for throttle
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `throttle_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of throttle
-- ----------------------------
INSERT INTO `throttle` VALUES (1, NULL, 'global', NULL, '2021-07-26 02:31:09', '2021-07-26 02:31:09');
INSERT INTO `throttle` VALUES (2, NULL, 'ip', '::1', '2021-07-26 02:31:10', '2021-07-26 02:31:10');
INSERT INTO `throttle` VALUES (3, 2, 'user', NULL, '2021-07-26 02:31:10', '2021-07-26 02:31:10');
INSERT INTO `throttle` VALUES (4, NULL, 'global', NULL, '2021-07-26 02:31:18', '2021-07-26 02:31:18');
INSERT INTO `throttle` VALUES (5, NULL, 'ip', '::1', '2021-07-26 02:31:18', '2021-07-26 02:31:18');
INSERT INTO `throttle` VALUES (6, 2, 'user', NULL, '2021-07-26 02:31:18', '2021-07-26 02:31:18');
INSERT INTO `throttle` VALUES (7, NULL, 'global', NULL, '2021-07-26 02:31:36', '2021-07-26 02:31:36');
INSERT INTO `throttle` VALUES (8, NULL, 'ip', '::1', '2021-07-26 02:31:36', '2021-07-26 02:31:36');
INSERT INTO `throttle` VALUES (9, 2, 'user', NULL, '2021-07-26 02:31:36', '2021-07-26 02:31:36');
INSERT INTO `throttle` VALUES (10, NULL, 'global', NULL, '2021-07-26 02:31:45', '2021-07-26 02:31:45');
INSERT INTO `throttle` VALUES (11, NULL, 'ip', '::1', '2021-07-26 02:31:45', '2021-07-26 02:31:45');
INSERT INTO `throttle` VALUES (12, NULL, 'global', NULL, '2021-07-26 08:13:56', '2021-07-26 08:13:56');
INSERT INTO `throttle` VALUES (13, NULL, 'ip', '::1', '2021-07-26 08:13:56', '2021-07-26 08:13:56');
INSERT INTO `throttle` VALUES (14, 1, 'user', NULL, '2021-07-26 08:13:56', '2021-07-26 08:13:56');
INSERT INTO `throttle` VALUES (15, NULL, 'global', NULL, '2021-07-27 21:02:07', '2021-07-27 21:02:07');
INSERT INTO `throttle` VALUES (16, NULL, 'ip', '::1', '2021-07-27 21:02:07', '2021-07-27 21:02:07');
INSERT INTO `throttle` VALUES (17, NULL, 'global', NULL, '2021-07-27 21:05:00', '2021-07-27 21:05:00');
INSERT INTO `throttle` VALUES (18, NULL, 'ip', '::1', '2021-07-27 21:05:00', '2021-07-27 21:05:00');
INSERT INTO `throttle` VALUES (19, 2, 'user', NULL, '2021-07-27 21:05:00', '2021-07-27 21:05:00');
INSERT INTO `throttle` VALUES (20, NULL, 'global', NULL, '2021-07-27 21:05:35', '2021-07-27 21:05:35');
INSERT INTO `throttle` VALUES (21, NULL, 'ip', '::1', '2021-07-27 21:05:35', '2021-07-27 21:05:35');
INSERT INTO `throttle` VALUES (22, 2, 'user', NULL, '2021-07-27 21:05:35', '2021-07-27 21:05:35');
INSERT INTO `throttle` VALUES (23, NULL, 'global', NULL, '2021-07-28 07:07:57', '2021-07-28 07:07:57');
INSERT INTO `throttle` VALUES (24, NULL, 'ip', '::1', '2021-07-28 07:07:57', '2021-07-28 07:07:57');
INSERT INTO `throttle` VALUES (25, 1, 'user', NULL, '2021-07-28 07:07:57', '2021-07-28 07:07:57');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `QRpassword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yb277YVjeEIcAQ1LfQvwB6vkjjLvEptn9DQmvGOR',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin@gmail.com', '$2y$10$7afqRcDEFsHPD9mFPnLc/.MPE6IG2IYlhRE5rQClKGWfJqpR10VfO', '$2y$10$syZxErOrI4/MUzlvf9X8qeFezKTVi1erVRWVbth3z1qGkd6mXoNJG', '{\"home.dashboard\":true}', '2021-07-29 17:26:54', 'admin', 'client', NULL, NULL, NULL, '2021-07-29 17:26:54');
INSERT INTO `users` VALUES (2, 'orion@gmail.com', '$2y$10$SLhHQlm6PC1TU3rm9PPYtudzZlxzSfYQ8ymvJXFpH3UVk.4cwk0xi', 'Yb277YVjeEIcAQ1LfQvwB6vkjjLvEptn9DQmvGOR', NULL, '2021-07-29 19:42:16', 'orion', 'orion', NULL, NULL, '2021-07-26 02:30:48', '2021-07-29 19:42:16');

SET FOREIGN_KEY_CHECKS = 1;
