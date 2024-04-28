/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : report

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 28/04/2024 20:34:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, '杜永蓝', '200.0');
INSERT INTO `account` VALUES (2, '任正非', '123.0');
INSERT INTO `account` VALUES (3, '杜永蓝', '200.0');
INSERT INTO `account` VALUES (4, '刘备魂穿赵构', '123.0');
INSERT INTO `account` VALUES (5, '任正非', '321.0');
INSERT INTO `account` VALUES (6, '任正非', '123.0');
INSERT INTO `account` VALUES (7, '任正非', '123.0');
INSERT INTO `account` VALUES (8, '任正非', '123.0');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(0) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `use_flag` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '1启用，0未启用',
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '餐饮-必需', '1', 1);
INSERT INTO `category` VALUES (2, '餐饮-非必需', '1', 1);
INSERT INTO `category` VALUES (3, '购物-必需', '1', 1);
INSERT INTO `category` VALUES (4, '购物-非必需', '1', 1);
INSERT INTO `category` VALUES (5, '交通', '1', 1);
INSERT INTO `category` VALUES (6, '住房', '1', 1);
INSERT INTO `category` VALUES (7, '医疗', '1', 1);
INSERT INTO `category` VALUES (8, '生活-必需', '1', 1);
INSERT INTO `category` VALUES (9, '生活-非必需', '1', 1);
INSERT INTO `category` VALUES (10, '娱乐', '1', 1);
INSERT INTO `category` VALUES (11, '旅游', '1', 1);

-- ----------------------------
-- Table structure for func
-- ----------------------------
DROP TABLE IF EXISTS `func`;
CREATE TABLE `func`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `menu_id` int(0) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of func
-- ----------------------------
INSERT INTO `func` VALUES (1, 1, '项目人员管理', 'func1');
INSERT INTO `func` VALUES (2, 1, '人员报表查询', 'func2');
INSERT INTO `func` VALUES (3, 2, '人员信息监测', 'func3');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '人员信息管理', 'el-icon-user');
INSERT INTO `menu` VALUES (2, '实时监测', 'el-icon-monitor');

