/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xm

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-14 11:14:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(11) NOT NULL,
  `pp` varchar(255) NOT NULL,
  `price1` varchar(255) NOT NULL,
  `price2` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', '耐克Nike', '368', '499', '黑', '42', 'css/img/goodslist01.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('2', '李宁', '379', '528', '黑', '43', 'css/img/goodslist02.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('3', '耐克Nile', '468', '666', '黑', '40', 'css/img/goodslist03.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('4', '鸿星尔克', '379', '499', '白', '38', 'css/img/goodslist04.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('5', '乔丹', '368', '579', '黑', '43', 'css/img/goodslist05.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('6', '安踏', '368', '666', '黑', '38', 'css/img/goodslist06.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('7', '耐克Nike', '288', '368', '深蓝', '37', 'css/img/goodslist07.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('8', '阿迪达斯', '368', '499', '黑', '42', 'css/img/goodslist08.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('9', '耐克Nike', '428', '567', '深蓝', '39', 'css/img/goodslist09.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('10', '乔丹', '379', '499', '白', '42', 'css/img/goodslist10.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('11', '耐克Nike', '468', '528', '黑', '41', 'css/img/goodslist11.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('12', '安踏', '379', '499', '黑', '42', 'css/img/goodslist12.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('13', '耐克Nike', '428', '499', '黑 ', '43', 'css/img/goodslist13.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('14', '鸿星尔克', '468', '499', '黑', '42', 'css/img/goodslist14.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('15', '李宁', '428', '499', '黑', '42 ', 'css/img/goodslist15.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('16', '耐克Nike', '379', '549', '深蓝', '37', 'css/img/goodslist16.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('17', '耐克Nike', '379', '469', '白', '38', 'css/img/goodslist17.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('18', '耐克Nike', '468', '499', '黑', '39', 'css/img/goodslist18.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('19', '阿迪达斯', '379', '528', '黑', '42', 'css/img/goodslist19.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('20', '耐克Nike', '379', '528', '黑', '42', 'css/img/goodslist20.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('21', '李宁', '368', '456', '白', '42', 'css/img/goodslist21.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('22', '耐克Nike', '379', '489', '黑', '42', 'css/img/goodslist22.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('23', '乔丹', '428', '549', '深蓝', '39', 'css/img/goodslist23.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('24', '耐克Nike', '379', '499', '黑', '42', 'css/img/goodslist24.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('25', '耐克Nike', '379', '499', '黑', '36', 'css/img/goodslist25.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('26', '阿迪达斯', '428', '528', '黑', '42', 'css/img/goodslist26.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('27', '鸿星尔克', '379', '499', '黑', '42', 'css/img/goodslist27.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('28', '耐克Nike', '379', '549', '黑', '38', 'css/img/goodslist28.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('29', '李宁', '379', '479', '白', '39', 'css/img/goodslist29.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('30', '耐克Nike', '368', '499', '黑', '40', 'css/img/goodslist30.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('31', '安踏', '339', '468', '黑', '40', 'css/img/goodslist31.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('32', '李宁', '399', '488', '白', '39', 'css/img/goodslist32.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('33', '乔丹', '468', '549', '深蓝', '41', 'css/img/goodslist33.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('34', '耐克Nike', '368', '499', '黑', '42', 'css/img/goodslist34.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('35', '鸿星尔克', '499', '568', '白', '39', 'css/img/goodslist35.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('36', '安踏', '468', '555', '黑', '40', 'css/img/goodslist36.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('37', '李宁', '369', '468', '深蓝', '39', 'css/img/goodslist37.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('38', '阿迪达斯', '456', '567', '白', '40', 'css/img/goodslist38.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('39', '乔丹', '399', '449', '黑', '39', 'css/img/goodslist39.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('40', '鸿星尔克', '456', '666', '深蓝', '40', 'css/img/goodslist40.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('41', '安踏', '345', '456', '白', '38', 'css/img/goodslist41.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('42', '李宁', '368', '468', '黑', '43', 'css/img/goodslist42.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('43', '安踏', '378', '489', '黑', '40', 'css/img/goodslist43.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('44', '李宁', '468', '666', '深蓝', '41', 'css/img/goodslist44.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('45', '安踏', '345', '456', '白', '39', 'css/img/goodslist45.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('46', '耐克Nike', '456', '567', '黑', '40', 'css/img/goodslist46.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('47', '乔丹', '399', '449', '白', '39', 'css/img/goodslist47.jpg', '女鞋');
INSERT INTO `goodslist` VALUES ('48', '李宁', '429', '499', '深蓝', '40', 'css/img/goodslist48.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('49', '鸿星尔克', '568', '668', '黑', '43', 'css/img/goodslist49.jpg', '男鞋');
INSERT INTO `goodslist` VALUES ('50', '鸿星尔克', '666', '888', '白', '42', 'css/img/goodslist50.jpg', '男鞋');

-- ----------------------------
-- Table structure for usermsg
-- ----------------------------
DROP TABLE IF EXISTS `usermsg`;
CREATE TABLE `usermsg` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermsg
-- ----------------------------
INSERT INTO `usermsg` VALUES ('chenjianghcuan', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `usermsg` VALUES ('wuguangyan', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `usermsg` VALUES ('pangzi', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `usermsg` VALUES ('oujiaru', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `usermsg` VALUES ('lvzuyao', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `usermsg` VALUES ('xujinwen', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `usermsg` VALUES ('laoxie', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `usermsg` VALUES ('xiaoxie', 'e10adc3949ba59abbe56e057f20f883e');
SET FOREIGN_KEY_CHECKS=1;
