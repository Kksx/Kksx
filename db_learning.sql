/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : db_learning

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 18/03/2021 17:58:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hufu
-- ----------------------------
DROP TABLE IF EXISTS `hufu`;
CREATE TABLE `hufu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hufu
-- ----------------------------

-- ----------------------------
-- Table structure for kaoshi
-- ----------------------------
DROP TABLE IF EXISTS `kaoshi`;
CREATE TABLE `kaoshi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL COMMENT '考试人',
  `tid` int(11) NULL DEFAULT NULL COMMENT '题目Id',
  `daan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` int(11) NULL DEFAULT NULL COMMENT '对应哪次考试的Id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kaoshi
-- ----------------------------
INSERT INTO `kaoshi` VALUES (5, 28, 1, 'A', 4);
INSERT INTO `kaoshi` VALUES (6, 28, 3, 'A', 4);
INSERT INTO `kaoshi` VALUES (7, 28, 4, 'A', 4);
INSERT INTO `kaoshi` VALUES (8, 28, 5, 'A', 4);
INSERT INTO `kaoshi` VALUES (9, 28, 6, 'A', 5);
INSERT INTO `kaoshi` VALUES (10, 28, 7, 'A', 5);
INSERT INTO `kaoshi` VALUES (11, 28, 8, 'C', 5);
INSERT INTO `kaoshi` VALUES (12, 28, 9, 'D', 5);
INSERT INTO `kaoshi` VALUES (13, 28, 10, 'B', 5);
INSERT INTO `kaoshi` VALUES (14, 28, 11, 'D', 5);
INSERT INTO `kaoshi` VALUES (15, 28, 12, 'A', 5);
INSERT INTO `kaoshi` VALUES (16, 28, 13, 'C', 5);
INSERT INTO `kaoshi` VALUES (17, 28, 14, 'A', 5);

-- ----------------------------
-- Table structure for kind
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kindname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `isexamine` int(11) NULL DEFAULT NULL COMMENT '是否审核',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES (2, 'C++', NULL);
INSERT INTO `kind` VALUES (4, 'JAVA', NULL);
INSERT INTO `kind` VALUES (5, 'C#', NULL);
INSERT INTO `kind` VALUES (6, 'HTML', NULL);
INSERT INTO `kind` VALUES (7, 'JQuery', NULL);
INSERT INTO `kind` VALUES (8, 'SQL', NULL);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL COMMENT '发信人',
  `nid` int(11) NULL DEFAULT NULL COMMENT '收信人',
  `isread` int(11) NULL DEFAULT NULL COMMENT '是否已读',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `pubtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `uid` int(11) NULL DEFAULT NULL COMMENT '发布人',
  `top` int(11) NULL DEFAULT NULL COMMENT '1：话题 2：公告',
  `kindid` int(11) NULL DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (22, '我要学习JAVA', '我要学习JAVA', '2020-04-11 15:26:59', 28, 1, 9);
INSERT INTO `news` VALUES (23, '就业宣讲会', '请同学们在2021年3月4日，在交院大礼堂参加就业宣讲，给同学们传授面试经验和简历填写', '2021-03-15 18:42:00', 1, 2, NULL);
INSERT INTO `news` VALUES (24, 'Java基础经验分享', '2021年3月5日，在教师2A301李老师和大家分享，java基础学习经验', '2021-03-15 18:45:07', 1, 1, 4);
INSERT INTO `news` VALUES (25, '学习心得分享', '分享自己的学习心得', '2021-03-15 18:58:08', 32, 1, 4);
INSERT INTO `news` VALUES (26, '我要学习JAVA', '我要好好学习java', '2021-03-15 19:05:16', 28, 1, 4);
INSERT INTO `news` VALUES (27, '就业招聘会', '新的学期开始了，为了同学们顺利的找到自己心仪的工作，学校特意在2021年3月4日，召开招聘会，各大名企会来学校宣讲，请同学们好好准备，抓住每一次机会，祝同学们都能找到自己心仪的工作，前程似锦！', '2021-03-15 19:12:40', 1, 2, NULL);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户',
  `nid` int(11) NULL DEFAULT NULL COMMENT '对象',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `role` int(11) NULL DEFAULT NULL COMMENT '1：收藏 2：记录 3：评论视频4：关注 5：笔记 6:评论话题 7：学习计划未审核 8：学习计划审核通过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 290 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (287, '2021-03-15 19:06:38', 28, 25, '在编程的过程中感觉很快乐', 6);
INSERT INTO `record` VALUES (288, '2021-03-15 19:07:14', 28, 24, '在学习的过程中要学会总结，学会复习', 6);
INSERT INTO `record` VALUES (289, NULL, 28, 4, NULL, 8);

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `ctime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (5, 28, '2021-03-15 18:46:26', 30);

