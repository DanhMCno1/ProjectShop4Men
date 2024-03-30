/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : 127.0.0.1:3306
 Source Schema         : shop4men

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 30/03/2024 13:26:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL,
  `parent_id` int NOT NULL DEFAULT 0,
  `status` tinyint NULL DEFAULT 1 COMMENT '1: Active , 0: Inactive',
  `deleted` tinyint NULL DEFAULT 0 COMMENT '1: Deleted , 0: No deleted',
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL COMMENT '1: Active  , 0: Inactive',
  `deleted` tinyint NULL DEFAULT NULL COMMENT '1: Deleted  , 0: No deleted',
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL,
  `price` int NULL DEFAULT NULL,
  `price_original` int NULL DEFAULT NULL,
  `percent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `is_hot` tinyint NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 1 COMMENT '1: Active, 0: Inactive',
  `deleted` tinyint NULL DEFAULT 0 COMMENT '1: Deleted, 0: active',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'QUẦN KAKI TÚI NHỎ KIỂU FORM SLIMFIT QK026 MÀU ĐEN', '<div class=\"details-box\"> <strong>Quần Kaki Túi Nhỏ Kiểu Form Slimfit QK026</strong><br> <span style=\"color:rgb(0, 0, 0); font-family:barlow,arial; font-size:12pt\"><span style=\"font-size:12pt\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\">Thông tin sản phẩm:<br> - Mã sản phẩm: QK026<br> - Chất liệu: Kaki (gồm </span></span></span></span><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:12px\">97% cotton và 3% spandex</span><span style=\"color:rgb(0, 0, 0); font-family:barlow,arial; font-size:12pt\"><span style=\"font-size:12pt\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\">)<br> - Họa tiết: Trơn<br> - Form: Slimfit<br> - Màu: Đen / Xám<br> ** Sản phẩm hiện có tại Website, Facebook và hệ thống cửa hàng 4MEN toàn quốc.</span></span></span></span> </div>', 425000, 500000, '15,4%', 0, NULL, '2024-03-16 13:36:27', '2024-03-16 13:36:30', 1, 0);

-- ----------------------------
-- Table structure for product_n_category
-- ----------------------------
DROP TABLE IF EXISTS `product_n_category`;
CREATE TABLE `product_n_category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NULL DEFAULT NULL,
  `category_id` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_n_category
-- ----------------------------

-- ----------------------------
-- Table structure for product_n_size
-- ----------------------------
DROP TABLE IF EXISTS `product_n_size`;
CREATE TABLE `product_n_size`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `size_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_n_size
-- ----------------------------
INSERT INTO `product_n_size` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  `deleted` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES (1, 'Small', 'S', '2024-03-16 13:37:07', '2024-03-16 13:37:10', 1, 0);
INSERT INTO `size` VALUES (2, 'Medium', ' M', '2024-03-25 21:55:55', '2024-03-25 21:56:00', 1, 0);
INSERT INTO `size` VALUES (3, 'Large', 'L', '2024-03-25 21:56:26', '2024-03-25 21:56:28', 1, 0);
INSERT INTO `size` VALUES (4, 'Extra Large', 'XL', '2024-03-25 21:57:17', '2024-03-25 21:57:21', 1, 0);
INSERT INTO `size` VALUES (5, '2 Extra Large', 'XXL', '2024-03-25 21:58:12', '2024-03-25 21:58:15', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
