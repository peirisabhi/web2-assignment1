/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3307_v5
 Source Server Type    : MySQL
 Source Server Version : 50152
 Source Host           : localhost:3307
 Source Schema         : web2_assignment1_db

 Target Server Type    : MySQL
 Target Server Version : 50152
 File Encoding         : 65001

 Date: 20/01/2021 21:11:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sender_id` int(11) NULL DEFAULT NULL,
  `receiver_id` int(11) NULL DEFAULT NULL,
  `date_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`msg_id`) USING BTREE,
  INDEX `sender_id`(`sender_id`) USING BTREE,
  INDEX `receiver_id`(`receiver_id`) USING BTREE,
  CONSTRAINT `msg_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `msg_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (1, 'textttstt', 2, 3, '2021-01-20 15:00:16');
INSERT INTO `msg` VALUES (2, '333 3 2', 2, 3, '2021-01-20 15:06:04');
INSERT INTO `msg` VALUES (3, '45 g f 3 2', 2, 3, '2021-01-20 15:06:25');
INSERT INTO `msg` VALUES (4, '45 g f 3 2', 2, 3, '2021-01-20 15:06:36');
INSERT INTO `msg` VALUES (5, '45  232 23 232 g f 3 2', 2, 3, '2021-01-20 15:06:45');
INSERT INTO `msg` VALUES (6, 'asaa as a sas', 1, 1, '2021-01-20 16:40:36');
INSERT INTO `msg` VALUES (7, 'asaa as a sas', 1, 3, '2021-01-20 16:41:03');
INSERT INTO `msg` VALUES (8, 'dsdssd ', 1, 2, '2021-01-20 16:47:48');
INSERT INTO `msg` VALUES (9, 'ewew we wew', 1, 3, '2021-01-20 18:13:18');
INSERT INTO `msg` VALUES (10, 'e2323232 ', 1, 3, '2021-01-20 18:13:23');
INSERT INTO `msg` VALUES (11, 'e2323232 ', 1, 4, '2021-01-20 18:13:26');
INSERT INTO `msg` VALUES (12, 'ds sd s', 1, 4, '2021-01-20 18:13:29');
INSERT INTO `msg` VALUES (13, '2121cc3c3', 1, 4, '2021-01-20 18:13:35');
INSERT INTO `msg` VALUES (14, '', 1, 3, '2021-01-20 18:22:32');
INSERT INTO `msg` VALUES (15, 'sasas', 1, 4, '2021-01-20 18:24:07');
INSERT INTO `msg` VALUES (16, 'saasaas', 1, 4, '2021-01-20 18:24:11');
INSERT INTO `msg` VALUES (17, 'asasasa', 5, 1, '2021-01-20 18:25:47');
INSERT INTO `msg` VALUES (18, 'sasasa', 1, 5, '2021-01-20 18:25:58');
INSERT INTO `msg` VALUES (19, 'hii', 1, 5, '2021-01-20 18:48:43');
INSERT INTO `msg` VALUES (20, 'kohmda', 5, 1, '2021-01-20 18:48:57');
INSERT INTO `msg` VALUES (21, 'halloo', 1, 5, '2021-01-20 18:49:49');
INSERT INTO `msg` VALUES (22, 'dsdsdsdsd', 1, 5, '2021-01-20 18:52:47');
INSERT INTO `msg` VALUES (23, 'dsds d s', 1, 5, '2021-01-20 18:52:50');
INSERT INTO `msg` VALUES (24, 'sdss', 1, 5, '2021-01-20 18:55:06');
INSERT INTO `msg` VALUES (25, 'asas ', 1, 5, '2021-01-20 19:14:36');
INSERT INTO `msg` VALUES (26, 'dssds', 1, 5, '2021-01-20 19:14:42');
INSERT INTO `msg` VALUES (27, '454545', 1, 5, '2021-01-20 19:14:51');
INSERT INTO `msg` VALUES (28, 'wewew', 1, 5, '2021-01-20 19:15:25');
INSERT INTO `msg` VALUES (29, 'sdssds', 1, 5, '2021-01-20 19:15:29');
INSERT INTO `msg` VALUES (30, 'dsdsds', 1, 5, '2021-01-20 19:15:39');
INSERT INTO `msg` VALUES (31, 'cxcxcxcx', 1, 5, '2021-01-20 19:15:45');
INSERT INTO `msg` VALUES (32, 'dsdsd', 1, 5, '2021-01-20 19:19:33');
INSERT INTO `msg` VALUES (33, 'sdsdsds', 1, 5, '2021-01-20 19:19:36');
INSERT INTO `msg` VALUES (34, 'sdsds', 1, 5, '2021-01-20 19:19:54');
INSERT INTO `msg` VALUES (35, 'sdssd', 1, 5, '2021-01-20 19:22:38');
INSERT INTO `msg` VALUES (36, 'sdssds', 1, 5, '2021-01-20 19:22:42');
INSERT INTO `msg` VALUES (37, 'asaaas', 1, 5, '2021-01-20 19:25:25');
INSERT INTO `msg` VALUES (38, 'asasas', 5, 1, '2021-01-20 19:25:40');
INSERT INTO `msg` VALUES (39, 'asa', 5, 1, '2021-01-20 19:26:20');
INSERT INTO `msg` VALUES (40, 'asasasa', 5, 1, '2021-01-20 19:27:01');
INSERT INTO `msg` VALUES (41, 'sasasa', 1, 5, '2021-01-20 19:27:12');
INSERT INTO `msg` VALUES (42, 'sasasasa', 1, 5, '2021-01-20 19:27:19');
INSERT INTO `msg` VALUES (43, '121122121', 1, 5, '2021-01-20 19:27:26');
INSERT INTO `msg` VALUES (44, 'sdssds', 1, 5, '2021-01-20 19:41:22');
INSERT INTO `msg` VALUES (45, 'ewewewew', 1, 5, '2021-01-20 19:41:27');
INSERT INTO `msg` VALUES (46, '232322', 1, 5, '2021-01-20 19:41:38');
INSERT INTO `msg` VALUES (47, 'asasa', 1, 5, '2021-01-20 19:47:59');
INSERT INTO `msg` VALUES (48, 'asasasasa', 1, 5, '2021-01-20 19:48:03');
INSERT INTO `msg` VALUES (49, 'qwqwqwq', 1, 5, '2021-01-20 19:48:07');
INSERT INTO `msg` VALUES (50, 'dsdss', 1, 5, '2021-01-20 19:50:55');
INSERT INTO `msg` VALUES (51, 'dsdsdsd', 1, 5, '2021-01-20 19:50:58');
INSERT INTO `msg` VALUES (52, 'sdssdsd', 1, 5, '2021-01-20 19:53:31');
INSERT INTO `msg` VALUES (53, '', 1, 5, '2021-01-20 19:53:33');
INSERT INTO `msg` VALUES (54, 'dssds', 1, 5, '2021-01-20 19:53:39');
INSERT INTO `msg` VALUES (55, 'sdssds', 1, 5, '2021-01-20 19:53:44');
INSERT INTO `msg` VALUES (56, 'sdsds', 5, 1, '2021-01-20 19:53:56');
INSERT INTO `msg` VALUES (57, 'saasa', 1, 5, '2021-01-20 19:54:10');
INSERT INTO `msg` VALUES (58, 'sasasa', 1, 5, '2021-01-20 20:02:43');
INSERT INTO `msg` VALUES (59, 'sdsdsds', 1, 5, '2021-01-20 20:02:49');
INSERT INTO `msg` VALUES (60, 'sdsdsd', 1, 5, '2021-01-20 20:06:07');
INSERT INTO `msg` VALUES (61, 'dsds', 1, 5, '2021-01-20 20:06:54');
INSERT INTO `msg` VALUES (62, 'dsdsds', 1, 5, '2021-01-20 20:06:58');
INSERT INTO `msg` VALUES (63, 'sasas', 1, 5, '2021-01-20 20:10:38');
INSERT INTO `msg` VALUES (64, 'asasa', 1, 5, '2021-01-20 20:10:42');
INSERT INTO `msg` VALUES (65, '2323232322', 1, 5, '2021-01-20 20:10:46');
INSERT INTO `msg` VALUES (66, '121212', 5, 1, '2021-01-20 20:11:13');
INSERT INTO `msg` VALUES (67, 'asasasa', 1, 5, '2021-01-20 20:11:18');
INSERT INTO `msg` VALUES (68, 'hi kohomda', 5, 1, '2021-01-20 20:11:24');
INSERT INTO `msg` VALUES (69, 'hodai oyta kohomda', 1, 5, '2021-01-20 20:11:32');
INSERT INTO `msg` VALUES (70, 'awulk na hoid innnwa', 5, 1, '2021-01-20 20:11:43');
INSERT INTO `msg` VALUES (71, 'kawada', 5, 1, '2021-01-20 20:11:45');
INSERT INTO `msg` VALUES (72, 'mk', 1, 5, '2021-01-20 20:11:51');
INSERT INTO `msg` VALUES (73, 'oya koo', 1, 5, '2021-01-20 20:17:59');
INSERT INTO `msg` VALUES (74, 'halooo', 1, 5, '2021-01-20 20:18:05');
INSERT INTO `msg` VALUES (75, 'hlooo', 5, 1, '2021-01-20 20:18:21');
INSERT INTO `msg` VALUES (76, 'kohomda', 5, 1, '2021-01-20 20:18:26');
INSERT INTO `msg` VALUES (77, 'ithin ihtin', 1, 5, '2021-01-20 20:18:41');
INSERT INTO `msg` VALUES (78, 'mk ', 5, 1, '2021-01-20 20:18:44');
INSERT INTO `msg` VALUES (79, 'mk', 5, 1, '2021-01-20 20:18:51');
INSERT INTO `msg` VALUES (80, 'hii', 5, 1, '2021-01-20 20:41:20');
INSERT INTO `msg` VALUES (81, 'ett', 1, 5, '2021-01-20 20:41:26');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `active_status` tinyint(2) NULL DEFAULT NULL,
  `online_status` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'abhi', 'danajaya', 'abhi@gmail.com', '123', '2021-01-20 00:17:39', 1, 1);
INSERT INTO `user` VALUES (2, 'asas', 'asasa', 'asasa@gh.cim', '123', '2021-01-20 01:15:18', 1, 1);
INSERT INTO `user` VALUES (3, 'sds', 'sds', 'ds@asa.rre', 'dsds', '2021-01-20 01:17:55', 1, 0);
INSERT INTO `user` VALUES (4, 'sasa', 'sasa', 'abhishekpeiris9@gmail.com', '1213', '2021-01-20 01:22:31', 1, 0);
INSERT INTO `user` VALUES (5, 'dananjaya', 'peiris', 'dananjayapeiris54@gmail.com', '123', '2021-01-20 18:25:25', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
