/*
Navicat MySQL Data Transfer

Source Server         : jspdemo
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : kuncun

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-06-16 21:01:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `pwd` varchar(100) NOT NULL,
  `state` int(1) DEFAULT NULL,
  `lasttime` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '1C395A8DCE135849BD73C6DBA3B54809', '-1', null);
INSERT INTO `t_admin` VALUES ('6', '马云', '1C395A8DCE135849BD73C6DBA3B54809', '-1', null);
INSERT INTO `t_admin` VALUES ('35', '1427', '1C395A8DCE135849BD73C6DBA3B54809', '-1', null);
INSERT INTO `t_admin` VALUES ('42', 'zjw', '1C395A8DCE135849BD73C6DBA3B54809', '-1', null);
INSERT INTO `t_admin` VALUES ('44', '111', '1C395A8DCE135849BD73C6DBA3B54809', '-1', null);
INSERT INTO `t_admin` VALUES ('45', '222', '1C395A8DCE135849BD73C6DBA3B54809', '-1', null);

-- ----------------------------
-- Table structure for t_bigtype
-- ----------------------------
DROP TABLE IF EXISTS `t_bigtype`;
CREATE TABLE `t_bigtype` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_bigtype
-- ----------------------------
INSERT INTO `t_bigtype` VALUES ('17', '机器及配件类', '1');
INSERT INTO `t_bigtype` VALUES ('18', '工具类', '1');
INSERT INTO `t_bigtype` VALUES ('19', '修模类', '1');
INSERT INTO `t_bigtype` VALUES ('20', '铸造类', '1');

-- ----------------------------
-- Table structure for t_input
-- ----------------------------
DROP TABLE IF EXISTS `t_input`;
CREATE TABLE `t_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pcount` int(8) DEFAULT NULL,
  `dprice` decimal(10,2) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `annt` varchar(20) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `inputtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_input
-- ----------------------------
INSERT INTO `t_input` VALUES ('1', '高温钴烙合金', '100', '20.00', '2000.00', '111', null, '广州莘诚', '2011-06-29 16:29:25');
INSERT INTO `t_input` VALUES ('2', '高温钴铬合金', '200', '10.00', '2000.00', '222', null, '汉中精诚齿科', '2011-06-29 16:29:54');
INSERT INTO `t_input` VALUES ('3', 'NP-V钢', '300', '100.00', '30000.00', '222', null, '现金', '2011-06-29 16:31:29');
INSERT INTO `t_input` VALUES ('4', '高温钴烙合金', '30', '10.00', '300.00', '222', null, '广州莘诚', '2011-06-29 16:31:49');
INSERT INTO `t_input` VALUES ('5', 'NNB无镍玻钢', '12', '10.00', '120.00', '222', null, '珠海永嘉', '2011-06-30 16:45:05');
INSERT INTO `t_input` VALUES ('6', '适配器', '10', '100.00', '1000.00', '222', null, '广州莘诚', '2011-07-03 16:16:26');
INSERT INTO `t_input` VALUES ('7', '适配器', '15', '22.00', '330.00', '222', null, '广州莘诚', '2011-07-03 17:27:05');
INSERT INTO `t_input` VALUES ('8', '适配器', '22', '10.00', '220.00', '111', null, 'dddd', '2011-07-03 17:39:56');
INSERT INTO `t_input` VALUES ('10', '适配器', '20', '20.00', '400.00', '小张', null, '南昌飞马', '2018-07-09 10:27:55');
INSERT INTO `t_input` VALUES ('11', '上好蜡', '300', '20.90', '6270.00', '帅旖', null, '广州莘诚', '2018-07-09 14:48:47');
INSERT INTO `t_input` VALUES ('12', '高速车针', '100', '3.00', '300.00', '小李', null, '鑫三禾', '2018-12-10 09:53:14');
INSERT INTO `t_input` VALUES ('14', '压铸炉', '10', '20.00', '200.00', '小邹', null, '美国', '2019-06-04 17:32:50');
INSERT INTO `t_input` VALUES ('15', '真空搅拌机', '12', '20.00', '240.00', '小邹', null, '广州莘诚', '2019-06-04 17:33:13');
INSERT INTO `t_input` VALUES ('16', '铸造火枪', '13', '20.00', '260.00', '小邹', null, '汉中精诚齿科', '2019-06-04 17:36:47');
INSERT INTO `t_input` VALUES ('17', '铸造火枪', '13', '20.00', '260.00', '小邹', null, '汉中精诚齿科', '2019-06-04 17:39:29');
INSERT INTO `t_input` VALUES ('18', '铸造火枪', '10', '20.00', '200.00', '小邹', null, '信立', '2019-06-04 18:00:09');
INSERT INTO `t_input` VALUES ('19', '抽真空磅', '10', '20.00', '200.00', '小邹', '小张', '美国', '2019-06-04 18:03:54');
INSERT INTO `t_input` VALUES ('20', '压铸炉', null, null, '0.00', '', '', '0', '2019-06-04 18:43:26');
INSERT INTO `t_input` VALUES ('21', '压铸炉', '10', '20.00', '200.00', '111', '小张', '现金', '2019-06-04 20:07:41');
INSERT INTO `t_input` VALUES ('22', '吊机皮带', '30', '10.00', '300.00', '小邹', '小张', '超今', '2019-06-04 22:18:25');
INSERT INTO `t_input` VALUES ('23', '吊机皮带', '30', '10.00', '300.00', '小邹', '小张', '超今', '2019-06-04 22:19:18');
INSERT INTO `t_input` VALUES ('24', '蜡', '11', '20.00', '220.00', '小邹', '小张', '杜滨牙科', '2019-06-05 11:15:20');
INSERT INTO `t_input` VALUES ('25', '蜡', '11', '20.00', '220.00', '小邹', '小张', '杜滨牙科', '2019-06-05 11:15:51');
INSERT INTO `t_input` VALUES ('26', '蜡', '11', '20.00', '220.00', '小邹', '小张', '广州莘诚', '2019-06-05 11:19:11');
INSERT INTO `t_input` VALUES ('27', '蜡', '11', '20.00', '220.00', '1', '小张', '思戈玛', '2019-06-05 13:59:57');
INSERT INTO `t_input` VALUES ('28', '147', '12', '23.00', '276.00', 'sjfld', '小众', '现金', '2019-06-05 15:35:53');
INSERT INTO `t_input` VALUES ('29', '147852', '25', '20.00', '500.00', '小邹', '小张', '现金', '2019-06-06 15:35:35');
INSERT INTO `t_input` VALUES ('30', '高频机铸杯YK-H6', '10', '20.00', '200.00', '小邹', '小张', '珠海永嘉', '2019-06-06 17:47:39');
INSERT INTO `t_input` VALUES ('31', '无铍钢', '11', '20.00', '220.00', '小邹', '小张', '美国', '2019-06-06 17:48:17');
INSERT INTO `t_input` VALUES ('32', '手术刀柄', '10', '20.00', '200.00', '小邹', '小张', '信立1', '2019-06-06 17:50:03');

-- ----------------------------
-- Table structure for t_output
-- ----------------------------
DROP TABLE IF EXISTS `t_output`;
CREATE TABLE `t_output` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pcount` int(8) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `annt` varchar(20) DEFAULT NULL,
  `outputtime` datetime DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_output
-- ----------------------------
INSERT INTO `t_output` VALUES ('2', '高温钴烙合金', '30', '0.00', '555', '2011-07-01 11:34:16', null);
INSERT INTO `t_output` VALUES ('3', '高温钴烙合金', '40', '0.00', '111', '2011-07-01 11:34:34', null);
INSERT INTO `t_output` VALUES ('4', '适配器', '13', '0.00', '111', '2011-07-03 17:27:52', null);
INSERT INTO `t_output` VALUES ('5', '上好蜡', '20', '0.00', '张良', '2018-07-09 15:12:34', null);
INSERT INTO `t_output` VALUES ('6', '高速车针', '40', '0.00', '李世民', '2018-12-10 09:54:03', null);
INSERT INTO `t_output` VALUES ('7', '上好蜡', '10', '0.00', '小邹', null, null);
INSERT INTO `t_output` VALUES ('8', '上好蜡', '30', '0.00', '小邹', '2019-06-05 10:33:23', null);
INSERT INTO `t_output` VALUES ('9', '上好蜡', '30', '0.00', '小邹', '2019-06-05 10:33:28', null);
INSERT INTO `t_output` VALUES ('10', '1111', '10', '0.00', '1', '2019-06-05 10:34:22', null);
INSERT INTO `t_output` VALUES ('11', '1111', '10', '0.00', '111', '2019-06-05 10:36:16', null);
INSERT INTO `t_output` VALUES ('12', '上好蜡', '10', '0.00', '小邹', '2019-06-05 10:37:16', null);
INSERT INTO `t_output` VALUES ('13', '上好蜡', '10', '0.00', '小邹', '2019-06-05 10:39:54', null);
INSERT INTO `t_output` VALUES ('14', '上好蜡', '11', '0.00', '小邹', '2019-06-05 11:27:13', null);

-- ----------------------------
-- Table structure for t_products
-- ----------------------------
DROP TABLE IF EXISTS `t_products`;
CREATE TABLE `t_products` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `bid` int(5) DEFAULT NULL,
  `sid` int(5) DEFAULT NULL,
  `units` varchar(10) DEFAULT NULL,
  `count` int(8) DEFAULT NULL,
  `wvalue` int(4) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1326 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_products
-- ----------------------------
INSERT INTO `t_products` VALUES ('1040', '压铸炉', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1041', '水打磨机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1042', '美国石膏比例机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1043', 'CAUTIONHOTG去蜡炉', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1044', 'NEY VULCAN去蜡炉', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1045', '铸造机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1046', '进口单管喷砂机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1047', '4.5万转手机柄', '17', '83', '个', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1048', '吊机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1049', 'TS-300ZT汽动手机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1050', '抽真空磅', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1051', '烤瓷炉', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1052', '金粉吸尘机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1053', '铸造火枪', '17', '83', '支', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1054', '高速切割机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1055', '真空搅拌机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:32');
INSERT INTO `t_products` VALUES ('1056', '成型机', '17', '83', '台', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1057', '植钉机轴心柄', '17', '83', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1058', '吊机内电机', '17', '83', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1059', '胶枪', '17', '83', '把', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1060', '压力胶枪', '17', '83', '支', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1061', '焊枪', '17', '83', '把', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1062', '日本喷火枪', '17', '83', '把', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1063', '水磨机砂片', '17', '84', '块', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1064', '钻石金钢砂片', '17', '84', '片', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1065', '国产真空搅拌杯', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1066', '吸尘袋', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1067', '真空包埋机用ORNG', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1068', '洗净机安全栓', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1069', '洗净机网管', '17', '84', '根', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1070', '洗净机继电器', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1071', 'NEY密封圈', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1072', '吊机皮带', '17', '84', '支', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1073', '高速手机机心', '17', '84', '支', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1074', '汽动手机轴承', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1075', '汽动手机头', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1076', '美国轴承', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1077', '蒸汽管', '17', '84', '根', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1078', '吊机碳刷', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1079', '手机电源线', '17', '84', '根', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1080', '手机碳刷', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1081', '汽油格', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1082', '铸造机头', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1083', '烤瓷炉测试温度条', '17', '84', '支', '0', '20', '1', '2011-06-29 01:00:33');
INSERT INTO `t_products` VALUES ('1084', '烤瓷炉胆', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1085', '烤瓷炉感温棒', '17', '84', '支', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1086', '烤瓷炉盘', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1087', '压瓷炉盘', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1088', 'IP2000烤瓷炉密封圈', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1089', '进口弹簧', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1090', '喷砂机头嘴', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1091', '火枪头', '17', '84', '支', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1092', '小炉板', '17', '84', '块', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1093', '烤瓷炉发热丝', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1094', 'MPB轴承', '17', '84', '只', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1095', '手机轴承', '17', '84', '只', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1096', '压瓷炉拉簧', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1097', '烤瓷炉效温银片', '17', '84', '合', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1098', '手机轴心', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1099', '测温银丝', '17', '84', '合', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1100', '烤瓷炉高温底座', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1101', '种钉机砂心圈', '17', '84', '套', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1102', 'MR148轴承', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1103', 'MR126轴承', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1104', 'MR104轴承', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1105', '蒸汽机电子阀', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1106', '气管接头', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1107', '直通接头', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1108', '铜接头', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1109', '意大利牙花总承', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1110', 'MR93轴承', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:34');
INSERT INTO `t_products` VALUES ('1111', '烤瓷炉电磁阀', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1112', '瓷盘', '17', '84', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1113', '手机油', '17', '84', '瓶', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1114', '手术刀柄', '18', '85', '把', '10', '40', '1', '2011-07-02 12:13:00');
INSERT INTO `t_products` VALUES ('1115', '石膏剪', '18', '85', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1116', '石膏调拌刀', '18', '85', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1117', '锯柄', '18', '85', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1118', '大橡胶皮碗', '18', '85', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1119', '铜嘴风枪头', '18', '85', '支', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1121', '2040#蜡刀', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1122', '双头探针', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1123', '电蜡刀', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1124', '#5蜡刀', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1125', '台湾雕刻刀', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1126', '#5关刀滴蜡刀', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1127', '一般包埋圈', '18', '86', '套', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1128', '50G包埋底坐', '18', '86', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1129', 'GROBET洒精灯', '18', '86', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1130', '洒精灯', '18', '86', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1131', 'ERA', '18', '86', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1132', 'PEARSN 种植体配件', '18', '86', '包', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1133', '3021KV', '18', '86', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1134', '3114KV', '18', '86', '个', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1135', '蜡卡尺', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1136', '#137技工钳', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1137', 'C5C6蜡刀', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1138', '剪钳', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1139', '雕刻刀', '18', '86', '把', '0', '20', '1', '2011-06-29 01:00:35');
INSERT INTO `t_products` VALUES ('1140', '漂白色比色板11-8色', '18', '87', '套', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1141', 'A0-B0比色板', '18', '87', '套', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1142', '#8号上瓷笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1143', '#7号上瓷笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1144', '#6号上瓷笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1145', '#5号上瓷笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1146', '#4号上瓷笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1147', '#1号笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1148', '#1/8上OP笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1149', '#0  号笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1150', '#00号笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1151', '#000号笔', '18', '87', '支', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1152', '清洁碳', '18', '87', '盒', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1153', '止血钳', '18', '87', '把', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1154', '烧付钉', '18', '87', '包', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1155', '烧付盘（带钉）', '18', '87', '个', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1156', '调色盘', '18', '87', '个', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1157', '上瓷调刀', '18', '87', '把', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1158', '双头调拌刀', '18', '87', '把', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1159', '玛瑙刀', '18', '87', '把', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1160', '胶调刀', '18', '87', '把', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1161', '回切刀', '18', '87', '把', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1162', '上瓷拉刀', '18', '87', '把', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1163', '大镊子', '18', '87', '个', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1164', '小镊子', '18', '87', '个', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1165', '3D比色板', '18', '87', '个', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1166', 'VITA 16色比色板', '18', '87', '块', '0', '20', '1', '2011-06-29 01:00:36');
INSERT INTO `t_products` VALUES ('1167', '烤瓷炉清洁剂', '18', '87', '瓶', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1168', '高温棉', '18', '87', '包', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1169', '吸水棉', '18', '87', '块', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1170', '飞马包埋粉', '18', '88', '箱', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1171', '白蜡', '18', '88', '盒', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1172', '红蜡片', '18', '88', '盒', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1173', '绿蜡块', '18', '88', '块', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1174', '大瓶黄蜡粒', '18', '88', '瓶', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1175', '边缘蜡', '18', '88', '盒', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1176', '米色通用蜡/50g', '18', '88', '块', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1177', '进口#26号蜡片', '18', '88', '盒', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1178', 'KZRR分离剂', '18', '88', '瓶', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1179', '0.8蜡线条', '18', '88', '盒', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1180', '2.0蜡线条', '18', '88', '盒', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1181', '2.5蜡线条', '18', '88', '合', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1182', '3.0蜡线条', '18', '88', '盒', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1183', '3.5蜡线条', '18', '88', '盒', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1184', '石棉纸', '18', '88', '个', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1185', '除泡剂WAX PAINENG', '18', '88', '瓶', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1186', '玻璃棒', '18', '88', '包', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1187', '#4胶包埋圈', '18', '88', '个', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1188', '#3胶包埋圈', '18', '88', '个', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1189', 'BK 烤瓷包埋料12KG', '18', '88', '箱', '0', '20', '1', '2011-06-29 01:00:37');
INSERT INTO `t_products` VALUES ('1190', '高速车针', '18', '89', '支', '60', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1191', '低速车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1192', '1-008车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1193', '1-014车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1194', '1-023车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1195', '2-018车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1196', '1LR车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1197', '2R车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1198', '3R车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1199', '4R车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1200', '5R车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1201', '13B车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1202', '14B车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1203', '15-2夹石针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1204', 'SPC23车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1205', 'SPC33车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1206', '18P国产长针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1207', '#29号车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1208', 'SP49车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1209', 'FG37车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1210', 'FG7901车针', '18', '89', '支', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1211', '车瓷砂片22M/M', '18', '90', '片', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1212', '22*0.25*1.8砂片', '18', '90', '片', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1213', '25*0.6*1.8砂片', '18', '90', '片', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1214', '38*0.7*1.8砂片', '18', '90', '片', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1215', '38*1.7*1.8砂片', '18', '90', '片', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1216', '台湾小厚砂片', '18', '90', '片', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1217', '绿车石', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1218', '贵金打亮胶轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:38');
INSERT INTO `t_products` VALUES ('1219', '小棕毛刷', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1220', '棕胶轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1221', 'G13子弹头车石', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1222', '轮 状小号车石', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1223', 'R22台湾硬胶轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1224', 'L22台湾白扣轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1225', 'DEDECO 绿胶轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1226', 'DEDECO 绿胶粒', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1227', '扣形小胶轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1228', '绒毛轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1229', 'PEARSON柱型胶轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1230', 'PEARSON子弹头胶轮', '18', '91', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1231', 'PEARSON 兰轮', '18', '92', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1232', '美国打亮膏（BELLA）', '18', '92', '合', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1233', '国产钻石打亮膏', '18', '92', '支', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1234', '黑色打亮膏', '18', '92', '筒', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1235', '红色打亮砖', '18', '92', '个', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1236', '抛光蜡', '18', '93', '块', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1237', '焊条', '18', '93', '支', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1238', 'VERA焊条', '18', '93', '支', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1239', 'Co/Cr NP PRE-SOLDER', '18', '93', '根', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1240', '#100石英砂', '18', '94', '包', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1241', '玻璃砂', '18', '94', '包', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1242', '黄金砂', '18', '94', '瓶', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1243', '美国进口硬石膏', '19', '95', '箱', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1244', '超硬黄石膏25kg', '19', '95', '代', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1245', '绿石膏25G', '19', '95', '箱', '0', '20', '1', '2011-06-29 01:00:39');
INSERT INTO `t_products` VALUES ('1246', '国产兰色石膏25KG', '19', '95', '包', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1247', '底座白石膏', '19', '95', '包', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1248', '一般白石膏', '19', '95', '包', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1249', '珠海白石膏', '19', '95', '包', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1250', '红笔芯', '19', '96', '盒', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1251', '胶棒', '19', '96', '根', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1252', '502胶水', '19', '96', '瓶', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1253', '水玻璃', '19', '96', '瓶', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1254', '国产手术刀片', '19', '96', '包', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1255', '进口手术刀片', '19', '96', '包', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1256', '#11号刀片', '19', '96', '片', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1257', '#15号刀片', '19', '96', '片', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1258', '雕刻刀片', '19', '96', '片', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1259', '兰油', '19', '96', '瓶', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1260', '模型油C9-金油', '19', '96', '瓶', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1261', '模型油C8-银油', '19', '96', '瓶', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1262', '高温红油', '19', '96', '瓶', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1263', '高温黄油', '19', '96', '瓶', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1264', '打磨砂圈', '19', '96', '个', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1265', '锯条', '19', '96', '根', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1266', '单钉', '19', '96', '包', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1267', '双套钉', '19', '96', '盒', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1268', '打孔钻针', '19', '96', '支', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1269', '种钉钻头', '19', '96', '支', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1270', '美国黄金钻头', '19', '96', '支', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1271', '贺利氏印 模材', '19', '96', '桶', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1272', '注射型而至硅胶', '19', '96', '套', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1273', '1:1硅橡胶', '19', '96', '套', '0', '20', '1', '2011-06-29 01:00:40');
INSERT INTO `t_products` VALUES ('1274', '日本GC树脂', '19', '96', '套', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1275', '红色咬合纸', '19', '96', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1276', '涧淆液', '19', '96', '瓶', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1277', '铝桶装快干胶', '19', '96', '桶', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1278', '喷塑托盘', '19', '96', '副', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1279', '黑色咬合架', '19', '96', '付', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1280', '白色长形咬合架', '19', '96', '付', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1281', '钢合架', '19', '96', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1282', '黑色（大）', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1283', '黑色硅胶底座（中）', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1284', '黑色硅胶底座（小）', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1285', '长形黑色硅胶底座 大', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1286', '长形黑色硅胶底座 小', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1287', '粉色半圆硅橡胶底座小', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1288', '粉色半圆硅橡胶底座中', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1289', '粉色半圆硅橡胶底座大', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1290', '大长硅胶底座', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1291', '小长硅胶底座', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1292', '平半圆硅胶底座', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1293', '凸半圆硅胶底座', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1294', '大硅胶底坐', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1295', '中硅胶底坐', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1296', '小硅胶底坐', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1297', '长形硅胶底坐', '19', '97', '个', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1298', '钢块', '20', '98', '块', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1299', 'NP钢', '20', '98', '包', '0', '20', '1', '2011-06-29 01:00:41');
INSERT INTO `t_products` VALUES ('1300', 'NEY焊膏', '20', '98', '瓶', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1301', 'NNB无镍玻钢', '20', '98', '瓶', '2', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1302', '钴铬烤瓷合金', '20', '98', '瓶', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1303', '烤瓷钢钢', '20', '98', '瓶', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1304', '无铍钢', '20', '98', '瓶', '11', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1305', 'NP-V钢', '20', '98', '瓶', '300', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1306', '高温钴铬合金', '20', '98', '包', '200', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1307', '高温钴烙合金', '20', '98', '公斤', '60', '20', '1', '2011-07-02 11:53:00');
INSERT INTO `t_products` VALUES ('1308', '无镍皮钢', '20', '98', 'KG', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1309', '高频机铸杯YK-H6', '20', '99', '个', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1310', '铸杯', '20', '99', '个', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1311', '坩埚H1.H3立式', '20', '99', '个', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1312', '坩埚K1卧式', '20', '99', '个', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1313', '坩埚K2卧式', '20', '99', '个', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1314', '坩埚K3卧式', '20', '99', '个', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1315', '进口铸杯', '20', '100', '个', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1316', '熔煤粉', '20', '100', '瓶', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1317', '贵金属清洁剂', '20', '100', '瓶', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1318', '硼砂', '20', '100', '瓶', '0', '20', '1', '2011-06-29 01:00:42');
INSERT INTO `t_products` VALUES ('1319', '适配器', '17', '84', '台', '54', '10', '1', '2011-07-03 15:58:18');
INSERT INTO `t_products` VALUES ('1320', '1111', '19', '96', '件', '80', '10', '1', '2011-07-03 22:19:57');
INSERT INTO `t_products` VALUES ('1321', '上好蜡', '19', '96', '瓶', '179', '50', '1', '2018-07-09 14:46:11');
INSERT INTO `t_products` VALUES ('1323', '蜡', '18', '0', '包', '11', '50', '1', '2019-06-05 10:30:20');
INSERT INTO `t_products` VALUES ('1324', '147', '18', '85', '条', '12', '50', '1', '2019-06-05 15:35:29');
INSERT INTO `t_products` VALUES ('1325', '147852', '20', '121', '包', '25', '10', '1', '2019-06-06 15:35:16');

-- ----------------------------
-- Table structure for t_provider
-- ----------------------------
DROP TABLE IF EXISTS `t_provider`;
CREATE TABLE `t_provider` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) DEFAULT NULL,
  `intro` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_provider
-- ----------------------------
INSERT INTO `t_provider` VALUES ('426', '美国', null);
INSERT INTO `t_provider` VALUES ('427', '杜滨牙科', null);
INSERT INTO `t_provider` VALUES ('428', '广州莘诚', null);
INSERT INTO `t_provider` VALUES ('429', '现金', null);
INSERT INTO `t_provider` VALUES ('430', '汉中精诚齿科', null);
INSERT INTO `t_provider` VALUES ('431', '上海齿康', null);
INSERT INTO `t_provider` VALUES ('432', '台湾蔡爸', null);
INSERT INTO `t_provider` VALUES ('433', '超今', null);
INSERT INTO `t_provider` VALUES ('434', '鑫三禾', null);
INSERT INTO `t_provider` VALUES ('435', '南昌飞马', null);
INSERT INTO `t_provider` VALUES ('436', '珠海永嘉', null);
INSERT INTO `t_provider` VALUES ('437', '思戈玛', null);
INSERT INTO `t_provider` VALUES ('438', '深圳亮丽公司', null);
INSERT INTO `t_provider` VALUES ('439', '深圳远东', null);
INSERT INTO `t_provider` VALUES ('440', '深圳永昌', null);
INSERT INTO `t_provider` VALUES ('441', '上海山八齿材', null);
INSERT INTO `t_provider` VALUES ('442', '深圳深海通', null);
INSERT INTO `t_provider` VALUES ('443', '洛阳北苑', null);
INSERT INTO `t_provider` VALUES ('444', '台湾邱先生', null);
INSERT INTO `t_provider` VALUES ('445', '上海复星', null);
INSERT INTO `t_provider` VALUES ('446', 'dddd', 'dddd');
INSERT INTO `t_provider` VALUES ('447', '信立', '诚信为本');
INSERT INTO `t_provider` VALUES ('449', '111', '111');
INSERT INTO `t_provider` VALUES ('450', '信立1', '545');

-- ----------------------------
-- Table structure for t_smalltype
-- ----------------------------
DROP TABLE IF EXISTS `t_smalltype`;
CREATE TABLE `t_smalltype` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `bid` int(5) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bid` (`bid`),
  CONSTRAINT `fk_bid` FOREIGN KEY (`bid`) REFERENCES `t_bigtype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_smalltype
-- ----------------------------
INSERT INTO `t_smalltype` VALUES ('83', '机器类', '17', '1');
INSERT INTO `t_smalltype` VALUES ('84', '配件类', '17', '1');
INSERT INTO `t_smalltype` VALUES ('85', '修模用', '18', '1');
INSERT INTO `t_smalltype` VALUES ('86', '上蜡用', '18', '1');
INSERT INTO `t_smalltype` VALUES ('87', '上瓷用', '18', '1');
INSERT INTO `t_smalltype` VALUES ('88', '蜡类', '18', '1');
INSERT INTO `t_smalltype` VALUES ('89', '车针类', '18', '1');
INSERT INTO `t_smalltype` VALUES ('90', '车片类', '18', '1');
INSERT INTO `t_smalltype` VALUES ('91', '打亮类', '18', '1');
INSERT INTO `t_smalltype` VALUES ('92', '抛光类', '18', '1');
INSERT INTO `t_smalltype` VALUES ('93', '焊条类', '18', '1');
INSERT INTO `t_smalltype` VALUES ('94', '石英砂类', '18', '1');
INSERT INTO `t_smalltype` VALUES ('95', '石膏类', '19', '1');
INSERT INTO `t_smalltype` VALUES ('96', '耗材类', '19', '1');
INSERT INTO `t_smalltype` VALUES ('97', '硅胶底座类', '19', '1');
INSERT INTO `t_smalltype` VALUES ('98', '金属类', '20', '1');
INSERT INTO `t_smalltype` VALUES ('99', '铸杯类', '20', '1');
INSERT INTO `t_smalltype` VALUES ('100', '金属清洗', '20', '1');
