/*
 Navicat MySQL Data Transfer

 Source Server         : develop
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 140.143.72.57:3306
 Source Schema         : develop

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 18/06/2019 10:36:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Score
-- ----------------------------
DROP TABLE IF EXISTS `Score`;
CREATE TABLE `Score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) NOT NULL,
  `sclass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `score` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sno`(`sno`) USING BTREE,
  CONSTRAINT `fk_sno` FOREIGN KEY (`sno`) REFERENCES `Student` (`sno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Score
-- ----------------------------
INSERT INTO `Score` VALUES (1, 10001, '计算机应用技术17-4', 'Java', 100);
INSERT INTO `Score` VALUES (2, 10001, '计算机应用技术17-4', 'Web', 100);
INSERT INTO `Score` VALUES (3, 10002, '计算机应用技术17-4', 'Java', 100);
INSERT INTO `Score` VALUES (4, 10002, '计算机应用技术17-4', 'Web', 100);
INSERT INTO `Score` VALUES (5, 10003, '计算机应用技术17-4', 'Java', 100);
INSERT INTO `Score` VALUES (6, 10003, '计算机应用技术17-4', 'Web', 100);
INSERT INTO `Score` VALUES (7, 10004, '计算机应用技术17-4', 'Java', 100);
INSERT INTO `Score` VALUES (8, 10004, '计算机应用技术17-4', 'Web', 100);
INSERT INTO `Score` VALUES (9, 10005, '计算机应用技术17-4', 'Java', 100);
INSERT INTO `Score` VALUES (10, 10005, '计算机应用技术17-4', 'Web', 100);
INSERT INTO `Score` VALUES (11, 10001, '计算机应用技术17-4', 'Oracle', 100);
INSERT INTO `Score` VALUES (12, 10002, '计算机应用技术17-4', 'Oracle', 100);
INSERT INTO `Score` VALUES (13, 10003, '计算机应用技术17-4', 'Oracle', 100);
INSERT INTO `Score` VALUES (14, 10004, '计算机应用技术17-4', 'Oracle', 100);
INSERT INTO `Score` VALUES (15, 10005, '计算机应用技术17-4', 'Oracle', 100);
INSERT INTO `Score` VALUES (16, 10001, '计算机应用技术17-4', 'Android', 100);
INSERT INTO `Score` VALUES (17, 10002, '计算机应用技术17-4', 'Android', 100);
INSERT INTO `Score` VALUES (18, 10003, '计算机应用技术17-4', 'Android', 100);
INSERT INTO `Score` VALUES (19, 10004, '计算机应用技术17-4', 'Android', 100);
INSERT INTO `Score` VALUES (20, 10005, '计算机应用技术17-4', 'Android', 100);
INSERT INTO `Score` VALUES (21, 10001, '计算机应用技术17-4', 'Mysql', 100);
INSERT INTO `Score` VALUES (22, 10002, '计算机应用技术17-4', 'Mysql', 100);
INSERT INTO `Score` VALUES (23, 10003, '计算机应用技术17-4', 'Mysql', 100);
INSERT INTO `Score` VALUES (24, 10004, '计算机应用技术17-4', 'Mysql', 100);
INSERT INTO `Score` VALUES (25, 10005, '计算机应用技术17-4', 'Mysql', 100);

SET FOREIGN_KEY_CHECKS = 1;
