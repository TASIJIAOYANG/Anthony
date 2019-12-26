/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : bonus

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2019-12-26 15:44:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assets
-- ----------------------------
DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `total_input` decimal(10,0) DEFAULT NULL COMMENT '总投入',
  `total_share` decimal(10,0) DEFAULT NULL COMMENT '总份额',
  `last_month_bonus` decimal(10,0) DEFAULT NULL COMMENT '上月分红',
  `self_input` decimal(10,0) DEFAULT NULL COMMENT '自筹投入',
  `company_loan` decimal(10,0) DEFAULT NULL COMMENT '公司借款',
  `bonus_input` decimal(10,0) DEFAULT NULL COMMENT '分红投入',
  `self_loan` decimal(10,0) DEFAULT NULL COMMENT '自借款',
  `total_income` decimal(10,0) DEFAULT NULL COMMENT '总收益',
  `realize_income` decimal(10,0) DEFAULT NULL COMMENT '变现收益',
  `expect_invome` decimal(10,0) DEFAULT NULL COMMENT '预计收益',
  `create_date` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of assets
-- ----------------------------

-- ----------------------------
-- Table structure for bonus
-- ----------------------------
DROP TABLE IF EXISTS `bonus`;
CREATE TABLE `bonus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `months` varchar(255) DEFAULT NULL COMMENT '月份',
  `income` float(2,0) DEFAULT NULL COMMENT '分红收益',
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bonus_user_id` (`user_id`),
  CONSTRAINT `bonus_user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bonus
-- ----------------------------
INSERT INTO `bonus` VALUES ('1', '2', 'AA', '2019-02', '0', '2019-02-14 15:15:38.000000', null, null, null, null);
INSERT INTO `bonus` VALUES ('2', '1', 'zhangsan', '2019-01', '10', '2019-02-19 13:36:46.000000', null, null, null, null);
INSERT INTO `bonus` VALUES ('3', '1', 'zhangsan', '2019-02', '10', '2019-02-19 13:36:58.000000', null, null, null, null);
INSERT INTO `bonus` VALUES ('4', '1', 'zhangsan', '2019-03', '10', '2019-02-19 13:37:10.000000', null, null, null, null);
INSERT INTO `bonus` VALUES ('5', '1', 'zhangsan', '2019-04', '10', '2019-02-19 13:37:25.000000', '0000-00-00 00:00:00.000000', null, null, null);
INSERT INTO `bonus` VALUES ('6', '1', 'zhangsan', '2019-05', '10', '2019-02-19 13:37:42.000000', null, null, null, null);
INSERT INTO `bonus` VALUES ('7', '1', 'zhangsan', '2019-06', '10', '2019-02-19 13:37:57.000000', null, null, null, null);

-- ----------------------------
-- Table structure for expect_income_details
-- ----------------------------
DROP TABLE IF EXISTS `expect_income_details`;
CREATE TABLE `expect_income_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `months` varchar(255) DEFAULT NULL COMMENT '月份',
  `total_income` decimal(10,0) DEFAULT NULL COMMENT '总收益',
  `realize_income` decimal(10,0) DEFAULT NULL COMMENT '变现收益',
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of expect_income_details
-- ----------------------------

-- ----------------------------
-- Table structure for income_details
-- ----------------------------
DROP TABLE IF EXISTS `income_details`;
CREATE TABLE `income_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `months` varchar(255) DEFAULT NULL COMMENT '月份',
  `income` decimal(10,0) DEFAULT NULL COMMENT '收益',
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of income_details
-- ----------------------------

-- ----------------------------
-- Table structure for months_sales
-- ----------------------------
DROP TABLE IF EXISTS `months_sales`;
CREATE TABLE `months_sales` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date_time` date DEFAULT NULL COMMENT '时间',
  `profit_G` int(10) DEFAULT NULL COMMENT '毛利G',
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of months_sales
-- ----------------------------
INSERT INTO `months_sales` VALUES ('1', '2019-02-01', '12', '2019-02-13 18:09:11.000000', null, null, null, null);
INSERT INTO `months_sales` VALUES ('2', '2019-03-01', '12', '2019-02-13 18:09:23.000000', null, null, null, null);
INSERT INTO `months_sales` VALUES ('3', '2019-04-01', '13', '2019-02-13 18:24:58.438000', null, null, null, null);

