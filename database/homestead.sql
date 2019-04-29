/*
Navicat MySQL Data Transfer

Source Server         : homestead
Source Server Version : 50722
Source Host           : 192.168.10.10:3306
Source Database       : homestead

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-04-29 11:18:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, null, '2019-04-16 03:10:28');
INSERT INTO `admin_menu` VALUES ('2', '0', '6', '系统管理', 'fa-tasks', null, null, null, '2019-04-28 14:45:02');
INSERT INTO `admin_menu` VALUES ('3', '2', '7', '管理员', 'fa-users', 'auth/users', null, null, '2019-04-28 14:45:02');
INSERT INTO `admin_menu` VALUES ('4', '2', '8', '角色', 'fa-user', 'auth/roles', null, null, '2019-04-28 14:45:02');
INSERT INTO `admin_menu` VALUES ('5', '2', '9', '权限', 'fa-ban', 'auth/permissions', null, null, '2019-04-28 14:45:02');
INSERT INTO `admin_menu` VALUES ('6', '2', '10', '菜单', 'fa-bars', 'auth/menu', null, null, '2019-04-28 14:45:02');
INSERT INTO `admin_menu` VALUES ('7', '2', '11', '操作日志', 'fa-history', 'auth/logs', null, null, '2019-04-28 14:45:02');
INSERT INTO `admin_menu` VALUES ('8', '0', '2', '用户管理', 'fa-users', '/users', null, '2019-04-16 03:25:20', '2019-04-16 03:26:06');
INSERT INTO `admin_menu` VALUES ('9', '0', '3', '商品管理', 'fa-cubes', '/products', null, '2019-04-16 07:58:55', '2019-04-16 07:59:21');
INSERT INTO `admin_menu` VALUES ('10', '0', '4', '订单管理', 'fa-rmb', '/orders', null, '2019-04-25 10:41:10', '2019-04-25 10:41:22');
INSERT INTO `admin_menu` VALUES ('11', '0', '5', '优惠券管理', 'fa-tags', '/coupon_codes', null, '2019-04-28 14:44:53', '2019-04-28 14:45:02');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '2', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-29 10:59:30', '2019-04-29 10:59:30');
INSERT INTO `admin_operation_log` VALUES ('2', '2', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-29 10:59:33', '2019-04-29 10:59:33');
INSERT INTO `admin_operation_log` VALUES ('3', '2', 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-29 10:59:34', '2019-04-29 10:59:34');
INSERT INTO `admin_operation_log` VALUES ('4', '2', 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2019-04-29 10:59:38', '2019-04-29 10:59:38');
INSERT INTO `admin_operation_log` VALUES ('5', '2', 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2019-04-29 10:59:42', '2019-04-29 10:59:42');
INSERT INTO `admin_operation_log` VALUES ('6', '2', 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-29 10:59:52', '2019-04-29 10:59:52');
INSERT INTO `admin_operation_log` VALUES ('7', '2', 'admin/coupon_codes', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-29 10:59:54', '2019-04-29 10:59:54');
INSERT INTO `admin_operation_log` VALUES ('8', '2', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-29 11:00:02', '2019-04-29 11:00:02');
INSERT INTO `admin_operation_log` VALUES ('9', '2', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-29 11:00:04', '2019-04-29 11:00:04');
INSERT INTO `admin_operation_log` VALUES ('10', '2', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-29 11:00:06', '2019-04-29 11:00:06');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', '用户管理', 'users', '', '/users*', '2019-04-16 03:30:51', '2019-04-16 03:30:51');
INSERT INTO `admin_permissions` VALUES ('7', '商品管理', 'products', '', '/products*', '2019-04-29 10:18:32', '2019-04-29 10:18:32');
INSERT INTO `admin_permissions` VALUES ('8', '优惠券管理', 'coupon_codes', '', '/coupon_codes*', '2019-04-29 10:19:15', '2019-04-29 10:19:15');
INSERT INTO `admin_permissions` VALUES ('9', '订单管理', 'orders', '', '/orders*', '2019-04-29 10:19:44', '2019-04-29 10:19:44');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '6', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '7', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '8', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '9', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2019-04-16 03:03:21', '2019-04-16 03:03:21');
INSERT INTO `admin_roles` VALUES ('2', '运营', 'operator', '2019-04-16 03:33:21', '2019-04-16 03:33:21');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$lSRRuwmsTkR9FGTwB4Mm2eC7UWCUw6PDMAeBy4xjWEr9sbCxmmYHK', 'Administrator', null, 'zkWqJPMtr8VrJFjDii86uITZJfKDDQmbIE9nTzLfpZFVKqqvsi06cMS7SFaq', '2019-04-16 03:03:20', '2019-04-16 03:03:20');
INSERT INTO `admin_users` VALUES ('2', 'operator', '$2y$10$Xf4q1AHG1lOAdTrULVeD4eTSEzlLAvztAqzIO.QrbFpNARiUnRZN2', '运营', null, null, '2019-04-16 03:34:30', '2019-04-16 03:34:30');

-- ----------------------------
-- Table structure for `cart_items`
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_sku_id` int(10) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_user_id_foreign` (`user_id`),
  KEY `cart_items_product_sku_id_foreign` (`product_sku_id`),
  CONSTRAINT `cart_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cart_items
-- ----------------------------

-- ----------------------------
-- Table structure for `coupon_codes`
-- ----------------------------
DROP TABLE IF EXISTS `coupon_codes`;
CREATE TABLE `coupon_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `used` int(10) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) NOT NULL,
  `not_before` datetime DEFAULT NULL,
  `not_after` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_codes_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of coupon_codes
-- ----------------------------
INSERT INTO `coupon_codes` VALUES ('1', 'sed soluta id', 'HPS8SJESRBB2WPGN', 'fixed', '107.00', '1000', '0', '107.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('2', 'minima fugiat sint', 'YW8MAAFJVCQMJJPW', 'percent', '44.00', '1000', '0', '764.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('3', 'ut omnis dolores', 'YLXJCRT4J6FFHTU6', 'percent', '16.00', '1000', '7', '0.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:57');
INSERT INTO `coupon_codes` VALUES ('4', 'eum minus atque', 'KR99ZCVFMDSTWCI8', 'fixed', '155.00', '1000', '0', '155.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('5', 'magni impedit qui', 'WRND0AJJ41RYDT8J', 'fixed', '21.00', '1000', '0', '21.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('6', 'et incidunt quia', '0OITDHMD31YBGKTW', 'fixed', '14.00', '1000', '0', '14.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('7', 'ducimus eum cupiditate', 'FYU3ISIZ644ZC0W2', 'percent', '30.00', '1000', '0', '570.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('8', 'occaecati placeat omnis', 'QQG27EFNRG33HQMM', 'percent', '28.00', '1000', '0', '147.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('9', 'molestiae in reprehenderit', '1VXKYJESRO1HR84Z', 'percent', '5.00', '1000', '8', '0.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:57');
INSERT INTO `coupon_codes` VALUES ('10', 'voluptate sunt error', 'PKETEAAA3WPL0C4F', 'fixed', '115.00', '1000', '0', '115.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('11', 'earum consequatur itaque', 'Z8VELCPCQJ9TEPCK', 'percent', '25.00', '1000', '0', '375.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('12', 'dolorem assumenda expedita', 'PUSILJIA95KNI5QX', 'fixed', '156.00', '1000', '0', '156.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('13', 'ea deserunt mollitia', '9O76TSLJH6BIDIQX', 'fixed', '142.00', '1000', '0', '142.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('14', 'facilis perspiciatis nihil', '2FZ16CYQZY9SNHVQ', 'fixed', '117.00', '1000', '0', '117.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('15', 'veritatis molestiae laudantium', 'AJKLNOAOC2IG6785', 'percent', '9.00', '1000', '0', '321.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('16', 'minima porro dicta', 'EPJQ07N9R6T1MSGZ', 'fixed', '5.00', '1000', '0', '5.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('17', 'eum omnis enim', 'T9H57WKQNSYLRULQ', 'fixed', '188.00', '1000', '0', '188.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('18', 'aut officia aperiam', '9I5Y2CMU2ZI9QYNE', 'percent', '21.00', '1000', '12', '0.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:58');
INSERT INTO `coupon_codes` VALUES ('19', 'aut ut sint', 'WB3Q0PU3IXYLGUZB', 'fixed', '173.00', '1000', '0', '173.01', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `coupon_codes` VALUES ('20', 'sunt non quo', 'GO3BKK4XUDNXZBB4', 'percent', '26.00', '1000', '9', '0.00', null, null, '1', '2019-04-29 10:56:56', '2019-04-29 10:56:57');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2019_04_15_021710_create_user_addresses_table', '1');
INSERT INTO `migrations` VALUES ('5', '2019_04_16_071411_create_products_table', '1');
INSERT INTO `migrations` VALUES ('6', '2019_04_16_071617_create_product_skus_table', '1');
INSERT INTO `migrations` VALUES ('7', '2019_04_19_020153_create_user_favorite_products_table', '1');
INSERT INTO `migrations` VALUES ('8', '2019_04_19_070336_create_cart_items_table', '1');
INSERT INTO `migrations` VALUES ('9', '2019_04_22_020206_create_orders_table', '1');
INSERT INTO `migrations` VALUES ('10', '2019_04_22_020923_create_order_items_table', '1');
INSERT INTO `migrations` VALUES ('11', '2019_04_28_142808_create_coupon_codes_table', '1');
INSERT INTO `migrations` VALUES ('12', '2019_04_28_143510_orders_add_coupon_code_id', '1');

-- ----------------------------
-- Table structure for `order_items`
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_sku_id` int(10) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rating` int(10) unsigned DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_product_sku_id_foreign` (`product_sku_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('1', '1', '2', '4', '5', '4783.00', null, null, null);
INSERT INTO `order_items` VALUES ('2', '1', '19', '56', '1', '7629.00', null, null, null);
INSERT INTO `order_items` VALUES ('3', '1', '20', '60', '3', '4695.00', null, null, null);
INSERT INTO `order_items` VALUES ('4', '2', '18', '52', '4', '3833.00', null, null, null);
INSERT INTO `order_items` VALUES ('5', '2', '26', '76', '2', '7076.00', null, null, null);
INSERT INTO `order_items` VALUES ('6', '2', '30', '89', '3', '5716.00', null, null, null);
INSERT INTO `order_items` VALUES ('7', '3', '26', '76', '1', '7076.00', null, null, null);
INSERT INTO `order_items` VALUES ('8', '3', '1', '2', '5', '2791.00', null, null, null);
INSERT INTO `order_items` VALUES ('9', '3', '20', '59', '3', '3095.00', null, null, null);
INSERT INTO `order_items` VALUES ('10', '4', '29', '86', '2', '672.00', '4', 'Est aut recusandae inventore.', '2019-04-28 22:55:42');
INSERT INTO `order_items` VALUES ('11', '5', '30', '89', '3', '5716.00', '1', 'Rerum in et ut iure architecto iusto veniam eos.', '2019-04-22 01:49:18');
INSERT INTO `order_items` VALUES ('12', '5', '17', '51', '4', '398.00', '1', 'Rerum in et ut iure architecto iusto veniam eos.', '2019-04-22 01:49:18');
INSERT INTO `order_items` VALUES ('13', '5', '12', '34', '5', '17.00', '1', 'Rerum in et ut iure architecto iusto veniam eos.', '2019-04-22 01:49:18');
INSERT INTO `order_items` VALUES ('14', '6', '23', '69', '4', '1496.00', null, null, null);
INSERT INTO `order_items` VALUES ('15', '6', '10', '29', '2', '2724.00', null, null, null);
INSERT INTO `order_items` VALUES ('16', '7', '17', '51', '3', '398.00', '4', 'Quos asperiores tempore ut et occaecati.', '2019-04-28 20:05:22');
INSERT INTO `order_items` VALUES ('17', '7', '12', '35', '5', '6519.00', '4', 'Quos asperiores tempore ut et occaecati.', '2019-04-28 20:05:22');
INSERT INTO `order_items` VALUES ('18', '8', '16', '47', '1', '6900.00', '5', 'Beatae molestiae sunt ea officiis.', '2019-04-16 01:29:04');
INSERT INTO `order_items` VALUES ('19', '8', '4', '11', '5', '4429.00', '5', 'Beatae molestiae sunt ea officiis.', '2019-04-16 01:29:04');
INSERT INTO `order_items` VALUES ('20', '8', '1', '1', '1', '9937.00', '5', 'Beatae molestiae sunt ea officiis.', '2019-04-16 01:29:04');
INSERT INTO `order_items` VALUES ('21', '9', '5', '15', '1', '5356.00', null, null, null);
INSERT INTO `order_items` VALUES ('22', '10', '3', '9', '5', '4185.00', '5', 'A impedit a non ut aut qui.', '2019-04-10 00:31:30');
INSERT INTO `order_items` VALUES ('23', '11', '16', '46', '1', '1311.00', null, null, null);
INSERT INTO `order_items` VALUES ('24', '12', '14', '41', '3', '7988.00', null, null, null);
INSERT INTO `order_items` VALUES ('25', '13', '25', '74', '3', '9995.00', null, null, null);
INSERT INTO `order_items` VALUES ('26', '13', '6', '18', '1', '5489.00', null, null, null);
INSERT INTO `order_items` VALUES ('27', '14', '13', '38', '3', '5031.00', '2', 'In omnis ullam ipsum aliquam fugiat veniam.', '2019-04-16 15:23:17');
INSERT INTO `order_items` VALUES ('28', '15', '13', '39', '2', '1904.00', '5', 'Repellat eum quisquam occaecati cupiditate.', '2019-04-23 22:09:58');
INSERT INTO `order_items` VALUES ('29', '15', '12', '36', '5', '1275.00', '5', 'Repellat eum quisquam occaecati cupiditate.', '2019-04-23 22:09:58');
INSERT INTO `order_items` VALUES ('30', '15', '29', '86', '3', '672.00', '5', 'Repellat eum quisquam occaecati cupiditate.', '2019-04-23 22:09:58');
INSERT INTO `order_items` VALUES ('31', '16', '27', '79', '3', '3819.00', '4', 'Eius maxime vel error vitae quae autem deleniti.', '2019-04-29 01:25:04');
INSERT INTO `order_items` VALUES ('32', '17', '23', '68', '1', '7125.00', null, null, null);
INSERT INTO `order_items` VALUES ('33', '17', '22', '65', '2', '9100.00', null, null, null);
INSERT INTO `order_items` VALUES ('34', '18', '20', '60', '2', '4695.00', '4', 'Est rem in laudantium nihil sed dicta.', '2019-04-04 21:18:51');
INSERT INTO `order_items` VALUES ('35', '19', '17', '49', '5', '9243.00', '5', 'Corrupti est dolorem ea autem asperiores.', '2019-04-12 04:41:11');
INSERT INTO `order_items` VALUES ('36', '19', '22', '64', '4', '6033.00', '5', 'Corrupti est dolorem ea autem asperiores.', '2019-04-12 04:41:11');
INSERT INTO `order_items` VALUES ('37', '20', '22', '64', '1', '6033.00', '5', 'Magnam veniam reiciendis eaque.', '2019-04-28 20:09:28');
INSERT INTO `order_items` VALUES ('38', '21', '5', '13', '4', '2048.00', '1', 'Odit nisi doloribus totam qui aut consequatur.', '2019-04-26 03:41:24');
INSERT INTO `order_items` VALUES ('39', '21', '20', '58', '4', '8028.00', '1', 'Odit nisi doloribus totam qui aut consequatur.', '2019-04-26 03:41:24');
INSERT INTO `order_items` VALUES ('40', '22', '23', '67', '5', '9417.00', '5', 'Sunt officiis in ea quaerat sed voluptatem placeat.', '2019-04-26 18:59:09');
INSERT INTO `order_items` VALUES ('41', '22', '9', '25', '1', '5600.00', '5', 'Sunt officiis in ea quaerat sed voluptatem placeat.', '2019-04-26 18:59:09');
INSERT INTO `order_items` VALUES ('42', '23', '13', '38', '5', '5031.00', null, null, null);
INSERT INTO `order_items` VALUES ('43', '24', '29', '86', '4', '672.00', '3', 'Odit ratione laudantium eum voluptatem minima quibusdam qui.', '2019-04-28 02:25:28');
INSERT INTO `order_items` VALUES ('44', '25', '16', '48', '4', '5165.00', null, null, null);
INSERT INTO `order_items` VALUES ('45', '25', '18', '54', '1', '4677.00', null, null, null);
INSERT INTO `order_items` VALUES ('46', '25', '2', '5', '4', '5600.00', null, null, null);
INSERT INTO `order_items` VALUES ('47', '26', '28', '82', '4', '1265.00', '5', 'Dicta corporis dolor est magni.', '2019-04-23 06:17:05');
INSERT INTO `order_items` VALUES ('48', '26', '6', '17', '1', '8765.00', '5', 'Dicta corporis dolor est magni.', '2019-04-23 06:17:05');
INSERT INTO `order_items` VALUES ('49', '26', '24', '71', '1', '3236.00', '5', 'Dicta corporis dolor est magni.', '2019-04-23 06:17:05');
INSERT INTO `order_items` VALUES ('50', '27', '27', '81', '2', '6850.00', '1', 'Pariatur sit autem tempore voluptates consectetur.', '2019-04-15 20:54:16');
INSERT INTO `order_items` VALUES ('51', '27', '10', '30', '1', '2597.00', '1', 'Pariatur sit autem tempore voluptates consectetur.', '2019-04-15 20:54:16');
INSERT INTO `order_items` VALUES ('52', '28', '14', '42', '3', '8282.00', null, null, null);
INSERT INTO `order_items` VALUES ('53', '28', '24', '72', '2', '280.00', null, null, null);
INSERT INTO `order_items` VALUES ('54', '28', '29', '86', '1', '672.00', null, null, null);
INSERT INTO `order_items` VALUES ('55', '29', '21', '63', '1', '1120.00', null, null, null);
INSERT INTO `order_items` VALUES ('56', '29', '1', '2', '5', '2791.00', null, null, null);
INSERT INTO `order_items` VALUES ('57', '29', '29', '86', '1', '672.00', null, null, null);
INSERT INTO `order_items` VALUES ('58', '30', '14', '40', '1', '3511.00', '2', 'Recusandae accusamus doloremque sit quisquam est esse.', '2019-04-26 06:18:21');
INSERT INTO `order_items` VALUES ('59', '31', '28', '83', '5', '9669.00', '1', 'Reiciendis aspernatur suscipit dolore ducimus perspiciatis quas sunt.', '2019-04-27 00:50:24');
INSERT INTO `order_items` VALUES ('60', '32', '30', '88', '5', '4143.00', '2', 'Accusamus laboriosam quis qui culpa consectetur dolorem.', '2019-04-20 06:50:01');
INSERT INTO `order_items` VALUES ('61', '32', '10', '29', '5', '2724.00', '2', 'Accusamus laboriosam quis qui culpa consectetur dolorem.', '2019-04-20 06:50:01');
INSERT INTO `order_items` VALUES ('62', '33', '9', '27', '1', '5546.00', null, null, null);
INSERT INTO `order_items` VALUES ('63', '33', '28', '84', '5', '488.00', null, null, null);
INSERT INTO `order_items` VALUES ('64', '33', '22', '66', '2', '7680.00', null, null, null);
INSERT INTO `order_items` VALUES ('65', '34', '25', '73', '1', '4362.00', '5', 'Omnis quas inventore est voluptas sed enim.', '2019-04-26 17:01:54');
INSERT INTO `order_items` VALUES ('66', '34', '29', '86', '1', '672.00', '5', 'Omnis quas inventore est voluptas sed enim.', '2019-04-26 17:01:54');
INSERT INTO `order_items` VALUES ('67', '35', '15', '45', '2', '6893.00', '2', 'Dolor sunt sed et ducimus.', '2019-04-27 15:04:25');
INSERT INTO `order_items` VALUES ('68', '35', '1', '1', '2', '9937.00', '2', 'Dolor sunt sed et ducimus.', '2019-04-27 15:04:25');
INSERT INTO `order_items` VALUES ('69', '36', '5', '14', '3', '540.00', '1', 'Ab eum distinctio facilis aut doloribus non quo.', '2019-04-21 10:44:45');
INSERT INTO `order_items` VALUES ('70', '36', '30', '89', '2', '5716.00', '1', 'Ab eum distinctio facilis aut doloribus non quo.', '2019-04-21 10:44:45');
INSERT INTO `order_items` VALUES ('71', '37', '15', '43', '2', '9609.00', '1', 'Id voluptas accusantium aut eos qui.', '2019-04-26 14:18:01');
INSERT INTO `order_items` VALUES ('72', '38', '11', '31', '5', '4059.00', '2', 'Quia dolor similique assumenda et magnam est.', '2019-04-27 05:49:00');
INSERT INTO `order_items` VALUES ('73', '38', '6', '18', '3', '5489.00', '2', 'Quia dolor similique assumenda et magnam est.', '2019-04-27 05:49:00');
INSERT INTO `order_items` VALUES ('74', '38', '12', '34', '5', '17.00', '2', 'Quia dolor similique assumenda et magnam est.', '2019-04-27 05:49:00');
INSERT INTO `order_items` VALUES ('75', '39', '16', '46', '1', '1311.00', '3', 'Sapiente laudantium consequatur ut odio earum magnam rerum.', '2019-04-23 10:01:22');
INSERT INTO `order_items` VALUES ('76', '39', '21', '63', '2', '1120.00', '3', 'Sapiente laudantium consequatur ut odio earum magnam rerum.', '2019-04-23 10:01:22');
INSERT INTO `order_items` VALUES ('77', '40', '16', '48', '3', '5165.00', '3', 'Iure qui cupiditate nobis nulla.', '2019-04-26 21:15:02');
INSERT INTO `order_items` VALUES ('78', '41', '30', '90', '5', '5631.00', '3', 'Officia fuga consequatur unde deserunt voluptas eos et.', '2019-04-27 05:49:06');
INSERT INTO `order_items` VALUES ('79', '41', '6', '17', '3', '8765.00', '3', 'Officia fuga consequatur unde deserunt voluptas eos et.', '2019-04-27 05:49:06');
INSERT INTO `order_items` VALUES ('80', '41', '19', '57', '4', '1049.00', '3', 'Officia fuga consequatur unde deserunt voluptas eos et.', '2019-04-27 05:49:06');
INSERT INTO `order_items` VALUES ('81', '42', '13', '38', '1', '5031.00', '4', 'Fugit laudantium tempore omnis ullam facilis.', '2019-04-22 22:15:45');
INSERT INTO `order_items` VALUES ('82', '42', '17', '51', '3', '398.00', '4', 'Fugit laudantium tempore omnis ullam facilis.', '2019-04-22 22:15:45');
INSERT INTO `order_items` VALUES ('83', '42', '30', '89', '5', '5716.00', '4', 'Fugit laudantium tempore omnis ullam facilis.', '2019-04-22 22:15:45');
INSERT INTO `order_items` VALUES ('84', '43', '7', '20', '3', '6729.00', '1', 'Nostrum doloremque eveniet voluptatum vitae.', '2019-04-27 03:22:58');
INSERT INTO `order_items` VALUES ('85', '44', '15', '45', '3', '6893.00', '4', 'Sit accusantium doloremque et aut.', '2019-04-18 15:51:35');
INSERT INTO `order_items` VALUES ('86', '44', '27', '79', '4', '3819.00', '4', 'Sit accusantium doloremque et aut.', '2019-04-18 15:51:35');
INSERT INTO `order_items` VALUES ('87', '45', '28', '84', '4', '488.00', '3', 'Ut necessitatibus soluta porro minima a.', '2019-04-11 22:22:30');
INSERT INTO `order_items` VALUES ('88', '45', '30', '89', '4', '5716.00', '3', 'Ut necessitatibus soluta porro minima a.', '2019-04-11 22:22:30');
INSERT INTO `order_items` VALUES ('89', '46', '4', '11', '1', '4429.00', '5', 'Dolor sunt eos temporibus.', '2019-04-20 04:19:19');
INSERT INTO `order_items` VALUES ('90', '46', '6', '17', '4', '8765.00', '5', 'Dolor sunt eos temporibus.', '2019-04-20 04:19:19');
INSERT INTO `order_items` VALUES ('91', '46', '4', '10', '2', '3302.00', '5', 'Dolor sunt eos temporibus.', '2019-04-20 04:19:19');
INSERT INTO `order_items` VALUES ('92', '47', '3', '9', '2', '4185.00', '3', 'Ducimus aperiam et aut accusamus.', '2019-04-21 11:05:37');
INSERT INTO `order_items` VALUES ('93', '48', '26', '76', '5', '7076.00', null, null, null);
INSERT INTO `order_items` VALUES ('94', '48', '6', '16', '3', '2564.00', null, null, null);
INSERT INTO `order_items` VALUES ('95', '48', '30', '90', '5', '5631.00', null, null, null);
INSERT INTO `order_items` VALUES ('96', '49', '25', '75', '2', '8138.00', '5', 'Commodi harum et deleniti corporis ut sit.', '2019-04-24 04:41:29');
INSERT INTO `order_items` VALUES ('97', '49', '4', '10', '1', '3302.00', '5', 'Commodi harum et deleniti corporis ut sit.', '2019-04-24 04:41:29');
INSERT INTO `order_items` VALUES ('98', '49', '1', '1', '3', '9937.00', '5', 'Commodi harum et deleniti corporis ut sit.', '2019-04-24 04:41:29');
INSERT INTO `order_items` VALUES ('99', '50', '12', '36', '1', '1275.00', '1', 'Reprehenderit animi nemo distinctio quaerat voluptatem est sunt voluptate.', '2019-04-25 02:40:15');
INSERT INTO `order_items` VALUES ('100', '50', '29', '87', '3', '5715.00', '1', 'Reprehenderit animi nemo distinctio quaerat voluptatem est sunt voluptate.', '2019-04-25 02:40:15');
INSERT INTO `order_items` VALUES ('101', '50', '27', '81', '3', '6850.00', '1', 'Reprehenderit animi nemo distinctio quaerat voluptatem est sunt voluptate.', '2019-04-25 02:40:15');
INSERT INTO `order_items` VALUES ('102', '51', '25', '74', '1', '9995.00', '3', 'Reprehenderit numquam fuga asperiores et tempore aut consectetur.', '2019-04-23 00:19:27');
INSERT INTO `order_items` VALUES ('103', '52', '9', '25', '3', '5600.00', '1', 'Non odio accusamus nesciunt quibusdam cupiditate maxime.', '2019-04-21 02:11:00');
INSERT INTO `order_items` VALUES ('104', '53', '17', '51', '3', '398.00', null, null, null);
INSERT INTO `order_items` VALUES ('105', '54', '27', '80', '4', '5668.00', '2', 'Ipsum possimus ipsum qui aliquid.', '2019-04-28 06:07:58');
INSERT INTO `order_items` VALUES ('106', '54', '19', '56', '4', '7629.00', '2', 'Ipsum possimus ipsum qui aliquid.', '2019-04-28 06:07:58');
INSERT INTO `order_items` VALUES ('107', '54', '20', '58', '3', '8028.00', '2', 'Ipsum possimus ipsum qui aliquid.', '2019-04-28 06:07:58');
INSERT INTO `order_items` VALUES ('108', '55', '15', '45', '4', '6893.00', null, null, null);
INSERT INTO `order_items` VALUES ('109', '55', '20', '60', '1', '4695.00', null, null, null);
INSERT INTO `order_items` VALUES ('110', '56', '18', '54', '5', '4677.00', '1', 'Quia explicabo velit maiores nihil.', '2019-04-28 21:20:52');
INSERT INTO `order_items` VALUES ('111', '57', '15', '43', '2', '9609.00', '3', 'Quia placeat perspiciatis est consectetur sequi.', '2019-04-20 09:32:26');
INSERT INTO `order_items` VALUES ('112', '58', '18', '54', '4', '4677.00', null, null, null);
INSERT INTO `order_items` VALUES ('113', '58', '21', '63', '2', '1120.00', null, null, null);
INSERT INTO `order_items` VALUES ('114', '58', '4', '11', '1', '4429.00', null, null, null);
INSERT INTO `order_items` VALUES ('115', '59', '27', '79', '4', '3819.00', '3', 'Aliquam eum cumque ipsam doloribus omnis aut culpa dignissimos.', '2019-04-24 21:25:06');
INSERT INTO `order_items` VALUES ('116', '60', '10', '29', '3', '2724.00', null, null, null);
INSERT INTO `order_items` VALUES ('117', '60', '16', '46', '1', '1311.00', null, null, null);
INSERT INTO `order_items` VALUES ('118', '60', '21', '62', '1', '7545.00', null, null, null);
INSERT INTO `order_items` VALUES ('119', '61', '18', '53', '4', '6141.00', '4', 'Quidem fuga hic voluptas iste qui.', '2019-04-17 16:19:04');
INSERT INTO `order_items` VALUES ('120', '61', '3', '9', '4', '4185.00', '4', 'Quidem fuga hic voluptas iste qui.', '2019-04-17 16:19:04');
INSERT INTO `order_items` VALUES ('121', '62', '18', '53', '1', '6141.00', '2', 'Sit quasi incidunt vel id.', '2019-04-29 06:53:10');
INSERT INTO `order_items` VALUES ('122', '62', '24', '71', '1', '3236.00', '2', 'Sit quasi incidunt vel id.', '2019-04-29 06:53:10');
INSERT INTO `order_items` VALUES ('123', '63', '4', '12', '2', '8132.00', '3', 'Aut error dolore consectetur esse voluptatem.', '2019-04-20 13:43:14');
INSERT INTO `order_items` VALUES ('124', '63', '25', '73', '4', '4362.00', '3', 'Aut error dolore consectetur esse voluptatem.', '2019-04-20 13:43:14');
INSERT INTO `order_items` VALUES ('125', '64', '12', '34', '1', '17.00', '4', 'Enim modi hic omnis consequatur neque est fugiat.', '2019-04-05 11:01:13');
INSERT INTO `order_items` VALUES ('126', '65', '9', '25', '3', '5600.00', '1', 'Laborum amet neque laudantium soluta eveniet est.', '2019-04-26 07:08:15');
INSERT INTO `order_items` VALUES ('127', '65', '8', '24', '2', '229.00', '1', 'Laborum amet neque laudantium soluta eveniet est.', '2019-04-26 07:08:15');
INSERT INTO `order_items` VALUES ('128', '66', '10', '29', '2', '2724.00', '2', 'Repellendus fugiat sit ipsa ipsam voluptatem quisquam.', '2019-04-24 21:59:43');
INSERT INTO `order_items` VALUES ('129', '66', '23', '67', '1', '9417.00', '2', 'Repellendus fugiat sit ipsa ipsam voluptatem quisquam.', '2019-04-24 21:59:43');
INSERT INTO `order_items` VALUES ('130', '66', '23', '68', '2', '7125.00', '2', 'Repellendus fugiat sit ipsa ipsam voluptatem quisquam.', '2019-04-24 21:59:43');
INSERT INTO `order_items` VALUES ('131', '67', '21', '61', '5', '3799.00', null, null, null);
INSERT INTO `order_items` VALUES ('132', '67', '28', '83', '2', '9669.00', null, null, null);
INSERT INTO `order_items` VALUES ('133', '67', '13', '38', '2', '5031.00', null, null, null);
INSERT INTO `order_items` VALUES ('134', '68', '10', '30', '4', '2597.00', null, null, null);
INSERT INTO `order_items` VALUES ('135', '68', '26', '76', '1', '7076.00', null, null, null);
INSERT INTO `order_items` VALUES ('136', '68', '1', '2', '3', '2791.00', null, null, null);
INSERT INTO `order_items` VALUES ('137', '69', '17', '50', '4', '8092.00', '1', 'Qui earum reiciendis nostrum labore.', '2019-04-14 14:15:10');
INSERT INTO `order_items` VALUES ('138', '69', '2', '5', '2', '5600.00', '1', 'Qui earum reiciendis nostrum labore.', '2019-04-14 14:15:10');
INSERT INTO `order_items` VALUES ('139', '69', '2', '6', '5', '8073.00', '1', 'Qui earum reiciendis nostrum labore.', '2019-04-14 14:15:10');
INSERT INTO `order_items` VALUES ('140', '70', '12', '34', '4', '17.00', null, null, null);
INSERT INTO `order_items` VALUES ('141', '70', '12', '36', '3', '1275.00', null, null, null);
INSERT INTO `order_items` VALUES ('142', '71', '13', '37', '5', '4673.00', '3', 'Et vel et iusto velit similique.', '2019-04-28 15:05:51');
INSERT INTO `order_items` VALUES ('143', '72', '30', '90', '1', '5631.00', null, null, null);
INSERT INTO `order_items` VALUES ('144', '72', '2', '4', '3', '4783.00', null, null, null);
INSERT INTO `order_items` VALUES ('145', '73', '27', '79', '2', '3819.00', '4', 'Et consequatur soluta debitis et qui.', '2019-04-09 07:51:33');
INSERT INTO `order_items` VALUES ('146', '74', '25', '74', '2', '9995.00', null, null, null);
INSERT INTO `order_items` VALUES ('147', '74', '5', '15', '5', '5356.00', null, null, null);
INSERT INTO `order_items` VALUES ('148', '75', '8', '24', '5', '229.00', '3', 'Hic ad et illo.', '2019-04-22 22:41:18');
INSERT INTO `order_items` VALUES ('149', '76', '22', '65', '2', '9100.00', null, null, null);
INSERT INTO `order_items` VALUES ('150', '77', '29', '85', '5', '878.00', '1', 'Voluptates labore cum aliquam magnam eum officia.', '2019-04-27 06:36:03');
INSERT INTO `order_items` VALUES ('151', '77', '4', '11', '2', '4429.00', '1', 'Voluptates labore cum aliquam magnam eum officia.', '2019-04-27 06:36:03');
INSERT INTO `order_items` VALUES ('152', '78', '29', '86', '2', '672.00', null, null, null);
INSERT INTO `order_items` VALUES ('153', '79', '17', '51', '5', '398.00', '1', 'Ipsam accusamus deserunt laborum natus.', '2019-04-27 07:49:16');
INSERT INTO `order_items` VALUES ('154', '80', '19', '56', '4', '7629.00', '4', 'Velit tempore tenetur necessitatibus voluptates aut.', '2019-04-24 09:02:41');
INSERT INTO `order_items` VALUES ('155', '80', '23', '68', '1', '7125.00', '4', 'Velit tempore tenetur necessitatibus voluptates aut.', '2019-04-24 09:02:41');
INSERT INTO `order_items` VALUES ('156', '80', '20', '60', '1', '4695.00', '4', 'Velit tempore tenetur necessitatibus voluptates aut.', '2019-04-24 09:02:41');
INSERT INTO `order_items` VALUES ('157', '81', '1', '3', '2', '2256.00', '2', 'Dolores deleniti dolorem eius.', '2019-04-26 22:08:47');
INSERT INTO `order_items` VALUES ('158', '81', '13', '38', '1', '5031.00', '2', 'Dolores deleniti dolorem eius.', '2019-04-26 22:08:47');
INSERT INTO `order_items` VALUES ('159', '82', '16', '46', '1', '1311.00', '3', 'Dicta eaque debitis autem iste debitis reiciendis quis.', '2019-04-28 19:37:15');
INSERT INTO `order_items` VALUES ('160', '82', '1', '3', '4', '2256.00', '3', 'Dicta eaque debitis autem iste debitis reiciendis quis.', '2019-04-28 19:37:15');
INSERT INTO `order_items` VALUES ('161', '83', '15', '43', '2', '9609.00', null, null, null);
INSERT INTO `order_items` VALUES ('162', '83', '11', '32', '1', '8463.00', null, null, null);
INSERT INTO `order_items` VALUES ('163', '83', '2', '5', '3', '5600.00', null, null, null);
INSERT INTO `order_items` VALUES ('164', '84', '20', '58', '5', '8028.00', '5', 'Et sint quidem ut est saepe.', '2019-04-20 06:10:11');
INSERT INTO `order_items` VALUES ('165', '84', '1', '2', '4', '2791.00', '5', 'Et sint quidem ut est saepe.', '2019-04-20 06:10:11');
INSERT INTO `order_items` VALUES ('166', '85', '14', '42', '1', '8282.00', null, null, null);
INSERT INTO `order_items` VALUES ('167', '86', '16', '46', '5', '1311.00', '3', 'Sequi iste natus aut quo reiciendis.', '2019-04-23 16:15:03');
INSERT INTO `order_items` VALUES ('168', '87', '13', '37', '1', '4673.00', '2', 'Est perspiciatis reiciendis ut libero reiciendis sint amet.', '2019-04-22 15:55:59');
INSERT INTO `order_items` VALUES ('169', '87', '16', '47', '1', '6900.00', '2', 'Est perspiciatis reiciendis ut libero reiciendis sint amet.', '2019-04-22 15:55:59');
INSERT INTO `order_items` VALUES ('170', '87', '30', '88', '1', '4143.00', '2', 'Est perspiciatis reiciendis ut libero reiciendis sint amet.', '2019-04-22 15:55:59');
INSERT INTO `order_items` VALUES ('171', '88', '30', '89', '3', '5716.00', null, null, null);
INSERT INTO `order_items` VALUES ('172', '88', '13', '39', '2', '1904.00', null, null, null);
INSERT INTO `order_items` VALUES ('173', '88', '30', '90', '4', '5631.00', null, null, null);
INSERT INTO `order_items` VALUES ('174', '89', '15', '43', '1', '9609.00', '1', 'Ipsam voluptatem et nam minus incidunt animi unde.', '2019-04-23 16:19:27');
INSERT INTO `order_items` VALUES ('175', '89', '12', '36', '3', '1275.00', '1', 'Ipsam voluptatem et nam minus incidunt animi unde.', '2019-04-23 16:19:27');
INSERT INTO `order_items` VALUES ('176', '89', '5', '14', '3', '540.00', '1', 'Ipsam voluptatem et nam minus incidunt animi unde.', '2019-04-23 16:19:27');
INSERT INTO `order_items` VALUES ('177', '90', '21', '63', '5', '1120.00', null, null, null);
INSERT INTO `order_items` VALUES ('178', '90', '26', '76', '4', '7076.00', null, null, null);
INSERT INTO `order_items` VALUES ('179', '90', '18', '54', '3', '4677.00', null, null, null);
INSERT INTO `order_items` VALUES ('180', '91', '23', '69', '2', '1496.00', '4', 'Molestias velit neque voluptatibus odit atque fugiat maxime nam.', '2019-04-28 03:17:19');
INSERT INTO `order_items` VALUES ('181', '92', '15', '43', '2', '9609.00', null, null, null);
INSERT INTO `order_items` VALUES ('182', '92', '27', '80', '3', '5668.00', null, null, null);
INSERT INTO `order_items` VALUES ('183', '92', '21', '62', '5', '7545.00', null, null, null);
INSERT INTO `order_items` VALUES ('184', '93', '6', '16', '1', '2564.00', '4', 'Aut voluptas quo non enim non quae.', '2019-04-15 06:38:28');
INSERT INTO `order_items` VALUES ('185', '93', '26', '77', '4', '657.00', '4', 'Aut voluptas quo non enim non quae.', '2019-04-15 06:38:28');
INSERT INTO `order_items` VALUES ('186', '93', '8', '22', '1', '338.00', '4', 'Aut voluptas quo non enim non quae.', '2019-04-15 06:38:28');
INSERT INTO `order_items` VALUES ('187', '94', '21', '63', '1', '1120.00', '3', 'Vero dicta id ut minus blanditiis.', '2019-04-26 04:00:01');
INSERT INTO `order_items` VALUES ('188', '94', '13', '37', '2', '4673.00', '3', 'Vero dicta id ut minus blanditiis.', '2019-04-26 04:00:01');
INSERT INTO `order_items` VALUES ('189', '94', '14', '40', '1', '3511.00', '3', 'Vero dicta id ut minus blanditiis.', '2019-04-26 04:00:01');
INSERT INTO `order_items` VALUES ('190', '95', '11', '33', '5', '2245.00', null, null, null);
INSERT INTO `order_items` VALUES ('191', '96', '14', '40', '5', '3511.00', null, null, null);
INSERT INTO `order_items` VALUES ('192', '96', '9', '26', '1', '6229.00', null, null, null);
INSERT INTO `order_items` VALUES ('193', '97', '12', '36', '5', '1275.00', '2', 'Optio quia quis fuga numquam velit rerum deleniti.', '2019-04-26 02:31:55');
INSERT INTO `order_items` VALUES ('194', '97', '2', '6', '4', '8073.00', '2', 'Optio quia quis fuga numquam velit rerum deleniti.', '2019-04-26 02:31:55');
INSERT INTO `order_items` VALUES ('195', '97', '27', '81', '1', '6850.00', '2', 'Optio quia quis fuga numquam velit rerum deleniti.', '2019-04-26 02:31:55');
INSERT INTO `order_items` VALUES ('196', '98', '19', '56', '3', '7629.00', '3', 'Dolores est fuga voluptatem omnis occaecati voluptatum dolorem.', '2019-04-20 14:15:43');
INSERT INTO `order_items` VALUES ('197', '99', '24', '70', '2', '860.00', '1', 'Voluptatem commodi velit eligendi omnis.', '2019-04-25 14:57:14');
INSERT INTO `order_items` VALUES ('198', '100', '6', '16', '1', '2564.00', '5', 'Adipisci dignissimos odio ut eveniet voluptatibus.', '2019-04-05 22:35:54');
INSERT INTO `order_items` VALUES ('199', '100', '4', '12', '3', '8132.00', '5', 'Adipisci dignissimos odio ut eveniet voluptatibus.', '2019-04-05 22:35:54');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `paid_at` datetime DEFAULT NULL,
  `coupon_code_id` int(10) unsigned DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `ship_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_no_unique` (`no`),
  UNIQUE KEY `orders_refund_no_unique` (`refund_no`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_coupon_code_id_foreign` (`coupon_code_id`),
  CONSTRAINT `orders_coupon_code_id_foreign` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '20190429105658854505', '60', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c45\\u8857\\u9053\\u7b2c76\\u53f7\",\"zip\":35600,\"contact_name\":\"\\u5355\\u6667\",\"contact_phone\":\"15218894258\"}', '45629.00', 'Voluptatem sunt quis earum aliquid aut possimus.', '2019-03-31 17:19:42', null, 'wechat', '0b46964b-9667-33d5-b466-a576355a8d71', 'pending', null, '0', '0', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:56:59');
INSERT INTO `orders` VALUES ('2', '20190429105658458334', '7', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c67\\u8857\\u9053\\u7b2c905\\u53f7\",\"zip\":156000,\"contact_name\":\"\\u6bb7\\u9e70\",\"contact_phone\":\"13288485952\"}', '39170.88', 'Est qui architecto dolor magnam totam molestias maiores.', '2019-04-24 03:08:39', '3', 'alipay', 'f29450b3-df72-31ef-b0df-7655da2d9e33', 'success', '92e7c3e635314b0d891b6d014ae8fbd9', '0', '0', 'pending', null, '{\"refund_reason\":\"Consequatur iure eos natus voluptatem aut sint dolorem eius.\"}', '2019-04-29 10:56:58', '2019-04-29 10:56:59');
INSERT INTO `orders` VALUES ('3', '20190429105658551814', '80', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c38\\u8857\\u9053\\u7b2c346\\u53f7\",\"zip\":503000,\"contact_name\":\"\\u8983\\u5175\",\"contact_phone\":\"18109988888\"}', '28800.20', 'Enim est debitis dolorem ut.', '2019-04-04 02:39:35', '9', 'wechat', '86add221-b303-34b9-956f-819ddffd9ca3', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u4e07\\u8fc5\\u7535\\u8111\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0e98b29d-97e4-3dc4-b8aa-51b5e9d112f8\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:56:59');
INSERT INTO `orders` VALUES ('4', '20190429105658465853', '55', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c93\\u8857\\u9053\\u7b2c900\\u53f7\",\"zip\":468600,\"contact_name\":\"\\u695a\\u6587\\u5a1f\",\"contact_phone\":\"13427646574\"}', '994.56', 'Omnis officiis maxime et voluptatem cupiditate ut.', '2019-04-21 02:30:31', '20', 'wechat', '7c70d3e1-5ec2-3130-8798-d86ef8436ff3', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u56fe\\u9f99\\u4fe1\\u606f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"14ff4dd7-da47-37f4-9dec-651c0d3384a9\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:56:59');
INSERT INTO `orders` VALUES ('5', '20190429105658953582', '10', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c30\\u8857\\u9053\\u7b2c831\\u53f7\",\"zip\":551300,\"contact_name\":\"\\u664b\\u65ed\",\"contact_phone\":\"15544355464\"}', '18825.00', 'Quo occaecati consequatur incidunt laborum.', '2019-04-03 05:33:38', null, 'wechat', 'f53b5368-814c-3ef3-aa54-1f65c8dc8991', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u4e2d\\u5efa\\u521b\\u4e1a\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"d5588cbc-b5a4-39bd-8286-ddfd8a11c939\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:56:59');
INSERT INTO `orders` VALUES ('6', '20190429105658338983', '2', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c35\\u8857\\u9053\\u7b2c955\\u53f7\",\"zip\":14900,\"contact_name\":\"\\u515a\\u96ea\",\"contact_phone\":\"18239710422\"}', '11432.00', 'Qui in eaque dolore doloribus asperiores explicabo dolor.', '2019-04-07 20:55:02', null, 'wechat', '20ae229b-63d6-3e6f-9f4a-a81d8af0a7db', 'pending', null, '0', '0', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('7', '20190429105658583186', '32', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c85\\u8857\\u9053\\u7b2c119\\u53f7\",\"zip\":345200,\"contact_name\":\"\\u5355\\u5e05\",\"contact_phone\":\"18578061584\"}', '26693.31', 'Reprehenderit pariatur voluptate maiores est voluptates perferendis.', '2019-04-25 11:36:04', '18', 'wechat', 'cdf38171-60d2-3fc7-915a-1cbe5816efa1', 'success', '778fd5c3973f4105848e239c71e3a098', '0', '1', 'pending', null, '{\"refund_reason\":\"Placeat sit veritatis minima fugit ut aut occaecati dolorum.\"}', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('8', '20190429105658140278', '64', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c25\\u8857\\u9053\\u7b2c771\\u53f7\",\"zip\":467300,\"contact_name\":\"\\u8042\\u8273\",\"contact_phone\":\"13417656422\"}', '38982.00', 'Libero deserunt laboriosam et occaecati.', '2019-04-11 10:49:29', null, 'wechat', '9037a763-527e-3eb2-a120-b2cf3e8398fa', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u5408\\u8054\\u7535\\u5b50\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"671e3e91-e8b1-32c1-b9f9-847f6b3a451f\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('9', '20190429105658404682', '44', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c35\\u8857\\u9053\\u7b2c183\\u53f7\",\"zip\":612100,\"contact_name\":\"\\u59ec\\u4e39\\u4e39\",\"contact_phone\":\"17010172164\"}', '5356.00', 'Enim quia vel maxime aut fugiat.', '2019-04-06 12:17:12', null, 'wechat', '5c61981d-0246-380a-8cca-8a6abc05ed60', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u6d59\\u5927\\u4e07\\u670b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1216ba61-3442-3de0-89a6-7206d9c9a64c\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('10', '20190429105658551706', '85', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c6\\u8857\\u9053\\u7b2c568\\u53f7\",\"zip\":691400,\"contact_name\":\"\\u9a6c\\u7231\\u534e\",\"contact_phone\":\"13081603700\"}', '19878.75', 'Possimus mollitia aut doloremque exercitationem totam expedita.', '2019-04-07 21:21:37', '9', 'wechat', '7be5bb06-547a-381c-8f19-2a631e873a56', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8dcf976e-2e38-3859-894f-b13463cab84e\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('11', '20190429105658790995', '79', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c39\\u8857\\u9053\\u7b2c267\\u53f7\",\"zip\":832500,\"contact_name\":\"\\u7fdf\\u6587\",\"contact_phone\":\"17059519353\"}', '1311.00', 'Eaque maxime ipsa ut reprehenderit aliquid voluptate.', '2019-04-27 15:18:43', null, 'wechat', 'cec97343-82ff-3e62-a392-a19f3eede2f8', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u827e\\u63d0\\u79d1\\u4fe1\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0b1e356a-86b3-3b58-ad02-ecfb478cc1c4\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('12', '20190429105658714923', '83', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c17\\u8857\\u9053\\u7b2c818\\u53f7\",\"zip\":48400,\"contact_name\":\"\\u5c48\\u697c\",\"contact_phone\":\"17000115697\"}', '20129.76', 'At eum cum harum consectetur consequatur qui.', '2019-04-28 00:16:53', '3', 'wechat', 'de197606-84a7-35c9-ab2c-1d356a2871f6', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u6570\\u5b57100\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"010e8df9-c57c-3503-887c-cbbc6c04eace\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('13', '20190429105658823659', '33', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c28\\u8857\\u9053\\u7b2c48\\u53f7\",\"zip\":641300,\"contact_name\":\"\\u9648\\u4e3d\\u4e3d\",\"contact_phone\":\"15608819546\"}', '28024.46', 'Ratione repellat id ea aut dolores officiis.', '2019-04-25 21:43:51', '18', 'alipay', '7f823b5d-4c68-3b10-a900-f19ddde42549', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u65f6\\u523b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"41cf2575-8a37-3faa-adb3-e317d4b5e58d\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('14', '20190429105658254133', '100', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c96\\u8857\\u9053\\u7b2c792\\u53f7\",\"zip\":274100,\"contact_name\":\"\\u8bb8\\u6587\\u5f6c\",\"contact_phone\":\"17006761985\"}', '15093.00', 'Veniam ut ex et autem et ea animi.', '2019-04-16 06:10:33', null, 'alipay', '0a6a3c9a-497f-372a-aaa0-c802dea51885', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('15', '20190429105658702202', '50', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c713\\u53f7\",\"zip\":213500,\"contact_name\":\"\\u90ed\\u6d0b\",\"contact_phone\":\"17055419540\"}', '9027.26', 'Inventore ipsa sit voluptatibus est nulla.', '2019-04-23 04:11:51', '20', 'alipay', '1cb766e3-5194-366a-88b5-791c1e5889e5', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u5170\\u91d1\\u7535\\u5b50\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"969a4ca2-c795-35fa-895e-d51eb105e6a1\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('16', '20190429105658011351', '56', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c230\\u53f7\",\"zip\":746300,\"contact_name\":\"\\u9976\\u7490\",\"contact_phone\":\"18816792699\"}', '9051.03', 'Dolores molestiae minus quisquam et rerum.', '2019-04-29 00:32:13', '18', 'alipay', '13e1822f-d3bc-3eb5-bada-c9a53c3c5951', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u8944\\u6a0a\\u5730\\u7403\\u6751\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e6859c1f-6c0f-3e70-8094-d486f4bf4561\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('17', '20190429105658665743', '82', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c83\\u8857\\u9053\\u7b2c355\\u53f7\",\"zip\":286700,\"contact_name\":\"\\u4e18\\u7389\\u534e\",\"contact_phone\":\"17052271840\"}', '25325.00', 'A velit vel nam.', '2019-04-25 10:05:03', null, 'alipay', '60ceba37-ff78-32b6-9927-61ff3de4b715', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u6069\\u608c\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4b3948d6-d6d4-36fd-978d-5e8e8306c571\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('18', '20190429105658210676', '100', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c96\\u8857\\u9053\\u7b2c792\\u53f7\",\"zip\":274100,\"contact_name\":\"\\u8bb8\\u6587\\u5f6c\",\"contact_phone\":\"17006761985\"}', '9390.00', 'Exercitationem accusantium dolore et rem ut odit error porro.', '2019-04-04 10:30:39', null, 'wechat', '8bb3a26a-c3f4-3c5a-964a-050b5a9bfef1', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u5408\\u8054\\u7535\\u5b50\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"114ccea6-2a65-3c2b-8f3e-41f5ae334715\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('19', '20190429105658294185', '6', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c72\\u8857\\u9053\\u7b2c947\\u53f7\",\"zip\":15400,\"contact_name\":\"\\u7126\\u7389\\u6885\",\"contact_phone\":\"13740848128\"}', '55574.13', 'Nam laborum iusto provident distinctio a.', '2019-04-08 13:19:25', '18', 'wechat', 'b20d2da5-7014-3de1-9cc0-dd79b1974e43', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u51cc\\u4e91\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"7e9f4625-08b4-3eaf-bf19-14d1eb32e3c3\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('20', '20190429105658349521', '5', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c40\\u8857\\u9053\\u7b2c725\\u53f7\",\"zip\":684400,\"contact_name\":\"\\u4fde\\u6377\",\"contact_phone\":\"17082305507\"}', '6033.00', 'Adipisci molestiae in ipsa.', '2019-04-26 23:32:16', null, 'alipay', '246f5966-2fe2-35cf-a8c2-3edddca3646b', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u65f6\\u7a7a\\u76d2\\u6570\\u5b57\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"fdda3ba7-fd5a-38fc-a519-e806f84ca13f\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('21', '20190429105658733844', '68', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c31\\u8857\\u9053\\u7b2c858\\u53f7\",\"zip\":773000,\"contact_name\":\"\\u4fde\\u5efa\\u5e73\",\"contact_phone\":\"18637567706\"}', '40304.00', 'Voluptate ullam sunt odio sapiente sit ut similique.', '2019-04-16 13:16:39', null, 'alipay', 'fe3f87cb-4ef0-3cbf-8c00-1c84817d95bf', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u534e\\u6210\\u80b2\\u5353\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"dbea89ac-833c-379c-9c0d-b40397bed2a9\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('22', '20190429105658891643', '88', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c38\\u8857\\u9053\\u7b2c489\\u53f7\",\"zip\":453700,\"contact_name\":\"\\u5353\\u78ca\",\"contact_phone\":\"15561510688\"}', '38986.90', 'Voluptatum et expedita quo consequatur et in recusandae.', '2019-04-25 10:46:08', '20', 'alipay', '3ef27455-ce0e-32cc-af65-218aa6d8c9fb', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u7ef4\\u6d9b\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"80370a1d-10fa-3cd8-8b7d-0a687311b7b7\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('23', '20190429105658426221', '76', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c3\\u8857\\u9053\\u7b2c270\\u53f7\",\"zip\":588400,\"contact_name\":\"\\u4e95\\u6842\\u829d\",\"contact_phone\":\"17004127597\"}', '23897.25', 'Dolores numquam in earum magnam et quo.', '2019-04-21 12:53:59', '9', 'alipay', '5310c977-7a41-3460-bae0-97e3a8c9b9c2', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u6cf0\\u9e92\\u9e9f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"cb31093f-0157-3215-98a5-8f09bcda0eec\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('24', '20190429105658109076', '73', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c36\\u8857\\u9053\\u7b2c729\\u53f7\",\"zip\":655900,\"contact_name\":\"\\u8f66\\u5efa\\u534e\",\"contact_phone\":\"14554764322\"}', '1989.12', 'Odio reprehenderit labore rerum ut ullam optio ut.', '2019-04-19 17:40:29', '20', 'alipay', '8b2f8a5a-e9a9-3a5f-8090-3c7527471acd', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('25', '20190429105658545116', '56', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c74\\u8857\\u9053\\u7b2c234\\u53f7\",\"zip\":716500,\"contact_name\":\"\\u9c81\\u5065\",\"contact_phone\":\"17700987667\"}', '47737.00', 'Repudiandae fugiat voluptatem ea maiores cum nostrum ipsa.', '2019-04-17 02:33:18', null, 'alipay', 'c6eeca8c-2421-3bc3-ab1a-c3ee693f9f80', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u96e8\\u6797\\u6728\\u98ce\\u8ba1\\u7b97\\u673a\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"47cf5458-c616-3ae8-b6cd-54b709ddffc0\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:00');
INSERT INTO `orders` VALUES ('26', '20190429105658729298', '58', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c61\\u8857\\u9053\\u7b2c957\\u53f7\",\"zip\":202000,\"contact_name\":\"\\u5c24\\u5f3a\",\"contact_phone\":\"13555334517\"}', '17061.00', 'Sunt voluptatum voluptates laborum.', '2019-04-21 23:45:16', null, 'alipay', '9945938f-e60d-3bf2-8308-957ece7b6846', 'success', '569bb81bad044f89b2fb69055ef6bc79', '0', '1', 'delivered', '{\"express_company\":\"\\u8054\\u901a\\u65f6\\u79d1\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"6fcac03a-7a1e-3b34-8749-a3cbb4b39d5f\"}', '{\"refund_reason\":\"Rerum doloremque quis expedita ut aut ut.\"}', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('27', '20190429105658913594', '52', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c56\\u8857\\u9053\\u7b2c705\\u53f7\",\"zip\":174700,\"contact_name\":\"\\u90ac\\u82f1\",\"contact_phone\":\"18155709779\"}', '16297.00', 'Unde quaerat quis aspernatur eaque soluta.', '2019-04-02 21:55:28', null, 'wechat', 'cb3dceea-6dc0-3d42-aae2-2d2981b4d90c', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('28', '20190429105658896160', '12', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c605\\u53f7\",\"zip\":43700,\"contact_name\":\"\\u4e50\\u78ca\",\"contact_phone\":\"17194846579\"}', '26078.00', 'Laborum id amet ut hic.', '2019-04-02 17:51:06', null, 'alipay', 'f54d7e6e-0978-3ea8-8323-e54c7b15e498', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u534e\\u8fdc\\u8f6f\\u4ef6\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"04d9a987-4426-380c-bf2e-cc35697b7478\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('29', '20190429105658453204', '38', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c181\\u53f7\",\"zip\":785000,\"contact_name\":\"\\u827e\\u4e91\",\"contact_phone\":\"18638917894\"}', '15747.00', 'Voluptatem iusto nisi dolorum architecto adipisci.', '2019-04-01 06:12:47', null, 'wechat', '64510658-244c-38f1-8f05-c48e4b37fb57', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u946b\\u535a\\u817e\\u98de\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"caa10ee8-28b2-3184-ac0a-3852e60f63ff\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('30', '20190429105658663951', '73', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c70\\u8857\\u9053\\u7b2c495\\u53f7\",\"zip\":182900,\"contact_name\":\"\\u5c24\\u7476\",\"contact_phone\":\"13542008064\"}', '3511.00', 'Maxime deserunt est perspiciatis ipsa nemo fugiat nisi sapiente.', '2019-04-22 01:49:36', null, 'alipay', 'e2c14dea-8fb3-385d-b055-ee198e25c329', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('31', '20190429105658702804', '3', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c53\\u8857\\u9053\\u7b2c114\\u53f7\",\"zip\":737200,\"contact_name\":\"\\u4e50\\u54f2\\u5f66\",\"contact_phone\":\"13816075633\"}', '48345.00', 'Numquam consequatur voluptas id libero temporibus omnis quo.', '2019-04-16 21:37:19', null, 'alipay', '0b985493-41f1-3131-9a46-de40a99ce16a', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"befcb3a6-4eeb-3c24-b820-785a35b3766f\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('32', '20190429105658500775', '84', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c70\\u8857\\u9053\\u7b2c513\\u53f7\",\"zip\":291400,\"contact_name\":\"\\u962e\\u6b63\\u8bda\",\"contact_phone\":\"13378804478\"}', '32618.25', 'Ipsam non accusamus unde sed ipsa labore et.', '2019-04-01 19:09:16', '9', 'wechat', 'c7552359-7dd2-3f60-88d5-cdff0c3bad3d', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u4e03\\u559c\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"ccb4ce7a-b134-39ce-9eee-6345843de9fb\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('33', '20190429105658487294', '3', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c53\\u8857\\u9053\\u7b2c114\\u53f7\",\"zip\":737200,\"contact_name\":\"\\u4e50\\u54f2\\u5f66\",\"contact_phone\":\"13816075633\"}', '22178.70', 'Natus magnam quia aut fuga asperiores.', '2019-04-13 14:07:08', '9', 'alipay', '781c480c-2ed2-3fca-b350-15d4593b8eb6', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u826f\\u8bfa\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4edff3e8-ae8a-3478-bdad-015d76f02c8d\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('34', '20190429105658595625', '27', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c614\\u53f7\",\"zip\":306300,\"contact_name\":\"\\u95f5\\u9e4f\\u7a0b\",\"contact_phone\":\"17073473987\"}', '5034.00', 'Minima enim praesentium incidunt quod omnis harum sit rerum.', '2019-04-14 20:07:55', null, 'wechat', '1bf28876-1984-329e-9a85-eb37a870f356', 'pending', null, '0', '1', 'received', '{\"express_company\":\"MBP\\u8f6f\\u4ef6\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8d0d0ca3-a2c5-3f8e-b2e4-bd072b38cd4c\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('35', '20190429105658010704', '71', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c23\\u8857\\u9053\\u7b2c858\\u53f7\",\"zip\":15700,\"contact_name\":\"\\u90c1\\u6b22\",\"contact_phone\":\"15187254932\"}', '33660.00', 'Ut repellendus perferendis assumenda cupiditate autem.', '2019-04-11 19:50:42', null, 'wechat', '2f92f27e-d242-37b0-b647-c66a5d6fbbc4', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u56fd\\u8baf\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0456004e-9ef1-3ba6-839f-f41d0b3b34c7\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('36', '20190429105658533398', '35', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c86\\u8857\\u9053\\u7b2c220\\u53f7\",\"zip\":534900,\"contact_name\":\"\\u50e7\\u8389\",\"contact_phone\":\"18185377267\"}', '13052.00', 'Ipsa ut est eum est qui perferendis omnis.', '2019-04-08 21:50:19', null, 'wechat', '709ab415-f716-3eb7-aec1-2299814f260a', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u65b9\\u6b63\\u79d1\\u6280\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"44e343d6-dfd2-392d-9a1c-03aa37ac3d5f\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('37', '20190429105658131370', '10', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c30\\u8857\\u9053\\u7b2c831\\u53f7\",\"zip\":551300,\"contact_name\":\"\\u664b\\u65ed\",\"contact_phone\":\"15544355464\"}', '19218.00', 'Ad id quibusdam nihil temporibus explicabo.', '2019-04-17 23:26:33', null, 'wechat', '50de7d57-6723-377e-8422-ac0a9676719c', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('38', '20190429105658244786', '16', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c45\\u8857\\u9053\\u7b2c457\\u53f7\",\"zip\":432900,\"contact_name\":\"\\u7afa\\u658c\",\"contact_phone\":\"13387232112\"}', '36847.00', 'Sunt deserunt fuga ullam nihil molestias.', '2019-04-13 18:24:26', null, 'alipay', 'b7647d1a-16b6-30ff-8eef-b43965e5de53', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('39', '20190429105658822130', '72', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c19\\u8857\\u9053\\u7b2c953\\u53f7\",\"zip\":106300,\"contact_name\":\"\\u5468\\u535a\\u6d9b\",\"contact_phone\":\"18461755767\"}', '3551.00', 'Distinctio possimus temporibus perferendis ut sint quod.', '2019-04-19 01:10:36', null, 'alipay', '60212891-f43c-3321-8b75-a2768eea5487', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u65f6\\u523b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"988ad6a7-230d-3e21-a5ed-3de69d88ea50\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('40', '20190429105658147269', '59', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c28\\u8857\\u9053\\u7b2c307\\u53f7\",\"zip\":853500,\"contact_name\":\"\\u4e54\\u98de\",\"contact_phone\":\"14725241887\"}', '12241.05', 'Consequatur voluptatem excepturi quasi veniam qui.', '2019-04-09 20:27:23', '18', 'alipay', '0c9c4f35-1782-3283-8551-718a04fdf81e', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u601d\\u4f18\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5ec8c223-0f84-3cf3-8f5a-5dc08acbdf74\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('41', '20190429105658306821', '36', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c33\\u8857\\u9053\\u7b2c50\\u53f7\",\"zip\":388800,\"contact_name\":\"\\u5b97\\u745e\",\"contact_phone\":\"17843057560\"}', '46330.34', 'Eos aliquam molestias reprehenderit quaerat atque quidem iste laboriosam.', '2019-04-01 00:01:16', '18', 'alipay', '2aa853c8-d730-3873-b179-adb50c34520b', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('42', '20190429105658189190', '81', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c345\\u53f7\",\"zip\":461100,\"contact_name\":\"\\u5b98\\u946b\",\"contact_phone\":\"17687931122\"}', '34805.00', 'Ab qui neque accusamus.', '2019-04-11 06:13:24', null, 'alipay', '6fafdef7-3f7c-3a87-9011-766198613e78', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u4fe1\\u8bda\\u81f4\\u8fdc\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"ffaad26f-d9de-3c24-ad50-00738e8a6e15\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('43', '20190429105658475955', '98', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c35\\u8857\\u9053\\u7b2c672\\u53f7\",\"zip\":331900,\"contact_name\":\"\\u4f0d\\u5fd7\\u65b0\",\"contact_phone\":\"13198850000\"}', '14938.38', 'Sit molestias vel natus temporibus at similique.', '2019-04-05 15:27:33', '20', 'wechat', '3c51b7bf-39d1-39cf-8692-e3d13258ef09', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('44', '20190429105658983063', '4', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c76\\u8857\\u9053\\u7b2c201\\u53f7\",\"zip\":491900,\"contact_name\":\"\\u5f3a\\u7ea2\",\"contact_phone\":\"18391552516\"}', '35955.00', 'Temporibus dolor omnis quaerat qui unde perspiciatis voluptas.', '2019-03-31 02:43:36', null, 'alipay', '8f7356dd-6c5c-31a3-ba13-b9e3ebca68d6', 'success', '1ffdda4932ce4687858dfba7ad290a6a', '0', '1', 'delivered', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"67a1cf67-72d4-3c5e-be4c-6456c25791b6\"}', '{\"refund_reason\":\"Aliquid qui dolorem id corrupti doloremque ex nihil.\"}', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('45', '20190429105658377780', '42', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c21\\u8857\\u9053\\u7b2c440\\u53f7\",\"zip\":725700,\"contact_name\":\"\\u5de9\\u6797\",\"contact_phone\":\"17080722737\"}', '24816.00', 'Non consequatur officia adipisci fuga.', '2019-04-08 11:57:19', null, 'wechat', '6139bee5-3318-3c90-8967-6d50f83a609a', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u4e5d\\u65b9\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"37667386-4a7c-3988-88e3-f2d8c7dddd39\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('46', '20190429105658979033', '16', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c45\\u8857\\u9053\\u7b2c457\\u53f7\",\"zip\":432900,\"contact_name\":\"\\u7afa\\u658c\",\"contact_phone\":\"13387232112\"}', '36413.47', 'Ipsam recusandae dolore saepe voluptas ipsam.', '2019-04-03 09:38:48', '18', 'alipay', '9a00861e-d312-378d-9e2b-db68ca01e913', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"MBP\\u8f6f\\u4ef6\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"ab719f74-4d52-3272-bb5b-308e36806e95\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:01');
INSERT INTO `orders` VALUES ('47', '20190429105658003908', '97', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c44\\u8857\\u9053\\u7b2c245\\u53f7\",\"zip\":317900,\"contact_name\":\"\\u7a46\\u6842\\u82b3\",\"contact_phone\":\"18757003454\"}', '6193.80', 'Assumenda amet nesciunt sit a laudantium in non eum.', '2019-04-20 13:18:51', '20', 'wechat', '1d98ebb7-4018-3212-a8d9-ee87d440082b', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('48', '20190429105658267471', '91', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c627\\u53f7\",\"zip\":656100,\"contact_name\":\"\\u5409\\u6587\",\"contact_phone\":\"15223338762\"}', '71227.00', 'Nam at omnis velit a a quam.', '2019-03-31 20:38:10', null, 'wechat', '173d33cf-0cf5-3c12-ada7-218108a26125', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u6656\\u6765\\u8ba1\\u7b97\\u673a\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3df76800-9585-3ee1-86b0-9a8033e9cb4b\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('49', '20190429105658080783', '14', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c88\\u8857\\u9053\\u7b2c138\\u53f7\",\"zip\":36700,\"contact_name\":\"\\u891a\\u7389\\u82f1\",\"contact_phone\":\"18979151532\"}', '39017.31', 'Iure hic vel voluptates.', '2019-04-18 13:29:33', '18', 'wechat', '39a81fae-ff8f-315d-9a5f-0541da22d6e6', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('50', '20190429105658472105', '56', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c74\\u8857\\u9053\\u7b2c234\\u53f7\",\"zip\":716500,\"contact_name\":\"\\u9c81\\u5065\",\"contact_phone\":\"17700987667\"}', '38970.00', 'Dolorem facere est sed amet ex quia.', '2019-04-18 04:30:10', null, 'alipay', '4a839dd5-116f-3edb-af52-11e535284fbb', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('51', '20190429105658881569', '89', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c54\\u8857\\u9053\\u7b2c696\\u53f7\",\"zip\":361200,\"contact_name\":\"\\u5e9e\\u7389\\u534e\",\"contact_phone\":\"17085086498\"}', '8395.80', 'Ea ab magnam eaque natus illum vel iure quia.', '2019-04-08 11:49:00', '3', 'wechat', '477315d6-ffe9-3c1a-92a9-78874174bfa8', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u76df\\u65b0\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8453fa63-1df0-3b4b-b470-060bc801d80f\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('52', '20190429105658821690', '54', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c1\\u8857\\u9053\\u7b2c927\\u53f7\",\"zip\":353300,\"contact_name\":\"\\u7eaa\\u5b50\\u5b89\",\"contact_phone\":\"13642602043\"}', '15960.00', 'Id ea tempore natus sunt odio.', '2019-04-07 05:37:33', '9', 'wechat', 'ccb30183-8362-337b-88c7-41c01a79141b', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u5929\\u76ca\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"cf340693-1f84-3196-b7d9-7b6d11ede8ab\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('53', '20190429105658832240', '12', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c605\\u53f7\",\"zip\":43700,\"contact_name\":\"\\u4e50\\u78ca\",\"contact_phone\":\"17194846579\"}', '1194.00', 'Tempore ipsum sit totam explicabo accusamus.', '2019-04-17 16:07:35', null, 'wechat', '658f4a46-a855-3296-ad98-1b0fde6ebbe3', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u8054\\u8f6f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3b72c504-7d2f-3988-8065-7ec68a0663f8\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('54', '20190429105658128622', '4', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c76\\u8857\\u9053\\u7b2c201\\u53f7\",\"zip\":491900,\"contact_name\":\"\\u5f3a\\u7ea2\",\"contact_phone\":\"18391552516\"}', '77272.00', 'Est deleniti mollitia quaerat placeat ea quae reiciendis unde.', '2019-04-25 23:00:54', null, 'wechat', '9cfbf962-813c-37a5-82a6-00b613e75975', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u6069\\u608c\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5af2eb45-d3a3-32ed-99d5-cde3fdb69428\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('55', '20190429105658768466', '16', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c45\\u8857\\u9053\\u7b2c457\\u53f7\",\"zip\":432900,\"contact_name\":\"\\u7afa\\u658c\",\"contact_phone\":\"13387232112\"}', '30653.65', 'Nemo reiciendis sequi rerum eveniet nobis animi autem alias.', '2019-04-27 02:12:33', '9', 'wechat', 'e680b29f-b56b-3ec9-801e-bd64d588f333', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u65b0\\u683c\\u6797\\u8010\\u7279\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"27620519-c777-345e-8313-2a5f59b7b5f8\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('56', '20190429105658454904', '66', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c37\\u8857\\u9053\\u7b2c250\\u53f7\",\"zip\":131300,\"contact_name\":\"\\u7533\\u56fd\\u5e86\",\"contact_phone\":\"18755922641\"}', '23385.00', 'Ipsa soluta culpa repellendus maiores ad nostrum expedita.', '2019-04-17 19:20:19', null, 'wechat', 'e246e678-ce54-3887-842e-a1a9d60e8d1d', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u76df\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"ef8889cc-ea9b-3f75-b2d2-105ebcc52a6a\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('57', '20190429105658172672', '21', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c97\\u8857\\u9053\\u7b2c422\\u53f7\",\"zip\":571600,\"contact_name\":\"\\u853a\\u667a\\u6e0a\",\"contact_phone\":\"17191526195\"}', '19218.00', 'Iure earum ut cumque aperiam omnis repudiandae.', '2019-04-11 03:30:28', null, 'wechat', 'af5c109e-d896-36a3-a832-126017273e91', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u51cc\\u9896\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"ead54a06-852c-36ed-87cd-df4a25284433\"}', '[]', '2019-04-29 10:56:58', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('58', '20190429105658001699', '23', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c81\\u8857\\u9053\\u7b2c236\\u53f7\",\"zip\":304500,\"contact_name\":\"\\u94f6\\u7ea2\",\"contact_phone\":\"18130439429\"}', '25377.00', 'Est voluptatem sunt illum earum quae dignissimos enim.', '2019-04-11 07:20:54', null, 'wechat', 'c1653de8-5ef2-3799-9ed8-2aed876db970', 'pending', null, '0', '0', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('59', '20190429105659411738', '18', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c38\\u8857\\u9053\\u7b2c728\\u53f7\",\"zip\":672300,\"contact_name\":\"\\u7eaa\\u660e\",\"contact_phone\":\"13609889257\"}', '11304.24', 'Reprehenderit aliquid voluptates quibusdam ut doloribus.', '2019-04-13 19:18:23', '20', 'alipay', '20915f3d-ddcb-353b-85fa-f44324efa22c', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('60', '20190429105659790118', '60', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c410\\u53f7\",\"zip\":826500,\"contact_name\":\"\\u76d6\\u8389\",\"contact_phone\":\"15298159895\"}', '17028.00', 'Officia nemo qui recusandae quidem explicabo.', '2019-04-11 17:09:23', null, 'wechat', '7993cb30-b772-3564-8c80-5be55cd4e153', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u4f73\\u79be\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8db1689f-ebf5-36fb-a0a7-63111bff5877\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('61', '20190429105659744478', '17', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c27\\u8857\\u9053\\u7b2c601\\u53f7\",\"zip\":198000,\"contact_name\":\"\\u97a0\\u5efa\\u56fd\",\"contact_phone\":\"18850305092\"}', '41304.00', 'Rerum dolores ut voluptate quae sunt.', '2019-04-12 01:42:38', null, 'alipay', '98cf7c62-d9e8-3f1f-99da-3de803dea829', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u7fa4\\u82f1\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e184fef4-6744-39d8-9fd1-0bb147e3b448\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('62', '20190429105659448053', '84', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c70\\u8857\\u9053\\u7b2c513\\u53f7\",\"zip\":291400,\"contact_name\":\"\\u962e\\u6b63\\u8bda\",\"contact_phone\":\"13378804478\"}', '6938.98', 'Quod ut sed facilis ab veniam praesentium quo aut.', '2019-04-29 06:52:40', '20', 'wechat', 'ff50d5b2-5670-3f72-97b5-ae95f297e3c9', 'success', '04969c8f238845fb98531649dc1b3e72', '0', '1', 'received', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"2f92a323-3c46-31f7-8d46-5d6155308614\"}', '{\"refund_reason\":\"Sunt veniam vero sit veniam.\"}', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('63', '20190429105659206891', '72', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c19\\u8857\\u9053\\u7b2c953\\u53f7\",\"zip\":106300,\"contact_name\":\"\\u5468\\u535a\\u6d9b\",\"contact_phone\":\"18461755767\"}', '26632.48', 'Rerum omnis ea aspernatur provident et vitae sit.', '2019-04-17 13:41:35', '18', 'alipay', '906b213a-0d0a-3b3e-87c9-d61e895f5274', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u827e\\u63d0\\u79d1\\u4fe1\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"cdcbc576-a05b-3475-93bf-d7087d219f1d\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('64', '20190429105659515153', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c71\\u8857\\u9053\\u7b2c969\\u53f7\",\"zip\":691200,\"contact_name\":\"\\u5411\\u7ea2\\u6885\",\"contact_phone\":\"17814574875\"}', '14.28', 'Fugiat dolores harum unde rerum.', '2019-04-04 22:20:27', '3', 'wechat', '77e317fb-ae86-31a8-899c-17c3b2a64c7c', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u7ef4\\u6d9b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"6d967ad2-8b48-39a3-8931-77d6a954d1fa\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('65', '20190429105659771957', '1', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c71\\u8857\\u9053\\u7b2c969\\u53f7\",\"zip\":691200,\"contact_name\":\"\\u5411\\u7ea2\\u6885\",\"contact_phone\":\"17814574875\"}', '13633.82', 'Ipsam autem expedita cumque fuga perspiciatis dolor asperiores.', '2019-04-24 09:58:58', '18', 'wechat', '504d9a2a-a247-3d63-b559-22b2b2d9d683', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u60e0\\u6d3e\\u56fd\\u9645\\u516c\\u53f8\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"178fa95e-61f6-338e-ab80-ff0ebcc38931\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('66', '20190429105659122099', '75', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c213\\u53f7\",\"zip\":775900,\"contact_name\":\"\\u90ce\\u6587\\u541b\",\"contact_phone\":\"18154506962\"}', '29115.00', 'Provident sed aspernatur cum magni quia temporibus.', '2019-04-23 19:34:09', null, 'alipay', '50a0dce5-958e-3e09-8742-3b36deb3f164', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:02');
INSERT INTO `orders` VALUES ('67', '20190429105659073865', '54', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c1\\u8857\\u9053\\u7b2c927\\u53f7\",\"zip\":353300,\"contact_name\":\"\\u7eaa\\u5b50\\u5b89\",\"contact_phone\":\"13642602043\"}', '40651.80', 'Error reprehenderit rerum excepturi eveniet doloribus dicta reprehenderit ea.', '2019-04-14 17:15:02', '3', 'alipay', 'fc824cbf-abf5-3a70-a6e4-112503ec6986', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u6570\\u5b57100\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"fc8f65ab-d531-359d-b6ed-306f7d0dd56a\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('68', '20190429105659395375', '60', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c410\\u53f7\",\"zip\":826500,\"contact_name\":\"\\u76d6\\u8389\",\"contact_phone\":\"15298159895\"}', '19119.38', 'Deserunt omnis mollitia cumque eum quidem perspiciatis.', '2019-04-02 03:00:54', '20', 'wechat', '940f45e5-84c8-336e-ade5-71508c34b94d', 'success', 'a52a24b579e649279c822ad509cfe61b', '0', '0', 'delivered', '{\"express_company\":\"\\u9e3f\\u777f\\u601d\\u535a\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"12576cec-4911-3ee3-914c-81027d43f94f\"}', '{\"refund_reason\":\"Est autem aut odio magnam eveniet itaque eum.\"}', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('69', '20190429105659102098', '31', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c92\\u8857\\u9053\\u7b2c805\\u53f7\",\"zip\":737200,\"contact_name\":\"\\u59dc\\u5fd7\\u6587\",\"contact_phone\":\"17094316755\"}', '66307.07', 'Illum vero autem facere.', '2019-04-02 10:10:40', '18', 'wechat', '838fe6bb-532d-328c-a88e-1c8207b94439', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u51cc\\u4e91\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"49e284d1-fc8f-3ef2-bde3-9b035294e3a7\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('70', '20190429105659370356', '53', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c98\\u8857\\u9053\\u7b2c734\\u53f7\",\"zip\":156400,\"contact_name\":\"\\u7545\\u6770\",\"contact_phone\":\"15065010149\"}', '3893.00', 'Vel molestiae qui ipsum quidem consectetur quo non.', '2019-04-19 22:11:00', null, 'alipay', '161eb569-50e0-34db-96e4-6a8b711ebeb3', 'pending', null, '0', '0', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('71', '20190429105659034545', '79', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c39\\u8857\\u9053\\u7b2c267\\u53f7\",\"zip\":832500,\"contact_name\":\"\\u7fdf\\u6587\",\"contact_phone\":\"17059519353\"}', '23365.00', 'Numquam ut ut eum quis qui quo.', '2019-04-05 23:09:45', null, 'wechat', '4a10aead-aef5-3389-997e-d1f5dd6eede3', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u8d8b\\u52bf\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"14cf2da9-4769-3e6e-b8a3-861cbfd0c323\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('72', '20190429105659804566', '6', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c72\\u8857\\u9053\\u7b2c947\\u53f7\",\"zip\":15400,\"contact_name\":\"\\u7126\\u7389\\u6885\",\"contact_phone\":\"13740848128\"}', '18981.00', 'Aut in impedit quos corporis aut.', '2019-04-23 10:33:15', '9', 'alipay', '150d45cf-3842-38f0-807e-7ba76bd94e02', 'pending', null, '0', '0', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('73', '20190429105659055938', '26', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c11\\u8857\\u9053\\u7b2c899\\u53f7\",\"zip\":825700,\"contact_name\":\"\\u7533\\u51e4\\u5170\",\"contact_phone\":\"15608669701\"}', '7638.00', 'Amet odio tempora sit in.', '2019-04-06 15:33:18', null, 'wechat', 'c79b17f8-4e3e-3e13-b1a9-cd51e28b5871', 'success', '78130b77f29e4f0c97dbb06615ef1f6b', '0', '1', 'received', '{\"express_company\":\"\\u7f51\\u65b0\\u6052\\u5929\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"543186fe-b45c-3350-a7ce-5672b6bef429\"}', '{\"refund_reason\":\"Adipisci impedit molestiae facere nihil mollitia quia sed vel.\"}', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('74', '20190429105659067658', '20', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c39\\u8857\\u9053\\u7b2c429\\u53f7\",\"zip\":338600,\"contact_name\":\"\\u6bdb\\u7434\",\"contact_phone\":\"15149497934\"}', '46770.00', 'Dolorem rem consequatur aut aliquid quo eos illum.', '2019-04-20 11:59:44', null, 'wechat', '0fc5f562-169c-3497-a282-77e705c5e6fb', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u51cc\\u9896\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"c0a2e52d-07ab-3099-9697-dbbf1b0423e6\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('75', '20190429105659934509', '85', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c6\\u8857\\u9053\\u7b2c568\\u53f7\",\"zip\":691400,\"contact_name\":\"\\u9a6c\\u7231\\u534e\",\"contact_phone\":\"13081603700\"}', '1145.00', 'Iste vero et maiores velit dolore sed fuga in.', '2019-04-21 13:44:56', null, 'wechat', '60039e2b-b7fd-3501-8710-0cef521b00e3', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('76', '20190429105659464020', '18', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c38\\u8857\\u9053\\u7b2c728\\u53f7\",\"zip\":672300,\"contact_name\":\"\\u7eaa\\u660e\",\"contact_phone\":\"13609889257\"}', '18200.00', 'Consequatur vel odio qui repudiandae similique.', '2019-04-06 17:07:58', null, 'alipay', '237c0648-9f59-30e6-814e-be77d373c814', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u4e1c\\u65b9\\u5cfb\\u666f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e5af0bac-6006-3fe6-b165-8d96f70b9c56\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('77', '20190429105659487224', '46', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c71\\u8857\\u9053\\u7b2c68\\u53f7\",\"zip\":405500,\"contact_name\":\"\\u82b1\\u5efa\\u534e\",\"contact_phone\":\"17199960957\"}', '11128.32', 'Dignissimos temporibus rerum sint accusantium iusto.', '2019-04-08 19:40:44', '3', 'wechat', '126f7b96-1a78-3072-876a-765bb1d32b4b', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('78', '20190429105659343736', '20', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c39\\u8857\\u9053\\u7b2c429\\u53f7\",\"zip\":338600,\"contact_name\":\"\\u6bdb\\u7434\",\"contact_phone\":\"15149497934\"}', '1344.00', 'Sed non et animi quia officiis blanditiis dolore.', '2019-04-23 12:31:22', null, 'alipay', '635ac6d4-24e4-3fa7-bd6c-11ef5d8214e7', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u6069\\u608c\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"bd6c9186-4aad-3b18-b5de-1d31f586e3f2\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('79', '20190429105659564446', '35', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c73\\u8857\\u9053\\u7b2c505\\u53f7\",\"zip\":736700,\"contact_name\":\"\\u666f\\u4e91\",\"contact_phone\":\"18566816866\"}', '1671.60', 'Animi velit consequatur perferendis deserunt.', '2019-04-13 12:45:15', '3', 'alipay', 'ea851500-3818-326a-8f93-1f603af58bdf', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('80', '20190429105659388784', '6', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c72\\u8857\\u9053\\u7b2c947\\u53f7\",\"zip\":15400,\"contact_name\":\"\\u7126\\u7389\\u6885\",\"contact_phone\":\"13740848128\"}', '42336.00', 'Et ratione omnis quia corporis est.', '2019-04-23 19:44:33', null, 'alipay', '9fc52946-12fe-3f39-bffc-055c13f42ea9', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('81', '20190429105659863172', '35', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c37\\u8857\\u9053\\u7b2c132\\u53f7\",\"zip\":117900,\"contact_name\":\"\\u90dd\\u65ed\",\"contact_phone\":\"17197552502\"}', '9543.00', 'Possimus laudantium sunt et qui et dolorum consequatur numquam.', '2019-04-11 03:02:51', null, 'alipay', '4599bb68-fdf8-37bf-a635-69b3049f7b2c', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u8fea\\u6469\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"340fe534-7d86-32e0-9f5c-e77ac3d26afc\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('82', '20190429105659389148', '84', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c70\\u8857\\u9053\\u7b2c513\\u53f7\",\"zip\":291400,\"contact_name\":\"\\u962e\\u6b63\\u8bda\",\"contact_phone\":\"13378804478\"}', '10335.00', 'Ipsum perspiciatis consequatur cumque distinctio explicabo accusantium laborum.', '2019-04-28 18:52:18', null, 'wechat', '42eaaae9-5349-31f9-9410-6b2bb2568fda', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('83', '20190429105659680762', '82', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c83\\u8857\\u9053\\u7b2c355\\u53f7\",\"zip\":286700,\"contact_name\":\"\\u4e18\\u7389\\u534e\",\"contact_phone\":\"17052271840\"}', '44481.00', 'Labore voluptas pariatur sed a ad maxime.', '2019-04-05 04:26:53', null, 'alipay', '5a5c1430-5f2f-319b-845c-d06d4b539269', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u65f6\\u523b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1056c27f-7360-3a5e-a0a6-d89d99b7b442\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('84', '20190429105659441977', '18', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c38\\u8857\\u9053\\u7b2c728\\u53f7\",\"zip\":672300,\"contact_name\":\"\\u7eaa\\u660e\",\"contact_phone\":\"13609889257\"}', '51304.00', 'Aliquid dolor inventore quo et dolorum.', '2019-04-19 12:15:23', null, 'wechat', '2e610a38-ac98-3fb7-a3ed-dfeedf48e92b', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u8054\\u901a\\u65f6\\u79d1\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3b44af32-f10b-3c78-983d-d1ce8f35c34a\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('85', '20190429105659149525', '94', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c421\\u53f7\",\"zip\":436200,\"contact_name\":\"\\u4f55\\u535a\\u6d9b\",\"contact_phone\":\"17008592703\"}', '8282.00', 'Esse quia dolor occaecati itaque et nostrum dolorem.', '2019-04-06 13:36:37', null, 'alipay', 'dc7abda8-f019-3db3-a17b-74ec5902f9a0', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u7f51\\u65b0\\u6052\\u5929\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4718927e-212c-32d2-a3e4-00474863daf6\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('86', '20190429105659155865', '23', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c81\\u8857\\u9053\\u7b2c236\\u53f7\",\"zip\":304500,\"contact_name\":\"\\u94f6\\u7ea2\",\"contact_phone\":\"18130439429\"}', '6555.00', 'Quasi aut doloribus cupiditate reprehenderit.', '2019-04-06 10:59:50', null, 'alipay', '9eef0393-0e87-3fa3-8892-7f3ff7108562', 'pending', null, '0', '1', 'received', '{\"express_company\":\"\\u56fd\\u8baf\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e63a90a0-708f-3f1b-9383-46ee6174cd52\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('87', '20190429105659478365', '32', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c93\\u8857\\u9053\\u7b2c467\\u53f7\",\"zip\":744600,\"contact_name\":\"\\u539f\\u667a\\u660e\",\"contact_phone\":\"17003337950\"}', '15716.00', 'Repudiandae nulla itaque et impedit accusantium autem.', '2019-04-09 12:43:20', null, 'wechat', '0dba3e88-0672-362e-ac8c-e0c0c387b01d', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('88', '20190429105659808066', '57', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c515\\u53f7\",\"zip\":72200,\"contact_name\":\"\\u5a04\\u6676\",\"contact_phone\":\"15642113825\"}', '43480.00', 'Non fugiat et omnis nihil modi est fuga.', '2019-04-17 03:59:41', null, 'alipay', 'ea78c03f-dcda-38a3-95c7-5549f8c75155', 'pending', null, '0', '0', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:03');
INSERT INTO `orders` VALUES ('89', '20190429105659266183', '10', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c30\\u8857\\u9053\\u7b2c831\\u53f7\",\"zip\":551300,\"contact_name\":\"\\u664b\\u65ed\",\"contact_phone\":\"15544355464\"}', '15054.00', 'Maxime natus dolore voluptatibus perferendis minus laborum.', '2019-04-10 19:04:09', null, 'wechat', '464fda8b-59cf-3095-9857-9e294ef5546e', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u592a\\u6781\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5799154b-2d15-367a-9d36-d6ebddc908f5\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('90', '20190429105659553110', '68', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c31\\u8857\\u9053\\u7b2c858\\u53f7\",\"zip\":773000,\"contact_name\":\"\\u4fde\\u5efa\\u5e73\",\"contact_phone\":\"18637567706\"}', '47935.00', 'Et debitis et aut ducimus nihil.', '2019-04-28 10:34:05', null, 'wechat', 'fed575ed-fe19-3691-bca7-ad8d3c5102a4', 'pending', null, '0', '0', 'received', '{\"express_company\":\"\\u548c\\u6cf0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"293e54b8-a1a0-3e4c-b740-437b24b2dbdd\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('91', '20190429105659417587', '91', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c71\\u8857\\u9053\\u7b2c404\\u53f7\",\"zip\":436100,\"contact_name\":\"\\u8d56\\u7389\\u5170\",\"contact_phone\":\"13433433600\"}', '2992.00', 'Rem ut est fugit dolorum consectetur ipsam tempore sint.', '2019-04-18 04:43:36', null, 'alipay', '14ea8937-6686-317c-b263-8e2cbf5a9f6d', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u5bcc\\u7f73\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4cb35ab1-6924-34f8-bc77-a54aa813c35f\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('92', '20190429105659188515', '26', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c407\\u53f7\",\"zip\":96700,\"contact_name\":\"\\u82d7\\u51ac\\u6885\",\"contact_phone\":\"13469747782\"}', '73947.00', 'Eos alias harum rerum aut officiis nisi odio praesentium.', '2019-04-19 14:02:30', null, 'wechat', 'ce470907-cc22-33c5-9446-388f7ae8877b', 'pending', null, '0', '0', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('93', '20190429105659395087', '24', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c121\\u53f7\",\"zip\":561300,\"contact_name\":\"\\u67e5\\u6842\\u8363\",\"contact_phone\":\"15315012153\"}', '4368.70', 'Ab id debitis numquam sed.', '2019-04-11 05:03:34', '18', 'alipay', '2c563740-ad17-39d8-aeaa-6c76b47a3208', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('94', '20190429105659886930', '81', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c58\\u8857\\u9053\\u7b2c678\\u53f7\",\"zip\":545500,\"contact_name\":\"\\u4e50\\u6667\",\"contact_phone\":\"18220885607\"}', '13977.00', 'Veniam voluptatem eos aut magni molestiae sunt.', '2019-04-02 01:00:30', null, 'alipay', 'd418d864-2513-35bb-adf5-1b67762482e2', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('95', '20190429105659100856', '12', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c605\\u53f7\",\"zip\":43700,\"contact_name\":\"\\u4e50\\u78ca\",\"contact_phone\":\"17194846579\"}', '11225.00', 'Voluptatem ab in dolorem qui illum et.', '2019-04-03 15:48:49', null, 'wechat', 'cc0d8f0a-0bbd-3335-9174-a380f1c2412d', 'pending', null, '0', '0', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('96', '20190429105659642643', '95', '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c91\\u8857\\u9053\\u7b2c249\\u53f7\",\"zip\":517400,\"contact_name\":\"\\u67ef\\u5ca9\",\"contact_phone\":\"13389007008\"}', '23784.00', 'Eaque vel provident illum facilis praesentium ut molestiae.', '2019-04-14 14:17:27', null, 'wechat', 'ecbfe619-6467-377d-9ebe-63b4d28881a9', 'pending', null, '0', '0', 'delivered', '{\"express_company\":\"\\u5f69\\u8679\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"b3c8095d-a3c3-3825-ab4f-34039cc35f1f\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('97', '20190429105659268763', '89', '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c54\\u8857\\u9053\\u7b2c696\\u53f7\",\"zip\":361200,\"contact_name\":\"\\u5e9e\\u7389\\u534e\",\"contact_phone\":\"17085086498\"}', '45517.00', 'Rerum consequatur unde consequatur mollitia.', '2019-04-23 17:20:33', null, 'wechat', '6c6bad51-3bfe-3ebc-99fa-f1244bca8d47', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('98', '20190429105659716130', '22', '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c14\\u8857\\u9053\\u7b2c332\\u53f7\",\"zip\":333900,\"contact_name\":\"\\u6ed5\\u7ea2\\u6885\",\"contact_phone\":\"18888112976\"}', '22887.00', 'Distinctio voluptatibus voluptate et corrupti vel repellat.', '2019-04-17 17:12:43', null, 'wechat', '6b26f310-0145-3237-aafb-59be9fe27364', 'pending', null, '0', '1', 'pending', null, '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('99', '20190429105659143660', '10', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c30\\u8857\\u9053\\u7b2c831\\u53f7\",\"zip\":551300,\"contact_name\":\"\\u664b\\u65ed\",\"contact_phone\":\"15544355464\"}', '1720.00', 'Id nemo saepe saepe voluptatum ex nihil.', '2019-04-19 04:04:38', null, 'wechat', '93c66317-4890-3e2e-a75a-5e35ad1f9f13', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u4e5d\\u65b9\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"bbb3f8af-7d04-39e2-a787-546bb7221801\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');
INSERT INTO `orders` VALUES ('100', '20190429105659609837', '9', '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c33\\u8857\\u9053\\u7b2c236\\u53f7\",\"zip\":356300,\"contact_name\":\"\\u6765\\u541b\",\"contact_phone\":\"13214022519\"}', '26960.00', 'Excepturi accusantium cumque expedita earum velit.', '2019-04-03 04:50:12', null, 'wechat', 'c1b02310-6165-32dd-8e8b-8730651e3397', 'pending', null, '0', '1', 'delivered', '{\"express_company\":\"\\u6bd5\\u535a\\u8bda\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"43ba97a4-2713-3031-b74a-c1c4d032424d\"}', '[]', '2019-04-29 10:56:59', '2019-04-29 10:57:04');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `product_skus`
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_skus_product_id_foreign` (`product_id`),
  CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES ('1', 'praesentium', 'Dicta blanditiis quo atque velit.', '9937.00', '43530', '1', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('2', 'et', 'Ut veritatis asperiores quia provident voluptatibus placeat.', '2791.00', '89948', '1', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('3', 'quidem', 'Odit et officia nemo velit.', '2256.00', '62267', '1', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('4', 'aut', 'Et adipisci ea et consequatur et sit.', '4783.00', '84989', '2', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('5', 'labore', 'Optio cumque officia in non totam.', '5600.00', '54726', '2', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('6', 'laudantium', 'Natus autem fugiat rerum voluptatem.', '8073.00', '69388', '2', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('7', 'est', 'Suscipit cupiditate veniam maiores reprehenderit.', '1502.00', '5896', '3', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('8', 'voluptatibus', 'Commodi accusamus porro quia illum magnam totam.', '2801.00', '18513', '3', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('9', 'ratione', 'Exercitationem cupiditate et et ipsam autem.', '4185.00', '96177', '3', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('10', 'dolorem', 'Commodi itaque aut molestiae necessitatibus sequi.', '3302.00', '12619', '4', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('11', 'nam', 'Quo molestiae illo molestias voluptas velit.', '4429.00', '81251', '4', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('12', 'nisi', 'Culpa quidem aut totam et qui impedit.', '8132.00', '5643', '4', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('13', 'quas', 'Dolores vero eum molestias similique.', '2048.00', '14312', '5', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('14', 'neque', 'Molestias ut porro et nihil est distinctio.', '540.00', '14168', '5', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('15', 'dolorum', 'Voluptatem ut et laboriosam molestiae fugit blanditiis.', '5356.00', '3976', '5', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('16', 'distinctio', 'Aut porro et rerum quas explicabo.', '2564.00', '15773', '6', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('17', 'mollitia', 'Molestiae ea repudiandae in sit dicta ut officiis.', '8765.00', '82203', '6', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('18', 'porro', 'Rerum fugit quisquam repellendus.', '5489.00', '54239', '6', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('19', 'est', 'Enim nihil vero doloribus sit eos eveniet.', '8125.00', '93723', '7', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('20', 'amet', 'Repellat asperiores inventore cumque sint consequatur qui.', '6729.00', '86306', '7', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('21', 'nesciunt', 'Cumque nostrum necessitatibus vel omnis ut doloribus et.', '3331.00', '88186', '7', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('22', 'ratione', 'Culpa aliquam qui ab.', '338.00', '26334', '8', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('23', 'voluptas', 'Adipisci maiores alias rem ab autem consequatur.', '1533.00', '85970', '8', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('24', 'id', 'Et quidem vitae rerum nemo nihil voluptatem.', '229.00', '25438', '8', '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `product_skus` VALUES ('25', 'consequatur', 'Deleniti vel occaecati minus minima aut.', '5600.00', '90106', '9', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('26', 'deleniti', 'Quo voluptas ab quia asperiores beatae.', '6229.00', '64516', '9', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('27', 'et', 'Pariatur consequatur aut vel vel voluptates deleniti aperiam.', '5546.00', '11516', '9', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('28', 'occaecati', 'Optio totam sit ea recusandae.', '6999.00', '81780', '10', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('29', 'exercitationem', 'Nisi molestias amet alias facilis.', '2724.00', '57923', '10', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('30', 'minus', 'Tempore nobis quasi excepturi sit dicta aliquam.', '2597.00', '69837', '10', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('31', 'dolorum', 'Aperiam asperiores ea ipsam.', '4059.00', '46281', '11', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('32', 'voluptate', 'Corporis quia saepe eos voluptatem temporibus sunt officia.', '8463.00', '85710', '11', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('33', 'cupiditate', 'Voluptas quisquam sapiente voluptas nostrum blanditiis et.', '2245.00', '26975', '11', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('34', 'sunt', 'Ut est eos autem enim iusto.', '17.00', '21307', '12', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('35', 'non', 'Qui commodi sed blanditiis in laudantium perferendis.', '6519.00', '32800', '12', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('36', 'esse', 'Eaque eum ut pariatur atque.', '1275.00', '23482', '12', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('37', 'laudantium', 'Laboriosam illo omnis nostrum dolorem perferendis quis corrupti nulla.', '4673.00', '66089', '13', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('38', 'sequi', 'Rerum accusantium quia delectus eum expedita aliquid.', '5031.00', '18215', '13', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('39', 'aspernatur', 'Doloribus distinctio laboriosam voluptates dolores.', '1904.00', '61061', '13', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('40', 'quae', 'Tenetur laborum velit nobis distinctio tempore labore assumenda.', '3511.00', '69854', '14', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('41', 'natus', 'Aperiam iste reiciendis doloremque non.', '7988.00', '27751', '14', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('42', 'veniam', 'Ex incidunt odio et rerum.', '8282.00', '65647', '14', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('43', 'ex', 'Magni commodi ad nostrum nesciunt quia et illo.', '9609.00', '74971', '15', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('44', 'tempore', 'Cupiditate ratione et tenetur minima et unde error.', '7545.00', '29074', '15', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('45', 'eos', 'Magnam repellendus ipsa quas distinctio velit est nihil veritatis.', '6893.00', '54509', '15', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('46', 'dolorem', 'Omnis beatae animi ipsa amet impedit.', '1311.00', '28189', '16', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('47', 'repellendus', 'Sapiente adipisci aut nam minus sunt.', '6900.00', '47073', '16', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('48', 'voluptas', 'Fugit delectus excepturi quam.', '5165.00', '76974', '16', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('49', 'rerum', 'Dolores sequi eveniet sunt excepturi est.', '9243.00', '65388', '17', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('50', 'quo', 'Aut aut beatae sit.', '8092.00', '96396', '17', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('51', 'deserunt', 'Illum inventore voluptas nobis.', '398.00', '71373', '17', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('52', 'expedita', 'At ut eveniet veniam aut.', '3833.00', '22043', '18', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('53', 'fugiat', 'In sint ut architecto.', '6141.00', '74592', '18', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('54', 'velit', 'Explicabo aut aut nam vitae laboriosam et nostrum.', '4677.00', '54395', '18', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('55', 'quibusdam', 'Deleniti minus sed quia tenetur.', '8071.00', '89860', '19', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('56', 'nisi', 'Ex aut dicta quisquam sed adipisci.', '7629.00', '79076', '19', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('57', 'nesciunt', 'Officia sed asperiores non nihil minus dolore eos et.', '1049.00', '17579', '19', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('58', 'dignissimos', 'Dolorem et est iure ex est.', '8028.00', '9430', '20', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('59', 'voluptatem', 'Maxime provident et quia accusantium.', '3095.00', '79061', '20', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('60', 'sunt', 'Et sit ullam in sint.', '4695.00', '57676', '20', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('61', 'id', 'Reprehenderit sed laboriosam provident beatae aspernatur.', '3799.00', '30660', '21', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('62', 'voluptate', 'Vel placeat et voluptatem quasi.', '7545.00', '3038', '21', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('63', 'quibusdam', 'Autem labore facilis aperiam magni.', '1120.00', '72254', '21', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('64', 'voluptatem', 'Nemo ullam qui velit numquam.', '6033.00', '18786', '22', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('65', 'sunt', 'Sequi rerum excepturi facere eum.', '9100.00', '56626', '22', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('66', 'corrupti', 'Sed eos id et autem in.', '7680.00', '54548', '22', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('67', 'perferendis', 'Optio delectus illo aspernatur harum earum.', '9417.00', '64953', '23', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('68', 'laudantium', 'Hic voluptas natus voluptatem perspiciatis qui impedit.', '7125.00', '16316', '23', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('69', 'et', 'Et voluptas illum et enim est autem.', '1496.00', '29243', '23', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('70', 'consectetur', 'Optio accusamus omnis voluptatem maxime.', '860.00', '37087', '24', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('71', 'sunt', 'Est quaerat adipisci minus minima aut harum aliquid ut.', '3236.00', '29148', '24', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('72', 'aut', 'Consectetur molestiae dolores omnis provident.', '280.00', '73073', '24', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('73', 'voluptatem', 'Vel aut unde non aliquam at harum maiores.', '4362.00', '62346', '25', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('74', 'accusantium', 'Odit voluptas quis in dolores voluptates.', '9995.00', '29418', '25', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('75', 'autem', 'Laudantium dolorem ex repudiandae.', '8138.00', '11478', '25', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('76', 'vitae', 'Tenetur eaque explicabo voluptates eveniet eligendi.', '7076.00', '83858', '26', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('77', 'alias', 'Omnis est velit natus sint.', '657.00', '40211', '26', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('78', 'omnis', 'Ad et sunt et et accusantium.', '7472.00', '98644', '26', '2019-04-29 10:56:55', '2019-04-29 10:56:55');
INSERT INTO `product_skus` VALUES ('79', 'illum', 'At sit aperiam repellendus.', '3819.00', '98775', '27', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('80', 'eos', 'Voluptatem itaque iure nobis.', '5668.00', '65551', '27', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('81', 'magnam', 'Suscipit iste consequatur necessitatibus maxime omnis sunt magnam.', '6850.00', '67286', '27', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('82', 'amet', 'Voluptatem perspiciatis qui dolorum.', '1265.00', '38113', '28', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('83', 'veniam', 'Officiis veritatis sequi natus autem rerum et sit.', '9669.00', '11938', '28', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('84', 'mollitia', 'Dolor provident sed in est minima provident.', '488.00', '28086', '28', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('85', 'quia', 'Enim est in ut deserunt eos quas veniam.', '878.00', '82402', '29', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('86', 'commodi', 'Eaque veniam quis deserunt nostrum omnis.', '672.00', '77361', '29', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('87', 'est', 'Et laboriosam velit perferendis et facere tenetur.', '5715.00', '19688', '29', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('88', 'omnis', 'Dignissimos eveniet magni soluta labore.', '4143.00', '85278', '30', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('89', 'consequuntur', 'Ad facilis consequatur dolorum perferendis tempore molestias velit aut.', '5716.00', '74019', '30', '2019-04-29 10:56:56', '2019-04-29 10:56:56');
INSERT INTO `product_skus` VALUES ('90', 'sit', 'Autem sapiente odio eius non amet laudantium reprehenderit.', '5631.00', '85617', '30', '2019-04-29 10:56:56', '2019-04-29 10:56:56');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `sold_count` int(10) unsigned NOT NULL DEFAULT '0',
  `review_count` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'quis', 'Optio enim illum non expedita vitae laudantium.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '3.67', '29', '9', '2256.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('2', 'enim', 'Non ratione voluptatem vel.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '1.33', '26', '7', '4783.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('3', 'voluptas', 'Harum sit tempore eum omnis ducimus necessitatibus.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '4.00', '11', '3', '1502.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('4', 'voluptatem', 'Tempore nemo quis mollitia minima.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '4.14', '17', '8', '3302.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('5', 'beatae', 'Non voluptates alias voluptatem itaque laborum dolorem est.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', '1', '1.00', '16', '5', '540.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('6', 'excepturi', 'In minima consequatur id pariatur.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '4.00', '17', '8', '2564.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('7', 'ipsum', 'Voluptate ut dolores ipsam quae a sunt.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '1.00', '3', '1', '3331.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('8', 'porro', 'Asperiores officiis harum rerum voluptatem aspernatur.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '2.67', '8', '3', '229.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('9', 'rerum', 'Alias non officiis aliquid harum voluptates consequatur.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '2.33', '9', '5', '5546.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('10', 'velit', 'Omnis consequatur rem placeat suscipit.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '1.67', '17', '6', '2597.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('11', 'sint', 'Autem et voluptatem dicta earum odio et.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', '1', '2.00', '11', '3', '2245.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('12', 'hic', 'Saepe officiis quod odit eligendi non.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '2.50', '37', '10', '17.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('13', 'aut', 'Explicabo sapiente ratione et quae dicta omnis blanditiis.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '3.00', '24', '10', '1904.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('14', 'qui', 'Ipsum delectus similique blanditiis delectus recusandae odio aut.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', '1', '2.50', '14', '6', '3511.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('15', 'inventore', 'Cum in nemo molestias non fugit.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', '1', '2.20', '18', '8', '6893.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('16', 'quidem', 'Deleniti qui nihil laudantium voluptas.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', '1', '3.17', '18', '9', '1311.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('17', 'exercitationem', 'Provident amet eius quos sint omnis sit.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '2.67', '27', '7', '398.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('18', 'ab', 'Accusamus sit sint veritatis vel doloribus officiis ut.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '2.33', '22', '7', '3833.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('19', 'voluptas', 'Praesentium ex quisquam quasi debitis doloribus doloremque.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '3.00', '16', '5', '1049.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('20', 'cum', 'Ut impedit soluta rerum exercitationem voluptate illum commodi.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '3.20', '22', '8', '3095.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('21', 'omnis', 'Reprehenderit odit et est.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', '1', '3.00', '22', '8', '1120.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('22', 'dolor', 'Quia dolores ducimus voluptas maiores.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '5.00', '11', '5', '6033.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('23', 'ducimus', 'Voluptas impedit et repellendus illo quas.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '3.40', '16', '7', '1496.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('24', 'sequi', 'Ea corrupti delectus voluptatibus porro.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '2.67', '6', '4', '280.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('25', 'et', 'Et sequi animi sed sint et at.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '4.00', '13', '6', '4362.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('26', 'dolore', 'Maiores ea quae deserunt quia quas dolore qui nemo.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '4.00', '17', '6', '657.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('27', 'harum', 'Est sint et omnis debitis eius eligendi.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '2.62', '26', '9', '3819.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('28', 'repudiandae', 'Deleniti saepe rerum culpa in exercitationem doloremque.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '3.00', '20', '5', '488.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('29', 'odit', 'Quo vel deleniti quibusdam doloribus.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '3.17', '22', '9', '672.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');
INSERT INTO `products` VALUES ('30', 'quae', 'Recusandae cumque rerum sed nostrum possimus.', 'https://iocaffcdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '2.29', '41', '12', '4143.00', '2019-04-29 10:56:54', '2019-04-29 10:57:04');

-- ----------------------------
-- Table structure for `user_addresses`
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) unsigned NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES ('1', '1', '江苏省', '南京市', '浦口区', '第71街道第969号', '691200', '向红梅', '17814574875', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('2', '2', '江苏省', '南京市', '浦口区', '第35街道第955号', '14900', '党雪', '18239710422', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('3', '2', '广东省', '深圳市', '福田区', '第45街道第139号', '615000', '应健', '13199386189', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('4', '3', '北京市', '市辖区', '东城区', '第53街道第114号', '737200', '乐哲彦', '13816075633', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('5', '3', '江苏省', '南京市', '浦口区', '第60街道第465号', '726100', '孙帅', '15963473778', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('6', '3', '河北省', '石家庄市', '长安区', '第43街道第385号', '511800', '奚丽', '17808377259', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('7', '4', '广东省', '深圳市', '福田区', '第68街道第204号', '723300', '岳桂香', '18338188055', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('8', '4', '江苏省', '苏州市', '相城区', '第76街道第201号', '491900', '强红', '18391552516', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('9', '4', '江苏省', '苏州市', '相城区', '第63街道第234号', '357700', '台玉珍', '18590177430', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('10', '5', '北京市', '市辖区', '东城区', '第77街道第938号', '425200', '欧敏静', '17817387184', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('11', '5', '江苏省', '苏州市', '相城区', '第40街道第725号', '684400', '俞捷', '17082305507', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('12', '5', '河北省', '石家庄市', '长安区', '第83街道第611号', '271600', '查欣', '13371216093', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('13', '6', '江苏省', '南京市', '浦口区', '第72街道第947号', '15400', '焦玉梅', '13740848128', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('14', '7', '河北省', '石家庄市', '长安区', '第67街道第905号', '156000', '殷鹰', '13288485952', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('15', '8', '河北省', '石家庄市', '长安区', '第34街道第541号', '341500', '饶芬', '17181775929', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('16', '8', '广东省', '深圳市', '福田区', '第6街道第920号', '287300', '邢杨', '13571961891', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('17', '9', '广东省', '深圳市', '福田区', '第50街道第662号', '174200', '阳秀珍', '13372851985', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('18', '9', '广东省', '深圳市', '福田区', '第33街道第236号', '356300', '来君', '13214022519', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('19', '10', '江苏省', '苏州市', '相城区', '第3街道第145号', '126300', '程翔', '17000978994', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('20', '10', '广东省', '深圳市', '福田区', '第30街道第831号', '551300', '晋旭', '15544355464', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('21', '11', '广东省', '深圳市', '福田区', '第12街道第476号', '166200', '燕志文', '15117514758', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('22', '11', '江苏省', '南京市', '浦口区', '第62街道第540号', '437000', '张坤', '18444028420', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('23', '11', '江苏省', '南京市', '浦口区', '第33街道第236号', '154000', '林学明', '15245044209', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('24', '12', '河北省', '石家庄市', '长安区', '第43街道第605号', '43700', '乐磊', '17194846579', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('25', '13', '广东省', '深圳市', '福田区', '第97街道第200号', '815400', '车子安', '18157988164', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('26', '14', '广东省', '深圳市', '福田区', '第88街道第138号', '36700', '褚玉英', '18979151532', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('27', '15', '江苏省', '南京市', '浦口区', '第6街道第505号', '194600', '乐海燕', '17090972338', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('28', '15', '江苏省', '苏州市', '相城区', '第62街道第845号', '452300', '谭红', '13217933371', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('29', '16', '北京市', '市辖区', '东城区', '第60街道第322号', '426800', '虞慧', '17704505921', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('30', '16', '河北省', '石家庄市', '长安区', '第92街道第580号', '443600', '马秀珍', '13330157164', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('31', '16', '北京市', '市辖区', '东城区', '第45街道第457号', '432900', '竺斌', '13387232112', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('32', '17', '北京市', '市辖区', '东城区', '第27街道第601号', '198000', '鞠建国', '18850305092', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('33', '18', '北京市', '市辖区', '东城区', '第25街道第302号', '387600', '商丽娟', '13187875915', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('34', '18', '河北省', '石家庄市', '长安区', '第38街道第728号', '672300', '纪明', '13609889257', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('35', '19', '河北省', '石家庄市', '长安区', '第23街道第524号', '217900', '金建国', '17012755418', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('36', '19', '江苏省', '南京市', '浦口区', '第97街道第803号', '667700', '连霞', '15630922058', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('37', '20', '江苏省', '苏州市', '相城区', '第39街道第429号', '338600', '毛琴', '15149497934', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('38', '20', '河北省', '石家庄市', '长安区', '第78街道第425号', '27600', '项旭', '18774981910', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('39', '21', '北京市', '市辖区', '东城区', '第97街道第422号', '571600', '蔺智渊', '17191526195', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('40', '21', '河北省', '石家庄市', '长安区', '第71街道第699号', '242300', '宗文娟', '15270713230', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('41', '22', '河北省', '石家庄市', '长安区', '第8街道第875号', '345500', '季兵', '18246314481', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('42', '22', '北京市', '市辖区', '东城区', '第14街道第332号', '333900', '滕红梅', '18888112976', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('43', '23', '河北省', '石家庄市', '长安区', '第81街道第236号', '304500', '银红', '18130439429', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('44', '24', '江苏省', '苏州市', '相城区', '第57街道第221号', '558200', '佟艳', '17003725438', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('45', '24', '北京市', '市辖区', '东城区', '第80街道第121号', '561300', '查桂荣', '15315012153', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('46', '25', '江苏省', '苏州市', '相城区', '第70街道第338号', '44700', '林淑珍', '17642130557', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('47', '26', '河北省', '石家庄市', '长安区', '第99街道第407号', '96700', '苗冬梅', '13469747782', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('48', '26', '河北省', '石家庄市', '长安区', '第11街道第899号', '825700', '申凤兰', '15608669701', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('49', '26', '北京市', '市辖区', '东城区', '第91街道第515号', '796400', '葛翔', '18689122453', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('50', '27', '河北省', '石家庄市', '长安区', '第47街道第614号', '306300', '闵鹏程', '17073473987', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('51', '28', '江苏省', '南京市', '浦口区', '第79街道第524号', '264800', '万博', '18612164290', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('52', '28', '江苏省', '南京市', '浦口区', '第67街道第814号', '753000', '方娟', '17094799332', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('53', '28', '河北省', '石家庄市', '长安区', '第33街道第767号', '57100', '常全安', '18765274529', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('54', '29', '江苏省', '南京市', '浦口区', '第28街道第422号', '237900', '阮荣', '17018183970', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('55', '30', '河北省', '石家庄市', '长安区', '第98街道第44号', '595700', '嵺英', '18355204447', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('56', '30', '江苏省', '苏州市', '相城区', '第60街道第129号', '268100', '边桂珍', '17099393897', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('57', '31', '河北省', '石家庄市', '长安区', '第73街道第982号', '552600', '谢志诚', '17096712462', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('58', '31', '广东省', '深圳市', '福田区', '第92街道第805号', '737200', '姜志文', '17094316755', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('59', '32', '北京市', '市辖区', '东城区', '第93街道第467号', '744600', '原智明', '17003337950', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('60', '32', '广东省', '深圳市', '福田区', '第85街道第119号', '345200', '单帅', '18578061584', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('61', '33', '广东省', '深圳市', '福田区', '第37街道第756号', '211200', '冉晨', '18308285685', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('62', '33', '广东省', '深圳市', '福田区', '第28街道第48号', '641300', '陈丽丽', '15608819546', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('63', '34', '北京市', '市辖区', '东城区', '第97街道第332号', '563600', '詹文娟', '17051414487', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('64', '34', '河北省', '石家庄市', '长安区', '第63街道第360号', '74100', '林伦', '18223819283', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('65', '35', '江苏省', '苏州市', '相城区', '第37街道第132号', '117900', '郝旭', '17197552502', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('66', '35', '广东省', '深圳市', '福田区', '第73街道第505号', '736700', '景云', '18566816866', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('67', '35', '江苏省', '苏州市', '相城区', '第86街道第220号', '534900', '僧莉', '18185377267', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('68', '36', '河北省', '石家庄市', '长安区', '第20街道第292号', '335400', '辜致远', '13567532960', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('69', '36', '河北省', '石家庄市', '长安区', '第9街道第879号', '417700', '瞿志强', '14564715702', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('70', '36', '河北省', '石家庄市', '长安区', '第33街道第50号', '388800', '宗瑞', '17843057560', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('71', '37', '北京市', '市辖区', '东城区', '第61街道第923号', '615000', '练欢', '17004568408', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('72', '37', '河北省', '石家庄市', '长安区', '第15街道第234号', '666300', '巩瑞', '13837871670', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('73', '37', '广东省', '深圳市', '福田区', '第11街道第237号', '723800', '冀静', '17180063644', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('74', '38', '河北省', '石家庄市', '长安区', '第12街道第688号', '675200', '荆雪', '15150087522', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('75', '38', '河北省', '石家庄市', '长安区', '第17街道第954号', '748600', '纪龙', '17076277982', null, '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `user_addresses` VALUES ('76', '38', '北京市', '市辖区', '东城区', '第43街道第181号', '785000', '艾云', '18638917894', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('77', '39', '江苏省', '南京市', '浦口区', '第10街道第799号', '256800', '谢建华', '15019755593', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('78', '40', '江苏省', '苏州市', '相城区', '第20街道第744号', '112500', '颜桂珍', '13335554798', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('79', '41', '广东省', '深圳市', '福田区', '第92街道第315号', '353200', '鲍建', '15200108749', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('80', '41', '江苏省', '南京市', '浦口区', '第21街道第840号', '93000', '赖琳', '13656752362', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('81', '42', '江苏省', '南京市', '浦口区', '第21街道第440号', '725700', '巩林', '17080722737', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('82', '43', '江苏省', '南京市', '浦口区', '第6街道第949号', '623600', '陈利', '17085267126', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('83', '43', '江苏省', '南京市', '浦口区', '第10街道第652号', '665900', '彭丽华', '17193416085', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('84', '44', '北京市', '市辖区', '东城区', '第35街道第183号', '612100', '姬丹丹', '17010172164', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('85', '45', '河北省', '石家庄市', '长安区', '第10街道第544号', '203800', '褚雪梅', '18438588260', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('86', '46', '江苏省', '苏州市', '相城区', '第71街道第68号', '405500', '花建华', '17199960957', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('87', '46', '江苏省', '苏州市', '相城区', '第16街道第417号', '234200', '胥欣', '15515430783', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('88', '47', '江苏省', '南京市', '浦口区', '第82街道第475号', '448300', '银颖', '13176908233', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('89', '48', '北京市', '市辖区', '东城区', '第95街道第209号', '627800', '邱莹', '15722053324', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('90', '49', '河北省', '石家庄市', '长安区', '第87街道第880号', '591300', '孔宁', '13439433785', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('91', '49', '河北省', '石家庄市', '长安区', '第65街道第752号', '673500', '蒋龙', '17091917515', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('92', '49', '河北省', '石家庄市', '长安区', '第67街道第27号', '23800', '房利', '18352393457', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('93', '50', '北京市', '市辖区', '东城区', '第41街道第713号', '213500', '郭洋', '17055419540', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('94', '51', '江苏省', '南京市', '浦口区', '第91街道第962号', '358600', '吕辉', '17001744492', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('95', '51', '北京市', '市辖区', '东城区', '第26街道第500号', '273700', '杨刚', '18298994289', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('96', '52', '江苏省', '南京市', '浦口区', '第50街道第847号', '368100', '席钟', '17057153437', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('97', '52', '江苏省', '南京市', '浦口区', '第56街道第705号', '174700', '邬英', '18155709779', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('98', '53', '河北省', '石家庄市', '长安区', '第98街道第734号', '156400', '畅杰', '15065010149', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('99', '53', '河北省', '石家庄市', '长安区', '第63街道第741号', '503600', '应文', '18843624106', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('100', '53', '北京市', '市辖区', '东城区', '第33街道第799号', '351200', '查晶', '17092794866', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('101', '54', '江苏省', '南京市', '浦口区', '第25街道第74号', '338100', '左秀华', '17053444364', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('102', '54', '河北省', '石家庄市', '长安区', '第1街道第927号', '353300', '纪子安', '13642602043', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('103', '55', '广东省', '深圳市', '福田区', '第48街道第439号', '275300', '陶爱华', '13085954059', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('104', '55', '江苏省', '苏州市', '相城区', '第93街道第900号', '468600', '楚文娟', '13427646574', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('105', '55', '河北省', '石家庄市', '长安区', '第6街道第100号', '321400', '丘辉', '18695366882', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('106', '56', '江苏省', '苏州市', '相城区', '第43街道第804号', '362900', '屈志新', '17124332079', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('107', '56', '江苏省', '南京市', '浦口区', '第74街道第234号', '716500', '鲁健', '17700987667', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('108', '56', '北京市', '市辖区', '东城区', '第22街道第230号', '746300', '饶璐', '18816792699', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('109', '57', '广东省', '深圳市', '福田区', '第2街道第515号', '72200', '娄晶', '15642113825', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('110', '58', '广东省', '深圳市', '福田区', '第61街道第957号', '202000', '尤强', '13555334517', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('111', '58', '江苏省', '苏州市', '相城区', '第40街道第736号', '416800', '鲍桂芳', '18754803303', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('112', '59', '河北省', '石家庄市', '长安区', '第28街道第307号', '853500', '乔飞', '14725241887', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('113', '59', '河北省', '石家庄市', '长安区', '第16街道第649号', '307500', '费兵', '13348830472', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('114', '60', '北京市', '市辖区', '东城区', '第45街道第76号', '35600', '单晧', '15218894258', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('115', '60', '北京市', '市辖区', '东城区', '第80街道第410号', '826500', '盖莉', '15298159895', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('116', '61', '江苏省', '南京市', '浦口区', '第17街道第615号', '388700', '田旭', '13550089022', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('117', '61', '广东省', '深圳市', '福田区', '第34街道第423号', '266100', '隋智勇', '17019566851', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('118', '61', '江苏省', '苏州市', '相城区', '第82街道第91号', '353600', '伏飞', '18098961431', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('119', '62', '广东省', '深圳市', '福田区', '第17街道第636号', '837600', '祁莹', '14700090995', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('120', '63', '江苏省', '苏州市', '相城区', '第93街道第869号', '155200', '施洋', '17196152757', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('121', '63', '广东省', '深圳市', '福田区', '第75街道第421号', '568500', '燕志强', '13255695715', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('122', '63', '北京市', '市辖区', '东城区', '第94街道第678号', '554600', '程晨', '17870711027', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('123', '64', '广东省', '深圳市', '福田区', '第56街道第496号', '523400', '隋文君', '13048060681', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('124', '64', '河北省', '石家庄市', '长安区', '第25街道第771号', '467300', '聂艳', '13417656422', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('125', '65', '北京市', '市辖区', '东城区', '第68街道第205号', '86000', '姬鹏', '13429975975', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('126', '66', '江苏省', '南京市', '浦口区', '第71街道第571号', '355300', '项婷', '13746203520', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('127', '66', '广东省', '深圳市', '福田区', '第37街道第250号', '131300', '申国庆', '18755922641', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('128', '67', '广东省', '深圳市', '福田区', '第56街道第942号', '525200', '鄢智渊', '17055371830', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('129', '67', '江苏省', '苏州市', '相城区', '第40街道第787号', '624200', '蒙雷', '15660220663', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('130', '67', '江苏省', '苏州市', '相城区', '第94街道第395号', '775200', '宗龙', '13327873789', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('131', '68', '江苏省', '南京市', '浦口区', '第29街道第638号', '53600', '孙峰', '17186194897', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('132', '68', '江苏省', '苏州市', '相城区', '第31街道第858号', '773000', '俞建平', '18637567706', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('133', '69', '江苏省', '南京市', '浦口区', '第90街道第958号', '85700', '龙瑜', '18469531661', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('134', '69', '河北省', '石家庄市', '长安区', '第37街道第120号', '633700', '隋凯', '17818681979', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('135', '70', '江苏省', '苏州市', '相城区', '第38街道第318号', '372700', '颜建明', '17085260859', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('136', '70', '北京市', '市辖区', '东城区', '第7街道第691号', '78300', '成岩', '15041566393', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('137', '70', '北京市', '市辖区', '东城区', '第40街道第343号', '354500', '章杰', '15353743777', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('138', '71', '江苏省', '南京市', '浦口区', '第59街道第563号', '386100', '贾桂花', '17702427269', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('139', '71', '河北省', '石家庄市', '长安区', '第23街道第858号', '15700', '郁欢', '15187254932', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('140', '71', '江苏省', '苏州市', '相城区', '第60街道第504号', '581800', '傅志强', '14778020811', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('141', '72', '江苏省', '苏州市', '相城区', '第19街道第953号', '106300', '周博涛', '18461755767', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('142', '73', '江苏省', '苏州市', '相城区', '第70街道第495号', '182900', '尤瑶', '13542008064', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('143', '73', '北京市', '市辖区', '东城区', '第36街道第729号', '655900', '车建华', '14554764322', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('144', '74', '广东省', '深圳市', '福田区', '第1街道第322号', '361900', '古荣', '15845891022', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('145', '75', '广东省', '深圳市', '福田区', '第47街道第146号', '274900', '苟辉', '17013369000', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('146', '75', '北京市', '市辖区', '东城区', '第2街道第213号', '775900', '郎文君', '18154506962', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('147', '76', '河北省', '石家庄市', '长安区', '第3街道第270号', '588400', '井桂芝', '17004127597', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('148', '77', '江苏省', '南京市', '浦口区', '第98街道第553号', '762600', '陈丹', '18159627019', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('149', '77', '北京市', '市辖区', '东城区', '第78街道第345号', '277800', '古晨', '13767203472', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('150', '78', '江苏省', '苏州市', '相城区', '第32街道第373号', '527400', '丛红霞', '17059385929', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('151', '78', '北京市', '市辖区', '东城区', '第69街道第362号', '94400', '姜阳', '17186905695', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('152', '78', '河北省', '石家庄市', '长安区', '第54街道第583号', '582400', '刁娜', '15942824446', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('153', '79', '北京市', '市辖区', '东城区', '第39街道第267号', '832500', '翟文', '17059519353', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('154', '80', '河北省', '石家庄市', '长安区', '第75街道第762号', '595900', '郎彬', '15984818246', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('155', '80', '北京市', '市辖区', '东城区', '第38街道第346号', '503000', '覃兵', '18109988888', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('156', '81', '广东省', '深圳市', '福田区', '第58街道第678号', '545500', '乐晧', '18220885607', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('157', '81', '江苏省', '南京市', '浦口区', '第2街道第345号', '461100', '官鑫', '17687931122', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('158', '82', '河北省', '石家庄市', '长安区', '第94街道第572号', '624700', '苏玉梅', '15080073232', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('159', '82', '广东省', '深圳市', '福田区', '第97街道第907号', '277500', '封全安', '17010289657', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('160', '82', '河北省', '石家庄市', '长安区', '第83街道第355号', '286700', '丘玉华', '17052271840', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('161', '83', '河北省', '石家庄市', '长安区', '第17街道第818号', '48400', '屈楼', '17000115697', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('162', '83', '河北省', '石家庄市', '长安区', '第18街道第75号', '474500', '谌秀珍', '18882111339', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('163', '84', '江苏省', '南京市', '浦口区', '第70街道第513号', '291400', '阮正诚', '13378804478', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('164', '85', '河北省', '石家庄市', '长安区', '第6街道第568号', '691400', '马爱华', '13081603700', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('165', '86', '北京市', '市辖区', '东城区', '第3街道第782号', '383000', '华桂兰', '13297477197', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('166', '86', '江苏省', '苏州市', '相城区', '第96街道第757号', '416100', '孙新华', '17759654125', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('167', '87', '广东省', '深圳市', '福田区', '第65街道第978号', '335000', '韩凯', '17705595671', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('168', '87', '河北省', '石家庄市', '长安区', '第87街道第204号', '593200', '窦华', '17004661294', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('169', '87', '河北省', '石家庄市', '长安区', '第68街道第675号', '94400', '佟林', '17186225742', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('170', '88', '江苏省', '南京市', '浦口区', '第38街道第489号', '453700', '卓磊', '15561510688', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('171', '88', '江苏省', '苏州市', '相城区', '第22街道第31号', '513100', '官国庆', '13896439258', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('172', '89', '江苏省', '苏州市', '相城区', '第66街道第431号', '793700', '冀畅', '15013194656', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('173', '89', '河北省', '石家庄市', '长安区', '第54街道第696号', '361200', '庞玉华', '17085086498', null, '2019-04-29 10:56:53', '2019-04-29 10:56:53');
INSERT INTO `user_addresses` VALUES ('174', '89', '北京市', '市辖区', '东城区', '第99街道第740号', '703900', '盛建平', '15131174976', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('175', '90', '江苏省', '苏州市', '相城区', '第38街道第31号', '343000', '田淑华', '15024744330', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('176', '90', '河北省', '石家庄市', '长安区', '第78街道第967号', '852500', '鲁晶', '15962251172', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('177', '91', '河北省', '石家庄市', '长安区', '第70街道第580号', '298200', '符欣', '18660758690', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('178', '91', '北京市', '市辖区', '东城区', '第71街道第404号', '436100', '赖玉兰', '13433433600', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('179', '91', '广东省', '深圳市', '福田区', '第80街道第627号', '656100', '吉文', '15223338762', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('180', '92', '广东省', '深圳市', '福田区', '第82街道第111号', '655900', '霍全安', '17011319652', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('181', '92', '江苏省', '苏州市', '相城区', '第73街道第253号', '16600', '莫致远', '15722304025', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('182', '93', '河北省', '石家庄市', '长安区', '第89街道第852号', '375700', '萧建华', '17186079974', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('183', '93', '北京市', '市辖区', '东城区', '第65街道第459号', '308000', '鄢婷', '13676427414', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('184', '93', '江苏省', '苏州市', '相城区', '第93街道第630号', '415700', '原玉梅', '17182208003', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('185', '94', '河北省', '石家庄市', '长安区', '第22街道第421号', '436200', '何博涛', '17008592703', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('186', '95', '广东省', '深圳市', '福田区', '第29街道第645号', '397000', '和敏', '18544505845', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('187', '95', '江苏省', '南京市', '浦口区', '第91街道第249号', '517400', '柯岩', '13389007008', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('188', '96', '江苏省', '南京市', '浦口区', '第78街道第17号', '38100', '柳婷婷', '18597749543', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('189', '96', '江苏省', '南京市', '浦口区', '第29街道第526号', '837200', '应志勇', '18603237696', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('190', '97', '河北省', '石家庄市', '长安区', '第96街道第330号', '51800', '伏昱然', '17084111942', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('191', '97', '河北省', '石家庄市', '长安区', '第51街道第828号', '788600', '迟建', '17743007035', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('192', '97', '江苏省', '南京市', '浦口区', '第44街道第245号', '317900', '穆桂芳', '18757003454', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('193', '98', '北京市', '市辖区', '东城区', '第23街道第377号', '621400', '娄彬', '18020880215', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('194', '98', '广东省', '深圳市', '福田区', '第35街道第672号', '331900', '伍志新', '13198850000', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('195', '98', '广东省', '深圳市', '福田区', '第6街道第692号', '802200', '穆淑珍', '13618211607', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('196', '99', '江苏省', '南京市', '浦口区', '第95街道第707号', '663400', '袁成', '17056967601', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('197', '100', '江苏省', '苏州市', '相城区', '第54街道第852号', '553100', '栾冰冰', '18029525979', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('198', '100', '江苏省', '南京市', '浦口区', '第96街道第792号', '274100', '许文彬', '17006761985', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');
INSERT INTO `user_addresses` VALUES ('199', '100', '江苏省', '苏州市', '相城区', '第98街道第612号', '24100', '原志文', '13773734333', null, '2019-04-29 10:56:54', '2019-04-29 10:56:54');

-- ----------------------------
-- Table structure for `user_favorite_products`
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_products`;
CREATE TABLE `user_favorite_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_favorite_products_user_id_foreign` (`user_id`),
  KEY `user_favorite_products_product_id_foreign` (`product_id`),
  CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_favorite_products
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '廉华', 'est42@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1Yz96BvQKd', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('2', '潘建明', 'dignissimos_enim@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5KEWAG9t0M', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('3', '佟哲彦', 'recusandae64@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sWyRBMfaq0', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('4', '栗倩', 'consequatur_occaecati@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8C9x4p5UPK', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('5', '甄秀珍', 'adipisci_sed@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'graEFgfl6g', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('6', '封瑶', 'sdicta@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fp1QkxJaV9', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('7', '台怡', 'impedit_voluptates@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sPfamlmlNd', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('8', '萧桂英', 'similique97@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5EAzGj0Twe', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('9', '郜桂花', 'aut.quam@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AMaT3RRzOt', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('10', '方婷婷', 'rerum95@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'd4hX61xx7T', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('11', '武欢', 'sit.ut@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wDz6CcjlCU', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('12', '孟捷', 'uqui@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'O94NrHyd4c', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('13', '辛冬梅', 'eum.culpa@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rVzoToh3gi', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('14', '滕雪', 'aillo@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '49tYOOZ30n', '2019-04-29 10:56:50', '2019-04-29 10:56:50');
INSERT INTO `users` VALUES ('15', '花艳', 'iste97@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EPJ9pC1Zpb', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('16', '卫杨', 'nmaiores@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Bpb7cpCVpv', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('17', '胥娟', 'tlaudantium@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FnJPa6V7HH', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('18', '宫淑珍', 'ex70@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'seQLzh4lYd', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('19', '萧红', 'qui59@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lGLHphuhXc', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('20', '鲁雪梅', 'earum45@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'V1hCRSW0mP', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('21', '单瑜', 'sed_ut@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Uxg8UohRtL', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('22', '林兵', 'sit.qui@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KCuD5W47Pm', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('23', '阳健', 'iste_qui@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3EVQwKRJfD', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('24', '窦依琳', 'quia_impedit@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZJmLND5rIk', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('25', '白学明', 'ipsa07@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Tsp8N4IxmL', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('26', '吉桂花', 'voluptas16@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OtLQuWuXlj', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('27', '边娟', 'tplaceat@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FwNqAOrO8h', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('28', '喻琳', 'et_voluptatum@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oU7uVZHz9F', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('29', '龙丽', 'quos58@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '76i0vCHpF0', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('30', '袁爱华', 'praesentium.nihil@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CKWfhXMKOa', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('31', '葛莹', 'molestiae_soluta@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BkKGsXZS9Y', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('32', '僧秀芳', 'delectus_eveniet@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NvgefUWXDU', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('33', '嵺冬梅', 'udolores@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6bb9Paz8fN', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('34', '岑文彬', 'nulla24@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5ZGNIMo2Tj', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('35', '杜秀荣', 'qui_hic@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TOOyflh2my', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('36', '宇智敏', 'voluptatem_sunt@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WzncfQZFVM', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('37', '练玉珍', 'accusamus85@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tjapUB79Va', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('38', '陶腊梅', 'lodio@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sN3U5gvbt5', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('39', '蔺欣', 'architecto.sint@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YEgc6rFcNr', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('40', '邢翔', 'unde32@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bpluYVYD6K', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('41', '洪宁', 'reiciendis46@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'S9pCkE9iF9', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('42', '涂瑶', 'vdolor@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tm53meCE7m', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('43', '花钟', 'numquam_quo@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tnMg4nwNbJ', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('44', '康岩', 'gea@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gtrKsOpAGM', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('45', '宁丽华', 'sit_laborum@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0QXRJ0xQCv', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('46', '单坤', 'voluptas_laudantium@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2YFoOLop9r', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('47', '娄全安', 'itaque18@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LWWKImwvxj', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('48', '葛旭', 'quia_odio@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KVa1I4RsKF', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('49', '卜平', 'doloribus_similique@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '38Rk8sZgg7', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('50', '左娟', 'perspiciatis.ex@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'b8gRRBR0IS', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('51', '瞿晧', 'et10@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3xdzdkX03R', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('52', '芦荣', 'quia_fugiat@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5qAlAer407', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('53', '韩慧', 'vero74@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'K1dI6RGVwt', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('54', '沙芳', 'dea@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9t1PlRIPrE', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('55', '熊兵', 'caccusantium@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'y48kAbpVaX', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('56', '卢雪梅', 'impedit_at@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WmFwnHHEPQ', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('57', '盛丽娟', 'danimi@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'd5hOXIcgn3', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('58', '匡瑜', 'fvoluptas@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RfjLRWZvAQ', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('59', '靳桂珍', 'csunt@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cah8itaR7h', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('60', '艾杨', 'nostrum13@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6LyXeqNNJU', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('61', '巩馨予', 'eesse@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1A0ehHnoNB', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('62', '蒋鹏', 'autem_molestiae@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SluomW5Lku', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('63', '吕涛', 'inventore81@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yTqFXEJ28k', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('64', '蒋楼', 'ovoluptatem@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sZ3QEuSqZu', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('65', '荆瑞', 'oodit@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4IyNychtXc', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('66', '常坤', 'quia.recusandae@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'puQszkfCmM', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('67', '鄢楠', 'pariatur_atque@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yE89PzAgiQ', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('68', '燕凤英', 'ysunt@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'z5SkdRzmwj', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('69', '张楼', 'id12@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lq3juhZsxu', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('70', '都国庆', 'lqui@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YoQ0mtWpO2', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('71', '晏倩', 'mollitia.similique@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UoCiOovQeV', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('72', '舒玉兰', 'doloribus93@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't8CHaHadZ5', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('73', '戴敏静', 'qui61@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Hx269GfFF0', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('74', '计致远', 'jquis@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RHc6CL2OyF', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('75', '吴敏', 'dquos@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'j5eqhuwrUW', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('76', '伍爱华', 'voluptates_voluptatem@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cfQgDF828y', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('77', '关正豪', 'beatae.ipsa@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IV5tHdlSMN', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('78', '蒙峰', 'aperiam_quod@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5SXVap0nZk', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('79', '刘桂英', 'delectus.assumenda@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZhkUNr4oFD', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('80', '栗瑞', 'a34@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YWR7h5DX2E', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('81', '吴斌', 'aveniam@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FWeafxrO4d', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('82', '习国庆', 'assumenda_molestiae@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nmPqG5va7x', '2019-04-29 10:56:51', '2019-04-29 10:56:51');
INSERT INTO `users` VALUES ('83', '侯健', 'optio.consequatur@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gROErG8tG5', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('84', '植全安', 'cerror@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FrK0ROCPzt', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('85', '项振国', 'rrecusandae@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3HRpZCJFr8', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('86', '霍春梅', 'rerum_deleniti@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0qBFeePhOm', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('87', '台旭', 'assumenda17@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'am90JXDvcO', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('88', '井桂荣', 'eos_odio@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4YT4ph6gOv', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('89', '柴亮', 'fuga.voluptatibus@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BaHtQfpQX1', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('90', '方涛', 'non.debitis@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JQYV60PHZJ', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('91', '查娜', 'et_voluptatem@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Qq4rgqWVdm', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('92', '邢凤兰', 'veniam_repellat@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DI00MElCde', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('93', '翟凤兰', 'magni.nobis@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'g6MyreqMTy', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('94', '邸建平', 'quia_eligendi@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '38CieCx1HX', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('95', '詹鹏程', 'iste58@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'q7anK7QjsN', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('96', '植桂芝', 'quis54@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kpDQ0TQY0C', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('97', '伍兵', 'ivoluptatibus@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qQG1sNgBLU', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('98', '宫桂芝', 'cnon@example.com', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5djPFqbNox', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('99', '连冬梅', 'pquia@example.net', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jJCBvce5a9', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('100', '曹志强', 'hvoluptatum@example.org', '2019-04-29 10:56:50', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vcM0bii8BI', '2019-04-29 10:56:52', '2019-04-29 10:56:52');
INSERT INTO `users` VALUES ('101', 'dali', '1271041694@qq.com', '2019-04-29 10:59:14', '$2y$10$ixTNBJ3twcu5j2PxcR34i..l0hFfLlakpIk3H2pKeJs/gFbYCflSy', null, '2019-04-29 10:58:35', '2019-04-29 10:59:14');
