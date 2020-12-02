/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : tp5

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-09-11 22:16:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '班级主键',
  `name` varchar(100) DEFAULT NULL COMMENT '班级名称',
  `length` varchar(20) DEFAULT NULL COMMENT '学制',
  `price` int(11) DEFAULT NULL COMMENT '学费',
  `status` int(11) DEFAULT NULL COMMENT '是否启用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '允许删除',
  `student_id` int(11) DEFAULT NULL COMMENT '关联外键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '1班', '4年', '6000', '1', '1502242191', '1502335837', null, '1', null);
INSERT INTO `grade` VALUES ('2', '2班', '4年', '6000', '1', '1502242191', '1502335837', null, '1', null);
INSERT INTO `grade` VALUES ('3', '3班', '4年', '6000', '1', '1502242191', '1502336083', null, '1', null);
INSERT INTO `grade` VALUES ('4', '4班', '4年', '6000', '1', '1502257693', '1502335837', null, '1', null);
INSERT INTO `grade` VALUES ('5', '5班', '4年', '6000', '1', '1502334559', '1502335837', null, '1', null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `age` tinyint(4) unsigned DEFAULT NULL COMMENT '年龄',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `status` int(11) DEFAULT NULL COMMENT '当前状态',
  `start_time` int(11) DEFAULT NULL COMMENT '入学时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` int(11) DEFAULT NULL COMMENT '允许删除',
  `grade_id` int(11) DEFAULT NULL COMMENT '关联外键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '杨过', '0', '67', '18966557788', 'yangguo@qq.com', '1', '1494345600', '1502326725', '1567827319', null, '1', '3');
INSERT INTO `student` VALUES ('2', '小龙女', '0', '33', '13509897765', 'xiaolongnv@qq.com', '1', '1502326725', '1502326725', '1567827319', null, '1', '1');
INSERT INTO `student` VALUES ('3', '尹志平', '1', '38', '17765336278', 'yizhiping@qq.com', '1', '1502326725', '1502326725', '1567827319', null, '1', '3');
INSERT INTO `student` VALUES ('4', '老顽童', '1', '89', '15677281923', 'laowantong@qq.com', '1', '1502326725', '1502326725', '1567827319', null, '1', '2');
INSERT INTO `student` VALUES ('5', '洪七公', '1', '78', '13389776234', 'hongqigong@qq.com', '1', '1502326725', '1502326725', '1567827319', null, '1', '2');
INSERT INTO `student` VALUES ('6', '郭靖', '0', '26', '15766338726', 'guojin@qq.com', '1', '1502294400', '1502326725', '1567827319', null, '1', '1');
INSERT INTO `student` VALUES ('7', '黄蓉', '0', '46', '18976227182', 'huangrong@qq.com', '0', '1502326725', '1502326725', '1567827319', null, '1', '1');
INSERT INTO `student` VALUES ('8', '杨康', '1', '45', '13287009834', 'yangkang@qq.com', '0', '1502326725', '1502326725', '1567827319', null, '1', '3');
INSERT INTO `student` VALUES ('9', '欧阳克', '1', '37', '13908772343', 'ouyangke@qq.com', '0', '1502326725', '1502326725', '1567827319', null, '1', '2');
INSERT INTO `student` VALUES ('10', '张无忌', '1', '28', '15387298273', 'zhangwuji@qq.com', '1', '1502326725', '1502326725', '1567827319', null, '1', '2');
INSERT INTO `student` VALUES ('11', '赵敏', '0', '26', '13987372937', 'zhaoming@qq.com', '1', '1502326725', '1502326725', '1567827319', null, '1', '3');
INSERT INTO `student` VALUES ('12', '宋青书', '0', '22', '15806554328', 'songqinshu@qq.com', '1', '1494864000', '1502327784', '1567827319', null, '1', '2');
INSERT INTO `student` VALUES ('13', '周芷若', '1', '20', '18977665544', 'zhouzhiruo@qq.com', '1', '1501948800', '1502343910', '1502343931', null, null, '5');
INSERT INTO `student` VALUES ('14', 'baizhuan', '1', '12', '13124345678', '457867@qq.com', '1', '1575129600', '1567827246', '1567827319', null, '1', '5');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `degree` varchar(30) DEFAULT NULL COMMENT '学历',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `school` varchar(50) DEFAULT NULL COMMENT '毕业学校',
  `hiredate` int(11) DEFAULT NULL COMMENT '入职时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除标志',
  `is_delete` int(11) DEFAULT '1' COMMENT '允许删除',
  `status` int(11) DEFAULT NULL COMMENT '1启用0禁用',
  `grade_id` int(11) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '朱老师', '2', '15705517878', '中国科技大学', '1420041600', '1970', '1567866481', '1567866481', '1', '1', '5');
INSERT INTO `teacher` VALUES ('2', '李老师', '1', '13988995566', '合肥工业大学', '1466006400', '2017', '1502342345', null, '1', '1', '2');
INSERT INTO `teacher` VALUES ('3', '洪老师', '1', '18955139988', '安徽大学', '1486310400', '2017', '1502342345', null, '1', '1', '1');
INSERT INTO `teacher` VALUES ('5', '张老师', '1', '15805512377', '安徽师范大学', '1461254400', '2017', '1502342345', null, '1', '1', '5');
INSERT INTO `teacher` VALUES ('6', '范老师', '1', '18976765533', '安徽理工大学', '1501948800', '1502272302', '1502342345', null, '1', '1', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `role` tinyint(2) unsigned DEFAULT '1' COMMENT '角色',
  `status` int(2) unsigned DEFAULT '1' COMMENT '状态:1启用0禁用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `login_time` int(11) unsigned DEFAULT NULL COMMENT '登录时间',
  `login_count` int(11) unsigned DEFAULT '0' COMMENT '登录次数',
  `is_delete` int(2) unsigned DEFAULT '0' COMMENT '是否删除1是0否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin123@php.cn', '1', '1', '1501493848', '1502340075', null, '1502339370', '22', '1');
INSERT INTO `user` VALUES ('3', 'peter', 'e10adc3949ba59abbe56e057f20f883e', 'peter888@php.cn', '0', '1', '1501582576', '1502260457', null, '1502168741', '16', '1');
INSERT INTO `user` VALUES ('6', 'jack', 'e10adc3949ba59abbe56e057f20f883e', 'jack123@php.cn', '0', '1', '1502064844', '1502260457', null, '1502082773', '1', '1');
INSERT INTO `user` VALUES ('7', 'lisa', 'e10adc3949ba59abbe56e057f20f883e', 'lisa@php.cn', '0', '1', null, '1502260457', null, null, '0', '1');
INSERT INTO `user` VALUES ('8', 'jenny', 'e10adc3949ba59abbe56e057f20f883e', 'jenny@php.cn', '0', '1', '1502091384', '1502260457', null, null, '0', '1');
INSERT INTO `user` VALUES ('9', 'ejw', 'e10adc3949ba59abbe56e057f20f883e', 'ejw@php.cn', '0', '1', '1502091961', '1502260457', null, null, '0', '1');
INSERT INTO `user` VALUES ('10', 'mark', 'e10adc3949ba59abbe56e057f20f883e', 'mark@php.cn', '0', '1', '1502092407', '1502260457', null, null, '0', '1');
INSERT INTO `user` VALUES ('11', 'tom', 'e10adc3949ba59abbe56e057f20f883e', 'tom@php.cn', '0', '1', '1502171809', '1502260457', null, null, '0', '1');
