/*
Navicat MySQL Data Transfer

Source Server         : myzheye
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : zheye

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2021-09-01 17:47:07
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
  `author` text NOT NULL,
  `isDel` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('8', '看了这么多年美剧，我为什么还是没法摆脱字幕？new', 'new也许你有这样的困扰：所有英语老师都告诉你学英语需要多听多看，为什么看了几年美剧后，眼睛还是得死盯着字幕才能听懂对白呢?说实话，我看日剧也是这个感觉...', '666也许你有这样的困扰：所有英语老师都告诉你学英语需要多听多看，为什么看了几年美剧后，眼睛还是得死盯着字幕才能听懂对白呢?说实话，我看日剧也是这个感觉。\n\n我大学二外选择的是日语，日语的基础语法学过一些，词汇也背过一些。我日剧也看了有十几年了吧，仔细想想，我的日语水平在这十几年里并没有什么提高。上一篇我说过，兴趣是最好的老师，我明明对日剧有兴趣，也坚持看了，为什么还是没有进步？到底缺了哪一环呢?\n\n我回想了我人生中英语水平进步最大的两个阶段，一个就是高中开始看美剧的阶段。我高一看了我人生中第一个美剧Friends，85后喜欢美剧的人应该都看过这部剧，我当时疯狂到什么程度？从我高一到大四这将近十年里，Friends总共10季，每季24集，我每一集都至少看过五遍以上，后来我在网上下载了Friends的音频版，睡觉前和上学的路上都会听，我自己都数不清听了多少遍，反正直到现在我还记得每一集的大部分经典台词。我高中的时候会把剧里看到的词组和单词抄写在笔记本上，这样的笔记本我记了不下十本。我不能说我高中的时候是一个很努力的人，做这些事情对我来说就像是喜欢足球的人把英超每一支球队的每一个队员名字和球衣号抄在本子上并背得滚瓜烂熟；喜欢游戏的人每天思考怎么在游戏里布阵一样，完全是出于兴趣。\n\n我在学校里学习的语法知识，让我慢慢能够听懂里面越来越多的台词，也越来越理解那些台词的语法逻辑。但与此同时，我也发现了许多学校里教的语法无法解释的句子。为什么gonna这个词在所有字典里都找不到？为什么台词里会用现在进行时来表示将来的意思？为什么I\'m good 不是“我是好人”的意思，而是“我不需要”的意思？我脑子中需要解决的问题远远大于我当时在学校里学习的内容，这个缺口也导致了我从各种其他渠道寻求解答，包括上网（那时候虽然拨号上网相当慢，但是还没有建墙，所以可以去各种国外的网站溜达）。慢慢我自己研究出来原来口语表达和书面表达在语法上存在微妙的差异，原来口语中有许多连读和音变的现象，原来真正的外国人跟学校里的听力发音差那么多。所以我在学校学习的同时也开始了自己的平行学习。只是对当时的我来说，这不是学习，而是为了要听懂我喜欢的东西，考试什么的甚至都是一个次要目标了。\n\n那么回过头来看我看过的日剧，这些年虽然看了许多日剧，但很少有日剧是我看过两遍以上的，更别提做笔记了。一篇材料只是走马观花地粗略看一遍，几乎是没有效果的，因为大多数人看第一遍都是为了娱乐，重点是放在剧情和故事内容上，根本顾不上语言层面。只有看到第二遍以上才会开始留意台词和语言。其次，如果只是单纯看剧而不进行系统的语法学习，也是没用的。我的大四开始就没有再好好学过日语了，所以直到现在我的日语水平仍停留在入门水平。日剧里的那些新词和知识点，我甚至无法意识到是知识点。如果你的知识盲点太多，你的大脑会直接宕机，最后就只能完全看字幕，无法吸收新的知识。所以最好的做法是先通过系统学习打基础，然后在看剧的时候应用出来，这样是记得最牢的。比如，你这周学习了被动语态，那么你看剧的时候就盯着台词里的被动语态看，只要一听/看到台词里出现be done by的句型，就立马停下来，分析一下，回忆一下上课学到的这个知识点，有必要还可以把句子记下来。这样做反复几次，这个知识点就会记得非常扎实，你以后每次遇到被动语态的句子，就会想起你那时看的某个剧里某个人物在某个情景下说的这句台词。\n\n总结一下: 看美剧学英语看似是一条学习语言的捷径，因为看剧既是娱乐又能为自己创造珍贵的语言环境。但要真正达到效果，需要满足两个必要条件：1. 同样的内容看一边以上，第二遍之后重点看语言层面 2.看剧要和系统的语法学习相结合，而且要在这两条平行的轨迹之间来回跳跃。', 'http://qxypwyxw2.hn-bkt.clouddn.com/ab67fdd76eb26ab9fd68d8d7e0ed0ecf.jpg', '2021/8/30 下午6:50:14', '7', '{\"id\":7,\"email\":\"11@163.com\",\"nickName\":\"花荣\",\"userImage\":\"http://qxypwyxw2.hn-bkt.clouddn.com/8a645498c5a7e44aadd0d53ce62139e5.jpg\",\"userDescription\":\"我是一个帅气的作者\"}', '0');
INSERT INTO `post` VALUES ('9', 'vue div滚动', 'vue获取div节点，默认设置滚动到底部', '# vue获取div节点，默认设置滚动到底部\n# 前言\n***\n**最近在做一个简单的聊天窗口，技术栈采用的是vue+element-ui 需求是每次进入该页面都会默认将滚动条滚动到底部，即显示最新的消息：**\n# 如果是整个页面滚动到顶部，写一句代码即可\n```javascript\n    window.scrollTo(0,0);\n```\n***\n# 获取DOM的方法\n***\n```javascript\n    // 方法1\n    let DOM = this.$el.querySelector(\".className\");\n    // 方法2\n    let newDom = document.getElementsByClassName(\'className\');\n```\n# 设置默认滚动到底部\n***\n## 方法1\n```javascript\n        setTimeout(() => {\n		let container = this.$el.querySelector(\".chat_content\");\n		container.scrollTop = container.scrollHeight;\n        }, 0)\n```\n## 方法2\n```javascript\n	this.$nextTick(() => {\n		let container = this.$el.querySelector(\".chat_content\");\n		console.log(container.scrollHeight)\n		container.scrollTop = container.scrollHeight;\n	});\n```\n```!\n特别注意\n```\n    **采用上诉两个方法之后，还存在另一个问题，第一次进入时并未滚动到底部，之后才可以**\n## 解决方法\n### 把延时增加即可\n```javascript\n        setTimeout(() => {\n		let container = this.$el.querySelector(\".chat_content\");\n		container.scrollTop = container.scrollHeight;\n        }, 100)\n```\n# 总结\n***\n**在vue中操作DOM时经常会遇到先执行了该方法，DOM并没有更新完成，这时就应该用到延时器或者vue中的nextTick方法**\n# 传送门(推荐阅读)\n***\n* [nextTick方法介绍](https://cn.vuejs.org/v2/guide/reactivity.html#%E5%BC%82%E6%AD%A5%E6%9B%B4%E6%96%B0%E9%98%9F%E5%88%97)\n', 'http://qxypwyxw2.hn-bkt.clouddn.com/00b2f5d17cea4e1df0ab981c96cf0cc1.jpg', '2021/8/27 上午11:11:24', '9', '{\"id\":9,\"email\":\"22@163.com\",\"nickName\":\"Bret\",\"userImage\":\"http://qxypwyxw2.hn-bkt.clouddn.com/667cc8ab5477b646ad8f4a0ded677fb3.jpg\",\"userDescription\":\"Multi-layered client-server neural-net\"}', '0');
INSERT INTO `post` VALUES ('10', 'Vue-cli3', 'Vue-cli3如何在生产包去除警告信息和console', '# 前言\n***\n**在开发项目过程中，经常会需要用到console来打印检查问题，项目上线前一个个注释掉也会有遗漏的，并不这样建议；还有在使用UI框架时，UI框架很多时候会给出很多警告信息，提醒您采用更优的方法，这就导致项目上线之后整个控制台异常非常乱，一大堆报错和打印信息，解决方案如下：**\n# terser-webpack-plugin插件在脚手架中的应用简介\n***\n**vue-cli3采用terser-webpack-plugin插件来优化打包过程,如下**\n* 脚手架配置路径:node_modules/@vue/cli-service/lib/config/prod.js\n* 配置代码如下\n```javascript\n      if (process.env.VUE_CLI_TEST) {\n        webpackConfig.optimization.minimize(false)\n      } else {\n        const TerserPlugin = require(\'terser-webpack-plugin\')\n        const terserOptions = require(\'./terserOptions\')\n        webpackConfig.optimization.minimizer([\n          new TerserPlugin(terserOptions(options))\n        ])\n      }\n```\n* terser-webpack-plugin的具体配置写在与prod.Js同路径的terserOptions.js文件中\n# 需要新增的配置！！！\n***\n```!\n特别注意\n```\n    * 新增配置的文件：terserOptions.js\n    * 添加到该文件的compress对象中，新增代码如下\n```javascript\n      warnings: false,\n      drop_console: true,\n      drop_debugger: true,\n      pure_funcs: [\'console.log\'],\n      pure_funcs: [\'console.warn\'],\n```\n# 总结\n***\n**新增配置，重新打包之后，启动项目后，在控制台内就看不到烦人的console和warnings信息了。**\n# 传送门(推荐阅读)\n***\n* [npm官网---terser-webpack-plugin说明](https://www.npmjs.com/package/terser-webpack-plugin)\n* [github----terser-webpack-plugin说明](https://github.com/webpack-contrib/terser-webpack-plugin)\n* [markdown语法说明](https://juejin.im/editor/guide/markdown)', 'http://qxypwyxw2.hn-bkt.clouddn.com/1e77e044e64d537e706e68fa24f9aeb6.jpg', '2021/8/27 下午2:36:53', '7', '{\"id\":7,\"email\":\"11@163.com\",\"nickName\":\"花荣\",\"userImage\":\"http://qxypwyxw2.hn-bkt.clouddn.com/8a645498c5a7e44aadd0d53ce62139e5.jpg\",\"userDescription\":\"我是一个帅气的作者\"}', '0');
INSERT INTO `post` VALUES ('11', 'React Native', 'React Native 初识', '# React Native\n\n## 介绍\nReact Native (简称RN)是Facebook于2015年4月开源的跨平台移动应用开发框架，是React 在原生移动应用平台的衍生产物，使用JS、JSX、CSS开发原生应用，目前支持iOS和安卓两大平台。\n> 官网地址：https://reactnative.cn/docs/getting-started.html\n\n## 环境安装\n以windows+Android平台来安装React Native环境\n\n* Nodejs\n> Node 的版本必须大于等于 v10.x\n\n* React Native命令行工具\n> 全局安装react-native-cli\n```bash\n    npm install -g react-native-cli\n```\n\n* python\n> Python 的版本必须为 2.x（不支持 3.x）\n\n* JDK（Java SE Development Kit ）\n> JDK 的版本必须是 1.8（目前不支持 1.9 及更高版本）\n\n* Android Studio\n    > 安装 Android Studio 来获得编译 Android 应用所需的工具和环境\n\n    * 安装 Android SDK\n        * SDK Manager -> \"SDK Platforms\" -> \"Show Package Details\"\n            * -> Android SDK Platform 28\n            * -> Intel x86 Atom_64 System Image\n        * SDK Manager -> \"SDK Tools\"\n            * -> 28.0.3（React Native 所必须的版本）\n    * 配置环境变量\n        > 设置`ANDROID_HOME`**系统变量**到`c:\\Users\\你的用户名\\AppData\\Local\\Android\\Sdk`\n        \n        > 设置`%ANDROID_HOME%\\platform-tools`到path\n\n> PS：安装以上工具尽量使用稳定的翻墙工具，否则在下载、安装、配置过程中会不断遭遇链接超时或断开，导致无法安装的情况\n\n## 开始一个项目\n\n1. 创建新项目\n```bash\n    react-native init myRN\n```\n\n2. 编译并运行\n> 注意第一次运行时需要下载大量编译依赖，耗时可能数十分钟\n> 需打开`USB调试`及`允许安装未知方源`\n\n```bash\n    # 以下命令检测设备连接状态（包括模拟器）\n    # adb devices\n\n    # android\n    react-native run-android\n\n    # iOS\n    react-native run-ios\n```\n\n3. 调试与热更新\n> 摇一摇手机（或在命令行运行：`adb shell input keyevent 82`），打开`Enable Hot Reloading` 或 `Enable Live Reload`\n\n\n## 使用\nReact Native 看起来很像 React，只不过其基础组件是原生组件而非 web 组件\n\n### 内置组件\n> 详情请查看官网 https://facebook.github.io/react-native/\n\n### API\n> 详情请查看官网 https://facebook.github.io/react-native/\n\n\n## ReactNative UI框架\n\n### react-native-elements\n1. 安装`react-native-elements`\n```bash\n    # yarn\n    yarn add react-native-elements\n\n    # npm\n    npm i react-native-elements --save\n```\n2. 安装`react-native-vector-icons`\n```bash\n    yarn add react-native-vector-icons\n\n    # npm\n    npm i --save react-native-vector-icon\n```\n3. 关联原生库\n```bash\n    react-native link react-native-vector-icons\n```\n\n4. 使用\n```jsx\n    import {Button,SearchBar} from \'react-native-elements\';\n\n    class MyComponent extends Component{\n        state = {\n            keyword:\'\',\n        }\n        changeKeyword=(keyword)=>{\n            this.setState({\n                keyword\n            })\n        }\n        render(){\n            return <View>\n                <SearchBar\n                    placeholder=\"Type Here...\"\n                    onChangeText={this.changeKeyword}\n                    value={this.state.keyword}\n                />\n                <Button title=\"搜索\"></Button>\n            </View>\n        }\n    }\n```\n>PS： android中如无法看到小图标，需要在`android/app/build.gradle`中添加字体图标`apply from: \"../../node_modules/react-native-vector-icons/fonts.gradle\"`\n\n## 打包\n* android APK\n    1. 生成一个签名密钥\n    ```bash\n        keytool -genkeypair -v -keystore my-release-key.keystore -alias my-key-alias -keyalg RSA -keysize 2048 -validity 10000\n    ```\n    2. 设置 gradle 变量\n    3. 把签名配置加入到项目的 gradle 配置中\n    4. 打包\n    ```bash\n        # 进入android目录\n        ./gradlew assembleRelease\n    ```\n', 'http://qxypwyxw2.hn-bkt.clouddn.com/2a8b1ff460cc78b868b942e5a33bce07.jpg', '2021/8/27 下午3:29:43', '9', '{\"id\":9,\"email\":\"22@163.com\",\"nickName\":\"Bret\",\"userImage\":\"http://qxypwyxw2.hn-bkt.clouddn.com/667cc8ab5477b646ad8f4a0ded677fb3.jpg\",\"userDescription\":\"Multi-layered client-server neural-net\"}', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', '11@163.com', '花荣', '111', 'http://qxypwyxw2.hn-bkt.clouddn.com/8a645498c5a7e44aadd0d53ce62139e5.jpg', '我是一个帅气的作者', 'http://qxypwyxw2.hn-bkt.clouddn.com/8a645498c5a7e44aadd0d53ce62139e5.jpg', '前端攻城狮攻略合集', '半吊子系统和程序狗，沉迷高端理论，日渐消瘦。');
INSERT INTO `user` VALUES ('9', '22@163.com', 'Bret', '222', 'http://qxypwyxw2.hn-bkt.clouddn.com/667cc8ab5477b646ad8f4a0ded677fb3.jpg', 'Multi-layered client-server neural-net', 'http://qxypwyxw2.hn-bkt.clouddn.com/297b5c3b387239c858c6edbb6aa9d45b.jpg', 'Alter聊科技', '各种和互联网有关的评论');
INSERT INTO `user` VALUES ('10', '33@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('11', '44@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('12', '55@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('13', '66@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('14', '7@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('15', '8@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('16', '9@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('17', '10@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('18', '12@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('19', '13@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('20', '14@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('21', '15@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('22', '16@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('23', '17@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('24', '18@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('25', '19@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
INSERT INTO `user` VALUES ('26', '20@163.com', 'huarong', '333', '', '我是一个帅气的作者', '', '这是一个测试专栏', '这是一个测试专栏描述');
