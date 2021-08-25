/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : zheye

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2021-08-25 21:48:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for column
-- ----------------------------
DROP TABLE IF EXISTS `column`;
CREATE TABLE `column` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of column
-- ----------------------------
INSERT INTO `column` VALUES ('1', 'new abc', 'eeee', null, 'dddd', '2021-08-12 11:15:49');
INSERT INTO `column` VALUES ('2', 'new column', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('3', 'new column', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('4', 'new column11', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('5', 'new column22', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('6', 'new column33', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('7', 'new column44', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('8', 'new column55', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('9', 'new column66', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('10', 'new column77', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('11', 'new column88', '这是通过接口新增的专栏哦', null, 'huarong', null);
INSERT INTO `column` VALUES ('12', 'new column99', '这是通过接口新增的专栏哦', null, 'huarong', null);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `columnId` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `column` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '1', 'new 文章1', '# 花荣博客！\r\n\r\n# 技术栈\r\n\r\nvuepress 1.x\r\n\r\n\r\n# 本地开发\r\n\r\n```\r\nyarn start\r\n```\r\n\r\n# 发布到 github\r\n\r\n```\r\n双击运行根目录下的 deploy.sh\r\n```', 'http://qxypwyxw2.hn-bkt.clouddn.com/467464be0579f8df783d42e457ee67f8.gif', null, 'huarong', null);
INSERT INTO `post` VALUES ('2', '1', '文章2', '这是通过接口新增的文章哦', 'http://qxypwyxw2.hn-bkt.clouddn.com/4e0702967f7cf16c2c9272e0729ff5b4.gif', null, 'huarong', null);
INSERT INTO `post` VALUES ('4', '2', '文章1', '这是通过接口新增的文章哦', 'http://qxypwyxw2.hn-bkt.clouddn.com/54f9d61c481110f997ca133dcb72c36f.jpg', null, 'huarong', null);
INSERT INTO `post` VALUES ('5', '1', '通过页面创建的第一篇文章', '# 花荣博客！\n\n# 技术栈\n\nvuepress 1.x\n\n\n# 本地开发\n\n```\nyarn start\n```\n\n# 发布到 github\n\n```\n双击运行根目录下的 deploy.sh\n```', null, null, null, '2021/8/20 下午3:18:43');
INSERT INTO `post` VALUES ('6', '1', '熊猫介绍66666666666666666', '# 花荣博客！\n\n# 技术栈\n\nvuepress 1.x\n\n\n# 本地开发\n\n```\nyarn start\n```\n\n# 发布到 github\n\n```\n双击运行根目录下的 deploy.sh\n```', null, null, null, '2021/8/20 下午4:50:06');
INSERT INTO `post` VALUES ('7', '1', '屏幕截图6666666666666', '# 花荣博客！\n\n# 技术栈\n\nvuepress 1.x\n\n\n# 本地开发\n\n```\nyarn start\n```\n\n# 发布到 github\n\n```\n双击运行根目录下的 deploy.sh\n```', 'http://qxypwyxw2.hn-bkt.clouddn.com/249e94d95af171b3dfc329ba60ab29dc.png', null, null, '2021/8/20 下午4:51:38');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `nickName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '234', '5678978979', '333');
INSERT INTO `user` VALUES ('2', 'a11', 'b22', 'c33');
INSERT INTO `user` VALUES ('3', 'yuansulan@163.com', 'dayuan', 'xiaoyuan');
INSERT INTO `user` VALUES ('4', '11@163.com', '11', '11');
INSERT INTO `user` VALUES ('5', '45154@11.com', 'huarong', '123');
INSERT INTO `user` VALUES ('6', '66666@163.com', '花荣', '123');
SET FOREIGN_KEY_CHECKS=1;