-- ----------------------------
-- Table structure for timu
-- ----------------------------
DROP TABLE IF EXISTS `timu`;
CREATE TABLE `timu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kindid` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `isdel` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of timu
-- ----------------------------
INSERT INTO `timu` VALUES (1, 5, 'C#第一题', '1', '2', '3', '4', 'C', 5, 5);
INSERT INTO `timu` VALUES (3, 5, '2', '1', '2', '3', '4', 'B', 5, 5);
INSERT INTO `timu` VALUES (4, 5, '3', '1', '2', '3', '4', 'B', 3, 3);
INSERT INTO `timu` VALUES (5, 5, 'c#第四题', '1', '2', '3', '4', 'C', 5, 5);
INSERT INTO `timu` VALUES (6, 4, 'JAVA所定义的版本中不包括：（）', 'JAVA2 EE', 'JAVA2 Card', 'JAVA2 ME', 'JAVA2 HE', 'D', 10, 0);
INSERT INTO `timu` VALUES (7, 4, '下列说法正确的是（）', 'JAVA程序的main方法必须写在类里面', 'JAVA程序中可以有多个main方法', 'JAVA程序中类名必须与文件名一样', 'JAVA程序的main方法中如果只有一条语句，可以不用{}(大括号)括起来', 'A', 10, 0);
INSERT INTO `timu` VALUES (8, 4, '3、 Java中，在如下所示的Test类中，共有（）个构造方法。\r\npublic class Test{\r\n\r\nprivate int x;\r\n\r\npublic Test(){\r\n\r\nx=35;\r\n\r\n}\r\n\r\npublic void Test(double f){\r\n\r\nThis.x=(int)f;\r\n\r\n}\r\n\r\npublic Test(String s){}\r\n\r\n}', '0', '1', '2', '3', 'C', 10, 0);
INSERT INTO `timu` VALUES (9, 4, '变量命名规范说法正确的是（）', '变量由字母、下划线、数字、$符号随意组成；', '变量不能以数字作为开头；', 'A和a在java中是同一个变量；', '不同类型的变量，可以起相同的名字；', 'B', 10, 0);
INSERT INTO `timu` VALUES (10, 4, '运算符优先级别排序正确的是（）', '由高向低分别是：()、!、算术运算符、关系运算符、逻辑运算符、赋值运算符；', '由高向低分别是：()、关系运算符、算术运算符、赋值运算符、!、逻辑运算符；', '由高向低分别是：()、算术运算符、逻辑运算符、关系运算符、!、赋值运算符；', '由高向低分别是：()、!、关系运算符、赋值运算符、算术运算符、逻辑运算符；', 'A', 10, 0);
INSERT INTO `timu` VALUES (11, 4, '以下程序的运行结果是：()\r\npublic class Increment{\r\n\r\npublic static void main(String args[]) {\r\n\r\nint a;\r\n\r\na = 6;\r\n\r\nSystem.out.print(a);\r\n\r\nSystem.out.print(a++);\r\n\r\nSystem.out.print(a);\r\n\r\n}\r\n\r\n}', '666', '667', '677', '676', 'B', 10, 0);
INSERT INTO `timu` VALUES (12, 4, '下列输出结果是（）\r\n\r\nint  a = 0 ;\r\n\r\nwhile ( a < 5 ) {\r\n\r\n    switch(a){\r\n\r\n    case 0:\r\n\r\n    case 3 : a = a + 2;\r\n\r\n    case 1 :\r\n\r\n    case 2 : a = a + 3;\r\n\r\n    default : a = a + 5;\r\n\r\n    }\r\n\r\n}\r\n\r\nSystem.out.print ( a ) ;', '0', '5', '10', '12', 'C', 10, 0);
INSERT INTO `timu` VALUES (13, 4, '下列代码输出结果是()\r\n\r\nint i = 10;\r\n\r\nwhile ( i > 0 ){\r\n\r\n  i = i + 1;\r\n\r\n  if ( i = =10 ){\r\n\r\n   break;\r\n\r\n  }\r\n\r\n}', 'while循环执行10次', '死循环', '循环一次都不执行', '循环执行一次', 'B', 10, 0);
INSERT INTO `timu` VALUES (14, 4, '在java中下列关于自动类型转换说法正确的是（）\r\n\r\nA、 基本数据类型和String相加结果一定是字符串型\r\n\r\nB、 char类型和int类型相加结果一定是字符\r\n\r\nC、 double类型可以自动转换为int\r\n\r\nD、 char + int + double +\"\" 结果一定是double；', '基本数据类型和String相加结果一定是字符串型', 'char类型和int类型相加结果一定是字符', 'double类型可以自动转换为int', 'char + int + double +\"\" 结果一定是double', 'A', 10, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住址',
  `role` int(11) NULL DEFAULT NULL COMMENT '身份 1：超级管理员 2：管理员 3：用户 -1:被屏蔽',
  `headpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路劲',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '15650069744', '173108266@qq.com', '孙晋超', '山东省济南市山东交通学院', 1, '4.jpg');
INSERT INTO `user` VALUES (10, '222222', 'Mm123456', '13689761235', 'dongqing@163.com', '董卿', '北京市', 2, '3.jpg');
INSERT INTO `user` VALUES (28, '172502112', '123456', '15650069744', '173108266@qq.com', '孙晋超', '山东省济南市山东交通学院', 3, '3.jpg');
INSERT INTO `user` VALUES (29, '172502114', '123456', '123', 'lisi123@qq.com', '李四', '北京市昌平区', 3, '2.jpg');
INSERT INTO `user` VALUES (30, '172502113', '123456', '15690756452', 'zhangsan@qq.com', '张三', '江苏省徐州市', 3, '3.jpg');
INSERT INTO `user` VALUES (32, '111111', 'Mm123456', '13556564328', 'sabeining@163.com', '撒贝宁', '北京市', 2, '5.jpg');

-- ----------------------------
-- Table structure for void
-- ----------------------------
DROP TABLE IF EXISTS `void`;
CREATE TABLE `void`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voidname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频名称',
  `voidcontent` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视屏介绍',
  `kindid` int(11) NULL DEFAULT NULL COMMENT '视屏类别id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '发布人id',
  `teachername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `viodpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路劲',
  `top` int(11) NULL DEFAULT NULL COMMENT '1:置顶',
  `role` int(11) NULL DEFAULT NULL COMMENT '1：视频 2：资料 3：老师发布作业 4：学生t交作业',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of void
-- ----------------------------
INSERT INTO `void` VALUES (18, 'java运算符', 'java基础', 4, 1, 'admin', '2021-03-15 18:39:33', '/upload/images/20210315063933170.mp4', NULL, 1);
INSERT INTO `void` VALUES (20, 'java语法基础', 'java基础语法的教学', 4, 32, '111111', '2021-03-15 18:50:48', '/upload/images/20210315065047334.mp4', 1, 1);
INSERT INTO `void` VALUES (21, 'java数组', 'java数组的教学', 4, 32, '111111', '2021-03-15 18:51:46', '/upload/images/20210315065145636.mp4', NULL, 1);
INSERT INTO `void` VALUES (22, 'java数组算法', 'java数组算法的教学', 4, 32, '111111', '2021-03-15 18:52:58', '/upload/images/20210315065257723.mp4', NULL, 1);
INSERT INTO `void` VALUES (23, 'java语言基础一', 'java语言基础一的课件', 4, 32, '111111', '2021-03-15 18:53:56', '/upload/images/20210315065356798.pptx', NULL, 2);
INSERT INTO `void` VALUES (24, 'java语言基础二', 'java语言基础二的课件', 4, 32, '111111', '2021-03-15 18:54:19', '/upload/images/20210315065419857.pptx', NULL, 2);
INSERT INTO `void` VALUES (25, '数组', 'java数组的课件', 4, 32, '111111', '2021-03-15 18:54:48', '/upload/images/20210315065448121.pptx', NULL, 2);
INSERT INTO `void` VALUES (26, '面向对象', 'java面向对象的课件', 4, 32, '111111', '2021-03-15 18:55:21', '/upload/images/20210315065521852.pptx', NULL, 2);
INSERT INTO `void` VALUES (27, '三大特征', 'java三大特征的课件', 4, 32, '111111', '2021-03-15 18:56:05', '/upload/images/20210315065605078.pptx', NULL, 2);
INSERT INTO `void` VALUES (28, '三个修饰符', 'java三个修饰符的课件', 4, 32, '111111', '2021-03-15 18:56:48', '/upload/images/20210315065648054.pptx', NULL, 2);
INSERT INTO `void` VALUES (29, '面型对象', 'java面向对象', 4, 1, 'admin', '2021-03-15 22:29:12', '/upload/images/20210315102911605.mp4', NULL, 1);
INSERT INTO `void` VALUES (30, '抽象类', 'java抽象类', 4, 1, 'admin', '2021-03-15 22:30:20', '/upload/images/20210315103019952.mp4', NULL, 1);
INSERT INTO `void` VALUES (31, '常用类', 'java常用类的课件', 4, 1, 'admin', '2021-03-15 22:31:48', '/upload/images/20210315103148323.pptx', NULL, 2);
INSERT INTO `void` VALUES (32, '异常', 'java异常的课件', 4, 1, 'admin', '2021-03-15 22:33:03', '/upload/images/20210315103303956.pptx', NULL, 2);
INSERT INTO `void` VALUES (33, '集合', 'java集合的课件', 4, 1, 'admin', '2021-03-15 22:33:29', '/upload/images/20210315103329911.pptx', NULL, 2);

SET FOREIGN_KEY_CHECKS = 1;