-- ----------------------------
-- Table structure for report_in
-- ----------------------------
DROP TABLE IF EXISTS `report_in`;
CREATE TABLE `report_in`  (
  `report_in_id` int(0) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `category_id` int(0) NULL DEFAULT NULL,
  `amount` double NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  `asset_id_out` int(0) NULL DEFAULT NULL,
  `asset_id_in` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`report_in_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_in
-- ----------------------------
INSERT INTO `report_in` VALUES (1, '2024-02-28', NULL, 88, '', 1, 3, 6);
INSERT INTO `report_in` VALUES (2, '2024-02-26', NULL, 35, '', 1, 3, 4);
INSERT INTO `report_in` VALUES (3, '2024-02-27', NULL, 5, '', 1, 3, 4);
INSERT INTO `report_in` VALUES (4, '2024-03-03', NULL, 50, '', 1, NULL, 4);
INSERT INTO `report_in` VALUES (5, '2024-03-04', NULL, 23.98, '', 1, 4, 3);
INSERT INTO `report_in` VALUES (6, '2024-02-28', NULL, 112, '', 1, NULL, 6);
INSERT INTO `report_in` VALUES (7, '2024-03-04', NULL, 15.12, '', 1, 5, 3);
INSERT INTO `report_in` VALUES (8, '2024-02-28', NULL, 800, '', 1, 1, 6);
INSERT INTO `report_in` VALUES (9, '2024-02-29', NULL, 1000, '', 1, NULL, 6);
INSERT INTO `report_in` VALUES (10, '2024-03-04', NULL, 406, '', 1, NULL, 1);
INSERT INTO `report_in` VALUES (11, '2024-03-13', NULL, 1.28, '', 1, NULL, 1);
INSERT INTO `report_in` VALUES (12, '2024-03-22', NULL, 0.11, '', 1, NULL, 4);
INSERT INTO `report_in` VALUES (13, '2024-03-23', NULL, 2000, '老妈转帐', 1, NULL, 4);
INSERT INTO `report_in` VALUES (14, '2024-03-25', NULL, 100, '', 1, NULL, 4);
INSERT INTO `report_in` VALUES (15, '2024-03-25', NULL, 1500, '', 1, 1, 3);
INSERT INTO `report_in` VALUES (16, '2024-03-20', NULL, 206.12, '', 1, 1, 3);
INSERT INTO `report_in` VALUES (17, '2024-03-20', NULL, 0.28, '结息', 1, NULL, 3);
INSERT INTO `report_in` VALUES (18, '2024-03-21', NULL, 0.42, '结息', 1, NULL, 1);
INSERT INTO `report_in` VALUES (19, '2024-03-25', NULL, 6331.55, '工资', 1, NULL, 1);
INSERT INTO `report_in` VALUES (20, '2024-03-25', NULL, 1600, '', 1, 6, 1);
INSERT INTO `report_in` VALUES (21, '2024-03-26', NULL, 230, '返厦补贴', 1, NULL, 2);
INSERT INTO `report_in` VALUES (22, '2024-03-26', NULL, 421.47, '', 1, 3, 1);
INSERT INTO `report_in` VALUES (23, '2024-03-29', NULL, 700, '', 1, 3, 4);
INSERT INTO `report_in` VALUES (24, '2024-03-29', NULL, 168, '佳丽发的红包', 1, NULL, 4);
INSERT INTO `report_in` VALUES (25, '2024-03-29', NULL, 168.8, '妈发的红包', 1, NULL, 4);
INSERT INTO `report_in` VALUES (26, '2024-03-30', NULL, 1500, '妈借给我', 1, NULL, 4);
INSERT INTO `report_in` VALUES (27, '2024-03-28', NULL, 230, '', 1, 2, 1);
INSERT INTO `report_in` VALUES (28, '2024-03-28', NULL, 15, '京东莫名其妙的返现', 1, NULL, 1);
INSERT INTO `report_in` VALUES (29, '2024-03-21', NULL, 0.01, '结息', 1, NULL, 5);
INSERT INTO `report_in` VALUES (30, '2024-04-07', NULL, 65, '社员大会奖金', 1, NULL, 4);
INSERT INTO `report_in` VALUES (31, '2024-04-08', NULL, 406, '公积金', 1, NULL, 1);
INSERT INTO `report_in` VALUES (32, '2024-04-13', NULL, 100, '', 1, 4, 3);
INSERT INTO `report_in` VALUES (33, '2024-04-12', NULL, 3.33, '红包', 1, NULL, 4);
INSERT INTO `report_in` VALUES (34, '2024-04-11', NULL, 1.07, '理财', 1, NULL, 1);
INSERT INTO `report_in` VALUES (35, '2024-04-18', NULL, 50, '红包', 1, NULL, 4);
INSERT INTO `report_in` VALUES (36, '2024-04-24', NULL, 12.09, '红包', 1, NULL, 4);
INSERT INTO `report_in` VALUES (37, '2024-04-24', NULL, 50, '代写，定金', 1, NULL, 4);
INSERT INTO `report_in` VALUES (38, '2024-04-16', NULL, 200, '', 1, 1, 3);
INSERT INTO `report_in` VALUES (39, '2024-04-17', NULL, 200, '', 1, 1, 3);
INSERT INTO `report_in` VALUES (40, '2024-04-24', NULL, 300, '', 1, 1, 3);
INSERT INTO `report_in` VALUES (41, '2024-04-17', NULL, 50, '', 1, 3, 4);
INSERT INTO `report_in` VALUES (42, '2024-04-13', NULL, 100, '妈妈给的红包', 1, NULL, 4);
INSERT INTO `report_in` VALUES (43, '2024-04-24', NULL, 487.51, '', 1, 1, 5);
INSERT INTO `report_in` VALUES (44, '2024-04-24', NULL, 114.49, '', 1, 3, 5);
INSERT INTO `report_in` VALUES (45, '2024-04-25', NULL, 21.82, '', 1, 3, 4);
INSERT INTO `report_in` VALUES (46, '2024-04-25', NULL, 6427.8, '工资', 1, NULL, 1);
INSERT INTO `report_in` VALUES (47, '2024-04-25', NULL, 2000, '', 1, 1, 3);
INSERT INTO `report_in` VALUES (48, '2024-04-28', NULL, 1006.92, '', 1, 3, 5);

-- ----------------------------
-- Table structure for report_out
-- ----------------------------
DROP TABLE IF EXISTS `report_out`;
CREATE TABLE `report_out`  (
  `report_out_id` int(0) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `category_id` int(0) NOT NULL,
  `amount` double NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  `asset_id` int(0) NOT NULL COMMENT '扣费账户',
  PRIMARY KEY (`report_out_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_out
-- ----------------------------
INSERT INTO `report_out` VALUES (1, '2024-02-01', 5, 493.81, '返厦车票', 1, 3);
INSERT INTO `report_out` VALUES (2, '2024-02-01', 1, 8, '早饭，芝麻球+三明治', 1, 3);
INSERT INTO `report_out` VALUES (3, '2024-02-01', 4, 20.08, '厨房置物架', 1, 3);
INSERT INTO `report_out` VALUES (4, '2024-02-01', 3, 8.8, '百洁布', 1, 3);
INSERT INTO `report_out` VALUES (5, '2024-02-01', 3, 29.85, '自行车停车架', 1, 3);
INSERT INTO `report_out` VALUES (6, '2024-02-01', 3, 17.59, '门底密封条', 1, 3);
INSERT INTO `report_out` VALUES (7, '2024-02-01', 8, 15.8, '纸巾', 1, 3);
INSERT INTO `report_out` VALUES (8, '2024-02-02', 5, 15.11, '打车，中科院-公寓', 1, 3);
INSERT INTO `report_out` VALUES (9, '2024-02-02', 2, 17, '红豆烧仙草', 1, 3);
INSERT INTO `report_out` VALUES (10, '2024-02-02', 2, 66.9, '欢喜泥炉烤肉', 1, 1);
INSERT INTO `report_out` VALUES (11, '2024-02-02', 1, 4, '早饭，芝麻球+油条', 1, 4);
INSERT INTO `report_out` VALUES (12, '2024-02-02', 5, 8.73, '地铁+brt', 1, 4);
INSERT INTO `report_out` VALUES (13, '2024-02-02', 6, 50, '客厅电费', 1, 4);
INSERT INTO `report_out` VALUES (14, '2024-02-02', 6, 50, '房间电费', 1, 4);
INSERT INTO `report_out` VALUES (15, '2024-02-03', 5, 46.09, '打车，长清家-公寓', 1, 3);
INSERT INTO `report_out` VALUES (16, '2024-02-03', 4, 5, '六角扳手', 1, 4);
INSERT INTO `report_out` VALUES (17, '2024-02-03', 1, 21.4, '午饭，麻辣烫', 1, 3);
INSERT INTO `report_out` VALUES (18, '2024-02-03', 5, 8.67, '打车，公寓-公司', 1, 4);
INSERT INTO `report_out` VALUES (19, '2024-02-04', 1, 23.4, '晚饭，堡马先生', 1, 4);
INSERT INTO `report_out` VALUES (20, '2024-02-04', 1, 8, '晚饭，烤肠*2', 1, 4);
INSERT INTO `report_out` VALUES (21, '2024-02-04', 1, 5, '早饭，面包+可乐', 1, 4);
INSERT INTO `report_out` VALUES (22, '2024-02-05', 1, 26.08, '糖巢，干粮', 1, 3);
INSERT INTO `report_out` VALUES (23, '2024-02-05', 2, 9.9, '咖啡，瑞幸', 1, 4);
INSERT INTO `report_out` VALUES (24, '2024-02-05', 1, 4, '早饭，芝麻球+油条', 1, 4);
INSERT INTO `report_out` VALUES (25, '2024-02-05', 1, 24, '午饭，麦当劳', 1, 3);
INSERT INTO `report_out` VALUES (27, '2024-02-06', 1, 18, '午饭，西北拉面', 1, 4);
INSERT INTO `report_out` VALUES (28, '2024-02-06', 1, 7, '早饭，鸡肉三明治', 1, 4);
INSERT INTO `report_out` VALUES (29, '2024-02-07', 5, 50.5, '娄底南-隆回', 1, 4);
INSERT INTO `report_out` VALUES (30, '2024-02-07', 5, 7.58, '打车，公寓-地铁站', 1, 4);
INSERT INTO `report_out` VALUES (31, '2024-02-07', 5, 157.5, '车票手续费', 1, 1);
INSERT INTO `report_out` VALUES (32, '2024-02-08', 4, 56.09, '给伊阳买的零食', 1, 3);
INSERT INTO `report_out` VALUES (33, '2024-02-08', 5, 12, '公交', 1, 3);
INSERT INTO `report_out` VALUES (34, '2024-02-08', 3, 456, '给妈妈配眼镜', 1, 3);
INSERT INTO `report_out` VALUES (35, '2024-02-10', 8, 30, '话费', 1, 4);
INSERT INTO `report_out` VALUES (36, '2024-02-12', 10, 6, '打牌玩', 1, 4);
INSERT INTO `report_out` VALUES (37, '2024-02-12', 6, 1020, '房租+水费', 1, 1);
INSERT INTO `report_out` VALUES (38, '2024-02-13', 4, 20.8, '狗项圈', 1, 3);
INSERT INTO `report_out` VALUES (39, '2024-02-15', 5, 12.91, '打车，软三地铁-公寓', 1, 4);
INSERT INTO `report_out` VALUES (40, '2024-02-15', 1, 13.9, '夜宵，麦当劳', 1, 4);
INSERT INTO `report_out` VALUES (41, '2024-02-16', 1, 100, '饭卡', 1, 4);
INSERT INTO `report_out` VALUES (42, '2024-02-16', 10, 21.6, 'vpn', 1, 4);
INSERT INTO `report_out` VALUES (43, '2024-02-16', 4, 11.9, '拖鞋', 1, 1);
INSERT INTO `report_out` VALUES (44, '2024-02-17', 1, 5.4, '胡萝卜+五香粉', 1, 3);
INSERT INTO `report_out` VALUES (45, '2024-02-18', 10, 50, '给妈妈发红包', 1, 4);
INSERT INTO `report_out` VALUES (46, '2024-02-18', 9, 8, '给黄嘉仪寄手表', 1, 4);
INSERT INTO `report_out` VALUES (47, '2024-02-18', 2, 9.9, '茉莉拿铁（不好喝），瑞幸', 1, 4);
INSERT INTO `report_out` VALUES (48, '2024-02-18', 1, 6, '早餐，小笼包', 1, 4);
INSERT INTO `report_out` VALUES (49, '2024-02-23', 1, 6, '早饭-小笼包', 1, 4);
INSERT INTO `report_out` VALUES (50, '2024-02-29', 5, 798.68, '来回南京机票', 1, 3);
INSERT INTO `report_out` VALUES (51, '2024-02-23', 9, 160, '烫头', 1, 3);
INSERT INTO `report_out` VALUES (52, '2024-02-23', 1, 16, '晚饭-炒饭', 1, 4);
INSERT INTO `report_out` VALUES (53, '2024-02-23', 5, 4.31, '公路车内胎*2', 1, 5);
INSERT INTO `report_out` VALUES (54, '2024-02-24', 10, 199, '方特11', 1, 3);
INSERT INTO `report_out` VALUES (55, '2024-02-24', 10, 40.86, '零食（干粮）', 1, 3);
INSERT INTO `report_out` VALUES (56, '2024-02-24', 10, 26, '午饭-一品生煎', 1, 3);
INSERT INTO `report_out` VALUES (57, '2024-02-24', 10, 8, '矿泉水', 1, 3);
INSERT INTO `report_out` VALUES (58, '2024-02-24', 10, 28, '晚饭-馄饨', 1, 3);
INSERT INTO `report_out` VALUES (59, '2024-02-24', 10, 35, '方特-停车费', 1, 3);
INSERT INTO `report_out` VALUES (60, '2024-02-24', 10, 42.26, '晚饭-麦当劳', 1, 3);
INSERT INTO `report_out` VALUES (61, '2024-02-24', 10, 80.47, '租车-油费', 1, 3);
INSERT INTO `report_out` VALUES (62, '2024-02-24', 10, 300, '租车费用', 1, 4);
INSERT INTO `report_out` VALUES (63, '2024-02-24', 3, 2280, '订西装-停车费', 1, 1);
INSERT INTO `report_out` VALUES (64, '2024-02-24', 3, 6, '订西装-停车费', 1, 3);
INSERT INTO `report_out` VALUES (65, '2024-02-25', 1, 19, '午饭-西北拉面', 1, 3);
INSERT INTO `report_out` VALUES (66, '2024-02-25', 4, 70, '掌中花园*2', 1, 3);
INSERT INTO `report_out` VALUES (67, '2024-02-25', 1, 2.3, '晚饭-买菜', 1, 3);
INSERT INTO `report_out` VALUES (68, '2024-02-26', 1, 7, '早饭', 1, 3);
INSERT INTO `report_out` VALUES (69, '2024-02-26', 1, 50, '饭卡', 1, 3);
INSERT INTO `report_out` VALUES (70, '2024-02-26', 5, 16.67, '打车-（武寓-春江彼岸）', 1, 4);
INSERT INTO `report_out` VALUES (71, '2024-02-26', 5, 1.5, '骑车-青桔', 1, 4);
INSERT INTO `report_out` VALUES (72, '2024-02-26', 4, 15, '花束', 1, 4);
INSERT INTO `report_out` VALUES (73, '2024-02-26', 1, 16, '晚饭-拌面', 1, 3);
INSERT INTO `report_out` VALUES (74, '2024-02-26', 8, 55, '避孕套', 1, 3);
INSERT INTO `report_out` VALUES (75, '2024-02-27', 1, 4, '早饭', 1, 3);
INSERT INTO `report_out` VALUES (76, '2024-02-27', 9, 12, '顺丰到付-领结', 1, 3);
INSERT INTO `report_out` VALUES (77, '2024-02-27', 5, 18.81, '打车-（春江彼岸-武寓）', 1, 3);
INSERT INTO `report_out` VALUES (78, '2024-02-27', 2, 8.9, '咖啡，瑞幸', 1, 3);
INSERT INTO `report_out` VALUES (79, '2024-02-28', 1, 5.5, '早饭', 1, 4);
INSERT INTO `report_out` VALUES (80, '2024-02-28', 5, 22.35, '打车-（春江彼岸-雅马哈）', 1, 3);
INSERT INTO `report_out` VALUES (81, '2024-02-28', 2, 2.5, '可乐', 1, 4);
INSERT INTO `report_out` VALUES (82, '2024-02-28', 5, 7.76, '打车-（高崎T4-T3）', 1, 3);
INSERT INTO `report_out` VALUES (83, '2024-02-29', 8, 25.94, '拖鞋', 1, 3);
INSERT INTO `report_out` VALUES (84, '2024-02-29', 8, 178.03, '床上三件套', 1, 3);
INSERT INTO `report_out` VALUES (85, '2024-02-29', 2, 8, '可乐', 1, 3);
INSERT INTO `report_out` VALUES (86, '2024-02-29', 5, 40.72, '打车-（机场-春江彼岸）', 1, 3);
INSERT INTO `report_out` VALUES (87, '2024-03-01', 5, 22.49, '打车-（春江彼岸-武寓）', 1, 3);
INSERT INTO `report_out` VALUES (88, '2024-03-01', 1, 5.5, '早饭', 1, 3);
INSERT INTO `report_out` VALUES (89, '2024-03-01', 8, 48, '话费', 1, 3);
INSERT INTO `report_out` VALUES (90, '2024-03-01', 1, 100, '饭卡', 1, 3);
INSERT INTO `report_out` VALUES (91, '2024-03-02', 1, 47.9, '午饭-粤佳烧鹅', 1, 3);
INSERT INTO `report_out` VALUES (92, '2024-03-02', 2, 10, '零食烤肠', 1, 3);
INSERT INTO `report_out` VALUES (93, '2024-03-02', 1, 10, '晚饭-煎饺', 1, 3);
INSERT INTO `report_out` VALUES (94, '2024-03-02', 1, 13.9, '晚饭-麦当劳', 1, 3);
INSERT INTO `report_out` VALUES (95, '2024-03-02', 7, 30, '999感冒灵', 1, 3);
INSERT INTO `report_out` VALUES (96, '2024-03-03', 5, 22.76, '打车-（武寓-春江彼岸）', 1, 4);
INSERT INTO `report_out` VALUES (97, '2024-03-04', 8, 100, '电费', 1, 3);
INSERT INTO `report_out` VALUES (98, '2024-03-04', 1, 4, '早饭', 1, 4);
INSERT INTO `report_out` VALUES (99, '2024-03-05', 1, 33.8, '晚饭-麦当劳', 1, 3);
INSERT INTO `report_out` VALUES (100, '2024-03-05', 2, 16, '奈雪-奶茶', 1, 3);
INSERT INTO `report_out` VALUES (101, '2024-03-06', 5, 18.04, '打车-（武寓-春江彼岸）', 1, 3);
INSERT INTO `report_out` VALUES (102, '2024-03-06', 1, 6, '早饭', 1, 3);
INSERT INTO `report_out` VALUES (103, '2024-03-06', 5, 19.1, '打车-（春江彼岸-雅马哈）', 1, 3);
INSERT INTO `report_out` VALUES (104, '2024-03-06', 9, 66.71, '生活用品', 1, 3);
INSERT INTO `report_out` VALUES (105, '2024-03-07', 5, 20.33, '打车-（雅马哈-春江彼岸）', 1, 3);
INSERT INTO `report_out` VALUES (106, '2024-03-07', 1, 5.5, '早饭', 1, 3);
INSERT INTO `report_out` VALUES (107, '2024-03-07', 4, 18.1, '小叶栀子花', 1, 3);
INSERT INTO `report_out` VALUES (108, '2024-03-07', 2, 9.9, '咖啡，瑞幸', 1, 3);
INSERT INTO `report_out` VALUES (109, '2024-03-07', 4, 18.1, '小叶栀子花', 1, 3);
INSERT INTO `report_out` VALUES (110, '2024-03-07', 4, 10, '姬月季', 1, 3);
INSERT INTO `report_out` VALUES (111, '2024-03-07', 5, 23.98, '打车-（春江彼岸-雅马哈）', 1, 3);
INSERT INTO `report_out` VALUES (112, '2024-03-07', 1, 5.8, '鸡蛋', 1, 3);
INSERT INTO `report_out` VALUES (113, '2024-03-08', 1, 5.5, '早饭', 1, 3);
INSERT INTO `report_out` VALUES (114, '2024-03-08', 1, 13.9, '晚饭-麦当劳', 1, 3);
INSERT INTO `report_out` VALUES (115, '2024-03-09', 5, 9.53, '打车-（武寓-雅马哈）', 1, 3);
INSERT INTO `report_out` VALUES (116, '2024-03-09', 1, 20, '午饭-瓦罐', 1, 3);
INSERT INTO `report_out` VALUES (117, '2024-03-09', 1, 19, '晚饭-炸鸡', 1, 3);
INSERT INTO `report_out` VALUES (118, '2024-03-09', 5, 11.7, '打车-（雅马哈-比亚迪）', 1, 3);
INSERT INTO `report_out` VALUES (119, '2024-03-10', 9, 64.27, '朴朴-（护发素、排骨、玉米、鸡蛋、香蕉）', 1, 3);
INSERT INTO `report_out` VALUES (120, '2024-03-10', 10, 50, '彩票', 1, 3);
INSERT INTO `report_out` VALUES (121, '2024-03-10', 4, 69, 'pop mart', 1, 3);
INSERT INTO `report_out` VALUES (122, '2024-03-10', 2, 41.52, '鲍师傅', 1, 3);
INSERT INTO `report_out` VALUES (123, '2024-03-10', 5, 7.1, '打车-（武寓-软三地铁）', 1, 3);
INSERT INTO `report_out` VALUES (124, '2024-03-11', 1, 5.5, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (125, '2024-03-11', 5, 26.09, '打车-（春江彼岸-雅马哈）', 1, 3);
INSERT INTO `report_out` VALUES (126, '2024-03-11', 1, 5.3, '买菜', 1, 3);
INSERT INTO `report_out` VALUES (127, '2024-03-11', 2, 25.5, '饮料', 1, 3);
INSERT INTO `report_out` VALUES (128, '2024-03-11', 2, 8.9, '咖啡，瑞幸', 1, 1);
INSERT INTO `report_out` VALUES (129, '2024-03-11', 5, 18.14, '打车-（春江彼岸-武寓）', 1, 3);
INSERT INTO `report_out` VALUES (130, '2024-03-12', 1, 4, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (131, '2024-03-12', 1, 50, '饭卡', 1, 3);
INSERT INTO `report_out` VALUES (132, '2024-03-12', 8, 23, '羽绒服干洗', 1, 3);
INSERT INTO `report_out` VALUES (133, '2024-03-12', 1, 13.39, '晚饭，堡马先生', 1, 3);
INSERT INTO `report_out` VALUES (134, '2024-03-13', 1, 4, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (135, '2024-03-13', 9, 3.99, '充电宝', 1, 3);
INSERT INTO `report_out` VALUES (136, '2024-03-13', 1, 13, '煎饼', 1, 3);
INSERT INTO `report_out` VALUES (137, '2024-03-13', 2, 18, '饮料', 1, 3);
INSERT INTO `report_out` VALUES (138, '2024-03-13', 4, 15.5, '小夜灯', 1, 3);
INSERT INTO `report_out` VALUES (139, '2024-03-13', 5, 25.59, '打车-（春江彼岸-武寓）', 1, 3);
INSERT INTO `report_out` VALUES (140, '2024-03-13', 5, 0, '打车-（雅马哈-万豪酒店）', 1, 3);
INSERT INTO `report_out` VALUES (141, '2024-03-14', 1, 6, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (142, '2024-03-14', 6, 1000, '房租', 1, 6);
INSERT INTO `report_out` VALUES (143, '2024-03-15', 1, 4, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (144, '2024-03-15', 5, 9.78, '打车-（中科院-武寓）', 1, 3);
INSERT INTO `report_out` VALUES (145, '2024-03-15', 1, 18, '晚餐-鸡排', 1, 3);
INSERT INTO `report_out` VALUES (146, '2024-03-15', 5, 23.97, '打车-（春江彼岸-武寓）', 1, 3);
INSERT INTO `report_out` VALUES (147, '2024-03-15', 2, 11.18, '瑞幸', 1, 1);
INSERT INTO `report_out` VALUES (148, '2024-03-16', 1, 5, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (149, '2024-03-16', 5, 8.69, '打车-（武寓-雅马哈）', 1, 3);
INSERT INTO `report_out` VALUES (150, '2024-03-17', 9, 10, '玉米', 1, 3);
INSERT INTO `report_out` VALUES (151, '2024-03-17', 1, 12, '鸡排', 1, 3);
INSERT INTO `report_out` VALUES (152, '2024-03-18', 1, 6, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (153, '2024-03-18', 3, 28.9, '饭盒', 1, 3);
INSERT INTO `report_out` VALUES (154, '2024-03-18', 1, 30, '饭卡', 1, 3);
INSERT INTO `report_out` VALUES (155, '2024-03-18', 10, 76.18, 'KTV', 1, 3);
INSERT INTO `report_out` VALUES (156, '2024-03-18', 10, 167.51, 'KTV', 1, 1);
INSERT INTO `report_out` VALUES (157, '2024-03-19', 1, 4, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (158, '2024-03-19', 1, 7, '饭卡', 1, 3);
INSERT INTO `report_out` VALUES (159, '2024-03-19', 1, 16, '晚饭', 1, 1);
INSERT INTO `report_out` VALUES (160, '2024-03-20', 1, 5.5, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (161, '2024-03-20', 9, 5, '迟到', 1, 3);
INSERT INTO `report_out` VALUES (162, '2024-03-20', 1, 50, '饭卡', 1, 3);
INSERT INTO `report_out` VALUES (163, '2024-03-20', 2, 2.5, '可乐', 1, 3);
INSERT INTO `report_out` VALUES (164, '2024-03-20', 10, 78.49, '聚餐', 1, 3);
INSERT INTO `report_out` VALUES (165, '2024-03-20', 10, 20.72, '聚餐', 1, 1);
INSERT INTO `report_out` VALUES (166, '2024-03-21', 1, 5, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (167, '2024-03-21', 4, 88, '花束', 1, 1);
INSERT INTO `report_out` VALUES (168, '2024-03-21', 2, 9.9, '瑞幸', 1, 3);
INSERT INTO `report_out` VALUES (169, '2024-03-22', 1, 3.5, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (170, '2024-03-22', 9, 10, '迟到', 1, 3);
INSERT INTO `report_out` VALUES (171, '2024-03-22', 1, 18, '午饭-西北拉面', 1, 3);
INSERT INTO `report_out` VALUES (172, '2024-03-22', 2, 10, '面包', 1, 3);
INSERT INTO `report_out` VALUES (173, '2024-03-22', 2, 116.74, '朴朴-饺子馅', 1, 1);
INSERT INTO `report_out` VALUES (174, '2024-03-22', 2, 102.1, '蛋糕', 1, 1);
INSERT INTO `report_out` VALUES (175, '2024-03-22', 5, 36.84, '打车', 1, 1);
INSERT INTO `report_out` VALUES (176, '2024-03-22', 5, 19.43, '打车-（武寓-春江彼岸）', 1, 4);
INSERT INTO `report_out` VALUES (177, '2024-03-23', 10, 21, '抓娃娃机', 1, 3);
INSERT INTO `report_out` VALUES (178, '2024-03-23', 1, 13, '夜宵，炒面', 1, 4);
INSERT INTO `report_out` VALUES (179, '2024-03-23', 5, 20.8, '打车-（春江彼岸-武寓）', 1, 4);
INSERT INTO `report_out` VALUES (180, '2024-03-24', 7, 89, '避孕套', 1, 4);
INSERT INTO `report_out` VALUES (181, '2024-03-25', 5, 21.89, '打车-（武寓-万泰凯瑞）', 1, 4);
INSERT INTO `report_out` VALUES (182, '2024-03-25', 1, 7, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (183, '2024-03-25', 1, 38.13, '饭卡', 1, 4);
INSERT INTO `report_out` VALUES (184, '2024-03-25', 2, 9.9, '瑞幸', 1, 4);
INSERT INTO `report_out` VALUES (185, '2024-03-25', 2, 18, '糖葫芦', 1, 3);
INSERT INTO `report_out` VALUES (186, '2024-03-25', 1, 54.1, '晚饭', 1, 4);
INSERT INTO `report_out` VALUES (187, '2024-03-25', 6, 50, '电费', 1, 3);
INSERT INTO `report_out` VALUES (188, '2024-03-25', 5, 50, 'e通卡', 1, 3);
INSERT INTO `report_out` VALUES (189, '2024-03-25', 4, 42.6, '手机壳+充电头', 1, 4);
INSERT INTO `report_out` VALUES (190, '2024-03-25', 4, 16.8, '手机壳', 1, 1);
INSERT INTO `report_out` VALUES (191, '2024-03-25', 4, 4857.9, 'iphone15', 1, 1);
INSERT INTO `report_out` VALUES (192, '2024-03-26', 1, 3.5, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (193, '2024-03-26', 5, 17.32, '打车-（春江彼岸-武寓）', 1, 4);
INSERT INTO `report_out` VALUES (194, '2024-03-26', 2, 9.9, '瑞幸', 1, 4);
INSERT INTO `report_out` VALUES (195, '2024-03-26', 1, 16, '晚饭-淮南牛肉汤', 1, 4);
INSERT INTO `report_out` VALUES (196, '2024-03-27', 1, 4, '早饭', 1, 4);
INSERT INTO `report_out` VALUES (197, '2024-03-27', 2, 5, '小卖部-烤肠', 1, 4);
INSERT INTO `report_out` VALUES (198, '2024-03-27', 1, 12.8, '晚饭', 1, 3);
INSERT INTO `report_out` VALUES (199, '2024-03-27', 3, 10, '头盔', 1, 4);
INSERT INTO `report_out` VALUES (200, '2024-03-28', 1, 4, '早饭', 1, 4);
INSERT INTO `report_out` VALUES (201, '2024-03-28', 1, 24.8, '午饭-麦当劳', 1, 4);
INSERT INTO `report_out` VALUES (202, '2024-03-28', 2, 8.5, '烤肠', 1, 4);
INSERT INTO `report_out` VALUES (203, '2024-03-28', 5, 6.55, '打车-（武寓-春江彼岸）', 1, 4);
INSERT INTO `report_out` VALUES (204, '2024-03-28', 4, 21.6, '书', 1, 3);
INSERT INTO `report_out` VALUES (205, '2024-03-28', 4, 10.9, '灭红蜘蛛药', 1, 3);
INSERT INTO `report_out` VALUES (206, '2024-03-28', 7, 66, '避孕套', 1, 4);
INSERT INTO `report_out` VALUES (207, '2024-03-29', 10, 200, '红包（报销美甲+奶茶）', 1, 4);
INSERT INTO `report_out` VALUES (208, '2024-03-29', 1, 6, '早饭', 1, 4);
INSERT INTO `report_out` VALUES (209, '2024-03-29', 5, 20.74, '打车（春江彼岸-雅马哈）', 1, 4);
INSERT INTO `report_out` VALUES (210, '2024-03-29', 1, 21, '午饭', 1, 4);
INSERT INTO `report_out` VALUES (211, '2024-03-29', 2, 9.9, '咖啡，瑞幸', 1, 4);
INSERT INTO `report_out` VALUES (212, '2024-03-29', 5, 2000, '车-首付', 1, 4);
INSERT INTO `report_out` VALUES (213, '2024-03-29', 5, 200, '车-油费', 1, 3);
INSERT INTO `report_out` VALUES (214, '2024-03-29', 1, 15, '晚饭', 1, 4);
INSERT INTO `report_out` VALUES (215, '2024-03-29', 2, 24.8, '夜宵，麦当劳', 1, 4);
INSERT INTO `report_out` VALUES (216, '2024-03-30', 5, 1.99, '车-挪车二维码', 1, 4);
INSERT INTO `report_out` VALUES (217, '2024-03-30', 10, 300, '红包，报销烤肉', 1, 4);
INSERT INTO `report_out` VALUES (218, '2024-03-30', 5, 8, '车-停车费', 1, 4);
INSERT INTO `report_out` VALUES (219, '2024-03-31', 1, 10, '买菜', 1, 3);
INSERT INTO `report_out` VALUES (220, '2024-03-31', 1, 10.5, '买菜', 1, 4);
INSERT INTO `report_out` VALUES (221, '2024-04-01', 1, 5, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (222, '2024-04-01', 2, 9.9, '咖啡，瑞幸', 1, 4);
INSERT INTO `report_out` VALUES (223, '2024-04-01', 8, 30, '话费', 1, 4);
INSERT INTO `report_out` VALUES (224, '2024-04-02', 1, 15.37, '午饭', 1, 4);
INSERT INTO `report_out` VALUES (225, '2024-04-03', 1, 4, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (226, '2024-04-03', 1, 15.18, '午饭', 1, 4);
INSERT INTO `report_out` VALUES (227, '2024-04-03', 11, 6, '车-过桥费', 1, 3);
INSERT INTO `report_out` VALUES (228, '2024-04-04', 11, 40, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (229, '2024-04-04', 11, 5, '充电宝', 1, 4);
INSERT INTO `report_out` VALUES (230, '2024-04-04', 11, 12, '奶茶', 1, 4);
INSERT INTO `report_out` VALUES (231, '2024-04-04', 11, 2, '车-停车费', 1, 4);
INSERT INTO `report_out` VALUES (232, '2024-04-05', 11, 120, '船票', 1, 4);
INSERT INTO `report_out` VALUES (233, '2024-04-05', 11, 20, '鸡腿', 1, 4);
INSERT INTO `report_out` VALUES (234, '2024-04-05', 11, 50, '午饭', 1, 4);
INSERT INTO `report_out` VALUES (235, '2024-04-06', 5, 319.28, '车-保养', 1, 4);
INSERT INTO `report_out` VALUES (236, '2024-04-06', 2, 4, '饮料', 1, 4);
INSERT INTO `report_out` VALUES (237, '2024-04-07', 1, 6, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (238, '2024-04-07', 1, 21.7, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (239, '2024-04-07', 1, 9.09, '午饭', 1, 4);
INSERT INTO `report_out` VALUES (240, '2024-04-07', 2, 4, '烤肠', 1, 4);
INSERT INTO `report_out` VALUES (241, '2024-04-07', 1, 16, '晚饭', 1, 4);
INSERT INTO `report_out` VALUES (242, '2024-04-08', 5, 12, '车-过桥费', 1, 4);
INSERT INTO `report_out` VALUES (243, '2024-04-08', 5, 200, '车-油费', 1, 4);
INSERT INTO `report_out` VALUES (244, '2024-04-08', 1, 36, '午饭', 1, 4);
INSERT INTO `report_out` VALUES (245, '2024-04-08', 2, 3.5, '冰淇淋', 1, 4);
INSERT INTO `report_out` VALUES (246, '2024-04-09', 1, 6, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (247, '2024-04-09', 1, 13.9, '午餐，麦当劳', 1, 4);
INSERT INTO `report_out` VALUES (248, '2024-04-10', 1, 4, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (249, '2024-04-10', 1, 13.9, '午餐，麦当劳', 1, 4);
INSERT INTO `report_out` VALUES (250, '2024-04-10', 2, 4, '烤肠', 1, 4);
INSERT INTO `report_out` VALUES (251, '2024-04-10', 2, 12.2, '红糖', 1, 4);
INSERT INTO `report_out` VALUES (252, '2024-04-11', 1, 7.5, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (253, '2024-04-11', 1, 14, '午餐，西北拉面', 1, 4);
INSERT INTO `report_out` VALUES (254, '2024-04-12', 10, 21.6, 'vpn', 1, 4);
INSERT INTO `report_out` VALUES (255, '2024-04-12', 1, 4, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (256, '2024-04-12', 1, 2, '饭卡', 1, 4);
INSERT INTO `report_out` VALUES (257, '2024-04-12', 1, 22.9, '晚餐', 1, 4);
INSERT INTO `report_out` VALUES (258, '2024-04-12', 6, 1070, '房租水电', 1, 1);
INSERT INTO `report_out` VALUES (259, '2024-04-13', 1, 20.1, '午饭', 1, 3);
INSERT INTO `report_out` VALUES (260, '2024-04-13', 2, 166.41, '零食', 1, 4);
INSERT INTO `report_out` VALUES (261, '2024-04-13', 1, 13.9, '买菜', 1, 3);
INSERT INTO `report_out` VALUES (262, '2024-04-14', 10, 240, '酒吧', 1, 4);
INSERT INTO `report_out` VALUES (263, '2024-04-14', 2, 22.4, '给猪买早餐', 1, 4);
INSERT INTO `report_out` VALUES (264, '2024-04-14', 1, 5, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (265, '2024-04-14', 5, 14, '车-停车费', 1, 4);
INSERT INTO `report_out` VALUES (266, '2024-04-14', 5, 22.55, '打车-酒吧回家', 1, 4);
INSERT INTO `report_out` VALUES (267, '2024-04-14', 1, 16.8, '买菜', 1, 3);
INSERT INTO `report_out` VALUES (268, '2024-04-14', 1, 7, '晚饭，凉皮', 1, 4);
INSERT INTO `report_out` VALUES (269, '2024-04-15', 1, 5.5, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (270, '2024-04-15', 1, 20.4, '午饭，麦当劳', 1, 4);
INSERT INTO `report_out` VALUES (271, '2024-04-15', 10, 52, '给猪的红包', 1, 3);
INSERT INTO `report_out` VALUES (272, '2024-04-16', 1, 4, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (273, '2024-04-16', 1, 12.3, '午餐，麻辣烫', 1, 3);
INSERT INTO `report_out` VALUES (274, '2024-04-16', 2, 6, '可乐', 1, 3);
INSERT INTO `report_out` VALUES (275, '2024-04-16', 1, 72, '晚饭', 1, 3);
INSERT INTO `report_out` VALUES (276, '2024-04-16', 7, 18.18, '避孕套', 1, 3);
INSERT INTO `report_out` VALUES (277, '2024-04-16', 2, 8.9, '咖啡，瑞幸', 1, 1);
INSERT INTO `report_out` VALUES (278, '2024-04-16', 9, 33.8, '生活用品', 1, 3);
INSERT INTO `report_out` VALUES (279, '2024-04-17', 5, 22, '车-停车费', 1, 3);
INSERT INTO `report_out` VALUES (280, '2024-04-17', 3, 4, '早餐', 1, 4);
INSERT INTO `report_out` VALUES (281, '2024-04-17', 1, 13.94, '午餐', 1, 3);
INSERT INTO `report_out` VALUES (282, '2024-04-18', 8, 30, '话费', 1, 4);
INSERT INTO `report_out` VALUES (283, '2024-04-18', 1, 15.75, '午餐', 1, 3);
INSERT INTO `report_out` VALUES (284, '2024-04-18', 2, 15, '果汁+肠', 1, 4);
INSERT INTO `report_out` VALUES (285, '2024-04-18', 2, 3, '丸子', 1, 4);
INSERT INTO `report_out` VALUES (286, '2024-04-18', 1, 69.7, '晚餐，肯德基', 1, 4);
INSERT INTO `report_out` VALUES (287, '2024-04-19', 1, 5.5, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (288, '2024-04-19', 10, 28.5, '给猪点早餐', 1, 3);
INSERT INTO `report_out` VALUES (289, '2024-04-19', 1, 20.8, '午餐', 1, 3);
INSERT INTO `report_out` VALUES (290, '2024-04-20', 1, 27.3, '买菜', 1, 3);
INSERT INTO `report_out` VALUES (291, '2024-04-22', 1, 6, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (292, '2024-04-22', 1, 11.47, '午餐', 1, 3);
INSERT INTO `report_out` VALUES (293, '2024-04-22', 2, 5, '烤肠+丸子', 1, 3);
INSERT INTO `report_out` VALUES (294, '2024-04-23', 1, 5.5, '早餐', 1, 3);
INSERT INTO `report_out` VALUES (295, '2024-04-23', 1, 15.7, '午餐', 1, 3);
INSERT INTO `report_out` VALUES (296, '2024-04-23', 2, 4, '阿萨姆奶茶', 1, 3);
INSERT INTO `report_out` VALUES (297, '2024-04-24', 5, 200, '车-油费', 1, 3);
INSERT INTO `report_out` VALUES (298, '2024-04-24', 1, 12, '午饭', 1, 3);
INSERT INTO `report_out` VALUES (299, '2024-04-25', 1, 4, '早饭', 1, 4);
INSERT INTO `report_out` VALUES (300, '2024-04-25', 1, 21.84, '午饭', 1, 4);
INSERT INTO `report_out` VALUES (301, '2024-04-25', 4, 12.5, '书《置身事内》', 1, 3);
INSERT INTO `report_out` VALUES (302, '2024-04-25', 3, 11.7, '除湿', 1, 3);
INSERT INTO `report_out` VALUES (303, '2024-04-25', 5, 3000, '车-车贷（第一期）', 1, 1);
INSERT INTO `report_out` VALUES (304, '2024-04-26', 1, 5.5, '早饭', 1, 4);
INSERT INTO `report_out` VALUES (305, '2024-04-26', 1, 16, '午饭', 1, 3);
INSERT INTO `report_out` VALUES (306, '2024-04-26', 2, 4, '烤肠', 1, 3);
INSERT INTO `report_out` VALUES (307, '2024-04-26', 8, 107.38, '买菜（米+蚊香+酸奶+牙膏+肉酱+姜蒜）', 1, 3);
INSERT INTO `report_out` VALUES (308, '2024-04-26', 2, 300, '烤肉', 1, 3);
INSERT INTO `report_out` VALUES (309, '2024-04-28', 1, 5.5, '早饭', 1, 3);
INSERT INTO `report_out` VALUES (310, '2024-04-28', 1, 11.5, '午饭', 1, 3);
INSERT INTO `report_out` VALUES (311, '2024-04-28', 1, 23.7, '买菜', 1, 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123');

-- ----------------------------
-- Table structure for user_assets
-- ----------------------------
DROP TABLE IF EXISTS `user_assets`;
CREATE TABLE `user_assets`  (
  `asset_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY (`asset_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_assets
-- ----------------------------
INSERT INTO `user_assets` VALUES (1, 1, '工行6922', 1427.8);
INSERT INTO `user_assets` VALUES (2, 1, '工行0373', 0);
INSERT INTO `user_assets` VALUES (3, 1, '中行7574', 500.8);
INSERT INTO `user_assets` VALUES (4, 1, '微信', 33.48);
INSERT INTO `user_assets` VALUES (5, 1, '支付宝', 1608.93);
INSERT INTO `user_assets` VALUES (6, 1, '现金', 61);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '1号用户');

SET FOREIGN_KEY_CHECKS = 1;
