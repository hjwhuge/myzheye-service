/*
Navicat MySQL Data Transfer

Source Server         : myzheye
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : zheye

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2021-08-26 18:11:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdAt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `columnId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('8', '看了这么多年美剧，我为什么还是没法摆脱字幕？', '也许你有这样的困扰：所有英语老师都告诉你学英语需要多听多看，为什么看了几年美剧后，眼睛还是得死盯着字幕才能听懂对白呢?说实话，我看日剧也是这个感觉...', '也许你有这样的困扰：所有英语老师都告诉你学英语需要多听多看，为什么看了几年美剧后，眼睛还是得死盯着字幕才能听懂对白呢?说实话，我看日剧也是这个感觉。\n\n我大学二外选择的是日语，日语的基础语法学过一些，词汇也背过一些。我日剧也看了有十几年了吧，仔细想想，我的日语水平在这十几年里并没有什么提高。上一篇我说过，兴趣是最好的老师，我明明对日剧有兴趣，也坚持看了，为什么还是没有进步？到底缺了哪一环呢?\n\n我回想了我人生中英语水平进步最大的两个阶段，一个就是高中开始看美剧的阶段。我高一看了我人生中第一个美剧Friends，85后喜欢美剧的人应该都看过这部剧，我当时疯狂到什么程度？从我高一到大四这将近十年里，Friends总共10季，每季24集，我每一集都至少看过五遍以上，后来我在网上下载了Friends的音频版，睡觉前和上学的路上都会听，我自己都数不清听了多少遍，反正直到现在我还记得每一集的大部分经典台词。我高中的时候会把剧里看到的词组和单词抄写在笔记本上，这样的笔记本我记了不下十本。我不能说我高中的时候是一个很努力的人，做这些事情对我来说就像是喜欢足球的人把英超每一支球队的每一个队员名字和球衣号抄在本子上并背得滚瓜烂熟；喜欢游戏的人每天思考怎么在游戏里布阵一样，完全是出于兴趣。\n\n我在学校里学习的语法知识，让我慢慢能够听懂里面越来越多的台词，也越来越理解那些台词的语法逻辑。但与此同时，我也发现了许多学校里教的语法无法解释的句子。为什么gonna这个词在所有字典里都找不到？为什么台词里会用现在进行时来表示将来的意思？为什么I\'m good 不是“我是好人”的意思，而是“我不需要”的意思？我脑子中需要解决的问题远远大于我当时在学校里学习的内容，这个缺口也导致了我从各种其他渠道寻求解答，包括上网（那时候虽然拨号上网相当慢，但是还没有建墙，所以可以去各种国外的网站溜达）。慢慢我自己研究出来原来口语表达和书面表达在语法上存在微妙的差异，原来口语中有许多连读和音变的现象，原来真正的外国人跟学校里的听力发音差那么多。所以我在学校学习的同时也开始了自己的平行学习。只是对当时的我来说，这不是学习，而是为了要听懂我喜欢的东西，考试什么的甚至都是一个次要目标了。\n\n那么回过头来看我看过的日剧，这些年虽然看了许多日剧，但很少有日剧是我看过两遍以上的，更别提做笔记了。一篇材料只是走马观花地粗略看一遍，几乎是没有效果的，因为大多数人看第一遍都是为了娱乐，重点是放在剧情和故事内容上，根本顾不上语言层面。只有看到第二遍以上才会开始留意台词和语言。其次，如果只是单纯看剧而不进行系统的语法学习，也是没用的。我的大四开始就没有再好好学过日语了，所以直到现在我的日语水平仍停留在入门水平。日剧里的那些新词和知识点，我甚至无法意识到是知识点。如果你的知识盲点太多，你的大脑会直接宕机，最后就只能完全看字幕，无法吸收新的知识。所以最好的做法是先通过系统学习打基础，然后在看剧的时候应用出来，这样是记得最牢的。比如，你这周学习了被动语态，那么你看剧的时候就盯着台词里的被动语态看，只要一听/看到台词里出现be done by的句型，就立马停下来，分析一下，回忆一下上课学到的这个知识点，有必要还可以把句子记下来。这样做反复几次，这个知识点就会记得非常扎实，你以后每次遇到被动语态的句子，就会想起你那时看的某个剧里某个人物在某个情景下说的这句台词。\n\n总结一下: 看美剧学英语看似是一条学习语言的捷径，因为看剧既是娱乐又能为自己创造珍贵的语言环境。但要真正达到效果，需要满足两个必要条件：1. 同样的内容看一边以上，第二遍之后重点看语言层面 2.看剧要和系统的语法学习相结合，而且要在这两条平行的轨迹之间来回跳跃。', 'http://qxypwyxw2.hn-bkt.clouddn.com/ab67fdd76eb26ab9fd68d8d7e0ed0ecf.jpg', '2021/8/26 下午3:34:29', '7');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickName` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `userDescription` varchar(255) NOT NULL,
  `columnImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `columnName` varchar(255) NOT NULL,
  `columnDescription` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', '11@163.com', '花荣', '111', 'http://qxypwyxw2.hn-bkt.clouddn.com/8a645498c5a7e44aadd0d53ce62139e5.jpg', '我是一个帅气的作者', 'http://qxypwyxw2.hn-bkt.clouddn.com/8a645498c5a7e44aadd0d53ce62139e5.jpg', '前端攻城狮攻略合集', '半吊子系统和程序狗，沉迷高端理论，日渐消瘦。');
INSERT INTO `user` VALUES ('9', '22@163.com', 'Bret', '222', 'http://qxypwyxw2.hn-bkt.clouddn.com/667cc8ab5477b646ad8f4a0ded677fb3.jpg', 'Multi-layered client-server neural-net', 'http://qxypwyxw2.hn-bkt.clouddn.com/297b5c3b387239c858c6edbb6aa9d45b.jpg', 'Alter聊科技', '各种和互联网有关的评论');
