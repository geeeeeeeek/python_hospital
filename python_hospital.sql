/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_hospital

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 19/01/2024 19:01:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add classification', 7, 'add_classification');
INSERT INTO `auth_permission` VALUES (26, 'Can change classification', 7, 'change_classification');
INSERT INTO `auth_permission` VALUES (27, 'Can delete classification', 7, 'delete_classification');
INSERT INTO `auth_permission` VALUES (28, 'Can view classification', 7, 'view_classification');
INSERT INTO `auth_permission` VALUES (29, 'Can add error log', 8, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (30, 'Can change error log', 8, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (31, 'Can delete error log', 8, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (32, 'Can view error log', 8, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (33, 'Can add login log', 9, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change login log', 9, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete login log', 9, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view login log', 9, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add op log', 10, 'add_oplog');
INSERT INTO `auth_permission` VALUES (38, 'Can change op log', 10, 'change_oplog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete op log', 10, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (40, 'Can view op log', 10, 'view_oplog');
INSERT INTO `auth_permission` VALUES (41, 'Can add tag', 11, 'add_tag');
INSERT INTO `auth_permission` VALUES (42, 'Can change tag', 11, 'change_tag');
INSERT INTO `auth_permission` VALUES (43, 'Can delete tag', 11, 'delete_tag');
INSERT INTO `auth_permission` VALUES (44, 'Can view tag', 11, 'view_tag');
INSERT INTO `auth_permission` VALUES (45, 'Can add user', 12, 'add_user');
INSERT INTO `auth_permission` VALUES (46, 'Can change user', 12, 'change_user');
INSERT INTO `auth_permission` VALUES (47, 'Can delete user', 12, 'delete_user');
INSERT INTO `auth_permission` VALUES (48, 'Can view user', 12, 'view_user');
INSERT INTO `auth_permission` VALUES (49, 'Can add thing', 13, 'add_thing');
INSERT INTO `auth_permission` VALUES (50, 'Can change thing', 13, 'change_thing');
INSERT INTO `auth_permission` VALUES (51, 'Can delete thing', 13, 'delete_thing');
INSERT INTO `auth_permission` VALUES (52, 'Can view thing', 13, 'view_thing');
INSERT INTO `auth_permission` VALUES (53, 'Can add medical', 14, 'add_medical');
INSERT INTO `auth_permission` VALUES (54, 'Can change medical', 14, 'change_medical');
INSERT INTO `auth_permission` VALUES (55, 'Can delete medical', 14, 'delete_medical');
INSERT INTO `auth_permission` VALUES (56, 'Can view medical', 14, 'view_medical');
INSERT INTO `auth_permission` VALUES (57, 'Can add nurse', 15, 'add_nurse');
INSERT INTO `auth_permission` VALUES (58, 'Can change nurse', 15, 'change_nurse');
INSERT INTO `auth_permission` VALUES (59, 'Can delete nurse', 15, 'delete_nurse');
INSERT INTO `auth_permission` VALUES (60, 'Can view nurse', 15, 'view_nurse');
INSERT INTO `auth_permission` VALUES (61, 'Can add stay', 16, 'add_stay');
INSERT INTO `auth_permission` VALUES (62, 'Can change stay', 16, 'change_stay');
INSERT INTO `auth_permission` VALUES (63, 'Can delete stay', 16, 'delete_stay');
INSERT INTO `auth_permission` VALUES (64, 'Can view stay', 16, 'view_stay');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '口腔科', '2024-01-19 18:18:46.312183');
INSERT INTO `b_classification` VALUES (2, '肛肠科', '2024-01-19 18:18:52.963168');
INSERT INTO `b_classification` VALUES (3, '消化科', '2024-01-19 18:18:57.671053');
INSERT INTO `b_classification` VALUES (4, '呼吸科', '2024-01-19 18:19:02.071967');
INSERT INTO `b_classification` VALUES (5, '内分泌科', '2024-01-19 18:19:07.865970');
INSERT INTO `b_classification` VALUES (6, '神经外科', '2024-01-19 18:19:16.038965');
INSERT INTO `b_classification` VALUES (7, '儿科', '2024-01-19 18:19:28.975027');
INSERT INTO `b_classification` VALUES (8, '普通内科', '2024-01-19 18:19:38.812385');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-19 18:16:39.704766');
INSERT INTO `b_login_log` VALUES (2, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-19 18:54:52.158840');
INSERT INTO `b_login_log` VALUES (3, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-19 18:55:11.325788');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-19 18:55:20.022804');

-- ----------------------------
-- Table structure for b_medical
-- ----------------------------
DROP TABLE IF EXISTS `b_medical`;
CREATE TABLE `b_medical`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `treatment` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_medical
-- ----------------------------
INSERT INTO `b_medical` VALUES (1, '999感冒灵', '感冒发热', '22', '2024-01-19 18:51:52.097442');
INSERT INTO `b_medical` VALUES (2, '健胃消食片', '胃炎', '31', '2024-01-19 18:52:18.867969');
INSERT INTO `b_medical` VALUES (3, '口腔溃疡片', '口腔疾病', '38', '2024-01-19 18:52:34.701733');
INSERT INTO `b_medical` VALUES (4, '清热散结片', '上火', '41', '2024-01-19 18:52:50.027060');
INSERT INTO `b_medical` VALUES (5, '牛黄解毒片', '口腔炎症', '2', '2024-01-19 18:53:11.441120');
INSERT INTO `b_medical` VALUES (6, '奥司他韦胶囊', '病毒性感冒', '58', '2024-01-19 18:53:31.097234');

-- ----------------------------
-- Table structure for b_nurse
-- ----------------------------
DROP TABLE IF EXISTS `b_nurse`;
CREATE TABLE `b_nurse`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhicheng` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_nurse_classification_id_3e474141_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_nurse_classification_id_3e474141_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_nurse
-- ----------------------------
INSERT INTO `b_nurse` VALUES (1, '李静', '女', '22', '护理', '副高', '18977773333', '', '0', '2024-01-19 18:37:35.779229', 6);
INSERT INTO `b_nurse` VALUES (2, '王晓宁', '女', '21', '护理', '副高', '18977770099', '', '0', '2024-01-19 18:39:23.227505', 8);
INSERT INTO `b_nurse` VALUES (3, '王娜', '女', '23', '护理', '副高', '18977778888', '', '0', '2024-01-19 18:39:49.185358', 8);
INSERT INTO `b_nurse` VALUES (4, '王萍萍', '女', '21', '护理', '副高', '18977776666', '', '0', '2024-01-19 18:40:12.083495', 7);

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 253 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-01-19 18:16:11.336808', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-01-19 18:16:11.340827', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-01-19 18:16:11.341793', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-01-19 18:16:13.047641', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-01-19 18:16:19.669611', '/myapp/admin/user/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-01-19 18:16:31.869833', '/myapp/admin/user/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-01-19 18:16:31.891839', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-01-19 18:16:39.708271', '/myapp/admin/adminLogin', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-01-19 18:16:39.937149', '/myapp/admin/course/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-01-19 18:16:39.948565', '/myapp/admin/course/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-01-19 18:16:39.947068', '/myapp/admin/course/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-01-19 18:16:41.393767', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-01-19 18:16:52.743718', '/myapp/admin/user/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-01-19 18:16:52.787999', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-01-19 18:17:00.833990', '/myapp/admin/user/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-01-19 18:17:00.868655', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-01-19 18:17:16.713424', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-01-19 18:17:58.745057', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-01-19 18:17:59.889771', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-01-19 18:17:59.888771', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-01-19 18:17:59.900125', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-01-19 18:18:03.234132', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-01-19 18:18:29.912500', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-01-19 18:18:46.315099', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-01-19 18:18:46.355552', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-01-19 18:18:52.967282', '/myapp/admin/classification/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-01-19 18:18:53.007439', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-01-19 18:18:57.675593', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-01-19 18:18:57.712585', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-01-19 18:19:02.075967', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-01-19 18:19:02.117960', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-01-19 18:19:07.870679', '/myapp/admin/classification/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-01-19 18:19:07.908881', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-01-19 18:19:16.043973', '/myapp/admin/classification/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-01-19 18:19:16.062505', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-01-19 18:19:28.979090', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-01-19 18:19:29.019899', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-01-19 18:19:38.815770', '/myapp/admin/classification/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-01-19 18:19:38.843016', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-01-19 18:19:45.408132', '/myapp/admin/classification/update', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-01-19 18:19:45.438140', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-01-19 18:19:49.274912', '/myapp/admin/classification/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-01-19 18:19:49.314831', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-01-19 18:19:52.896260', '/myapp/admin/classification/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-01-19 18:19:52.937100', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-01-19 18:19:55.363383', '/myapp/admin/classification/delete', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-01-19 18:19:55.399364', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-01-19 18:19:57.099967', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-01-19 18:19:57.100956', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-01-19 18:19:57.125965', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-01-19 18:22:49.734102', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-01-19 18:22:49.735157', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-01-19 18:22:49.735157', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-01-19 18:22:50.080400', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-01-19 18:22:50.582766', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-01-19 18:22:50.583766', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-01-19 18:22:50.584802', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-01-19 18:23:17.064060', '/myapp/admin/thing/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-01-19 18:23:17.100379', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-01-19 18:24:23.710515', '/myapp/admin/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-01-19 18:24:23.737184', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-01-19 18:24:51.451393', '/myapp/admin/thing/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-01-19 18:24:51.504767', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-01-19 18:25:21.499781', '/myapp/admin/thing/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-01-19 18:25:21.528958', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-01-19 18:25:23.618815', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-01-19 18:25:24.325530', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-01-19 18:25:24.326531', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-01-19 18:25:24.329235', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-01-19 18:25:31.271398', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-01-19 18:25:31.318938', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-01-19 18:25:40.085241', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-01-19 18:25:41.630213', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-01-19 18:25:42.312830', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-01-19 18:25:42.315831', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-01-19 18:25:42.317831', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-01-19 18:33:01.176701', '/myapp/admin/thing/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-01-19 18:33:01.204554', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-01-19 18:33:03.398604', '/myapp/admin/thing/delete', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-01-19 18:33:03.426308', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-01-19 18:33:47.735675', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-01-19 18:33:47.737761', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-01-19 18:33:47.753237', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-01-19 18:35:16.757606', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-01-19 18:35:16.762607', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-01-19 18:35:16.767606', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-01-19 18:35:17.535097', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-01-19 18:35:17.537083', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-01-19 18:35:17.539083', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-01-19 18:37:12.945650', '/myapp/admin/nurse/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-01-19 18:37:12.947924', '/myapp/admin/nurse/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-01-19 18:37:12.960429', '/myapp/admin/nurse/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-01-19 18:37:13.804754', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-01-19 18:37:13.812753', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-01-19 18:37:13.815753', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-01-19 18:37:14.274609', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-01-19 18:37:14.276846', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-01-19 18:37:14.277853', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-01-19 18:37:35.784446', '/myapp/admin/nurse/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-01-19 18:37:35.821348', '/myapp/admin/nurse/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-01-19 18:38:32.224560', '/myapp/admin/nurse/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-01-19 18:38:32.271416', '/myapp/admin/nurse/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-01-19 18:38:58.919167', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-01-19 18:38:58.921172', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-01-19 18:38:58.926773', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-01-19 18:38:59.420284', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-01-19 18:38:59.422471', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-01-19 18:38:59.425022', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-01-19 18:39:23.233053', '/myapp/admin/nurse/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-01-19 18:39:23.286265', '/myapp/admin/nurse/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-01-19 18:39:49.199491', '/myapp/admin/nurse/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-01-19 18:39:49.242434', '/myapp/admin/nurse/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-01-19 18:40:12.090489', '/myapp/admin/nurse/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-01-19 18:40:12.135057', '/myapp/admin/nurse/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-01-19 18:40:19.081418', '/myapp/admin/nurse/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-01-19 18:40:19.131709', '/myapp/admin/nurse/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-01-19 18:40:21.644951', '/myapp/admin/nurse/delete', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-01-19 18:40:21.676222', '/myapp/admin/nurse/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-01-19 18:40:25.068971', '/myapp/admin/nurse/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-01-19 18:40:27.452678', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-01-19 18:40:27.455677', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-01-19 18:40:27.461677', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-01-19 18:40:28.087554', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-01-19 18:40:28.089847', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-01-19 18:40:28.094510', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-01-19 18:42:06.959007', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-01-19 18:42:06.960996', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-01-19 18:42:06.963005', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-01-19 18:43:03.021955', '/myapp/admin/stay/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-01-19 18:43:03.023955', '/myapp/admin/stay/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-01-19 18:43:03.024966', '/myapp/admin/stay/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-01-19 18:43:28.685478', '/myapp/admin/stay/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-01-19 18:43:28.719005', '/myapp/admin/stay/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-01-19 18:43:46.679339', '/myapp/admin/stay/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-01-19 18:43:46.702850', '/myapp/admin/stay/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-01-19 18:44:09.141198', '/myapp/admin/stay/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-01-19 18:44:09.162913', '/myapp/admin/stay/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-01-19 18:44:22.792774', '/myapp/admin/stay/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-01-19 18:44:22.839333', '/myapp/admin/stay/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-01-19 18:44:27.675140', '/myapp/admin/stay/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-01-19 18:44:27.697174', '/myapp/admin/stay/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-01-19 18:44:32.683374', '/myapp/admin/stay/update', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-01-19 18:44:32.728818', '/myapp/admin/stay/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-01-19 18:44:36.519740', '/myapp/admin/stay/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-01-19 18:44:38.043582', '/myapp/admin/stay/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-01-19 18:45:42.876181', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-01-19 18:45:42.878181', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-01-19 18:45:42.881424', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-01-19 18:45:46.754116', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-01-19 18:45:46.760115', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-01-19 18:45:46.766127', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-01-19 18:47:50.155291', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-01-19 18:47:50.158299', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-01-19 18:47:50.162300', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-01-19 18:47:50.711530', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-01-19 18:47:50.724530', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-01-19 18:47:50.726529', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-01-19 18:47:53.060019', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-01-19 18:47:53.062238', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-01-19 18:47:53.063242', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-01-19 18:48:33.480105', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-01-19 18:48:33.485875', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-01-19 18:48:33.501239', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-01-19 18:48:44.053085', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-01-19 18:48:44.056340', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-01-19 18:48:44.075725', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-01-19 18:49:35.423920', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-01-19 18:49:35.429912', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-01-19 18:49:35.444924', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-01-19 18:49:38.107253', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-01-19 18:49:38.108709', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-01-19 18:49:38.110765', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-01-19 18:50:51.584473', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-01-19 18:50:51.585468', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-01-19 18:50:51.590742', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-01-19 18:51:16.992350', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-01-19 18:51:16.995344', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-01-19 18:51:17.013336', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-01-19 18:51:18.622050', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-01-19 18:51:18.623280', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-01-19 18:51:18.623280', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-01-19 18:51:34.899186', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-01-19 18:51:34.900199', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-01-19 18:51:34.917186', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-01-19 18:51:52.112091', '/myapp/admin/medical/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-01-19 18:51:52.144154', '/myapp/admin/medical/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-01-19 18:52:18.872956', '/myapp/admin/medical/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-01-19 18:52:18.913498', '/myapp/admin/medical/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-01-19 18:52:34.715222', '/myapp/admin/medical/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-01-19 18:52:34.736401', '/myapp/admin/medical/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-01-19 18:52:50.041410', '/myapp/admin/medical/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-01-19 18:52:50.062926', '/myapp/admin/medical/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-01-19 18:53:11.455727', '/myapp/admin/medical/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-01-19 18:53:11.499530', '/myapp/admin/medical/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-01-19 18:53:31.111566', '/myapp/admin/medical/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-01-19 18:53:31.137764', '/myapp/admin/medical/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-01-19 18:53:34.504457', '/myapp/admin/medical/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-01-19 18:53:34.528773', '/myapp/admin/medical/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-01-19 18:53:36.709893', '/myapp/admin/medical/delete', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-01-19 18:53:36.753903', '/myapp/admin/medical/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-01-19 18:53:38.395946', '/myapp/admin/stay/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-01-19 18:53:38.396918', '/myapp/admin/stay/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-01-19 18:53:38.402426', '/myapp/admin/stay/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-01-19 18:53:39.080861', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-01-19 18:53:39.082928', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-01-19 18:53:39.106927', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-01-19 18:54:52.163468', '/myapp/admin/adminLogin', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-01-19 18:55:07.439256', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-01-19 18:55:07.440260', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-01-19 18:55:07.446199', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-01-19 18:55:11.329736', '/myapp/admin/adminLogin', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-01-19 18:55:11.418484', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-01-19 18:55:11.423862', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-01-19 18:55:11.424868', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-01-19 18:55:14.278986', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-01-19 18:55:16.017532', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-01-19 18:55:16.574268', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-01-19 18:55:16.575846', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-01-19 18:55:16.578079', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-01-19 18:55:17.187622', '/myapp/admin/medical/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-01-19 18:55:17.189717', '/myapp/admin/medical/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-01-19 18:55:17.190724', '/myapp/admin/medical/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-01-19 18:55:20.025804', '/myapp/admin/adminLogin', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-01-19 18:55:20.105200', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-01-19 18:55:20.111200', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-01-19 18:55:20.128140', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-01-19 18:55:52.201337', '/myapp/admin/thing/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-01-19 18:55:52.239840', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-01-19 18:55:58.353455', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-01-19 18:55:59.424559', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-01-19 18:55:59.425559', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-01-19 18:55:59.426560', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-01-19 18:56:00.280602', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-01-19 18:56:00.285346', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-01-19 18:56:00.290470', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-01-19 18:56:01.065259', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-01-19 18:56:01.070645', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-01-19 18:56:01.086104', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-01-19 18:56:02.230304', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-01-19 18:56:04.909371', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1050');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-01-19 18:56:06.573953', '/myapp/admin/loginLog/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-01-19 18:56:07.278878', '/myapp/admin/opLog/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-01-19 18:56:08.959637', '/myapp/admin/classification/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-01-19 18:56:08.964376', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-01-19 18:56:08.985540', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-01-19 18:56:12.402985', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-01-19 18:56:12.913195', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-01-19 18:56:12.914198', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-01-19 18:56:12.914776', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-01-19 18:56:13.433240', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-01-19 18:56:13.437912', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-01-19 18:56:13.441436', '/myapp/admin/thing/list', 'GET', NULL, '12');

-- ----------------------------
-- Table structure for b_stay
-- ----------------------------
DROP TABLE IF EXISTS `b_stay`;
CREATE TABLE `b_stay`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_stay_classification_id_1843d5ed_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_stay_classification_id_1843d5ed_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_stay
-- ----------------------------
INSERT INTO `b_stay` VALUES (1, '王大宾', '男', '57', '胃部良性肿瘤', '2024-01-19 18:43:28.679488', 3);
INSERT INTO `b_stay` VALUES (2, '李晓静', '女', '29', '肺炎', '2024-01-19 18:43:46.672163', 4);
INSERT INTO `b_stay` VALUES (3, '周康', '男', '67', '肾脏不舒服', '2024-01-19 18:44:09.135561', 5);
INSERT INTO `b_stay` VALUES (4, '刘德民', '男', '3', '发烧', '2024-01-19 18:44:22.788709', 7);

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhicheng` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '0', '2024-01-19 18:23:17.052139', 7, '', '刘德华', '18977776666', '43', '男', '儿科普通疾病', '副高');
INSERT INTO `b_thing` VALUES (2, '0', '2024-01-19 18:24:23.698482', 6, '1122', '周杰伦', '18977776666', '55', '男', '神经外科的诊疗', '高级医师');
INSERT INTO `b_thing` VALUES (3, '0', '2024-01-19 18:24:51.446154', 3, '', '周迅', '18977776222', '43', '女', '胃部疼痛诊断', '副高');
INSERT INTO `b_thing` VALUES (4, '0', '2024-01-19 18:25:21.487738', 5, '', '刘文文', '18977776621', '55', '女', '糖尿病', '副高');
INSERT INTO `b_thing` VALUES (6, '0', '2024-01-19 18:55:52.188931', 2, '', '终南山', '18977776612', '24', '男', '痔疮', '副高');

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-19 18:16:31.868055', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-19 18:16:52.731584', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'test', '098f6bcd4621d373cade4e832627b4f6', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-01-19 18:17:00.822167', 0, NULL, 0, '098f6bcd4621d373cade4e832627b4f6', NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'medical');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'nurse');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'stay');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-01-19 17:13:48.353295');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-01-19 17:13:48.635497');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-01-19 17:13:48.703419');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-01-19 17:13:48.709683');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-19 17:13:48.717572');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-01-19 17:13:48.808145');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-01-19 17:13:48.861606');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-01-19 17:13:48.913683');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-01-19 17:13:48.921262');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-01-19 17:13:48.959562');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-01-19 17:13:48.965038');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-19 17:13:48.972483');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-01-19 17:13:49.016683');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-19 17:13:49.063194');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-01-19 17:13:49.123976');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-01-19 17:13:49.130978');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-19 17:13:49.177011');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-01-19 17:13:49.903198');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230526_2255', '2024-01-19 17:13:50.013166');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230527_1411', '2024-01-19 17:13:50.126671');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_thing_raw', '2024-01-19 17:13:50.164310');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20230808_1739', '2024-01-19 17:13:50.961498');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_thing_remark', '2024-01-19 17:13:51.004905');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_auto_20230809_1840', '2024-01-19 17:13:51.364566');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0008_auto_20230810_1836', '2024-01-19 17:13:51.453235');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0009_auto_20240115_1002', '2024-01-19 17:13:51.955477');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0010_park_create_time', '2024-01-19 17:13:52.002521');
INSERT INTO `django_migrations` VALUES (28, 'myapp', '0011_auto_20240116_1859', '2024-01-19 17:13:52.283103');
INSERT INTO `django_migrations` VALUES (29, 'myapp', '0012_auto_20240118_1714', '2024-01-19 17:13:52.544143');
INSERT INTO `django_migrations` VALUES (30, 'myapp', '0013_auto_20240119_1713', '2024-01-19 17:13:52.842238');
INSERT INTO `django_migrations` VALUES (31, 'sessions', '0001_initial', '2024-01-19 17:13:52.888411');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