-- ----------------------------
-- Table structure for new_bonus
-- ----------------------------
DROP TABLE IF EXISTS `new_bonus`;
CREATE TABLE `new_bonus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL COMMENT '月份',
  `after_income` float(10,0) DEFAULT NULL COMMENT '息后分红',
  `all_after_income` float(10,0) DEFAULT NULL COMMENT '总息后分红',
  `cash_income` float(10,0) DEFAULT NULL COMMENT '变现分红',
  `income_input` float(10,0) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_bonus_id` (`user_id`),
  CONSTRAINT `user_bonus_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new_bonus
-- ----------------------------
INSERT INTO `new_bonus` VALUES ('1', '1', 'zhangsan', '2019-01', '0', '0', '0', '0', '2019-02-22 16:47:31.000000', null, null, null);
INSERT INTO `new_bonus` VALUES ('2', '1', 'zhangsan', '2019-02', '0', '0', '0', '0', '2019-02-22 16:48:15.000000', null, null, null);
INSERT INTO `new_bonus` VALUES ('3', '1', 'zhangsan', '2019-03', '0', '0', '0', '0', '2019-02-22 16:48:58.000000', null, null, null);
INSERT INTO `new_bonus` VALUES ('4', '1', 'zhangsan', '2019-04', '0', '0', '0', '0', '2019-02-22 16:49:21.000000', null, null, null);
INSERT INTO `new_bonus` VALUES ('5', '1', 'zhangsan', '2019-05', '0', '0', '0', '0', '2019-02-22 16:50:17.000000', null, null, null);
INSERT INTO `new_bonus` VALUES ('6', '1', 'zhangsan', '2019-06', '0', '0', '0', '0', '2019-02-22 16:50:52.000000', null, null, null);
INSERT INTO `new_bonus` VALUES ('7', '1', 'zhangsan', '2019-07', '0', '0', '0', '0', '2019-02-22 16:51:07.000000', null, null, null);

-- ----------------------------
-- Table structure for person_info
-- ----------------------------
DROP TABLE IF EXISTS `person_info`;
CREATE TABLE `person_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '姓名',
  `self_input` decimal(10,0) DEFAULT NULL COMMENT '自筹投入',
  `company_loan` decimal(10,0) DEFAULT NULL COMMENT '公司借款',
  `self_loan` decimal(10,0) DEFAULT NULL COMMENT '自借款',
  `remain_ratio` float(10,0) DEFAULT NULL COMMENT '留存比例',
  `max_share` float(10,0) DEFAULT NULL COMMENT '最大授权份额',
  `month_rate` float(10,0) DEFAULT NULL COMMENT '月利率',
  `add_time` datetime(6) DEFAULT NULL COMMENT '加入时间',
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `type` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `person_info_user_id` (`user_id`),
  CONSTRAINT `person_info_user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of person_info
-- ----------------------------
INSERT INTO `person_info` VALUES ('1', '2', 'AA', '10', '0', '0', '50', '10', '1', null, '2019-02-13 13:28:03.000000', null, null, null, null, null);
INSERT INTO `person_info` VALUES ('2', '5', 'qianbi', '20', '0', '0', '50', '20', '1', '2019-02-13 00:00:00.000000', '2019-02-13 13:28:29.000000', null, null, null, null, null);
INSERT INTO `person_info` VALUES ('3', '5', 'Apple', '200', '0', '0', '50', '30', '1', null, '2019-02-13 13:28:45.000000', null, null, null, null, null);
INSERT INTO `person_info` VALUES ('4', '1', 'zhangsan', '100000', '0', '0', '50', '10', '10', '2019-02-13 00:00:00.000000', '2019-02-13 13:53:09.000000', null, null, null, null, null);
INSERT INTO `person_info` VALUES ('5', '1', null, '100000', '0', '0', '50', '10', '10', '2019-02-12 00:00:00.000000', null, null, null, null, null, null);
INSERT INTO `person_info` VALUES ('6', '3', 'lala', '10', '0', '0', '50', '10', '10', '2019-02-13 00:00:00.000000', '2019-02-13 15:13:23.176000', null, null, null, null, null);
INSERT INTO `person_info` VALUES ('7', '1', 'zhangsan', '100000', '0', '0', '50', '10', '1', '2019-02-11 10:46:40.000000', '2019-02-15 10:46:38.000000', null, null, null, null, null);
INSERT INTO `person_info` VALUES ('8', '1', 'zhangsan', '50000', '0', '0', '50', '10', '1', '2019-02-14 10:48:11.000000', '2019-02-15 10:48:14.000000', null, null, null, null, null);
INSERT INTO `person_info` VALUES ('14', '1', '张三', '11', null, null, null, null, null, null, '2019-12-26 15:34:19.000000', null, null, null, null, null);

-- ----------------------------
-- Table structure for rate_fund
-- ----------------------------
DROP TABLE IF EXISTS `rate_fund`;
CREATE TABLE `rate_fund` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date_time` varchar(255) DEFAULT NULL COMMENT '日期',
  `pz_multiple` varchar(255) DEFAULT NULL,
  `multiple` float(10,2) DEFAULT NULL COMMENT '倍数',
  `pz_rate` varchar(255) DEFAULT NULL,
  `rate` float(10,2) DEFAULT NULL COMMENT '月利率',
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rate_fund
-- ----------------------------
INSERT INTO `rate_fund` VALUES ('3', '2019-05-01', '??', '4.00', '?????', '3.00', '2019-02-13 17:03:09.000000', null, null, null, null);
INSERT INTO `rate_fund` VALUES ('4', '2020-05-01', '????', '3.00', '?????', '5.00', '2019-02-13 17:03:30.000000', null, null, null, null);
INSERT INTO `rate_fund` VALUES ('5', '2021-05-01', '????', '2.00', '?????', '5.00', '2019-02-13 17:03:47.000000', null, null, null, null);
INSERT INTO `rate_fund` VALUES ('6', '2022-05-01', '????', '1.50', '?????', '5.00', '2019-02-13 17:04:17.000000', null, null, null, null);
INSERT INTO `rate_fund` VALUES ('7', '2023-05-01', '????', '1.00', '?????', '5.00', '2019-02-13 17:04:46.000000', null, null, null, null);
INSERT INTO `rate_fund` VALUES ('8', '2024-05-01', '????', '0.50', '?????', '5.00', '2019-02-13 17:06:03.000000', null, null, null, null);
INSERT INTO `rate_fund` VALUES ('9', '2025-05-01', '????', '0.50', '?????', '5.00', '2019-02-13 17:06:00.000000', null, null, null, null);

