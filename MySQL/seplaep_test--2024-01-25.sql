/*
 Navicat Premium Data Transfer

 Source Server         : admin
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : seplaep_test

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 25/01/2024 23:45:19
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `activity_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '活动名称',
  `activity_comment` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '活动内容',
  `tag_id` int(20) NOT NULL COMMENT '活动tag id',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '身份证号',
  `status` int(2) NULL DEFAULT NULL COMMENT '状态（0：禁用；1：正常）',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, 'admin', 'admin', '17336097721', '8543117341', 1, '2024-01-17 15:05:01', '2024-01-17 15:05:01', '超级管理员');
INSERT INTO `admin_user` VALUES (10001, '马擎苍', 'yy2', '15749230817', '909085', 0, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10002, '龙耀杰', 'vQ6', '15336430981', '744773', 0, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10003, '丁智渊', 'qxZCV', '15952274004', '302947173', 0, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10004, '谢笑愚', 'CD', '15095890364', '9210', 1, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10005, '陆君浩', 'Eg', '15782176818', '8423065278', 0, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10006, '郑越泽', 'nV82h', '13110379879', '80', 1, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10007, '侯晋鹏', 'xZ8q', '17246069439', '8668438', 1, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10008, '曹绍辉', 'jVfOt', '17514307734', '46', 1, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10009, '董子涵', 'Ea5', '17225309030', '201', 1, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');
INSERT INTO `admin_user` VALUES (10010, '史思源', 'KGZv4', '15292956896', '88484', 1, '2024-01-17 15:05:28', '2024-01-17 15:05:28', '管理员');

-- ----------------------------
-- Table structure for circle
-- ----------------------------
DROP TABLE IF EXISTS `circle`;
CREATE TABLE `circle`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `circle_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '圈子名称',
  `tag_id` int(20) NOT NULL COMMENT '圈子tag id',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of circle
-- ----------------------------

-- ----------------------------
-- Table structure for circle_user
-- ----------------------------
DROP TABLE IF EXISTS `circle_user`;
CREATE TABLE `circle_user`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `circle_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '圈子id',
  `user_id` int(20) NOT NULL COMMENT '用户id',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of circle_user
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `user_id` int(20) NULL DEFAULT NULL COMMENT '用户id',
  `comment_content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '评论',
  `reply_user_id` int(20) NULL DEFAULT NULL COMMENT '回复用户id',
  `likes` int(20) NULL DEFAULT NULL COMMENT '点赞数',
  `forward` int(11) NULL DEFAULT NULL COMMENT '转发数',
  `stars` int(20) NULL DEFAULT NULL COMMENT '收藏数',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `dynamic_comment` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '动态内容',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `group_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '小组名称',
  `tag_id` int(20) NOT NULL COMMENT '小组tag id',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for group_user
-- ----------------------------
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE `group_user`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `group_id` int(20) NOT NULL COMMENT '小组id',
  `user_id` int(20) NOT NULL COMMENT '用户id',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_user
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `message_comment` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '消息内容',
  `message_from_user` int(20) NOT NULL DEFAULT 0 COMMENT '发送者用户id',
  `message_to_user` int(20) NOT NULL DEFAULT 0 COMMENT '接收者用户id',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `news_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '新闻名称',
  `news_comment` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '新闻内容',
  `tag_id` int(20) NOT NULL COMMENT '新闻tag id',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for points
-- ----------------------------
DROP TABLE IF EXISTS `points`;
CREATE TABLE `points`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `points_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '积分来源',
  `points_diff` int(20) NULL DEFAULT NULL COMMENT '积分差额',
  `points_amount` int(20) NULL DEFAULT NULL COMMENT '积分总数',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of points
-- ----------------------------

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `resource_url` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '资源上传地址',
  `resource_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '资源类型',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for special_column
-- ----------------------------
DROP TABLE IF EXISTS `special_column`;
CREATE TABLE `special_column`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `special_column_content` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '专栏内容',
  `special_column_type` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '专栏类型',
  `tag_id` int(20) NOT NULL COMMENT 'tag id',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of special_column
-- ----------------------------

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `tag_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT 'tag名称',
  `tag_type` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT 'tag类别',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `creat_user` int(20) NOT NULL COMMENT '创建用户',
  `update_user` int(20) NOT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tag_name_index`(`tag_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(20) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '姓名',
  `nick_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '昵称',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '手机号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` int(2) NULL DEFAULT NULL COMMENT '性别',
  `id_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '身份证号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '头像',
  `status` int(2) NULL DEFAULT NULL COMMENT '状态（0：禁用；1：正常）',
  `creat_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建用户时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改用户时间',
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL COMMENT '角色',
  `delete_status` int(2) NULL DEFAULT NULL COMMENT '删除（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1001, '蔡越彬', '遇见', '15333191732', 'Xh0Wj', 1, '2959927', '/image/head0.jpg', 0, '2024-01-17 15:32:35', '2024-01-17 15:32:35', '用户', 0);
INSERT INTO `user` VALUES (1002, '赖子默', '像我这样的人', '15771631956', 'ah', 1, '9328', '/image/head0.jpg', 0, '2024-01-17 15:32:35', '2024-01-17 15:32:35', '用户', 0);
INSERT INTO `user` VALUES (1003, '白胤祥', '漠河舞厅', '17321311637', 'gEx4', 0, '897878370', '/image/head0.jpg', 0, '2024-01-17 15:32:35', '2024-01-17 15:32:35', '用户', 1);
INSERT INTO `user` VALUES (1004, '邹琪', '演员', '15752536042', 'aqQ', 0, '1', '/image/head0.jpg', 0, '2024-01-17 15:32:35', '2024-01-17 15:32:35', '用户', 0);
INSERT INTO `user` VALUES (1005, '郑昊强', '光阴的故事', '15218870131', '8I8n', 0, '79517796', '/image/head0.jpg', 1, '2024-01-17 15:32:35', '2024-01-17 15:32:35', '用户', 0);
INSERT INTO `user` VALUES (1006, '田浩宇', '火红的萨日朗', '15775783147', 'MLcd', 0, '8168', '/image/head0.jpg', 0, '2024-01-17 15:32:35', '2024-01-17 15:32:35', '用户', 1);
INSERT INTO `user` VALUES (1007, '严晋鹏', '反方向的钟', '17769018496', 'pPP4M', 0, '108', '/image/head0.jpg', 0, '2024-01-17 15:32:35', '2024-01-17 15:32:35', '用户', 1);
INSERT INTO `user` VALUES (10007, '侯晋鹏', '9527', '17246069439', 'xZ8q', 1, '8668438', '/image/head-1.jpg', 1, '2024-01-17 15:32:35', '2024-01-17 15:32:35', '管理员', 0);
INSERT INTO `user` VALUES (10008, '曹绍辉', '98576', '17514307734', 'jVfOt', 0, '46', '/image/head-1.jpg', 1, '2024-01-17 15:33:55', '2024-01-17 15:33:55', '管理员', 0);
INSERT INTO `user` VALUES (10009, '董子涵', '98577', '17225309030', 'Ea5', 0, '201', '/image/head-1.jpg', 1, '2024-01-17 15:33:55', '2024-01-17 15:33:55', '管理员', 0);
INSERT INTO `user` VALUES (10010, '史思源', '98578', '15292956896', 'KGZv4', 1, '88484', '/image/head-1.jpg', 1, '2024-01-17 15:33:55', '2024-01-17 15:33:55', '管理员', 0);
INSERT INTO `user` VALUES (10011, 'hhhh', 'papapapa', '125154852', '123456', 0, '10011', 'NULL', 0, '2024-01-24 00:10:55', '2024-01-24 00:10:55', '用户', 0);

SET FOREIGN_KEY_CHECKS = 1;
