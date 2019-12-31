/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : taotaoStore

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 31/12/2019 14:38:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `APhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '来自那个用户',
  `Aaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收件地址',
  `Aweight` double(1, 0) NULL DEFAULT NULL COMMENT '权重',
  `Atype` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址类型',
  `AuserName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收件人名称',
  INDEX `pk1`(`APhone`) USING BTREE,
  CONSTRAINT `pk1` FOREIGN KEY (`APhone`) REFERENCES `user` (`userPhone`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('11111111111', '天津', 1, '家', '张三');
INSERT INTO `address` VALUES ('12345678901', '江西', 2, '学校', '李四');
INSERT INTO `address` VALUES ('22222222222', '河南', 3, '公司', '王五');
INSERT INTO `address` VALUES ('33333333333', '广西', 4, '家', '赵六');
INSERT INTO `address` VALUES ('44444444444', '重庆', 5, '公司', '衡七');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `cId` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `cName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品名称',
  `cInfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品信息',
  `cType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品类型',
  `cMark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品备注',
  `cPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品原价',
  `cPay` decimal(10, 0) NOT NULL COMMENT '商品现价（应支付价格)',
  `cStatus` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '商品状态(是否被涉删除）',
  `cCount` int(10) NOT NULL COMMENT '商品存货',
  PRIMARY KEY (`cId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES (1, '米哲新款22英寸窄边框液晶HDMI显示器高清游戏IPS显示屏非24寸', '米哲新款22英寸窄边框液晶HDMI显示器高清游戏IPS显示屏非24寸', '显示器', NULL, 499.00, 299, '0', 100);
INSERT INTO `commodity` VALUES (2, 'Asus/华硕 PRIME Z390-P台式机电脑游戏主板Z390大板支持9代 CPU', 'Asus/华硕 PRIME Z390-P台式机电脑游戏主板Z390大板支持9代 CPU', '电脑主机', NULL, 0.00, 848, '0', 50);
INSERT INTO `commodity` VALUES (3, 'WD/西部数据WD20SPZX 2tb 2.5寸笔记本机械硬盘2t 5400转128M 7MM', 'WD/西部数据WD20SPZX 2tb 2.5寸笔记本机械硬盘2t 5400转128M 7MM', '笔记本', NULL, 452.00, 409, '0', 100);
INSERT INTO `commodity` VALUES (4, 'WD/西数2TB硬盘 台式机游戏2000g专用企业级黑盘 监控盘 SATA 64M', 'WD/西数2TB硬盘 台式机游戏2000g专用企业级黑盘 监控盘 SATA 64M', '监控盘', NULL, 370.00, 268, '0', 100);
INSERT INTO `commodity` VALUES (5, '奥睿科/orico 硬盘托架2.5转3.5寸金属硬盘加厚支架电脑笔记本机械SSD台式机固态硬盘固定架机箱硬盘转换支架', '奥睿科/orico 硬盘托架2.5转3.5寸金属硬盘加厚支架电脑笔记本机械SSD台式机固态硬盘固定架机箱硬盘转换支架', '转换支架', NULL, 39.00, 10, '0', 200);
INSERT INTO `commodity` VALUES (6, '【礼遇价】WD西部数据 SN750 固态硬盘SSD 1TB 台式机高速四通道NVMe黑盘', '【礼遇价】WD西部数据 SN750 固态硬盘SSD 1TB 台式机高速四通道NVMe黑盘', '台式机', NULL, 1399.00, 1299, '0', 100);
INSERT INTO `commodity` VALUES (7, '【礼遇价】狼蛛机械键盘鼠标套装游戏吃鸡笔记本电脑有线键鼠耳机电竞三件套', '【礼遇价】狼蛛机械键盘鼠标套装游戏吃鸡笔记本电脑有线键鼠耳机电竞三件套', '电竞三件套', NULL, 369.00, 169, '0', 1000);
INSERT INTO `commodity` VALUES (8, 'Intel/英特尔 760P 256G SSD M.2 2280 PCIE NVME 固态硬盘SSD', 'Intel/英特尔 760P 256G SSD M.2 2280 PCIE NVME 固态硬盘SSD', '动态硬盘', NULL, 599.00, 369, '0', 2000);
INSERT INTO `commodity` VALUES (9, '【领券减10】东芝RC500 500G M.2 PCIe NVMe SSD固态硬盘RD500 1T', '【领券减10】东芝RC500 500G M.2 PCIe NVMe SSD固态硬盘RD500 1T', '动态硬盘', NULL, 633.00, 599, '0', 1000);
INSERT INTO `commodity` VALUES (10, 'Hasee/神舟 战神 K670D-G4D1/E6 K670C-G4E1/K670E-G6A5/K670T', 'Hasee/神舟 战神 K670D-G4D1/E6 K670C-G4E1/K670E-G6A5/K670T', '神舟电脑', NULL, 4139.99, 4099, '0', 100);
INSERT INTO `commodity` VALUES (11, 'WD/西数WD10SPZX 1tb 2.5寸笔记本机械硬盘1t 5400转128M 7MM蓝盘', 'WD/西数WD10SPZX 1tb 2.5寸笔记本机械硬盘1t 5400转128M 7MM蓝盘', '蓝盘', NULL, 0.00, 245, '0', 1000);
INSERT INTO `commodity` VALUES (12, '【礼遇价】金士顿 HyperX笔记本内存条 DDR4 2400 2666 8G四代内存条 单根8G', '【礼遇价】金士顿 HyperX笔记本内存条 DDR4 2400 2666 8G四代内存条 单根8G', '内存条', NULL, 283.00, 249, '0', 100);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `oId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单号',
  `cId` int(11) NOT NULL COMMENT '商品号',
  `oNum` int(1) NOT NULL COMMENT '订单数量',
  `oStatus` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '订单状态',
  `oReceiverAddresse` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '收货人地址',
  `oReceiver` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '收货人',
  `oRecesiverPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '收件人电话',
  `oPayUId` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '付款人的uid',
  `oPosttage` decimal(10, 0) NOT NULL COMMENT '邮费',
  `oCast` decimal(10, 0) NOT NULL COMMENT '总费用',
  PRIMARY KEY (`oId`) USING BTREE,
  INDEX `pko1`(`cId`) USING BTREE,
  INDEX `pko2`(`oPayUId`) USING BTREE,
  CONSTRAINT `pko1` FOREIGN KEY (`cId`) REFERENCES `commodity` (`cId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pko2` FOREIGN KEY (`oPayUId`) REFERENCES `user` (`userPhone`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 1, 10, '0', '天津市北辰区', '赵六', '55555555555', '123456', 3, 0);
INSERT INTO `order` VALUES (2, 2, 10, '1', '江西省赣州市', '李丽', '66666666666', '12345678901', 6, 8480);
INSERT INTO `order` VALUES (3, 4, 50, '2', '河北省石家庄', '吴长', '77777777777', '22222222222', 6, 20045);

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `cId` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `imgSrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '图片url地址',
  `cName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品名称',
  `cInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品信息',
  `cType` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品类型',
  `cMark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品备注',
  `cPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品标价',
  `cPay` decimal(10, 2) NOT NULL COMMENT '商品现价（应支付价格)',
  `oNum` int(5) NULL DEFAULT NULL COMMENT '购买数量',
  `oPayUser` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '付款人id(提交订单的用户）',
  `oStatus` binary(1) NOT NULL DEFAULT 0x30 COMMENT '状态(用户提交订单更改状态）',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '店家链接',
  `srcList1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '店家标签图片src',
  `srcList2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '店家标签图形src',
  `srcList3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '店家标签图形src',
  PRIMARY KEY (`cId`) USING BTREE,
  INDEX `pksh1`(`oPayUser`) USING BTREE,
  CONSTRAINT `pksh1` FOREIGN KEY (`oPayUser`) REFERENCES `user` (`userPhone`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES (1, 'img/1.jpg', '米哲新款22英寸窄边框液晶HDMI显示器高清游戏IPS显示屏非24寸', '米哲新款22英寸窄边框液晶HDMI显示器高清游戏IPS显示屏非24寸', '显示屏', NULL, 499.00, 299.00, 1, '11111111111', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', 'img/1.3.jpg');
INSERT INTO `shoppingcart` VALUES (2, 'img/2.jpg', 'Asus/华硕 PRIME Z390-P台式机电脑游戏主板Z390大板支持9代 CPU', 'Asus/华硕 PRIME Z390-P台式机电脑游戏主板Z390大板支持9代 CPU', '笔记本', NULL, 0.00, 848.00, 1, '12345678901', 0x30, NULL, 'img/1.1.jpg', NULL, 'img/1.3.jpg');
INSERT INTO `shoppingcart` VALUES (3, 'img/3.jpg', 'WD/西部数据WD20SPZX 2tb 2.5寸笔记本机械硬盘2t 5400转128M 7MM', 'WD/西部数据WD20SPZX 2tb 2.5寸笔记本机械硬盘2t 5400转128M 7MM', '机械硬盘', NULL, 452.00, 409.00, 1, '22222222222', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', NULL);
INSERT INTO `shoppingcart` VALUES (4, 'img/4.jpg', 'WD/西数2TB硬盘 台式机游戏2000g专用企业级黑盘 监控盘 SATA 64M', 'WD/西数2TB硬盘 台式机游戏2000g专用企业级黑盘 监控盘 SATA 64M', '机械硬盘', NULL, 370.00, 268.00, 1, '33333333333', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', 'img/1.3.jpg');
INSERT INTO `shoppingcart` VALUES (5, 'img/5.jpg', '奥睿科/orico 硬盘托架2.5转3.5寸金属硬盘加厚支架电脑笔记本机械SSD台式机固态硬盘固定架机箱硬盘转换支架', '奥睿科/orico 硬盘托架2.5转3.5寸金属硬盘加厚支架电脑笔记本机械SSD台式机固态硬盘固定架机箱硬盘转换支架', '电脑配件', NULL, 39.00, 13.00, 1, '44444444444', 0x30, NULL, NULL, 'img/1.2.jpg', 'img/1.3.jpg');
INSERT INTO `shoppingcart` VALUES (6, 'img/6.jpg', '【礼遇价】WD西部数据 SN750 固态硬盘SSD 1TB 台式机高速四通道NVMe黑盘', '【礼遇价】WD西部数据 SN750 固态硬盘SSD 1TB 台式机高速四通道NVMe黑盘', '机械硬盘', NULL, 1399.00, 1299.00, 1, '33333333333', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', NULL);
INSERT INTO `shoppingcart` VALUES (7, 'img/7.jpg', '【礼遇价】狼蛛机械键盘鼠标套装游戏吃鸡笔记本电脑有线键鼠耳机电竞三件套', '【礼遇价】狼蛛机械键盘鼠标套装游戏吃鸡笔记本电脑有线键鼠耳机电竞三件套', '电脑配件', NULL, 369.00, 169.00, 1, '123456', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', 'img/1.3.jpg');
INSERT INTO `shoppingcart` VALUES (8, 'img/8.jpg', 'Intel/英特尔 760P 256G SSD M.2 2280 PCIE NVME 固态硬盘SSD', 'Intel/英特尔 760P 256G SSD M.2 2280 PCIE NVME 固态硬盘SSD', '固态硬盘', NULL, 599.00, 369.00, 1, '123456', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', NULL);
INSERT INTO `shoppingcart` VALUES (9, 'img/9.jpg', '【领券减10】东芝RC500 500G M.2 PCIe NVMe SSD固态硬盘RD500 1T', '【领券减10】东芝RC500 500G M.2 PCIe NVMe SSD固态硬盘RD500 1T', '固态硬盘', NULL, 633.00, 599.00, 1, '12345678901', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', 'img/1.3.jpg');
INSERT INTO `shoppingcart` VALUES (10, 'img/10.jpg', 'Hasee/神舟 战神 K670D-G4D1/E6 K670C-G4E1/K670E-G6A5/K670T', 'Hasee/神舟 战神 K670D-G4D1/E6 K670C-G4E1/K670E-G6A5/K670T', '笔记本电脑', NULL, 4139.99, 4098.59, 1, '33333333333', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', 'img/1.3.jpg');
INSERT INTO `shoppingcart` VALUES (11, 'img/11.jpg', 'WD/西数WD10SPZX 1tb 2.5寸笔记本机械硬盘1t 5400转128M 7MM蓝盘', 'WD/西数WD10SPZX 1tb 2.5寸笔记本机械硬盘1t 5400转128M 7MM蓝盘', '机械硬盘', NULL, 0.00, 245.00, 1, '12345678901', 0x30, NULL, 'img/1.1.jpg', 'img/1.2.jpg', 'img/1.3.jpg');
INSERT INTO `shoppingcart` VALUES (12, 'img/12.jpg', '【礼遇价】金士顿 HyperX笔记本内存条 DDR4 2400 2666 8G四代内存条 单根8G', '【礼遇价】金士顿 HyperX笔记本内存条 DDR4 2400 2666 8G四代内存条 单根8G', 'U盘', NULL, 283.00, 249.00, 1, '11111111111', 0x30, NULL, 'img/1.1.jpg', NULL, 'img/1.3.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `registerDate` date NOT NULL COMMENT '注册日期',
  `isDelete` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT ' 是否被删除',
  `userPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户电话号码',
  `userName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT ' 用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT ' 密码',
  `mail` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT ' 邮箱',
  `sex` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT ' 性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `region` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '区号',
  PRIMARY KEY (`userPhone`) USING BTREE,
  INDEX `userName`(`userName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2019-12-26', '0', '11111111111', '张三', '123456', '123@qq.com', '男', '2019-12-11', '+86');
INSERT INTO `user` VALUES ('2019-12-27', '0', '123456', 'admin', '123456', '123@qq.com', '男', '2019-12-24', '+86');
INSERT INTO `user` VALUES ('2019-12-03', '0', '12345678901', '吴桐', '456789', '456@qq.com', '女', '2019-12-10', '+86');
INSERT INTO `user` VALUES ('2019-12-10', '0', '22222222222', '李武', '123789', '789@qq.com', '男', '2019-12-15', '+86');
INSERT INTO `user` VALUES ('2019-12-24', '0', '33333333333', '赵四', '456123', '147@qq.com', '男', '2019-12-02', '+86');
INSERT INTO `user` VALUES ('2019-12-24', '0', '44444444444', '刘海', '147258', '258@qq.com', '女', '2019-12-30', '+86');

SET FOREIGN_KEY_CHECKS = 1;
