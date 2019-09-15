/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : imooc_homepage_sc

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 15/09/2019 13:22:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for homepage_course
-- ----------------------------
DROP TABLE IF EXISTS `homepage_course`;
CREATE TABLE `homepage_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增 id',
  `course_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程名称，唯一索引',
  `course_type` varchar(128) NOT NULL DEFAULT '' COMMENT '课程类型',
  `course_icon` varchar(128) NOT NULL DEFAULT '' COMMENT '课程图标',
  `course_intro` varchar(128) NOT NULL DEFAULT '' COMMENT '课程介绍',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 08:00:00' COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 08:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_course_name` (`course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='课程表';

-- ----------------------------
-- Records of homepage_course
-- ----------------------------
BEGIN;
INSERT INTO `homepage_course` VALUES (13, '9月淘宝新规则详细解读', '0', 'http//www.aiuiot.com', '解读淘宝最新规则', '2019-09-09 20:57:32', '2019-09-09 20:57:32');
INSERT INTO `homepage_course` VALUES (14, '新媒体+电商实战', '1', 'http//www.aiuiot.com', '通过新媒体引入流量', '2019-09-09 20:57:32', '2019-09-09 20:57:32');
COMMIT;

-- ----------------------------
-- Table structure for homepage_user
-- ----------------------------
DROP TABLE IF EXISTS `homepage_user`;
CREATE TABLE `homepage_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增 id',
  `username` varchar(128) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(128) NOT NULL DEFAULT '' COMMENT '用户邮箱',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 08:00:00' COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 08:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户信息表';

-- ----------------------------
-- Records of homepage_user
-- ----------------------------
BEGIN;
INSERT INTO `homepage_user` VALUES (9, 'ZerOneth', 'ZerOneth@gmail.com', '2019-09-14 11:39:57', '2019-09-14 11:39:57');
COMMIT;

-- ----------------------------
-- Table structure for homepage_user_course
-- ----------------------------
DROP TABLE IF EXISTS `homepage_user_course`;
CREATE TABLE `homepage_user_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增 id',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `course_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程 id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 08:00:00' COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 08:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_user_course` (`user_id`,`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户课程表';

-- ----------------------------
-- Records of homepage_user_course
-- ----------------------------
BEGIN;
INSERT INTO `homepage_user_course` VALUES (12, 9, 13, '2019-09-15 00:14:21', '2019-09-15 00:14:21');
INSERT INTO `homepage_user_course` VALUES (13, 9, 14, '2019-09-15 00:14:22', '2019-09-15 00:14:22');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