-- ----------------------------
-- Table structure for sales_growth
-- ----------------------------
DROP TABLE IF EXISTS `sales_growth`;
CREATE TABLE `sales_growth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `current_year_growth` float(10,0) DEFAULT NULL COMMENT '本年的增长量',
  `next_year_growth` float(10,0) DEFAULT NULL COMMENT '下一年的增长量',
  `next_year_quick_growth` float(10,0) DEFAULT NULL COMMENT '下一年后加速每年的增长量',
  `total_assets` decimal(10,0) DEFAULT NULL COMMENT '总资产',
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sales_growth
-- ----------------------------
INSERT INTO `sales_growth` VALUES ('1', '10', '10', '10', '10', '2019-02-13 18:47:43.672000', null, null, null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `create_uid` int(10) DEFAULT NULL,
  `update_uid` int(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'zhangsan', '15236641459', '2019-03-05 14:11:35.000000', null, null, null, '123456');
INSERT INTO `sys_user` VALUES ('2', 'AAA', null, '2019-03-18 10:36:09.000000', null, null, null, '123456');
INSERT INTO `sys_user` VALUES ('3', 'lala', null, '2019-03-18 10:37:36.000000', null, null, null, '123456');
INSERT INTO `sys_user` VALUES ('4', 'CC', null, '2019-03-18 10:37:53.000000', null, null, null, '123456');
INSERT INTO `sys_user` VALUES ('5', 'qianbi', null, '2019-03-18 10:40:56.000000', null, null, null, '123456');
