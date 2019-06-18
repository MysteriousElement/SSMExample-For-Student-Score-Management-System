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

 Date: 18/06/2019 10:36:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Student
-- ----------------------------
DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `sno` int(11) NOT NULL,
  PRIMARY KEY (`sid`, `sno`) USING BTREE,
  INDEX `fk_sno`(`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Student
-- ----------------------------
INSERT INTO `Student` VALUES (1, '彭超', '男', 22, 10001);
INSERT INTO `Student` VALUES (2, '曹云', '男', 21, 10002);
INSERT INTO `Student` VALUES (3, '任冠宇', '男', 20, 10003);
INSERT INTO `Student` VALUES (4, '王凯歌', '男', 21, 10004);
INSERT INTO `Student` VALUES (5, '李青伟', '男', 21, 10005);

SET FOREIGN_KEY_CHECKS = 1;
