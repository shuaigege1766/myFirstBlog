/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : myblog

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 27/07/2020 20:54:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `first_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `appreciation` int(11) NOT NULL DEFAULT 0,
  `share_statement` int(11) NOT NULL DEFAULT 0,
  `commentabled` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `recommend` int(11) NOT NULL DEFAULT 0,
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `tag_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (12, '我的个人博客分享/开源', '分享\r\n\r\n\r\n\r\n\r\n\r\n###前端\r\n* html css JavaScript sematicUI框架 \r\n内嵌了搜索引擎 内置了markdown语法编辑器\r\n还有各种插件什么的\r\n* 我是学后端的嘛 这些除了前面3个我都不会 这些模板都来自B站李仁密老师。\r\n\r\n\r\n###后端\r\n* 开发工具 Idea \r\n* 数据库 mysql\r\n* 持久层 mybatis\r\n* 模板引擎 thymeleaf\r\n* 连接池 druid\r\n* JDBC\r\n* JavaWeb\r\n* SpringBoot\r\n\r\n\r\n\r\n\r\n\r\n', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1595825738980&di=8db64fc205b54cc0c013d702cbcd3740&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F8b82b9014a90f603a42f855b3b12b31bb051ed0b.jpg', '', 0, 1, 1, 1, 1, 1, '2020-07-27 18:31:46', '2020-07-27 19:02:49', 12, 1, '前端素材来自B站老师李仁密\r\n大家有兴趣可以去看，李老师用的持久层是jpa，我用的是mybatis，\r\n我还去github上白嫖了一个看板娘（舒服）\r\n本篇介绍所用到的技术和如何使用\r\n', '9,10,11,12,13');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) DEFAULT NULL,
  `blog_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (1, 3, '4');
INSERT INTO `t_blog_tags` VALUES (2, 4, '1');
INSERT INTO `t_blog_tags` VALUES (3, 4, '3');
INSERT INTO `t_blog_tags` VALUES (4, 5, '3');
INSERT INTO `t_blog_tags` VALUES (5, 5, '4');
INSERT INTO `t_blog_tags` VALUES (6, 7, '2');
INSERT INTO `t_blog_tags` VALUES (7, 6, '5');
INSERT INTO `t_blog_tags` VALUES (64, 5, '3');
INSERT INTO `t_blog_tags` VALUES (65, 4, '3');
INSERT INTO `t_blog_tags` VALUES (66, 4, '6');
INSERT INTO `t_blog_tags` VALUES (74, 7, '10');
INSERT INTO `t_blog_tags` VALUES (75, 8, '11');
INSERT INTO `t_blog_tags` VALUES (76, 8, '12');
INSERT INTO `t_blog_tags` VALUES (77, 8, '13');
INSERT INTO `t_blog_tags` VALUES (78, 9, '12');
INSERT INTO `t_blog_tags` VALUES (79, 9, '12');
INSERT INTO `t_blog_tags` VALUES (80, 10, '12');
INSERT INTO `t_blog_tags` VALUES (81, 11, '12');
INSERT INTO `t_blog_tags` VALUES (82, 12, '12');
INSERT INTO `t_blog_tags` VALUES (83, 13, '12');
INSERT INTO `t_blog_tags` VALUES (84, 9, '12');
INSERT INTO `t_blog_tags` VALUES (85, 10, '12');
INSERT INTO `t_blog_tags` VALUES (86, 11, '12');
INSERT INTO `t_blog_tags` VALUES (87, 12, '12');
INSERT INTO `t_blog_tags` VALUES (88, 13, '12');
INSERT INTO `t_blog_tags` VALUES (89, 9, '12');
INSERT INTO `t_blog_tags` VALUES (90, 10, '12');
INSERT INTO `t_blog_tags` VALUES (91, 11, '12');
INSERT INTO `t_blog_tags` VALUES (92, 12, '12');
INSERT INTO `t_blog_tags` VALUES (93, 13, '12');
INSERT INTO `t_blog_tags` VALUES (94, 9, '12');
INSERT INTO `t_blog_tags` VALUES (95, 10, '12');
INSERT INTO `t_blog_tags` VALUES (96, 11, '12');
INSERT INTO `t_blog_tags` VALUES (97, 12, '12');
INSERT INTO `t_blog_tags` VALUES (98, 13, '12');
INSERT INTO `t_blog_tags` VALUES (99, 9, '12');
INSERT INTO `t_blog_tags` VALUES (100, 10, '12');
INSERT INTO `t_blog_tags` VALUES (101, 11, '12');
INSERT INTO `t_blog_tags` VALUES (102, 12, '12');
INSERT INTO `t_blog_tags` VALUES (103, 13, '12');
INSERT INTO `t_blog_tags` VALUES (104, 9, '12');
INSERT INTO `t_blog_tags` VALUES (105, 10, '12');
INSERT INTO `t_blog_tags` VALUES (106, 11, '12');
INSERT INTO `t_blog_tags` VALUES (107, 12, '12');
INSERT INTO `t_blog_tags` VALUES (108, 13, '12');
INSERT INTO `t_blog_tags` VALUES (109, 9, '12');
INSERT INTO `t_blog_tags` VALUES (110, 10, '12');
INSERT INTO `t_blog_tags` VALUES (111, 11, '12');
INSERT INTO `t_blog_tags` VALUES (112, 12, '12');
INSERT INTO `t_blog_tags` VALUES (113, 13, '12');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  `admincomment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, '小白', 'bai@qq.com', '小白的评论', '/images/avatar.jpg', '2020-03-15 21:28:13', 4, -1, NULL);
INSERT INTO `t_comment` VALUES (2, '小红', 'hong@qq.com', '小红的评论', '/images/avatar.jpg', '2020-03-15 21:35:02', 4, -1, NULL);
INSERT INTO `t_comment` VALUES (5, '小蓝', 'lan@qq.com', '小蓝的评论', '/images/avatar.jpg', '2020-03-16 15:04:24', 4, -1, NULL);
INSERT INTO `t_comment` VALUES (7, '朱一鸣', '691639910@qq.com', '博主的评论', 'http://5b0988e595225.cdn.sohucs.com/images/20181103/feaa7d14883047fb81bbaa16f681f583.jpeg', '2020-03-16 15:11:07', 2, -1, 1);
INSERT INTO `t_comment` VALUES (8, '安东尼', '2333@qq.com', '不论是我的世界车水马龙繁华盛世 还是它们都瞬间消失化为须臾 我都会坚定地走向你 不慌张 不犹豫', '/images/avatar.jpg', '2020-03-24 17:41:17', 11, -1, 0);
INSERT INTO `t_comment` VALUES (9, '帅哥哥', '1766281636@qq.com', '你好', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=283528856,3629264855&fm=26&gp=0.jpg', '2020-07-27 18:32:08', 12, -1, 1);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (9, 'java');
INSERT INTO `t_tag` VALUES (10, 'springboot');
INSERT INTO `t_tag` VALUES (11, 'mybatis');
INSERT INTO `t_tag` VALUES (12, 'mysql');
INSERT INTO `t_tag` VALUES (13, 'web');
INSERT INTO `t_tag` VALUES (14, 'vue');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (7, '学习路线');
INSERT INTO `t_type` VALUES (8, '持久层操作');
INSERT INTO `t_type` VALUES (9, 'springboot的操作');
INSERT INTO `t_type` VALUES (10, 'mysql的操作');
INSERT INTO `t_type` VALUES (11, '其他杂谈');
INSERT INTO `t_type` VALUES (12, '我的分享/开源');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '帅哥哥', 'admin', '123456', '1766281636', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=283528856,3629264855&fm=26&gp=0.jpg', 1, '2020-07-26 18:25:26', NULL);

SET FOREIGN_KEY_CHECKS = 1;
