/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : house

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 17/07/2022 15:49:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `admin_id` int(0) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `admin_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b');

-- ----------------------------
-- Table structure for tb_favorite
-- ----------------------------
DROP TABLE IF EXISTS `tb_favorite`;
CREATE TABLE `tb_favorite`  (
  `user_id` int(0) NOT NULL,
  `house_id` int(0) NOT NULL,
  PRIMARY KEY (`user_id`, `house_id`) USING BTREE,
  INDEX `house_id`(`house_id`) USING BTREE,
  CONSTRAINT `house_id` FOREIGN KEY (`house_id`) REFERENCES `tb_house` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_favorite
-- ----------------------------
INSERT INTO `tb_favorite` VALUES (1, 1);
INSERT INTO `tb_favorite` VALUES (3, 1);
INSERT INTO `tb_favorite` VALUES (1, 2);
INSERT INTO `tb_favorite` VALUES (1, 3);
INSERT INTO `tb_favorite` VALUES (1, 4);

-- ----------------------------
-- Table structure for tb_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_file`;
CREATE TABLE `tb_file`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `originName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_file
-- ----------------------------
INSERT INTO `tb_file` VALUES (1, '3.png', '31657878523476.png');
INSERT INTO `tb_file` VALUES (2, '3.png', '31657878575042.png');
INSERT INTO `tb_file` VALUES (3, '2.jpg', '21657879058548.jpg');
INSERT INTO `tb_file` VALUES (4, '1.jpg', '11657879058548.jpg');
INSERT INTO `tb_file` VALUES (5, '3.png', '31657879058551.png');
INSERT INTO `tb_file` VALUES (6, '1.jpg', '11657879372586.jpg');
INSERT INTO `tb_file` VALUES (7, '2.jpg', '21657879372586.jpg');
INSERT INTO `tb_file` VALUES (8, 'QQ图片20220712190829.jpg', 'QQ图片202207121908291657957856538.jpg');
INSERT INTO `tb_file` VALUES (9, 'QQ图片20220712190829.jpg', 'QQ图片202207121908291657958235209.jpg');
INSERT INTO `tb_file` VALUES (10, '1.png', '11657978907557.png');
INSERT INTO `tb_file` VALUES (11, '3.jpg', '31657978931989.jpg');
INSERT INTO `tb_file` VALUES (12, '2.jpg', '21657978931990.jpg');
INSERT INTO `tb_file` VALUES (13, '4.jpg', '41657978932000.jpg');
INSERT INTO `tb_file` VALUES (14, '5.jpg', '51657978956120.jpg');
INSERT INTO `tb_file` VALUES (15, '6.jpg', '61657978956123.jpg');
INSERT INTO `tb_file` VALUES (16, '8.jpg', '81657978984945.jpg');
INSERT INTO `tb_file` VALUES (17, '1.png', '11657978987725.png');
INSERT INTO `tb_file` VALUES (18, '8.jpg', '81657978998778.jpg');
INSERT INTO `tb_file` VALUES (19, '10.jpg', '101657979027257.jpg');
INSERT INTO `tb_file` VALUES (20, '9.jpg', '91657979027257.jpg');
INSERT INTO `tb_file` VALUES (21, '11.jpg', '111657979049973.jpg');
INSERT INTO `tb_file` VALUES (22, '12.jpg', '121657979049973.jpg');
INSERT INTO `tb_file` VALUES (23, '13.jpg', '131657979079497.jpg');
INSERT INTO `tb_file` VALUES (24, '11.jpg', '111657979093281.jpg');
INSERT INTO `tb_file` VALUES (25, '12.jpg', '121657979111716.jpg');
INSERT INTO `tb_file` VALUES (26, '13.jpg', '131657979111716.jpg');
INSERT INTO `tb_file` VALUES (27, '11.jpg', '111657979111716.jpg');
INSERT INTO `tb_file` VALUES (28, '21.jpg', '211657979142615.jpg');
INSERT INTO `tb_file` VALUES (29, '14.jpg', '141657979142615.jpg');
INSERT INTO `tb_file` VALUES (30, '17.jpg', '171657979161100.jpg');
INSERT INTO `tb_file` VALUES (31, '18.jpg', '181657979161100.jpg');
INSERT INTO `tb_file` VALUES (32, '15.jpg', '151657979193417.jpg');
INSERT INTO `tb_file` VALUES (33, '19.jpg', '191657979193417.jpg');
INSERT INTO `tb_file` VALUES (34, '16.jpg', '161657979193417.jpg');
INSERT INTO `tb_file` VALUES (35, '10.jpg', '101657979219703.jpg');
INSERT INTO `tb_file` VALUES (36, '20.jpg', '201657979219702.jpg');
INSERT INTO `tb_file` VALUES (37, '066.jpeg', '0661658023963197.jpeg');
INSERT INTO `tb_file` VALUES (38, '055.jpeg', '0551658023963198.jpeg');

-- ----------------------------
-- Table structure for tb_house
-- ----------------------------
DROP TABLE IF EXISTS `tb_house`;
CREATE TABLE `tb_house`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '房屋编号',
  `owner` int(0) NULL DEFAULT NULL,
  `areas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区县',
  `jiedao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '街道',
  `xiaoqu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '小区\r\n',
  `Area` double NULL DEFAULT NULL COMMENT '面积',
  `lease` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '租赁方式',
  `home_aspect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房屋朝向',
  `price` int(0) NULL DEFAULT NULL COMMENT '月租',
  `chargeing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '计费方式',
  `rooms` int(0) NULL DEFAULT NULL COMMENT '几室',
  `halls` int(0) NULL DEFAULT NULL COMMENT '几厅',
  `toilets` int(0) NULL DEFAULT NULL COMMENT '几卫\r\n',
  `check_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '入住',
  `tenancy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '租期',
  `see` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '看房\r\n',
  `floor` int(0) NULL DEFAULT NULL COMMENT '所在楼层',
  `all_floors` int(0) NULL DEFAULT NULL COMMENT '总楼层',
  `elevator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电梯',
  `stall` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `water` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `electricity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `heating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `files_id` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_owner`(`owner`) USING BTREE,
  CONSTRAINT `FK_owner` FOREIGN KEY (`owner`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 339 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_house
-- ----------------------------
INSERT INTO `tb_house` VALUES (1, 1, '北碚', '南坪', '亚太商谷二期三期', 10, '合租', '东', 750, '季付价', 3, 1, 1, '随时入住', '6~12个月', '随时可看', 3, 30, '有', '租用车位', '民水', '民电', '有', '自采暖', '[11, 13, 12]', 'https://pic1.ajkimg.com/display/anjuke/4d50b3f9716cdc16eeeda4f6717c9c3b/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (2, 2, '渝北', '汽博中心', '奥林匹克花园新亚洲', 23, '合租', '东南', 950, '季付价', 4, 1, 2, '随时入住', '4~12个月', '随时可看', 8, 18, '有', '租用车位', '民水', '民电', '有', '自采暖', '[14, 15]', 'https://pic1.ajkimg.com/display/anjuke/632d9498295a557ddf7a313d2c0f22f4/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (3, 3, '江北', '五里店', '金融城25小时', 15, '合租', '南', 850, '季付价', 4, 1, 1, '随时入住', '3~12个月', '随时可看', 4, 29, '有', '租用车位', '民水', '民电', '有', '自采暖', '[18]', 'https://pic1.ajkimg.com/display/anjuke/88761e0f5f37d2c6e6620b2628dcf1a4/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (4, 1, '南岸', '南坪', '青青佳苑北苑', 20, '合租', '南', 780, '季付价', 3, 1, 1, '随时入住', '1~12个月', '随时可看', 11, 17, '有', '租用车位', '民水', '民电', '有', '自采暖', '[19, 20]', 'https://pic1.ajkimg.com/display/anjuke/c654ac7e0de7fa9793fb950ed686e319/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (5, 1, '南岸', '丹龙路', '天盈摩咖', 15, '合租', '南', 620, '季付价', 5, 1, 2, '随时入住', '1~12个月', '随时可看', 17, 20, '有', '租用车位', '民水', '民电', '有', '自采暖', '[21, 22]', 'https://pic1.ajkimg.com/display/anjuke/2a051ebc3a3cb74c5b75179fdd59f3aa/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (6, 3, '渝中', '大坪', '万友康年', 21, '合租', '南', 800, '季付价', 3, 1, 1, '2022/7/18', '3个月以上', '随时可看', 24, 35, '有', '租用车位', '民水', '民电', '有', '集中供暖', '[26, 27, 25]', 'https://pic1.ajkimg.com/display/anjuke/469fbee5ba0d60b2986ffadb740368fc/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (7, 2, '江北', '观音桥', '祺山品阁', 15, '合租', '南', 800, '季付价', 3, 1, 1, '随时入住', '6~12个月', '随时可看', 8, 32, '有', '租用车位', '民水', '民电', '有', '自采暖', '[29, 28]', 'https://pic1.ajkimg.com/display/anjuke/8c4318301e35e9d3ce0b55fdb7053256/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (8, 4, '渝北', '人和', '怡和小区', 17, '合租', '南', 810, '季付价', 4, 1, 2, '随时入住', '8~12个月', '随时可看', 13, 30, '有', '租用车位', '民水', '民电', '有', '自采暖', '[30, 31]', 'https://pic1.ajkimg.com/display/anjuke/58194a136227dca05c3f9480d95d9e78/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (9, 5, '九龙坡', '石坪桥', '保利爱尚里尚彩', 16, '合租', '南', 595, '季付价', 5, 1, 2, '随时入住', '6~12个月', '随时可看', 2, 32, '有', '租用车位', '民水', '民电', '有', '自采暖', '[32, 33, 34]', 'https://pic1.ajkimg.com/display/anjuke/ef5e1e5684c0abccf3831543471609c1/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (10, 6, '江北', '大石坝', '恋恋上', 25, '合租', '东南', 800, '季付价', 3, 1, 1, '随时入住', '2~12个月', '随时可看', 24, 26, '有', '租用车位', '民水', '民电', '有', '自采暖', '[35, 36]', 'https://pic1.ajkimg.com/display/anjuke/f8189273b4b5817f2c84e2ad38b82a7a/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (11, 7, '渝北', '汽博中心', '金山名都', 13, '合租', '南', 950, '季付价', 5, 1, 2, '随时入住', '4~12个月', '随时可看', 9, 18, '有', '租用车位', '民水', '民电', '有', '自采暖', '[37, 38]', 'https://pic1.ajkimg.com/display/anjuke/85ebdc492530164c3186e5be5f70c874/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (12, 8, '江北', '龙头寺', '庆业九寨印象', 15, '合租', '南', 625, '季付价', 4, 1, 2, '随时入住', '4~12个月', '随时可看', 19, 26, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, 'https://pic1.ajkimg.com/display/anjuke/8230f9d7e53f3314931c9948febee5c0/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (13, 9, '九龙坡', '杨家坪', '保利花半里玫瑰园', 23.6, '合租', '东', 990, '季付价', 4, 1, 2, '随时入住', '6~12个月', '随时可看', 31, 33, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, 'https://pic1.ajkimg.com/display/anjuke/30ef5b1eb896dc98c194992043d7aca3/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (14, 10, '九龙坡', '二郎', '保利九悦荟', 38.98, '整租', '西南', 1200, '季付价', 1, 0, 1, '随时入住', '1~2年', '随时可看', 6, 19, '有', '租用车位', '商水', '商电', '有', '自采暖', NULL, 'https://pic1.ajkimg.com/display/anjuke/0b2c0d071341cfd3ad0c86f5765e80da/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (15, 1, '南岸', '七公里', '中梁百悦汇', 34.99, '整租', '东南', 1299, '季付价', 1, 0, 1, '随时入住', '1~2年', '随时可看', 10, 19, '有', '租用车位', '商水', '商电', '无', '自采暖', NULL, 'https://pic1.ajkimg.com/display/anjuke/4368a3388d2c3e9b788c93e03b270be4/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (16, 2, '渝北', '龙头寺', '江南花苑', 18, '合租', '东南', 750, '季付价', 5, 1, 4, '2022/7/25', '1年', '随时可看', 27, 30, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/775796eaf52262b7864d3e3eb1cfb89f/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (17, 3, '江北', '海尔路', '吉安园茅溪小区', 28, '合租', '东', 800, '季付价', 4, 1, 2, '随时入住', '6~12个月', '随时可看', 15, 26, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, 'https://pic1.ajkimg.com/display/anjuke/2e57e14a3874f9ada9fad51d446bd6de/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (18, 4, '九龙坡', '杨家坪', '盛世华城（九龙坡）', 19, '合租', '东', 690, '季付价', 3, 1, 1, '随时入住', '6~12个月', '随时可看', 9, 30, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, 'https://pic1.ajkimg.com/display/anjuke/91cfae900f4ece394a18cf5aee23219f/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (19, 5, '渝北', '龙头寺', '星城汇', 20, '合租', '南', 700, '季付价', 4, 1, 1, '随时入住', '1~12个月', '随时可看', 6, 28, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, 'https://pic1.ajkimg.com/display/anjuke/8a124f937e477eacfd2645c03b2949ec/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (20, 6, '渝北', '龙头寺', '星城汇', 30, '合租', '南', 900, '季付价', 4, 1, 1, '随时入住', '1~12个月', '随时可看', 6, 28, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, 'https://pic1.ajkimg.com/display/anjuke/74b33b450f455f82d0b522e040a76ec8/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (21, NULL, '渝北', '龙兴', '绿城两江御园玉兰园', 117.61, '整租', '南', 3100, '季付价', 3, 2, 2, '随时入住', '3年以内', '需提前预约', 12, 11, '无', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/f1f9cef393c025a4edd4815c1a0fa338/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (22, NULL, '沙坪坝', '大学城', '金科廊桥水乡四组团', 138, '整租', '南', 3100, '半年付价', 5, 2, 3, '随时入住', '1年以内', '需提前预约', 6, 3, '无', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/8c4526926a36f258b4b42bb02fe3fc2c/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (23, NULL, '渝北', '中央公园', '鲁能泰山7号十三街区', 85, '整租', '东', 1300, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 29, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/774656102113b6896c9af777e3e819bb/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (24, NULL, '江北', '海尔路', '北大资源·江山名门B区', 113.95, '整租', '南/北', 2000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 24, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/fbd7bc50ea519371964b474effc12d77/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (25, NULL, '沙坪坝', '大学城', '龙湖U城九组团', 38, '整租', '南', 1100, '季付价', 1, 0, 0, '随时入住', '1年以内', '需提前预约', 6, 27, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/9b194876b0e7bcb4f11448241405ef5b/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (26, NULL, '渝中', '解放碑', '嘉华大厦', 100, '整租', '东南', 3500, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/5ccd6fe2aff0e52abec14a56a6ecd95f/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (27, NULL, '江北', '观音桥', '世纪英皇', 60, '整租', '南', 2600, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 20, 48, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/3f7e21c56ee1054afbc98b3570380070/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (28, NULL, '长寿', '老城片区', '桃花大道', 80, '整租', '北', 1000, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 12, 8, '无', '免费使用', '民水', '民电', '无', '暂无数据', NULL, 'https://pic1.ajkimg.com/display/anjuke/f867ffc42782a94f92792d295e5a00fb/240x180c.jpg?t=1&srotate=1');
INSERT INTO `tb_house` VALUES (29, NULL, '渝中', '上清寺', '美专校街', 90, '整租', '南/北', 1500, '季付价', 3, 2, 1, '随时入住', '2年以内', '需提前预约', 20, 12, '无', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (30, NULL, '沙坪坝', '大学城', '富力院士廷', 107, '整租', '南', 1700, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (31, NULL, '南岸', '南滨路', '武夷滨江', 46, '整租', '东南', 1500, '季付价', 1, 0, 1, '随时入住', '3年以内', '需提前预约', 12, 15, '有', '暂无数据', '民水', '民电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (32, NULL, '沙坪坝', '凤天路', '华宇城', 107, '整租', '南', 2800, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 28, '有', '租用车位', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (33, NULL, '巴南', '龙洲湾', '协信星澜汇一期', 78.74, '整租', '东', 1950, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 12, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (34, NULL, '渝中', '大坪', '万科锦尚', 67, '整租', '南', 2300, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 23, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (35, NULL, '渝北', '空港新城', '爱加橄榄园', 128, '整租', '东', 1400, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 26, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (36, NULL, '沙坪坝', '渝碚路', '向乐村', 62, '整租', '南', 900, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 9, '无', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (37, NULL, '渝北', '中央公园', '金辉中央铭著', 89.43, '整租', '东/东南', 1000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (38, NULL, '渝中', '解放碑', '临江支路30号', 59.7, '整租', '东', 1500, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 27, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (39, NULL, '渝中', '解放碑', '财信渝中城', 128, '整租', '东南', 4150, '季付价', 4, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 53, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (40, NULL, '沙坪坝', '杨公桥', '光华阳光水城三期', 105.19, '整租', '东', 2100, '季付价', 3, 1, 2, '随时入住', '1年以内', '需提前预约', 12, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (41, NULL, '长寿', '桃花新城', '鹏运左岸', 96, '整租', '西', 1600, '季付价', 4, 1, 2, '随时入住', '1年以内', '需提前预约', 12, 11, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (42, NULL, '九龙坡', '石桥铺', '恒鑫名城二期', 71, '整租', '东', 1500, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 6, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (43, NULL, '渝中', '上清寺', '嘉陵桥东村', 60, '整租', '东南', 1000, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 7, '无', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (44, NULL, '渝中', '朝天门', '海客瀛洲', 60, '整租', '西北', 2200, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 55, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (45, NULL, '江北', '石子山', '龙湖源著北区', 58, '整租', '西', 2200, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 39, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (46, NULL, '江北', '大石坝', '搪瓷村', 57, '整租', '南', 850, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 12, 7, '无', '暂无数据', '暂无数据', '暂无数据', '暂无数据', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (47, NULL, '江北', '观音桥', '万汇中心', 172, '整租', '东', 5700, '季付价', 3, 1, 3, '随时入住', '3年以内', '需提前预约', 12, 34, '有', '暂无数据', '商水', '商电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (48, NULL, '南岸', '南滨路', '武夷滨江', 45, '整租', '东南', 1600, '季付价', 1, 1, 1, '随时入住', '1年以内', '一般下班后可看', 12, 15, '有', '暂无数据', '民水', '民电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (49, NULL, '九龙坡', '石坪桥', '骏逸新视界', 118, '整租', '东', 2300, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 26, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (50, NULL, '江北', '观音桥', '重庆时代中心', 52, '整租', '西南', 3300, '季付价', 1, 0, 0, '随时入住', '3年以上', '需提前预约', 6, 33, '无', '租用车位', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (51, NULL, '渝北', '照母山', '金开玖號', 93, '整租', '东北', 3000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 30, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (52, NULL, '渝北', '龙头寺', '梧桐公馆', 45, '整租', '北', 1500, '季付价', 1, 1, 1, '随时入住', '2年以内', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (53, NULL, '九龙坡', '谢家湾', '华润二十四城', 128, '整租', '西南', 3500, '季付价', 3, 1, 2, '随时入住', '暂无数据', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (54, NULL, '渝北', '汽博中心', '叠彩中心', 62, '整租', '西', 2000, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 29, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (55, NULL, '长寿', '古镇片区', '民生佳苑', 70, '整租', '南', 1100, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 32, '有', '免费使用', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (56, NULL, '沙坪坝', '石桥铺', '南方新城西苑', 92, '整租', '南/西南', 1800, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 28, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (57, NULL, '沙坪坝', '梨树湾', '上筑融汇国际温泉', 109, '整租', '东', 2300, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 33, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (58, NULL, '渝北', '中央公园', '鲁能泰山7号十九街区', 73, '整租', '北', 2500, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 12, 17, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (59, NULL, '渝北', '嘉州', '加州城市花园', 246, '整租', '南', 6500, '季付价', 6, 2, 2, '随时入住', '暂无数据', '需提前预约', 12, 29, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (60, NULL, '渝北', '照母山', '恒大世纪城三期', 87, '整租', '南', 2500, '季付价', 2, 2, 1, '随时入住', '2年以内', '需提前预约', 20, 29, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (61, NULL, '江北', '江北嘴', '中海紫御江山天誉', 99, '整租', '南', 3800, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 44, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (62, NULL, '九龙坡', '华岩', '美每家华龙城', 101, '整租', '南', 1850, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (63, NULL, '沙坪坝', '三峡广场', '立海大厦', 51, '整租', '东', 1800, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 12, 30, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (64, NULL, '九龙坡', '华岩', '奥园国际城', 134, '整租', '东', 2600, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 7, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (65, NULL, '渝北', '照母山', '象屿两江公元', 65, '整租', '东南', 2400, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (66, NULL, '沙坪坝', '天星桥', '华宇都市家园', 92, '整租', '东', 2000, 'None', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (67, NULL, '沙坪坝', '大学城', '富力院士廷', 88.99, '整租', '东南/南', 1500, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 33, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (68, NULL, '长寿', '古镇片区', '长寿美丽泽京', 90, '整租', '东南', 800, '季付价', 3, 2, 1, '随时入住', '暂无数据', '需提前预约', 20, 18, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (69, NULL, '南岸', '南坪', '大地兴城', 125, '整租', '南', 2200, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 21, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (70, NULL, '南岸', '茶园新区', '长生雅苑', 78.51, '整租', '南', 1100, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 18, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (71, NULL, '渝北', '鸳鸯', '复地天玺', 110, '整租', '东', 3500, '季付价', 3, 2, 2, '随时入住', '2年以内', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (72, NULL, '沙坪坝', '梨树湾', '融汇温泉城未来里', 115, '整租', '南', 1200, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 30, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (73, NULL, '沙坪坝', '大学城', '富力城天禧', 98, '整租', '南', 1800, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (74, NULL, '沙坪坝', '三峡广场', '金沙国际', 99, '整租', '东南', 3500, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (75, NULL, '渝北', '中央公园', '鲁能城中央公馆三期', 102, '整租', '东', 2900, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (76, NULL, '渝中', '大坪', '协信总部城', 91, '整租', '东', 2300, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 30, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (77, NULL, '沙坪坝', '大学城', '葛洲坝微客公馆', 54, '整租', '南/北', 1400, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 16, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (78, NULL, '北碚', '城南新区', '沿海赛洛城红堡', 78, '整租', '东南', 3000, '季付价', 3, 1, 1, '随时入住', '暂无数据', '需提前预约', 6, 11, '无', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (79, NULL, '渝北', '空港新城', '金色池塘', 120, '整租', '西南', 2600, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 11, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (80, NULL, '南岸', '南坪', '宏声公寓', 112, '整租', '南', 2500, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 28, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (81, NULL, '渝中', '解放碑', '鼎好世纪星城', 115, '整租', '南', 3700, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 58, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (82, NULL, '巴南', '李家沱', '曼哈顿小区', 98, '整租', '东南', 1400, '季付价', 2, 2, 1, '随时入住', '1年以内', '一般下班后可看', 20, 29, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (83, NULL, '渝北', '龙头寺', '天工太阳岛', 89, '整租', '东南', 2400, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 24, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (84, NULL, '渝北', '中央公园', '万科森林公园', 101, '整租', '南/北', 2700, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 20, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (85, NULL, '南岸', '六公里', '互信星座', 67.5, '整租', '南', 1500, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (86, NULL, '渝北', '照母山', '恒大山水城', 81, '整租', '西北', 2000, '季付价', 2, 1, 1, '随时入住', '2年以内', '需提前预约', 6, 28, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (87, NULL, '璧山', '璧山', '璧河国际', 82, '整租', '南/北', 1350, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 19, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (88, NULL, '渝北', '照母山', '玥湖园', 92.35, '整租', '南', 2000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 19, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (89, NULL, '沙坪坝', '大学城', 'U城听蓝时光', 60, '整租', '南', 1700, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (90, NULL, '南岸', '南坪', '天龙城市花园三期', 58, '整租', '东南', 1350, '季付价', 1, 1, 1, '随时入住', '暂无数据', '需提前预约', -1, 34, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (91, NULL, '沙坪坝', '梨树湾', '融汇温泉城童话里', 84, '整租', '东南', 1000, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (92, NULL, '九龙坡', '大坪', '金科visar国际', 86.74, '整租', '东', 2300, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 17, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (93, NULL, '沙坪坝', '天星桥', '和谐苑', 101.73, '整租', '南/北', 2400, 'None', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 28, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (94, NULL, '沙坪坝', '凤天路', '金阳易城国际', 118, '整租', '东', 3000, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (95, NULL, '沙坪坝', '西永', '御铂北区', 125, '整租', '南/北', 1500, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 8, '无', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (96, NULL, '巴南', '龙洲湾', '万达华城', 36.89, '整租', '南', 1100, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 12, 31, '有', '暂无数据', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (97, NULL, '江北', '江北嘴', '中海紫御江山紫峰', 134, '整租', '东', 3600, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 48, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (98, NULL, '北碚', '蔡家', '观承承澜', 98, '整租', '东南', 2000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 34, '有', '租用车位', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (99, NULL, '渝北', '花园新村', '龙脊花园', 129, '整租', '南', 3000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 8, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (100, NULL, '渝北', '中央公园', '金茂国际生态新城臻悦', 98, '整租', '南', 3300, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (101, NULL, '渝北', '嘉州', '加州花园', 96, '整租', '南/北', 2800, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (102, NULL, '巴南', '鱼洞', '恒大新城', 92, '整租', '东南', 1800, '季付价', 3, 1, 2, '随时入住', '2年以内', '需提前预约', 6, 32, '无', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (103, NULL, '江北', '观音桥', '光华观府国际', 112, '整租', '东南/南', 3400, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (104, NULL, '江北', '北滨路', '龙湖春森彼岸', 74, '整租', '南', 2900, '季付价', 2, 2, 1, '随时入住', '2年以内', '需提前预约', 20, 38, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (105, NULL, '江北', '海尔路', '鲁能星城外滩', 40, '整租', '东南', 1800, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 6, 27, '有', '暂无数据', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (106, NULL, '江北', '观音桥', '重庆时代中心', 63.28, '整租', '东南', 4000, '季付价', 1, 0, 0, '随时入住', '2年以内', '需提前预约', 12, 33, '有', '暂无数据', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (107, NULL, '巴南', '鱼洞', '华熙LIVE023', 31, '整租', '南', 1300, '季付价', 2, 1, 2, '随时入住', '1年以内', '需提前预约', 12, 17, '无', '租用车位', '暂无数据', '暂无数据', '暂无数据', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (108, NULL, '沙坪坝', '大学城', '富力城1A-3组团', 49.98, '整租', '南', 1000, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 20, 18, '无', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (109, NULL, '渝北', '汽博中心', '叠彩中心', 62, '整租', '南', 2600, '季付价', 3, 1, 2, '随时入住', '1年以内', '需提前预约', 20, 29, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (110, NULL, '南岸', '南坪', '贝迪新城二期', 91, '整租', '南', 2500, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 25, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (111, NULL, '渝北', '汽博中心', '融创紫枫郡', 122.5, '整租', '南/北', 2900, '季付价', 2, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (112, NULL, '渝中', '解放碑', '鼎好世纪星城', 83, '整租', '东南', 3500, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 58, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (113, NULL, '南岸', '茶园新区', '鲁能领秀城1街区', 35, '整租', '东', 1100, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 16, '有', '免费使用', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (114, NULL, '江北', '观音桥', '港航家园', 119, '整租', '东', 3000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 26, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (115, NULL, '巴南', '李家沱', '金科碧桂园旭辉千江凌云', 99.77, '整租', '南/北', 800, '季付价', 3, 2, 2, '随时入住', '暂无数据', '需提前预约', 6, 33, '无', '租用车位', '暂无数据', '暂无数据', '暂无数据', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (116, NULL, '沙坪坝', '大学城', '龙湖睿城', 64, '整租', '南', 1350, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 22, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (117, NULL, '江北', '北滨路', '财信北岸江山东区', 107, '整租', '西北', 1300, '季付价', 3, 1, 2, '随时入住', '2年以内', '需提前预约', 12, 43, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (118, NULL, '沙坪坝', '三峡广场', '南开苑', 148.05, '整租', '南', 6000, '季付价', 4, 2, 2, '随时入住', '1年以内', '一般下班后可看', 20, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (119, NULL, '渝北', '汽博中心', '保利高尔夫豪园', 202.5, '整租', '南', 5000, '季付价', 4, 2, 3, '随时入住', '1年以内', '需提前预约', 20, 24, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (120, NULL, '合川', '合川', '花滩鎏金香榭', 103.45, '整租', '南/北', 2000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 21, '无', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (121, NULL, '江北', '北滨路', '鎏嘉码头公寓', 66, '整租', '南', 4200, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 42, '有', '暂无数据', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (122, NULL, '渝北', '照母山', '恒大御景半岛', 145, '整租', '南', 3500, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 29, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (123, NULL, '渝中', '解放碑', '文华大厦', 90, '整租', '东南', 1600, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 20, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (124, NULL, '渝北', '黄泥磅', '紫荆商业广场', 43, '整租', '东', 1850, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 12, 27, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (125, NULL, '江北', '黄泥磅', '流星花园', 133, '整租', '东南', 3000, '季付价', 3, 2, 1, '随时入住', '2年以内', '需提前预约', 20, 19, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (126, NULL, '江北', '海尔路', '绿地新里樱园', 48, '整租', '东/西', 800, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 24, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (127, NULL, '渝北', '花卉园', '石油花园', 142, '整租', '南', 2000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (128, NULL, '九龙坡', '杨家坪', '润安大厦', 89, '整租', '东', 1600, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 20, 30, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (129, NULL, '江北', '观音桥', '万汇中心', 79, '整租', '东南', 5900, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 34, '有', '暂无数据', '商水', '商电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (130, NULL, '江北', '观音桥', '万汇中心', 79, '整租', '东南', 5900, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 34, '有', '租用车位', '商水', '商电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (131, NULL, '南岸', '南坪', '亚太商谷', 57, '整租', '东/东南', 1300, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 27, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (132, NULL, '江北', '观音桥', '招商锦星汇', 60, '整租', '北', 2300, '季付价', 2, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (133, NULL, '江北', '北滨路', '恒大御龙天峰', 13, '合租', '东', 895, '季付价', 5, 1, 2, '随时入住', '4~12个月', '随时可看', 37, 44, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (134, NULL, '江北', '海尔路', '保利观澜漫城', 87.59, '整租', '东南', 3000, '季付价', 3, 2, 2, '随时入住', '1年', '随时可看', 3, 33, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (135, NULL, '江北', '石马河', '金科桦林景苑', 24, '合租', '南', 1000, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 21, 32, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (136, NULL, '渝北', '龙头寺', '五童路后勤基地', 30, '合租', '南', 980, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 5, 26, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (137, NULL, '江北', '大石坝', '首创鸿恩国际生活区', 78, '整租', '东/东南', 2000, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 28, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (138, NULL, '江北', '五里店', '阳光100', 47, '整租', '东南', 1550, '季付价', 1, 1, 1, '随时入住', '暂无数据', '需提前预约', 12, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (139, NULL, '九龙坡', '谢家湾', '华润二十四城', 20, '合租', '东', 800, '季付价', 4, 1, 2, '随时入住', '1~12个月', '随时可看', 14, 24, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (140, NULL, '渝北', '龙溪', '长安锦绣城', 15, '合租', '东', 750, '季付价', 4, 1, 2, '随时入住', '1~12个月', '随时可看', 17, 31, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (141, NULL, '渝北', '龙溪', '长安锦绣城', 15, '合租', '东', 760, '季付价', 5, 1, 2, '随时入住', '1~12个月', '随时可看', 14, 31, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (142, NULL, '渝北', '龙溪', '长安锦绣城', 15, '合租', '东', 750, '季付价', 5, 1, 2, '随时入住', '1~12个月', '随时可看', 14, 31, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (143, NULL, '渝北', '嘉州', '财信城市国际', 15, '合租', '东南', 900, '季付价', 5, 1, 2, '随时入住', '1~12个月', '随时可看', 5, 33, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (144, NULL, '江北', '江北嘴', '中海紫御江山紫峰', 130.63, '整租', '南', 3500, '季付价', 3, 2, 2, '随时入住', '1年', '随时可看', 32, 48, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (145, NULL, '江北', '大石坝', '首创鸿恩国际生活区', 86, '整租', '南/北', 2000, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 29, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (146, NULL, '江北', '大石坝', '东原D7一期', 46, '整租', '东南', 1850, 'None', 1, 1, 1, '随时入住', '暂无数据', '需提前预约', 12, 43, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (147, NULL, '江北', '五里店', '庆业巴蜀城', 48, '整租', '东南', 1700, '季付价', 1, 1, 1, '随时入住', '暂无数据', '需提前预约', 20, 23, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (148, NULL, '渝中', '上清寺', '聚金大厦', 160, '整租', '东北', 3000, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 12, 28, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (149, NULL, '江北', '五里店', '渝能明日城市', 43, '整租', '南', 1800, 'None', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (150, NULL, '沙坪坝', '沙正街', '郁金香国际公寓', 65, '整租', '东南', 3200, '季付价', 2, 1, 1, '2022/8/1', '暂无数据', '需提前预约', 20, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (151, NULL, '九龙坡', '二郎', '同心家园A组团', 52, '整租', '东南', 1200, '季付价', 1, 1, 1, '随时入住', '暂无数据', '需提前预约', 12, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (152, NULL, '江津', '双福新区', '奥贝学府一号', 68, '整租', '东南', 1200, '季付价', 2, 2, 1, '随时入住', '暂无数据', '需提前预约', 20, 31, '有', '暂无数据', '暂无数据', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (153, NULL, '江北', '观音桥', '金地花园', 46.65, '整租', '南', 1800, '季付价', 1, 1, 1, '随时入住', '2年以内', '需提前预约', 20, 29, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (154, NULL, '江北', '五里店', '麒麟公馆', 85, '整租', '东南', 2500, '季付价', 2, 2, 1, '随时入住', '暂无数据', '需提前预约', 6, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (155, NULL, '南岸', '南坪', '协信城', 46, '整租', '东南', 1800, '季付价', 1, 1, 1, '随时入住', '暂无数据', '需提前预约', 12, 41, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (156, NULL, '九龙坡', '杨家坪', '艾佳天泰', 42, '整租', '东南', 1350, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 6, 30, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (157, NULL, '南岸', '丹龙路', '恒基翔龙江畔', 85, '整租', '东南', 2000, '季付价', 2, 2, 1, '随时入住', '2年以内', '需提前预约', 12, 25, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (158, NULL, '巴南', '融汇半岛', '融汇半岛香缇漫山', 82.29, '整租', '南', 1800, '季付价', 2, 2, 1, '随时入住', '暂无数据', '需提前预约', 20, 24, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (159, NULL, '九龙坡', '华岩', '和泓四季E区', 43.33, '整租', '南', 1000, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 18, '有', '租用车位', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (160, NULL, '江北', '五里店', '庆业巴蜀城', 30, '合租', '东南', 800, '季付价', 3, 2, 2, '随时入住', '暂无数据', '需提前预约', 20, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (161, NULL, '渝中', '解放碑', '财信渝中城', 47, '整租', '西南', 1800, '季付价', 1, 0, 1, '随时入住', '2年以内', '需提前预约', 12, 42, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (162, NULL, '江北', '海尔路', '保利观澜', 63, '整租', '西/西北', 2100, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 27, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (163, NULL, '大渡口', '九宫庙', '琅樾江山', 69.6, '整租', '南', 1500, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 17, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (164, NULL, '渝北', '礼嘉', '华侨城华悦中心A座', 37, '整租', '东南', 2000, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 6, 19, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (165, NULL, '江北', '大石坝', '华润中央公园', 48.93, '整租', '南', 1600, '季付价', 1, 2, 1, '随时入住', '暂无数据', '需提前预约', 20, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (166, NULL, '江北', '北滨路', '珠江国际', 72.44, '整租', '南', 2600, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 20, 42, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (167, NULL, '江北', '大石坝', '东原D8公馆', 60.79, '整租', '东南', 1900, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 20, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (168, NULL, '江北', '北滨路', '珠江国际', 50, '整租', '南', 1800, '季付价', 1, 1, 1, '2022/7/20', '1年以内', '需提前预约', 6, 39, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (169, NULL, '沙坪坝', '烈士墓', '金悦城', 64, '整租', '西北', 1600, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 6, 30, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (170, NULL, '江北', '北滨路', '恒大御龙天峰', 117, '整租', '东南', 5000, '季付价', 3, 2, 2, '随时入住', '暂无数据', '需提前预约', 12, 54, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (171, NULL, '江北', '观音桥', '城市印象', 39, '整租', '西南', 1600, '季付价', 1, 0, 1, '随时入住', '暂无数据', '需提前预约', 12, 23, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (172, NULL, '江北', '江北嘴', '中海紫御江山御湾', 15, '合租', '南', 792, '季付价', 4, 1, 2, '随时入住', '6~12个月', '随时可看', 33, 33, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (173, NULL, '江北', '观音桥', '滨江竹苑', 25, '合租', '南', 1200, '季付价', 4, 1, 2, '随时入住', '6~12个月', '随时可看', 4, 11, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (174, NULL, '渝北', '龙头寺', '保利香槟花园D区', 25, '合租', '南', 1100, '季付价', 4, 1, 1, '随时入住', '6~12个月', '随时可看', 5, 11, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (175, NULL, '江北', '海尔路', '吉安园茅溪小区', 30, '合租', '南', 1000, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 16, 33, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (176, NULL, '江北', '观音桥', '福康村', 82, '整租', '东/东南', 1800, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 9, '无', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (177, NULL, '渝北', '汽博中心', '奥林匹克花园新亚洲', 20, '合租', '南', 850, '季付价', 4, 1, 2, '随时入住', '6~12个月', '随时可看', 32, 33, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (178, NULL, '渝北', '人和', '华夏城一区', 20, '合租', '南', 800, '季付价', 4, 1, 2, '随时入住', '6~12个月', '随时可看', 23, 28, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (179, NULL, '江北', '大石坝', '东方港湾', 20, '合租', '南', 800, '季付价', 4, 1, 2, '随时入住', '6~12个月', '随时可看', 12, 18, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (180, NULL, '渝北', '礼嘉', '龙湖两江新宸云澜', 87, '整租', '东南', 2800, '季付价', 2, 2, 1, '随时入住', '暂无数据', '需提前预约', 20, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (181, NULL, '九龙坡', '大坪', '丽水菁苑', 47, '整租', '东南', 1500, '季付价', 1, 1, 1, '随时入住', '2年以内', '一般下班后可看', 12, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (182, NULL, '江北', '五里店', '金科花园', 94, '整租', '南', 2200, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 12, 11, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (183, NULL, '江北', '五里店', '珠江太阳城C区', 46.62, '整租', '北', 1800, '季付价', 1, 0, 1, '随时入住', '暂无数据', '需提前预约', 20, 28, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (184, NULL, '南岸', '六公里', '山千院西苑', 25, '合租', '南', 800, '季付价', 5, 1, 2, '随时入住', '1年', '随时可看', 33, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (185, NULL, '渝北', '龙溪', '长安锦绣城', 16, '合租', '东南', 730, '季付价', 5, 1, 3, '随时入住', '1年以上', '需提前预约', 8, 33, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (186, NULL, '渝北', '嘉州', '中渝山顶道国宾城', 12, '合租', '东南', 700, '季付价', 5, 1, 2, '随时入住', '1年以上', '随时可看', 29, 32, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (187, NULL, '渝北', '空港新城', '金科空港城', 35, '合租', '东南', 1050, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 11, 24, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (188, NULL, '渝北', '空港新城', '泽科空港明珠', 20, '合租', '东', 800, '季付价', 4, 1, 1, '随时入住', '1年', '随时可看', 17, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (189, NULL, '南岸', '南滨路', '福红路6到40号', 28, '合租', '东南', 600, '季付价', 5, 1, 2, '随时入住', '1年', '随时可看', 8, 11, '无', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (190, NULL, '渝北', '嘉州', '恒大嘉州城', 25, '合租', '南', 950, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 8, 33, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (191, NULL, '渝北', '空港新城', '桥达蓝湾半岛', 28, '合租', '东南', 950, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 30, 33, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (192, NULL, '南岸', '四公里', '学府苑(南岸)', 25, '合租', '南', 1000, '季付价', 4, 1, 1, '随时入住', '1年', '随时可看', 18, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (193, NULL, '渝北', '空港新城', '千威先生的洋房', 18, '合租', '东', 700, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 5, 11, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (194, NULL, '沙坪坝', '凤天路', '万科金色悦城', 35, '整租', '南', 1199, '季付价', 1, 0, 1, '随时入住', '1年', '随时可看', 12, 28, '有', '租用车位', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (195, NULL, '渝中', '大坪', '万友康年', 18, '合租', '南', 700, '季付价', 3, 1, 1, '随时入住', '1年以上', '随时可看', 15, 35, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (196, NULL, '渝北', '汽博中心', '汇祥幸福里', 14, '合租', '西南', 700, '季付价', 5, 1, 2, '随时入住', '1年', '随时可看', 9, 9, '有', '免费使用', '商水', '商电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (197, NULL, '渝中', '大坪', '爱华龙都', 35.76, '整租', '南/北', 1600, '季付价', 1, 1, 1, '随时入住', '1年以上', '随时可看', 3, 35, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (198, NULL, '江北', '海尔路', '中亿阳明山水', 25, '合租', '东南', 1050, '季付价', 4, 1, 2, '随时入住', '4~12个月', '随时可看', 28, 30, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (199, NULL, '江北', '海尔路', '中亿阳明山水', 25, '合租', '东南', 900, '季付价', 4, 1, 2, '随时入住', '4~12个月', '随时可看', 28, 30, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (200, NULL, '江北', '海尔路', '中亿阳明山水', 21, '合租', '西北', 750, '季付价', 4, 1, 2, '随时入住', '4~12个月', '随时可看', 28, 30, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (201, NULL, '渝北', '新牌坊', '巴蜀丽景', 21, '合租', '西南', 750, '季付价', 4, 1, 2, '随时入住', '4~12个月', '随时可看', 3, 14, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (202, NULL, '渝北', '空港新城', '锦域蓝湾', 17, '合租', '北', 650, '季付价', 4, 1, 2, '随时入住', '4~12个月', '随时可看', 5, 12, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (203, NULL, '渝北', '空港新城', '汇祥好莱坞', 18, '合租', '南', 750, '季付价', 4, 1, 1, '随时入住', '4~12个月', '随时可看', 5, 33, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (204, NULL, '渝北', '中央公园', '鲁能泰山7号五街区', 96, '整租', '东南/南', 1000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 27, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (205, NULL, '渝中', '两路口', '临华路', 81, '整租', '南', 1600, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 12, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (206, NULL, '渝北', '鸳鸯', '复地上城', 139, '整租', '南', 4000, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 23, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (207, NULL, '渝中', '解放碑', '城市传说', 150, '整租', '北', 3800, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 39, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (208, NULL, '渝中', '两路口', '西信洲际花园', 207, '整租', '南', 2200, '季付价', 5, 3, 2, '随时入住', '1年以内', '需提前预约', 6, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (209, NULL, '北碚', '朝阳区', '中山路', 85, '整租', '南', 1000, 'None', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 8, '无', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (210, NULL, '渝北', '照母山', '金州苑依山郡', 115, '整租', '南', 1300, 'None', 3, 1, 2, '随时入住', '1年以内', '需提前预约', 12, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (211, NULL, '九龙坡', '杨家坪', '中迪广场', 57, '整租', '南', 2000, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 12, 27, '有', '暂无数据', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (212, NULL, '南岸', '茶园新区', '同景国际城U组团', 80, '整租', '东南', 1500, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 29, '有', '暂无数据', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (213, NULL, '渝中', '两路口', '张家花园', 55, '整租', '东南', 700, '季付价', 1, 1, 1, '随时入住', '2年以内', '需提前预约', 20, 11, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (214, NULL, '渝北', '照母山', '万科悦府', 276.19, '整租', '东南', 28000, '季付价', 6, 3, 6, '随时入住', '1年以内', '需提前预约', 6, 3, '无', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (215, NULL, '渝北', '人和', '棕榈泉四期', 175.44, '整租', '西', 9500, '季付价', 4, 1, 2, '随时入住', '3年以内', '需提前预约', 12, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (216, NULL, '南岸', '融侨半岛', '融侨半岛香弥山1号', 96.72, '整租', '东', 2000, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (217, NULL, '南岸', '融侨半岛', '融侨半岛香弥山1号', 119, '整租', '西南', 2500, '年付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 15, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (218, NULL, '渝中', '大坪', '万友康年', 16, '合租', '南', 600, '季付价', 3, 1, 1, '随时入住', '2个月以上', '随时可看', 29, 34, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (219, NULL, '江北', '江北嘴', '阳光城天澜道11号', 73.18, '整租', '东南', 1200, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 40, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (220, NULL, '渝中', '化龙桥', '雍江艺庭', 131, '整租', '东', 3800, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (221, NULL, '渝北', '汽博中心', '保利高尔夫华庭', 152.74, '整租', '西/西北', 2000, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (222, NULL, '沙坪坝', '凤天路', '万科金色悦城', 32, '整租', '东', 999, '季付价', 1, 0, 1, '随时入住', '7~12个月', '随时可看', 10, 17, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (223, NULL, '沙坪坝', '凤天路', '万科金色悦城', 35, '整租', '东', 1200, '季付价', 1, 0, 1, '随时入住', '8个月以上', '随时可看', 20, 28, '有', '租用车位', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (224, NULL, '渝北', '空港新城', '泽科港城国际二期', 20, '合租', '南', 850, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 32, 33, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (225, NULL, '渝北', '空港新城', '泽科港城国际二期', 22, '合租', '南', 1000, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 32, 33, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (226, NULL, '沙坪坝', '凤天路', '万科金色悦城', 34.93, '整租', '南/北', 999, '季付价', 1, 0, 1, '随时入住', '3~12个月', '随时可看', 6, 17, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (227, NULL, '渝北', '龙头寺', '招商花园城', 18, '合租', '东南', 800, '季付价', 5, 1, 3, '随时入住', '1年以上', '随时可看', 18, 30, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (228, NULL, '沙坪坝', '凤天路', '万科金色悦城', 35, '整租', '东', 1199, '季付价', 1, 0, 1, '随时入住', '1年', '随时可看', 11, 28, '有', '免费使用', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (229, NULL, '江北', '五里店', '光华龙都', 20, '合租', '南', 700, '季付价', 4, 1, 2, '随时入住', '4~12个月', '随时可看', 8, 18, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (230, NULL, '渝北', '嘉州', '加州花园', 18, '合租', '南', 700, '季付价', 5, 1, 2, '随时入住', '6~12个月', '随时可看', 13, 29, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (231, NULL, '渝北', '回兴', '中航MY TOWN', 20, '合租', '南', 600, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 14, 14, '有', '免费使用', '商水', '商电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (232, NULL, '沙坪坝', '凤天路', '万科金色悦城', 36, '整租', '东', 1200, '季付价', 1, 0, 1, '随时入住', '6~12个月', '随时可看', 14, 28, '有', '免费使用', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (233, NULL, '渝北', '黄泥磅', '琼洋花园', 18, '合租', '南', 699, '季付价', 5, 1, 1, '随时入住', '6~12个月', '随时可看', 13, 18, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (234, NULL, '南岸', '四公里', '学府苑(南岸)', 18, '合租', '东南', 800, '季付价', 4, 2, 2, '随时入住', '1年以上', '随时可看', 11, 27, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (235, NULL, '南岸', '南滨路', '阳光100国际新城', 136.23, '整租', '西南', 4000, '季付价', 4, 2, 1, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (236, NULL, '南岸', '茶园新区', '碧桂园东原合能千屿一期', 115, '整租', '南', 900, '季付价', 3, 1, 2, '随时入住', '1年以内', '需提前预约', 6, 18, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (237, NULL, '九龙坡', '陈家坪', '帝豪名都', 216, '整租', '东/南', 6500, '季付价', 4, 1, 0, '随时入住', '1年以内', '需提前预约', 6, 32, '有', '暂无数据', '商水', '商电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (238, NULL, '江北', '鸿恩寺', '中凯翠海朗园', 144, '整租', '南/北', 2000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (239, NULL, '江北', '江北嘴', '万科御澜道', 114, '整租', '东', 4200, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (240, NULL, '沙坪坝', '沙正街', '半月楼', 56, '整租', '南', 900, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 9, '无', '暂无数据', '暂无数据', '暂无数据', '暂无数据', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (241, NULL, '江北', '江北嘴', '中海紫御江山天誉', 113.26, '整租', '南', 4200, '季付价', 3, 2, 2, '2022/7/31', '1年', '随时可看', 47, 50, '有', '暂无数据', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (242, NULL, '江北', '冉家坝', '重庆蘭园', 166, '整租', '北', 12000, '季付价', 4, 1, 2, '2022/7/19', '1年以上', '随时可看', 7, 16, '无', '租用车位', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (243, NULL, '渝北', '花卉园', '花卉西三路', 25, '合租', '南', 850, '季付价', 5, 1, 2, '随时入住', '1年', '随时可看', 3, 9, '无', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (244, NULL, '渝北', '空港新城', '汇祥林里3000四期', 25, '合租', '南', 1150, '季付价', 4, 1, 2, '随时入住', '1年', '随时可看', 27, 29, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (245, NULL, '沙坪坝', '磁器口', '国富沙磁巷', 21, '合租', '东南', 820, '季付价', 4, 1, 2, '随时入住', '2~12个月', '随时可看', 4, 33, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (246, NULL, '江北', '五里店', '融景城馨苑', 110, '整租', '东', 1300, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 39, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (247, NULL, '南岸', '南滨路', '长嘉汇一期', 213.2, '整租', '西/西北', 1200, '季付价', 7, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 51, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (248, NULL, '江北', '观音桥', '城市经典', 68.14, '整租', '西', 800, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 34, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (249, NULL, '渝北', '照母山', '北大资源博雅二期', 100.49, '整租', '东南/南', 2150, '季付价', 3, 1, 2, '随时入住', '2年以内', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (250, NULL, '南岸', '六公里', '雅居乐国际花园', 144.27, '整租', '南/北', 3500, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 7, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (251, NULL, '巴南', '龙洲湾', '万达华城', 43.3, '整租', '南', 1500, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 12, 30, '有', '暂无数据', '商水', '商电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (252, NULL, '渝中', '两路口', '枣子岚垭正街', 134, '整租', '南/北', 1600, '季付价', 3, 2, 2, '随时入住', '2年以内', '需提前预约', 20, 11, '无', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (253, NULL, '江北', '江北嘴', '寰宇天下天擎', 176, '整租', '南', 9000, '季付价', 3, 2, 2, '随时入住', '3~36个月', '需提前预约', 32, 47, '有', '租用车位', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (254, NULL, '北碚', '城南新区', '恋城公寓', 74.65, '整租', '东南', 1750, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 21, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (255, NULL, '南岸', '南滨路', '长嘉汇五期', 151, '整租', '西南', 2000, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 53, '有', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (256, NULL, '江北', '江北嘴', '中海紫御江山天誉', 133.8, '整租', '南', 5800, '季付价', 4, 2, 2, '随时入住', '1年', '随时可看', 3, 56, '有', '暂无数据', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (257, NULL, '江北', '五里店', '融景城臻苑', 150, '整租', '北', 1500, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 40, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (258, NULL, '渝北', '龙头寺', '梧桐公馆', 99, '整租', '北', 3000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (259, NULL, '渝中', '大坪', '龙湖时代天街', 74, '整租', '东北', 2500, '季付价', 2, 1, 1, '随时入住', '暂无数据', '需提前预约', 6, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (260, NULL, '渝北', '嘉州', '源熙园小区', 15, '合租', '东南', 850, '季付价', 5, 1, 2, '2022/7/14', '1年', '随时可看', 13, 13, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (261, NULL, '渝中', '大坪', '万友康年', 10, '合租', '东南', 700, '季付价', 3, 1, 1, '随时入住', '1年以上', '需提前预约', 9, 35, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (262, NULL, '江北', '北滨路', '龙湖春森彼岸四期', 75.89, '整租', '南', 2800, '季付价', 2, 2, 1, '2022/7/24', '1年', '需提前预约', 46, 50, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (263, NULL, '渝中', '解放碑', '世纪龙门大厦', 122.3, '整租', '东南', 3000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 33, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (264, NULL, '沙坪坝', '大学城', '富力城倾城里', 45, '整租', '西', 1300, '季付价', 1, 0, 1, '随时入住', '3年以上', '需提前预约', 6, 30, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (265, NULL, '江北', '海尔路', '绿地保税中心二期', 156, '整租', '南', 4300, '季付价', 4, 2, 1, '随时入住', '1年以内', '需提前预约', 12, 20, '有', '暂无数据', '商水', '商电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (266, NULL, '南岸', '弹子石', '国际社区观邸三组团', 119.23, '整租', '南', 2500, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (267, NULL, '南岸', '南坪', '和记黄埔御峰三期', 155, '整租', '南', 2000, '季付价', 3, 2, 4, '随时入住', '1年以内', '需提前预约', 6, 3, '无', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (268, NULL, '渝中', '大坪', '彭家花园', 120, '整租', '东', 2000, '季付价', 2, 1, 1, '随时入住', '2年以内', '需提前预约', 12, 10, '无', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (269, NULL, '渝中', '解放碑', '都市丽景', 104, '整租', '东南', 2800, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 6, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (270, NULL, '渝北', '汽博中心', '伽蓝艺墅', 222, '整租', '南', 10000, '季付价', 4, 2, 3, '随时入住', '1年以内', '需提前预约', 12, 4, '无', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (271, NULL, '九龙坡', '谢家湾', '华润二十四城', 98, '整租', '东南', 3500, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 26, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (272, NULL, '江北', '观音桥', '银鑫楼', 170.61, '整租', '南', 4000, '季付价', 5, 1, 2, '随时入住', '3年以上', '需提前预约', 6, 11, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (273, NULL, '渝北', '大竹林', '江山樾三期北', 116.41, '整租', '南', 1000, '季付价', 4, 1, 2, '随时入住', '1年以内', '需提前预约', 6, 32, '有', '租用车位', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (274, NULL, '沙坪坝', '凤天路', '万科金色悦城一期', 77, '整租', '东南', 2100, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 27, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (275, NULL, '渝北', '新牌坊', '碧桂园嘉誉', 30.16, '整租', '南', 1600, '季付价', 1, 0, 1, '随时入住', '3~12个月', '随时可看', 23, 25, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (276, NULL, '江北', '北滨路', '龙湖春森彼岸', 78.83, '整租', '南', 3600, '季付价', 2, 2, 1, '随时入住', '1年', '需提前预约', 21, 56, '有', '暂无数据', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (277, NULL, '江北', '北滨路', '龙湖春森彼岸', 124.6, '整租', '南', 3500, '季付价', 3, 2, 2, '随时入住', '1年', '随时可看', 32, 37, '有', '租用车位', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (278, NULL, '江北', '北滨路', '恒大御龙天峰', 117.54, '整租', '东', 4500, '季付价', 3, 2, 2, '随时入住', '2年以内', '需提前预约', 12, 42, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (279, NULL, '南岸', '南坪', '和记黄埔御峰一期', 120.89, '整租', '东南', 1000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (280, NULL, '沙坪坝', '双碑', '渝富滨江首岸', 42, '整租', '南/北', 700, '季付价', 2, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 17, '有', '租用车位', '民水', '民电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (281, NULL, '沙坪坝', '梨树湾', '融汇温泉城童话里', 83, '整租', '东南', 1000, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 20, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (282, NULL, '南岸', '南坪', '怡丰海韵豪苑', 120, '整租', '东', 2500, '季付价', 4, 3, 3, '随时入住', '1年以内', '需提前预约', 6, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (283, NULL, '南岸', '四公里', '巨成龙湾', 89.44, '整租', '东南', 2200, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 34, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (284, NULL, '璧山', '璧山', '金剑滨河印象', 122, '整租', '南', 2000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 31, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (285, NULL, '沙坪坝', '工人村', '千竹景苑', 99, '整租', '东南', 1600, 'None', 3, 2, 1, '随时入住', '暂无数据', '需提前预约', 6, 30, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (286, NULL, '九龙坡', '石桥铺', '国窖明城', 129.23, '整租', '北', 1800, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 20, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (287, NULL, '南岸', '南坪', '亚太商谷', 38, '整租', '东南', 1250, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 12, 30, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (288, NULL, '渝北', '中央公园', '鲁能泰山7号十二街区', 56, '整租', '西', 2000, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 20, 30, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (289, NULL, '九龙坡', '石桥铺', '奇峰自由湾', 75, '整租', '南', 1500, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (290, NULL, '沙坪坝', '大学城', '富力城天禧', 97, '整租', '南', 1000, '季付价', 3, 1, 2, '随时入住', '1年以内', '需提前预约', 12, 33, '有', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (291, NULL, '渝北', '中央公园', '公园大道上东汇北区二组团', 89, '整租', '东南', 2800, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 20, 8, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (292, NULL, '南岸', '南滨路', '长嘉汇二期', 47, '整租', '西', 2300, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 19, '有', '租用车位', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (293, NULL, '渝北', '照母山', '华宇上院', 71.61, '整租', '东', 2000, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 20, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (294, NULL, '北碚', '朝阳区', '缙麓商都小区', 140, '整租', '南', 3200, '季付价', 4, 2, 2, '随时入住', '暂无数据', '需提前预约', 12, 16, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (295, NULL, '渝北', '悦来', '首地江山赋(二手)', 77, '整租', '南', 2200, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (296, NULL, '九龙坡', '马王乡', '北大资源燕南', 39.35, '整租', '东', 1300, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 6, 30, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (297, NULL, '巴南', '龙洲湾', '万达华城一期', 90, '整租', '东', 2300, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 20, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (298, NULL, '南岸', '南滨路', '东原1891', 38, '整租', '东', 1300, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 12, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (299, NULL, '渝中', '化龙桥', '翠湖天地', 86.12, '整租', '北', 2150, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (300, NULL, '渝中', '两路口', '红球坝社区', 91.29, '整租', '南/北', 1600, '季付价', 3, 1, 1, '随时入住', '3年以内', '需提前预约', 20, 10, '无', '免费使用', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (301, NULL, '九龙坡', '杨家坪', '四季花园', 82.43, '整租', '东南', 2100, '季付价', 2, 2, 1, '随时入住', '1年以内', '需提前预约', 12, 29, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (302, NULL, '南岸', '南坪', '康德国会山', 15, '合租', '东南', 650, '季付价', 3, 1, 1, '随时入住', '3~12个月', '随时可看', 9, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (303, NULL, '江北', '北滨路', '财信北岸江山东区', 32.56, '整租', '东', 1350, '季付价', 1, 0, 1, '随时入住', '2年以内', '需提前预约', 6, 33, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (304, NULL, '江北', '江北嘴', '中海紫御江山天誉', 112.31, '整租', '南', 8000, '季付价', 3, 2, 2, '随时入住', '1年', '随时可看', 11, 44, '有', '租用车位', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (305, NULL, '渝中', '两路口', '枇杷山正街', 131, '整租', '南', 1400, '季付价', 3, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 10, '无', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (306, NULL, '九龙坡', '蟠龙', '中粮鸿云', 35.96, '整租', '东/东南/南/西南/西', 1297, '季付价', 1, 0, 1, '随时入住', '1~2年', '随时可看', 3, 19, '有', '租用车位', '商水', '商电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (307, NULL, '南岸', '南坪', '和记黄埔御峰', 40, '整租', '南', 1550, '季付价', 1, 1, 1, '2022/7/31', '1~12个月', '随时可看', 16, 19, '有', '免费使用', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (308, NULL, '江北', '五里店', '融景城郦苑', 151.35, '整租', '东', 5000, '季付价', 3, 2, 2, '随时入住', '1年', '需提前预约', 5, 40, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (309, NULL, '江北', '五里店', '融景城郦苑', 149.9, '整租', '东', 4200, '季付价', 4, 2, 2, '随时入住', '1年', '需提前预约', 15, 40, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (310, NULL, '江北', '北滨路', '恒大御龙天峰', 145, '整租', '东南', 4200, '季付价', 4, 1, 2, '2022/7/28', '1年', '需提前预约', 34, 49, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (311, NULL, '江北', '北滨路', '恒大御龙天峰', 140.9, '整租', '东南', 5800, '季付价', 4, 2, 2, '随时入住', '1年', '随时可看', 13, 59, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (312, NULL, '江北', '北滨路', '恒大御龙天峰', 129.69, '整租', '东', 4500, '季付价', 3, 2, 2, '2022/7/29', '1年', '随时可看', 58, 59, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (313, NULL, '江北', '北滨路', '恒大御龙天峰', 115, '整租', '东', 4500, '季付价', 3, 2, 1, '随时入住', '1年', '随时可看', 37, 38, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (314, NULL, '江北', '五里店', '融景城朗峰', 69.26, '整租', '东南', 2500, '季付价', 2, 2, 1, '随时入住', '1年', '随时可看', 33, 33, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (315, NULL, '江北', '五里店', '融景城臻苑', 89.97, '整租', '东南', 3800, '季付价', 3, 2, 2, '随时入住', '1年', '需提前预约', 31, 31, '有', '暂无数据', '民水', '民电', '有', '集中供暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (316, NULL, '江北', '龙头寺', '丰业御景铭洲', 45, '整租', '东南', 2100, '季付价', 2, 1, 1, '随时入住', '3~12个月', '随时可看', 6, 16, '有', '租用车位', '民水', '民电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (317, NULL, '沙坪坝', '梨树湾', '融汇温泉城未来里', 36.65, '整租', '东/东南/南/西南/西', 1548, '季付价', 1, 0, 1, '随时入住', '1~2年', '随时可看', 41, 41, '有', '租用车位', '商水', '商电', '有', '自采暖', NULL, NULL);
INSERT INTO `tb_house` VALUES (318, NULL, '沙坪坝', '大学城', '富力城地壹站', 76.49, '整租', '南', 1500, 'None', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 20, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (319, NULL, '璧山', '璧山', '金科中央公园城（璧山）10号门', 99, '整租', '东南', 3200, '季付价', 3, 2, 1, '随时入住', '2年以内', '需提前预约', 12, 7, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (320, NULL, '渝北', '空港新城', '招商雍璟城', 99, '整租', '东南', 1100, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 20, 16, '有', '租用车位', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (321, NULL, '沙坪坝', '大学城', '龙湖观蓝', 89, '整租', '北', 900, '季付价', 3, 1, 2, '随时入住', '1年以内', '需提前预约', 20, 11, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (322, NULL, '渝北', '空港新城', '泽科空港中心', 92, '整租', '南/北', 2500, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 24, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (323, NULL, '沙坪坝', '大学城', '富力城1A-3组团', 49, '整租', '北', 1000, '季付价', 1, 0, 0, '随时入住', '1年以内', '需提前预约', 20, 18, '无', '暂无数据', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (324, NULL, '渝北', '回兴', '金鹏两江时光', 54, '整租', '南', 1600, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 27, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (325, NULL, '渝北', '鸳鸯', '复地上城', 132, '整租', '东南', 3800, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 6, 18, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (326, NULL, '江北', '南桥寺', '升伟新意境', 96, '整租', '东', 2500, '季付价', 2, 1, 2, '随时入住', '2年以内', '需提前预约', 20, 31, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (327, NULL, '江北', '大石坝', '东原D7四期', 102, '整租', '东南', 2500, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 12, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (328, NULL, '江北', '北滨路', '北国风光', 80.79, '整租', '南', 2500, '季付价', 2, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 33, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (329, NULL, '沙坪坝', '三峡广场', '华夏银座', 196, '整租', '南', 6200, '季付价', 4, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 32, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (330, NULL, '南岸', '南滨路', '南滨国际', 36.9, '整租', '东南', 2250, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 6, 25, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (331, NULL, '江北', '南桥寺', '保利香雪', 90, '整租', '东', 2800, '季付价', 3, 2, 1, '随时入住', '1年以内', '需提前预约', 12, 32, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (332, NULL, '沙坪坝', '凤天路', '万科金色悦城', 34, '整租', '南', 1100, '季付价', 1, 0, 1, '随时入住', '1年以内', '需提前预约', 12, 17, '有', '暂无数据', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (333, NULL, '江北', '观音桥', '万汇中心', 70, '整租', '西南', 4800, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 34, '有', '暂无数据', '商水', '商电', '无', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (334, NULL, '渝中', '朝天门', '重庆来福士广场', 120, '整租', '东', 6000, '季付价', 2, 1, 2, '随时入住', '1年以内', '需提前预约', 6, 47, '有', '租用车位', '暂无数据', '暂无数据', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (335, NULL, '九龙坡', '杨家坪', '西郊支路', 127.05, '整租', '南/北', 2000, '季付价', 3, 2, 2, '随时入住', '1年以内', '需提前预约', 12, 8, '无', '暂无数据', '暂无数据', '暂无数据', '暂无数据', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (336, NULL, '九龙坡', '二郎', '朵力尚美国际', 74, '整租', '北', 1600, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 6, 11, '有', '租用车位', '民水', '民电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (337, NULL, '江北', '观音桥', '龙湖新壹街', 33, '整租', '西北', 2800, '季付价', 1, 1, 1, '随时入住', '1年以内', '需提前预约', 12, 28, '有', '租用车位', '商水', '商电', '有', '暂无数据', NULL, NULL);
INSERT INTO `tb_house` VALUES (338, 4, '江北', '五里店', '怡和小区', 120, '合租', '东南', 1500, '季付价', 3, 1, 2, '随时入住', '1~12个月', '随时可看', 7, 20, '有', '租用车位', '民水', '民电', '有', '自采暖', '', NULL);
INSERT INTO `tb_house` VALUES (339, 3, '', '海棠溪街道', '慧园', 100, NULL, '', 120, NULL, 3, 2, 2, '随时入住', '4年', '随时可看', 7, 33, NULL, '暂无数据', '民水', '民电', '有', '集中供暖', '', NULL);
INSERT INTO `tb_house` VALUES (340, 3, '', '海棠溪街道', '慧园', 100, NULL, '', 120, NULL, 3, 2, 2, '随时入住', '4年', '随时可看', 7, 33, NULL, '暂无数据', '民水', '民电', '有', '集中供暖', '', NULL);
INSERT INTO `tb_house` VALUES (341, 3, '南岸区', '海棠溪街道', '慧园', 100, NULL, '南', 120, NULL, 3, 2, 2, '随时入住', '4年', '随时可看', 7, 33, NULL, '暂无数据', '民水', '民电', '有', '集中供暖', '', NULL);

-- ----------------------------
-- Table structure for tb_pinglun
-- ----------------------------
DROP TABLE IF EXISTS `tb_pinglun`;
CREATE TABLE `tb_pinglun`  (
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `house_id` int(0) NOT NULL COMMENT '房屋信息编码\r\n',
  `pinglun` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论内容',
  PRIMARY KEY (`user_id`, `house_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_pinglun
-- ----------------------------
INSERT INTO `tb_pinglun` VALUES (1, 1, '评论11');
INSERT INTO `tb_pinglun` VALUES (2, 1, '评论21');
INSERT INTO `tb_pinglun` VALUES (2, 2, '评论22');
INSERT INTO `tb_pinglun` VALUES (2, 3, '评论23');
INSERT INTO `tb_pinglun` VALUES (3, 1, '评论31');
INSERT INTO `tb_pinglun` VALUES (3, 2, '评论32');
INSERT INTO `tb_pinglun` VALUES (4, 1, '评论41');
INSERT INTO `tb_pinglun` VALUES (5, 3, '评论53');
INSERT INTO `tb_pinglun` VALUES (6, 4, '评论64');
INSERT INTO `tb_pinglun` VALUES (7, 5, '评论75');
INSERT INTO `tb_pinglun` VALUES (8, 6, '评论86');
INSERT INTO `tb_pinglun` VALUES (9, 7, '评论97');
INSERT INTO `tb_pinglun` VALUES (10, 8, '评论108');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sex` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_role` int(0) NOT NULL COMMENT '1为普通用户，0为房东',
  `havahousenumber` int(0) NULL DEFAULT NULL COMMENT '拥有房子的数量（房东）\r\n',
  `userhousenumber` int(0) NULL DEFAULT NULL COMMENT '使用房子的数量（租客）',
  `fd_id` int(0) NULL DEFAULT NULL COMMENT '若成为房东，则赋予房东编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '吴彦祖', 44, '男', '中国', '199', 'wyz', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (2, '泰勒丝', 33, '女', '美国', '123', 'meimei', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (3, '周杰伦', 41, '男', '台湾', '12345', 'jay', '827ccb0eea8a706c4c34a16891f84e7b', 1, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (4, 'kanye', 43, '男', '美国', '123', 'ye', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (5, '陶喆', 45, '男', '台湾', '154', 'dt', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (6, 'Justin Bieber', 26, '男', '美国', '312', 'jb', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (7, 'kendrick', 39, '男', '美国', '913', 'lamar', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (8, '公鸭', 38, '男', '美国', '131', 'drake', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (9, 'j.cole', 39, '男', '美国', '155', 'jc', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (10, '哈卷', 33, '男', '英国', '196', 'hs', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (11, '打雷', 32, '女', '美国', '651', 'lana', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (13, NULL, NULL, NULL, NULL, NULL, 'wyt', '202cb962ac59075b964b07152d234b70', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (15, NULL, NULL, NULL, NULL, NULL, 'richard', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (16, NULL, NULL, NULL, NULL, NULL, 'lin', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (17, '李安', 56, '男', '重庆交通大学', '110', 'anli', '827ccb0eea8a706c4c34a16891f84e7b', 0, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
