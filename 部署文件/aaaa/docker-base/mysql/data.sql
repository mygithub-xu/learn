/*
 Navicat Premium Data Transfer

 Source Server         : 123.60.5.25
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 123.60.5.25:33307
 Source Schema         : houtaisql

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 18/01/2022 10:45:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mb_sys_chat
-- ----------------------------
DROP TABLE IF EXISTS `mb_sys_chat`;
CREATE TABLE `mb_sys_chat`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `to_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mb_sys_chat
-- ----------------------------

-- ----------------------------
-- Table structure for sys_auto_field
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_field`;
CREATE TABLE `sys_auto_field`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `table_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表id',
  `field_name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段名称',
  `field_des` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段描述',
  `field_length` int(11) NULL DEFAULT NULL COMMENT '字段长度',
  `field_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段类型',
  `field_decimal` int(11) NULL DEFAULT NULL COMMENT '字段小数点',
  `field_isNull` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段是否可以为空，1是非空，0是空',
  `field_primary` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字段是否是主键,1是主键，0不是主键',
  `field_index` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '排序位置',
  `dic_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典id',
  `field_is_be_related` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否关联表（0不关联，1关联）',
  `field_related_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联表名称',
  `field_related_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联表字段',
  `field_related_field_show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联表字段显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_auto_field
-- ----------------------------
INSERT INTO `sys_auto_field` VALUES ('06d02b96e9484bcd803328d86e73f3c4', '977fb9ba21534369a4c06c61c5783c36', 'remark', '描述', 255, 'VARCHAR', 0, '0', '0', '9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('07a1183815d74e229b9e6984f97dbb51', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'terminal_manufacturer', '终端厂商名称', 255, 'VARCHAR', 0, '0', '0', '9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('10661e6b4e4c4a6f8924f2a5b13f9436', '6e8ce5ddd45e424ea91dbf6416a1e889', 'yyyccccc', '测试字段', 255, 'VARCHAR', 0, '0', '0', '6', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('11596d2221684daf894f56fca2bd1638', '8d971e2a70fc4520b68b727b1617e5eb', 'create_user', '创建人', 36, 'VARCHAR', 0, '0', '0', '2', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('17a3bf0b9ad34443810caae5ab7d87c5', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'terminal_name_type', '终端类型名称', 255, 'VARCHAR', 0, '0', '0', '7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('251d5142ce3243a0b2b111527a366d87', '821731e7bdfc4b71af6602d95b5b78ed', 'create_user', '创建人', 36, 'VARCHAR', 0, '0', '0', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('28745324440848d4aec057d7ff2de2ba', '821731e7bdfc4b71af6602d95b5b78ed', 'vvvv', 'vvvv', 36, 'VARCHAR', 0, '0', '0', '6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('2e191939eefc4383883ba332ee0cfeba', '6e8ce5ddd45e424ea91dbf6416a1e889', 'update_user', '更新人', 36, 'VARCHAR', 0, '0', '0', '4', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('2edaedf4573943bfb44071f195b5fc9e', '8d971e2a70fc4520b68b727b1617e5eb', 'wechat_number', '微信号', 36, 'VARCHAR', 0, '0', '0', '18', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('31457958181d4a128d0b5ada0bf7e278', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'update_user', '更新人', 36, 'VARCHAR', 0, '0', '0', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('37f96eb5d53c463f8769867780cf9021', '8d971e2a70fc4520b68b727b1617e5eb', 'name', '昵称', 255, 'VARCHAR', 0, '0', '0', '6', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('3cf6c80f8581401792633ecc8a8896de', '8d971e2a70fc4520b68b727b1617e5eb', 'phone', '手机号', 255, 'VARCHAR', 0, '0', '0', '7', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('451f0e80dbdf4e60a197aa580c5c0ccc', '977fb9ba21534369a4c06c61c5783c36', 'update_time', '更新时间', 0, 'DATETIME', 0, '0', '0', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('4555f976bfed4718a2347bbb624ebc2b', '821731e7bdfc4b71af6602d95b5b78ed', 'update_time', '更新时间', 0, 'DATETIME', 0, '0', '0', '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('4586d4b41579471491735d5f7bca1d01', '8d971e2a70fc4520b68b727b1617e5eb', 'address', '籍贯', 255, 'VARCHAR', 0, '0', '0', '12', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('50aabfab37004744bed6e0d77d4e4d20', '977fb9ba21534369a4c06c61c5783c36', 'name', '族谱名', 255, 'VARCHAR', 0, '0', '0', '6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('6605ed30ae8a4cb693a2b683ae6a9c10', '6e8ce5ddd45e424ea91dbf6416a1e889', 'create_time', '创建时间', 0, 'DATETIME', 0, '0', '0', '1', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('66ee26b687b54bd4ac81233650883a3f', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'terminal_number', '终端编号', 255, 'VARCHAR', 0, '0', '0', '8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('68b65e971d8f45ef86053e9882d2296e', '8d971e2a70fc4520b68b727b1617e5eb', 'gender', '性别', 36, 'VARCHAR', 0, '0', '0', '15', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('6e774b1e97cf432eb8ec7c7e7250f0c6', '821731e7bdfc4b71af6602d95b5b78ed', 'id', '主键', 36, 'VARCHAR', 0, '1', '1', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('73626cece28440ebafc3a1b47077be3b', '8d971e2a70fc4520b68b727b1617e5eb', 'spouse_id', '配偶id', 255, 'VARCHAR', 0, '0', '0', '14', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('7f54f22e5a2341d7a3915dddbaef701f', '8d971e2a70fc4520b68b727b1617e5eb', 'create_time', '创建时间', 0, 'DATETIME', 0, '0', '0', '1', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('8216e709ccb5492f95cb08f9b12ddae9', '977fb9ba21534369a4c06c61c5783c36', 'create_user', '创建人', 36, 'VARCHAR', 0, '0', '0', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('858edb8c4d2b4d968d66fbeecb7b62e8', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'create_time', '创建时间', 0, 'DATETIME', 0, '0', '0', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('8b3bd003de4649a1aac0322d7e724bf5', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'terminal_name', '终端名称', 255, 'VARCHAR', 0, '0', '0', '6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('8cd199909ae84382a2210478645d0f36', '8d971e2a70fc4520b68b727b1617e5eb', 'parent_id', '上级用户', 255, 'VARCHAR', 0, '0', '0', '10', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('921e1e15b80a4d80bd416d34eaa49436', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'result_type', '是否找到该类型', 36, 'VARCHAR', 0, '0', '0', '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('94c89d26d36846d9a724668c2543dc19', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'create_user', '创建人', 36, 'VARCHAR', 0, '0', '0', '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('97fa481bc04741548266f504a6265126', '821731e7bdfc4b71af6602d95b5b78ed', 'create_time', '创建时间', 0, 'DATETIME', 0, '0', '0', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('a236393876334d89967c288ddad17af1', '2e6b1212fef94aadba225079f728f165', 'user_id', '用户id', 36, 'VARCHAR', 0, '0', '0', '3', '', '1', 'fa_user', 'id', 'real_name');
INSERT INTO `sys_auto_field` VALUES ('a7e0ad2ce5874a269ae9f556faded92b', '8d971e2a70fc4520b68b727b1617e5eb', 'update_time', '更新时间', 0, 'DATETIME', 0, '0', '0', '3', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('a90fb8796ba9489bbc0689dd82c172b5', '977fb9ba21534369a4c06c61c5783c36', 'create_time', '创建时间', 0, 'DATETIME', 0, '0', '0', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('a95a0e263aba43d0a28273edf0248e99', '6e8ce5ddd45e424ea91dbf6416a1e889', 'create_user', '创建人', 36, 'VARCHAR', 0, '0', '0', '2', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('b1e2309639ce4c68874251c5daad77c4', '977fb9ba21534369a4c06c61c5783c36', 'id', '主键', 36, 'VARCHAR', 0, '1', '1', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('b513e081337741fbb9e67ed0482f368a', '8d971e2a70fc4520b68b727b1617e5eb', 'update_user', '更新人', 36, 'VARCHAR', 0, '0', '0', '4', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('b5528b1a4f4b43978750da9e37b234b7', '977fb9ba21534369a4c06c61c5783c36', 'code', '族谱号', 255, 'VARCHAR', 0, '0', '0', '7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('b7a96f52fec14594b4082a0eaabdabb8', '8d971e2a70fc4520b68b727b1617e5eb', 'real_name', '真实名称', 255, 'VARCHAR', 0, '0', '0', '9', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('bdf262971d654ce1a5533c483e00f046', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'id', '主键', 36, 'VARCHAR', 0, '1', '1', '0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('be6880543c29434ab4247fff3dc2e792', '8d971e2a70fc4520b68b727b1617e5eb', 'signature', '个性签名', 255, 'VARCHAR', 0, '0', '0', '19', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('c263476c17ef4c618d991b38feeb0fd6', '8d971e2a70fc4520b68b727b1617e5eb', 'head_url', '头像', 255, 'VARCHAR', 0, '0', '0', '16', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('c6122b2ad6ec4863929e26b8317777dc', '8d971e2a70fc4520b68b727b1617e5eb', 'live_state', '生存状态', 36, 'VARCHAR', 0, '0', '0', '17', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('c61b0dc5db7543fc95308c5f6115c808', '6e8ce5ddd45e424ea91dbf6416a1e889', 'user_id', '用户', 36, 'VARCHAR', 0, '0', '0', '8', '', '1', 'sys_user', 'id', 'user_name');
INSERT INTO `sys_auto_field` VALUES ('c7407264876f41fdaf36a62c9b1512f9', '977fb9ba21534369a4c06c61c5783c36', 'update_user', '更新人', 36, 'VARCHAR', 0, '0', '0', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('c7a6685a979e4c978557f98e96dc3431', '6e8ce5ddd45e424ea91dbf6416a1e889', 'update_time', '更新时间', 0, 'DATETIME', 0, '0', '0', '3', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('cc02677aa63d49d18c2b55b948e886ee', '821731e7bdfc4b71af6602d95b5b78ed', 'update_user', '更新人', 36, 'VARCHAR', 0, '0', '0', '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('d1e68fd537b240c8b2a23c1b2ab21b5b', '8d971e2a70fc4520b68b727b1617e5eb', 'status', '账号状态', 36, 'VARCHAR', 0, '0', '0', '20', '789492ed5edc4f20b8f9d756a6dd9fc8', '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('d33d79655a004387868c7159c86c8001', '8d971e2a70fc4520b68b727b1617e5eb', 'id', '主键', 36, 'VARCHAR', 0, '1', '1', '0', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('d45d318ec640491fa5401babfd51aa41', '2e6b1212fef94aadba225079f728f165', 'id', '主键', 36, 'VARCHAR', 0, '1', '1', '0', '', '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('d77fda1fdb064f669f18a1aa67f0921f', '8d971e2a70fc4520b68b727b1617e5eb', 'fa_table_id', '与fa_table关联', 255, 'VARCHAR', 0, '0', '0', '11', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('d96d6eca126d46acb776a6e3eab50b51', '8d971e2a70fc4520b68b727b1617e5eb', 'password', '密码', 255, 'VARCHAR', 0, '0', '0', '8', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('daa43284d0314e0cb8c5f705408a2131', '2e6b1212fef94aadba225079f728f165', 'table_id', '族谱表id', 36, 'VARCHAR', 0, '0', '0', '2', '', '1', 'fa_table', 'id', 'name');
INSERT INTO `sys_auto_field` VALUES ('db7b212cbcd642b2a911e53bec88bf2f', '977fb9ba21534369a4c06c61c5783c36', 'password', '进入族谱密码', 255, 'VARCHAR', 0, '0', '0', '8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('e472184e0c4d4d68932bbde0498b1e5b', '6e8ce5ddd45e424ea91dbf6416a1e889', 'id', '主键', 36, 'VARCHAR', 0, '1', '1', '0', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('eda9d9c871ea4270b2a932ccaf7d0d1e', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'terminal_model', '终端型号', 255, 'VARCHAR', 0, '0', '0', '11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_auto_field` VALUES ('f8f6acd4d2c2412aa226d4b95b205c75', '6e8ce5ddd45e424ea91dbf6416a1e889', 'status', '状态', 4, 'VARCHAR', 0, '0', '0', '7', '507dcfeb7562421e93cba0e7d1300608', '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('fa4ba3c439624e3e9f196dcf3508f81b', '8d971e2a70fc4520b68b727b1617e5eb', 'birthday_date', '出生日期', 0, 'DATETIME', 0, '0', '0', '13', NULL, '0', '', '', '');
INSERT INTO `sys_auto_field` VALUES ('fd7ad385d29b45c986cde113866c0702', '27c3acdc8c2d417e89cb37ea9d40fdc4', 'update_time', '更新时间', 0, 'DATETIME', 0, '0', '0', '3', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_auto_field_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_field_param`;
CREATE TABLE `sys_auto_field_param`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联的字段或方法',
  `layout_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '种类（1.查询区域，2表格区域）',
  `type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '查询页面元素（1.输入框，2.下拉框，3.日期下拉框，4.按钮）\r\n表格页面元素（0.默认表格元素，1.表格操作按钮）',
  `param_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '与sys_auto_param关联',
  `param_index` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_auto_field_param
-- ----------------------------
INSERT INTO `sys_auto_field_param` VALUES ('0036e596cf19405385f8c985b73c3235', '族谱', 'daa43284d0314e0cb8c5f705408a2131', '2', '0', '4ff0b1f07f5c471c86388b01d7cc0fa7', '0');
INSERT INTO `sys_auto_field_param` VALUES ('0158a665c77d420cb79dede1153aa913', '删除', '2', '2', '1', '40219f6faef14778a1637126832b38e1', '1');
INSERT INTO `sys_auto_field_param` VALUES ('0563613f034f4dfca7c0b2f262e7f2c8', '保存', '1', '3', '4', 'b77376ad3d26427bb48157b63ed4a7a6', '4');
INSERT INTO `sys_auto_field_param` VALUES ('07b650ef7bba4e149c438a172a8bc26e', '新增', '4', '1', '4', 'b77376ad3d26427bb48157b63ed4a7a6', '4');
INSERT INTO `sys_auto_field_param` VALUES ('09cf2baaa4744d54b861d0352bc95333', '终端型号名称', '17a3bf0b9ad34443810caae5ab7d87c5', '3', '1', 'b77376ad3d26427bb48157b63ed4a7a6', '3');
INSERT INTO `sys_auto_field_param` VALUES ('0c8c6ed882f844e598a831969cd36a6c', '编辑', '1', '2', '1', '40219f6faef14778a1637126832b38e1', '0');
INSERT INTO `sys_auto_field_param` VALUES ('0e4ad20919c9435e85577c9e473835ed', '新增', '4', '1', '4', '4ff0b1f07f5c471c86388b01d7cc0fa7', '3');
INSERT INTO `sys_auto_field_param` VALUES ('17f2b82d7ca84a35b952951700e8ed6d', '状态', 'f8f6acd4d2c2412aa226d4b95b205c75', '1', '2', '40219f6faef14778a1637126832b38e1', '5');
INSERT INTO `sys_auto_field_param` VALUES ('1977e7ec88c7405c8bec201e7dab17df', '重置', '2', '1', '4', 'be84d61ff42c4efaa05b0705f30f0e28', '1');
INSERT INTO `sys_auto_field_param` VALUES ('19ddae25388641cbaa31be2782a8bb4e', '重置', '2', '1', '4', '4ff0b1f07f5c471c86388b01d7cc0fa7', '1');
INSERT INTO `sys_auto_field_param` VALUES ('1a6b309dae8544898e0b7faaac393506', '密码', 'db7b212cbcd642b2a911e53bec88bf2f', '3', '1', 'be84d61ff42c4efaa05b0705f30f0e28', '4');
INSERT INTO `sys_auto_field_param` VALUES ('1aea9061a3f74cdda2493a50313e1a63', '测试字段', '28745324440848d4aec057d7ff2de2ba', '1', '1', 'c7b86c6750a34f2f93383f5f9ff47a55', '0');
INSERT INTO `sys_auto_field_param` VALUES ('1ded09f546df4e90922cbad6f18e31ed', '终端型号', 'eda9d9c871ea4270b2a932ccaf7d0d1e', '1', '1', 'b77376ad3d26427bb48157b63ed4a7a6', '0');
INSERT INTO `sys_auto_field_param` VALUES ('20a1c54cf60744abbc659f90378380bc', '搜索', '1', '1', '4', 'c7b86c6750a34f2f93383f5f9ff47a55', '3');
INSERT INTO `sys_auto_field_param` VALUES ('224d52a3375d4aac9569bde1329320d9', '族谱名', '50aabfab37004744bed6e0d77d4e4d20', '2', '0', 'be84d61ff42c4efaa05b0705f30f0e28', '0');
INSERT INTO `sys_auto_field_param` VALUES ('2943d6a42678468d84d2b21da5ce855d', '族谱号', 'b5528b1a4f4b43978750da9e37b234b7', '2', '0', 'be84d61ff42c4efaa05b0705f30f0e28', '1');
INSERT INTO `sys_auto_field_param` VALUES ('29d8b7a794aa4e5ab10b0655c03fa3cb', '删除', '2', '2', '1', 'be84d61ff42c4efaa05b0705f30f0e28', '1');
INSERT INTO `sys_auto_field_param` VALUES ('2b968fde69604e76806c4d1cfc404a0e', '族谱名', '50aabfab37004744bed6e0d77d4e4d20', '3', '1', 'be84d61ff42c4efaa05b0705f30f0e28', '2');
INSERT INTO `sys_auto_field_param` VALUES ('2f3200b62c434658b20c3ffc7c9cf4a9', '姓名', 'b7a96f52fec14594b4082a0eaabdabb8', '3', '1', '3995dfe465f84467b6969589157d8aa8', '2');
INSERT INTO `sys_auto_field_param` VALUES ('335cec2de89a46378c59f90ba9e4bdf9', '新增', '4', '1', '4', '3995dfe465f84467b6969589157d8aa8', '2');
INSERT INTO `sys_auto_field_param` VALUES ('33ab9e04dce64950865eddaeb1c7d4f3', '电话', '3cf6c80f8581401792633ecc8a8896de', '3', '1', '3995dfe465f84467b6969589157d8aa8', '4');
INSERT INTO `sys_auto_field_param` VALUES ('3ecef4e84a114bf58dca69bae1d2edb8', '族谱号', 'b5528b1a4f4b43978750da9e37b234b7', '3', '1', 'be84d61ff42c4efaa05b0705f30f0e28', '3');
INSERT INTO `sys_auto_field_param` VALUES ('428c39670c614345b1fcee8f9dd9875b', '删除', '3', '1', '4', '3995dfe465f84467b6969589157d8aa8', '3');
INSERT INTO `sys_auto_field_param` VALUES ('4332b926c12949ea8c23c564467f1fd5', '测试字段', '10661e6b4e4c4a6f8924f2a5b13f9436', '2', '0', '40219f6faef14778a1637126832b38e1', '0');
INSERT INTO `sys_auto_field_param` VALUES ('4b15806b133543749ff30232b2c15570', '保存', '1', '3', '4', 'be84d61ff42c4efaa05b0705f30f0e28', '0');
INSERT INTO `sys_auto_field_param` VALUES ('4fb2eb720c2242f59bfdffc78930cf3e', '用户名', 'c61b0dc5db7543fc95308c5f6115c808', '3', '2', '40219f6faef14778a1637126832b38e1', '3');
INSERT INTO `sys_auto_field_param` VALUES ('5332ca7d7fb0492d85926ba9b6b50e0d', '状态', 'd1e68fd537b240c8b2a23c1b2ab21b5b', '3', '2', '3995dfe465f84467b6969589157d8aa8', '5');
INSERT INTO `sys_auto_field_param` VALUES ('5365b0a4d9644567a42a342960bfc871', '性别', '68b65e971d8f45ef86053e9882d2296e', '1', '2', '3995dfe465f84467b6969589157d8aa8', '6');
INSERT INTO `sys_auto_field_param` VALUES ('55a1e804669d458ab7e3d835e434a39f', '测试字段', '10661e6b4e4c4a6f8924f2a5b13f9436', '1', '1', '40219f6faef14778a1637126832b38e1', '4');
INSERT INTO `sys_auto_field_param` VALUES ('56077f555bc24b2ba79f3886829d7720', '测试状态', 'f8f6acd4d2c2412aa226d4b95b205c75', '3', '2', '40219f6faef14778a1637126832b38e1', '2');
INSERT INTO `sys_auto_field_param` VALUES ('56dba950715b433abefbbc5149ac5516', '测试选择框', '251d5142ce3243a0b2b111527a366d87', '3', '2', 'c7b86c6750a34f2f93383f5f9ff47a55', '1');
INSERT INTO `sys_auto_field_param` VALUES ('5bae29f5a4684312b348c5706e68c554', '测试人', '251d5142ce3243a0b2b111527a366d87', '2', '0', 'c7b86c6750a34f2f93383f5f9ff47a55', '2');
INSERT INTO `sys_auto_field_param` VALUES ('5d8913f0a311485e84251801fca2533f', '测试字段', '28745324440848d4aec057d7ff2de2ba', '3', '1', 'c7b86c6750a34f2f93383f5f9ff47a55', '0');
INSERT INTO `sys_auto_field_param` VALUES ('5f8222dd1427422eacda026e982bcdc3', '测试日期选择框', '4555f976bfed4718a2347bbb624ebc2b', '3', '3', 'c7b86c6750a34f2f93383f5f9ff47a55', '2');
INSERT INTO `sys_auto_field_param` VALUES ('622666efbdda4e33a2b0d25f5c57d30e', '新增', '4', '1', '4', 'c7b86c6750a34f2f93383f5f9ff47a55', '5');
INSERT INTO `sys_auto_field_param` VALUES ('6372e058aadc42d1ab8ba04e2d6e17f6', '终端型号', 'eda9d9c871ea4270b2a932ccaf7d0d1e', '3', '1', 'b77376ad3d26427bb48157b63ed4a7a6', '0');
INSERT INTO `sys_auto_field_param` VALUES ('63c4b94e4e5340d58ec77037e440ba34', '编辑', '1', '2', '1', 'c7b86c6750a34f2f93383f5f9ff47a55', '0');
INSERT INTO `sys_auto_field_param` VALUES ('63cf7257411d40d2a9b1dee937400907', '昵称', '37f96eb5d53c463f8769867780cf9021', '2', '0', '3995dfe465f84467b6969589157d8aa8', '0');
INSERT INTO `sys_auto_field_param` VALUES ('658367bea0b04736be63635e96e94149', '终端名称', '8b3bd003de4649a1aac0322d7e724bf5', '2', '0', 'b77376ad3d26427bb48157b63ed4a7a6', '1');
INSERT INTO `sys_auto_field_param` VALUES ('65a33089158949de8c01ae366d4d6d38', '重置', '2', '1', '4', 'b77376ad3d26427bb48157b63ed4a7a6', '3');
INSERT INTO `sys_auto_field_param` VALUES ('66855329cbc94cc684eda12759a8e0d1', '名称', 'b7a96f52fec14594b4082a0eaabdabb8', '2', '0', '3995dfe465f84467b6969589157d8aa8', '1');
INSERT INTO `sys_auto_field_param` VALUES ('687d9c6361e74ca1990ba81da266fc2c', '新增', '4', '1', '4', 'be84d61ff42c4efaa05b0705f30f0e28', '2');
INSERT INTO `sys_auto_field_param` VALUES ('6a484661c532492d8f5e900955c095fd', '删除', '3', '1', '4', '4ff0b1f07f5c471c86388b01d7cc0fa7', '2');
INSERT INTO `sys_auto_field_param` VALUES ('6ac52e98d605413f965781789ab56dec', '创建人', '8216e709ccb5492f95cb08f9b12ddae9', '3', '1', 'be84d61ff42c4efaa05b0705f30f0e28', '1');
INSERT INTO `sys_auto_field_param` VALUES ('6f29ae210b2a41fa9adcd24628232735', '编辑', '1', '2', '1', 'be84d61ff42c4efaa05b0705f30f0e28', '0');
INSERT INTO `sys_auto_field_param` VALUES ('70b2dc989826418db0cae4c5882e0b3a', '搜索', '1', '1', '4', '3995dfe465f84467b6969589157d8aa8', '0');
INSERT INTO `sys_auto_field_param` VALUES ('72280ffd0e06460f9fa03d0dbb1ca969', '删除', '3', '1', '4', 'c7b86c6750a34f2f93383f5f9ff47a55', '6');
INSERT INTO `sys_auto_field_param` VALUES ('730931ff5b6643cead90362e088c262d', '终端型号', 'eda9d9c871ea4270b2a932ccaf7d0d1e', '2', '0', 'b77376ad3d26427bb48157b63ed4a7a6', '0');
INSERT INTO `sys_auto_field_param` VALUES ('7349a5d9fce343fdb6b70f06ab3ff283', '性别', '68b65e971d8f45ef86053e9882d2296e', '2', '0', '3995dfe465f84467b6969589157d8aa8', '3');
INSERT INTO `sys_auto_field_param` VALUES ('79b86869277b4a94b0f8a33482aa8af2', '保存', '1', '3', '4', '40219f6faef14778a1637126832b38e1', '0');
INSERT INTO `sys_auto_field_param` VALUES ('7ba88cae81c24027a65b3f793f3ef9a8', '删除', '2', '2', '1', 'c7b86c6750a34f2f93383f5f9ff47a55', '1');
INSERT INTO `sys_auto_field_param` VALUES ('7e204fe340f1424c925482b88fb76ec7', '状态', 'f8f6acd4d2c2412aa226d4b95b205c75', '2', '0', '40219f6faef14778a1637126832b38e1', '1');
INSERT INTO `sys_auto_field_param` VALUES ('7e2f3fc124f04a7497981ff9b4082c28', '用户名', 'b7a96f52fec14594b4082a0eaabdabb8', '1', '1', '3995dfe465f84467b6969589157d8aa8', '4');
INSERT INTO `sys_auto_field_param` VALUES ('7ea4a5b459fb4f34b9d08650b5f5e38a', '用户名', 'c61b0dc5db7543fc95308c5f6115c808', '2', '0', '40219f6faef14778a1637126832b38e1', '2');
INSERT INTO `sys_auto_field_param` VALUES ('812b142b833349f79bf7108eb5ad2451', '测试字段', '28745324440848d4aec057d7ff2de2ba', '2', '0', 'c7b86c6750a34f2f93383f5f9ff47a55', '0');
INSERT INTO `sys_auto_field_param` VALUES ('8401ee716e064d9996e17ec7cdfaa264', '查看', '3', '2', '1', 'c7b86c6750a34f2f93383f5f9ff47a55', '2');
INSERT INTO `sys_auto_field_param` VALUES ('89eb9a228f754bc4811b14ca71b81953', '性别', '68b65e971d8f45ef86053e9882d2296e', '3', '2', '3995dfe465f84467b6969589157d8aa8', '3');
INSERT INTO `sys_auto_field_param` VALUES ('959c8b89cd6949b89b763808479d611c', '搜索', '1', '1', '4', 'b77376ad3d26427bb48157b63ed4a7a6', '2');
INSERT INTO `sys_auto_field_param` VALUES ('975623a3dd0341dba59576b5a2baeba1', '电话', '3cf6c80f8581401792633ecc8a8896de', '1', '1', '3995dfe465f84467b6969589157d8aa8', '5');
INSERT INTO `sys_auto_field_param` VALUES ('9833f635f76b4eaa87744042b3114822', '删除', '3', '1', '4', 'be84d61ff42c4efaa05b0705f30f0e28', '3');
INSERT INTO `sys_auto_field_param` VALUES ('98531da660b94ac4a275c8931f70b6a3', '测试时间', '97fa481bc04741548266f504a6265126', '1', '3', 'c7b86c6750a34f2f93383f5f9ff47a55', '1');
INSERT INTO `sys_auto_field_param` VALUES ('987eb4b985b3463994f43fc08a84cd33', '编辑', '1', '2', '1', '4ff0b1f07f5c471c86388b01d7cc0fa7', '1');
INSERT INTO `sys_auto_field_param` VALUES ('9e30557bd8ce404bb4f3e9f6afcac5ab', '搜索', '1', '1', '4', 'be84d61ff42c4efaa05b0705f30f0e28', '0');
INSERT INTO `sys_auto_field_param` VALUES ('a5bc898f5a3e4330a1593bf05cf2e7e9', '编辑', '1', '2', '1', 'b77376ad3d26427bb48157b63ed4a7a6', '0');
INSERT INTO `sys_auto_field_param` VALUES ('aaaee521e7004eb1aa30adef25b886c8', '用户', 'c61b0dc5db7543fc95308c5f6115c808', '1', '2', '40219f6faef14778a1637126832b38e1', '6');
INSERT INTO `sys_auto_field_param` VALUES ('b0a9b7b630da4fc799f859747642647c', '用户', 'a236393876334d89967c288ddad17af1', '2', '0', '4ff0b1f07f5c471c86388b01d7cc0fa7', '1');
INSERT INTO `sys_auto_field_param` VALUES ('b35f46bdca2246fdbcaefcf848ecdb51', '新增', '4', '1', '4', '40219f6faef14778a1637126832b38e1', '2');
INSERT INTO `sys_auto_field_param` VALUES ('b691692252054ad7b14fd608485a5cac', '状态', 'd1e68fd537b240c8b2a23c1b2ab21b5b', '2', '0', '3995dfe465f84467b6969589157d8aa8', '4');
INSERT INTO `sys_auto_field_param` VALUES ('bec8a14ac4714fdda777c1eab5ea1818', '保存', '1', '3', '4', 'c7b86c6750a34f2f93383f5f9ff47a55', '3');
INSERT INTO `sys_auto_field_param` VALUES ('c8c7cf4f38ce41b69fafcfdb95bdd217', '保存', '1', '3', '4', '3995dfe465f84467b6969589157d8aa8', '0');
INSERT INTO `sys_auto_field_param` VALUES ('cd943f2f4e934d7f8e67ac27248c070d', '编辑', '1', '2', '1', '3995dfe465f84467b6969589157d8aa8', '0');
INSERT INTO `sys_auto_field_param` VALUES ('d1c188d98ed5468abaafaddbdd1ebd28', '终端名称', '8b3bd003de4649a1aac0322d7e724bf5', '3', '1', 'b77376ad3d26427bb48157b63ed4a7a6', '1');
INSERT INTO `sys_auto_field_param` VALUES ('d4b5a85f681b4b5a8331fdc19eb7bc0d', '删除', '2', '2', '1', '3995dfe465f84467b6969589157d8aa8', '1');
INSERT INTO `sys_auto_field_param` VALUES ('d62365401511492a8cea7ab6dd06c980', '删除', '3', '1', '4', '40219f6faef14778a1637126832b38e1', '3');
INSERT INTO `sys_auto_field_param` VALUES ('da6b430f140a4beea809fa09d177f9ca', '重置', '2', '1', '4', '3995dfe465f84467b6969589157d8aa8', '1');
INSERT INTO `sys_auto_field_param` VALUES ('dc1a9562a5224f6ab6e34fb7ffff2fa3', '昵称', '37f96eb5d53c463f8769867780cf9021', '3', '1', '3995dfe465f84467b6969589157d8aa8', '1');
INSERT INTO `sys_auto_field_param` VALUES ('df1cdce7ea85447eaa0a588ad6a2663e', '用户', 'a236393876334d89967c288ddad17af1', '3', '2', '4ff0b1f07f5c471c86388b01d7cc0fa7', '2');
INSERT INTO `sys_auto_field_param` VALUES ('e15bd74eae0e4b9195ddcbeafb5dcc71', '族谱号', 'b5528b1a4f4b43978750da9e37b234b7', '1', '1', 'be84d61ff42c4efaa05b0705f30f0e28', '4');
INSERT INTO `sys_auto_field_param` VALUES ('e1cc38c51ae94fb9b7a89200544f6108', '测试时间', '97fa481bc04741548266f504a6265126', '2', '0', 'c7b86c6750a34f2f93383f5f9ff47a55', '1');
INSERT INTO `sys_auto_field_param` VALUES ('e283e1b241a3411ea184e9c1574f7930', '终端名称', '8b3bd003de4649a1aac0322d7e724bf5', '1', '1', 'b77376ad3d26427bb48157b63ed4a7a6', '1');
INSERT INTO `sys_auto_field_param` VALUES ('e2e696f00efe4614b970326f657ee940', '终端编号', '66ee26b687b54bd4ac81233650883a3f', '2', '0', 'b77376ad3d26427bb48157b63ed4a7a6', '2');
INSERT INTO `sys_auto_field_param` VALUES ('e6ecd444b9eb48f286a04cac67e53e1a', '查询', '1', '1', '4', '4ff0b1f07f5c471c86388b01d7cc0fa7', '0');
INSERT INTO `sys_auto_field_param` VALUES ('e6ee7472ea6144f58680426989ed8fc9', '测试人', '251d5142ce3243a0b2b111527a366d87', '1', '2', 'c7b86c6750a34f2f93383f5f9ff47a55', '2');
INSERT INTO `sys_auto_field_param` VALUES ('e84ed5a21ce242c0b573b6f1b25e0416', '族谱', 'daa43284d0314e0cb8c5f705408a2131', '3', '2', '4ff0b1f07f5c471c86388b01d7cc0fa7', '1');
INSERT INTO `sys_auto_field_param` VALUES ('eb749f935b234e95a5c19201c6b813bc', '电话', '3cf6c80f8581401792633ecc8a8896de', '2', '0', '3995dfe465f84467b6969589157d8aa8', '2');
INSERT INTO `sys_auto_field_param` VALUES ('ecb06bce57474f1c9de4384dc2e43b24', '保存', '1', '3', '4', '4ff0b1f07f5c471c86388b01d7cc0fa7', '0');
INSERT INTO `sys_auto_field_param` VALUES ('f488446745ea42eea66fcff360384d92', '终端型号名称', '17a3bf0b9ad34443810caae5ab7d87c5', '2', '0', 'b77376ad3d26427bb48157b63ed4a7a6', '3');
INSERT INTO `sys_auto_field_param` VALUES ('f4e8c35d5a694b92b05c0a23b8e026e3', '终端编号', '66ee26b687b54bd4ac81233650883a3f', '3', '1', 'b77376ad3d26427bb48157b63ed4a7a6', '2');
INSERT INTO `sys_auto_field_param` VALUES ('f516a2f09f0d49db90552c1d9aa03e5b', '删除', '2', '2', '1', '4ff0b1f07f5c471c86388b01d7cc0fa7', '0');
INSERT INTO `sys_auto_field_param` VALUES ('f55946901c4a469aa092534915ab906e', '族谱', 'daa43284d0314e0cb8c5f705408a2131', '1', '2', '4ff0b1f07f5c471c86388b01d7cc0fa7', '4');
INSERT INTO `sys_auto_field_param` VALUES ('f5a56d97234440eab94d587a9d973991', '重置', '2', '1', '4', '40219f6faef14778a1637126832b38e1', '1');
INSERT INTO `sys_auto_field_param` VALUES ('fae0b0da22ee4ab1976b7422e0751fde', '测试字段', '10661e6b4e4c4a6f8924f2a5b13f9436', '3', '1', '40219f6faef14778a1637126832b38e1', '1');
INSERT INTO `sys_auto_field_param` VALUES ('fb6ffeb91e4342b09a12d7b922a68519', '删除', '2', '2', '1', 'b77376ad3d26427bb48157b63ed4a7a6', '1');
INSERT INTO `sys_auto_field_param` VALUES ('fbd9c893b5b84ae48de6065adb41f1e3', '重置', '2', '1', '4', 'c7b86c6750a34f2f93383f5f9ff47a55', '4');
INSERT INTO `sys_auto_field_param` VALUES ('ff846f796a174c329216a47161a1e355', '搜索', '1', '1', '4', '40219f6faef14778a1637126832b38e1', '0');
INSERT INTO `sys_auto_field_param` VALUES ('ffbadd647fdc4e34ab35e9a8da4d2ce9', '用户', 'a236393876334d89967c288ddad17af1', '1', '2', '4ff0b1f07f5c471c86388b01d7cc0fa7', '5');

-- ----------------------------
-- Table structure for sys_auto_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_param`;
CREATE TABLE `sys_auto_param`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `layout_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '布局类型',
  `show_query` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '查询区域（0：false，1：true）',
  `show_table` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格区域（0：false，1：true）',
  `show_edit` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '编辑区域（0：false，1：true）',
  `show_page` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分页区域（0：false，1：true）',
  `show_opera_table` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格操作区域（0：false，1：true）',
  `show_check_table` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格勾选区域（0：false，1：true）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `table_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主表id',
  `update_user` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_auto_param
-- ----------------------------
INSERT INTO `sys_auto_param` VALUES ('3995dfe465f84467b6969589157d8aa8', '1', '1', '1', '1', '1', '1', '1', '2021-02-28 23:28:13', '4fcee6c3f7164300ab75e67b32871145', '8d971e2a70fc4520b68b727b1617e5eb', '4fcee6c3f7164300ab75e67b32871145', '2021-02-28 23:34:07');
INSERT INTO `sys_auto_param` VALUES ('40219f6faef14778a1637126832b38e1', '1', '1', '1', '1', '1', '1', '1', '2021-02-07 16:20:21', '4fcee6c3f7164300ab75e67b32871145', '6e8ce5ddd45e424ea91dbf6416a1e889', '4fcee6c3f7164300ab75e67b32871145', '2021-02-07 17:25:49');
INSERT INTO `sys_auto_param` VALUES ('4ff0b1f07f5c471c86388b01d7cc0fa7', '1', '1', '1', '1', '1', '1', '1', '2021-03-20 20:35:56', 'ef46ddb8e7f84c7db1d81110ba992aa0', '2e6b1212fef94aadba225079f728f165', 'ef46ddb8e7f84c7db1d81110ba992aa0', '2021-03-20 20:38:20');
INSERT INTO `sys_auto_param` VALUES ('b77376ad3d26427bb48157b63ed4a7a6', '1', '1', '1', '1', '1', '1', '1', '2021-01-29 10:42:03', '', '27c3acdc8c2d417e89cb37ea9d40fdc4', '', '2021-01-29 14:25:43');
INSERT INTO `sys_auto_param` VALUES ('be84d61ff42c4efaa05b0705f30f0e28', '1', '1', '1', '1', '1', '1', '1', '2021-03-18 09:39:29', 'ef46ddb8e7f84c7db1d81110ba992aa0', '977fb9ba21534369a4c06c61c5783c36', 'ef46ddb8e7f84c7db1d81110ba992aa0', '2021-03-18 22:50:18');
INSERT INTO `sys_auto_param` VALUES ('c7b86c6750a34f2f93383f5f9ff47a55', '1', '1', '1', '1', '1', '1', '1', '2021-01-19 14:06:08', '', '821731e7bdfc4b71af6602d95b5b78ed', '', '2021-01-25 18:42:41');

-- ----------------------------
-- Table structure for sys_auto_table
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_table`;
CREATE TABLE `sys_auto_table`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表名',
  `table_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表类型：0单表，1主表，2附表',
  `parent_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父表',
  `status` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态：0未生成，1已生成，2已删除',
  `type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '类型：模板1，模板2.。。。。。。',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_user` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_template` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为模板：0否1是',
  `temPlate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板名称',
  `create_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板路径',
  `api_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接口名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_auto_table
-- ----------------------------
INSERT INTO `sys_auto_table` VALUES ('27c3acdc8c2d417e89cb37ea9d40fdc4', 'phone_model', '0', NULL, '0', '', '手机型号表', '', '2021-01-29 09:40:53', '', '2021-01-29 09:54:15', '0', NULL, NULL, NULL);
INSERT INTO `sys_auto_table` VALUES ('2e6b1212fef94aadba225079f728f165', 'fa_table_user', '1', NULL, '0', '', '用户与族谱映射表', 'ef46ddb8e7f84c7db1d81110ba992aa0', '2021-03-20 20:29:27', NULL, NULL, '0', NULL, 'com.dhlg.familyTree.tableUser', 'api/familyTree/tableUser');
INSERT INTO `sys_auto_table` VALUES ('6e8ce5ddd45e424ea91dbf6416a1e889', 'yyyy', '1', NULL, '0', '', 'yyyy', '', '2021-01-24 23:43:56', '4fcee6c3f7164300ab75e67b32871145', '2021-02-05 09:48:16', '0', NULL, 'com.dhlg.system.yyyy', 'api/system/yyyy');
INSERT INTO `sys_auto_table` VALUES ('7042ba55aa4446a294b424912361ce7a', NULL, NULL, NULL, NULL, '0', NULL, 'ef46ddb8e7f84c7db1d81110ba992aa0', '2021-03-20 20:35:56', NULL, NULL, '1', '模板1', NULL, NULL);
INSERT INTO `sys_auto_table` VALUES ('821731e7bdfc4b71af6602d95b5b78ed', 'vvvv', '0', NULL, '0', '', 'vvvv', '', '2021-01-13 17:11:47', NULL, NULL, '0', NULL, 'com.dhlg.system.vvvv', 'api/system/vvvv');
INSERT INTO `sys_auto_table` VALUES ('8d971e2a70fc4520b68b727b1617e5eb', 'fa_user', '0', NULL, '0', '', '家谱用户', '', '2021-02-25 16:30:46', '4fcee6c3f7164300ab75e67b32871145', '2021-02-25 16:59:22', '0', NULL, 'com.dhlg.familyTree.faUser', 'api/familyTree/faUser');
INSERT INTO `sys_auto_table` VALUES ('977fb9ba21534369a4c06c61c5783c36', 'fa_table', '0', NULL, '0', '', '创建的族谱', '', '2021-02-25 15:22:18', NULL, NULL, '0', NULL, 'com.dhlg.familyTree.faTable', 'api/familyTree/faTable');

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮id主键',
  `button_code` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '鎸夐挳缂栫爜',
  `status` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `button_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '鎸夐挳鍚嶇О',
  `menu_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属菜单id',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮描述',
  `create_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新用户',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `button_url` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES ('0f9366c3ac244b7eab15aeaa6a03c943', 'T001', '0', '新增/修改', '3f913fd812364619a8efe9b727696a98', '新增/修改字典', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:33:41', '4fcee6c3f7164300ab75e67b32871145', '2020-08-07 17:40:54', 'sysdic:save');
INSERT INTO `sys_button` VALUES ('11a09de082b949bcbdd400723c2b3887', 'T002', '1', '删除', '95456a9c2e394441b97671dbe19137bb', '删除按钮', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:35:46', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:36:34', 'buttonConfig:deleteID');
INSERT INTO `sys_button` VALUES ('13f2ea34b9d5447e9d04943395aad098', 'T002', '1', '删除', '3f913fd812364619a8efe9b727696a98', '删除字典', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:33:05', NULL, NULL, 'sysdic:deleteID');
INSERT INTO `sys_button` VALUES ('1b38f27b09d6436cbd7ce578f28f7a8e', 'T003', '1', '批量删除', '3f913fd812364619a8efe9b727696a98', '批量删除字典类型', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:34:55', NULL, NULL, 'dicType:bacthDelete');
INSERT INTO `sys_button` VALUES ('292fa92fae2c4cb9a1136ba699a40365', 'T007', '1', '重置密码', 'fd8a867a59924bbcae445046d7e1a5c2', '重置密码', '4fcee6c3f7164300ab75e67b32871145', '2020-03-22 14:47:44', NULL, NULL, 'sysUser:resetPassword');
INSERT INTO `sys_button` VALUES ('2d062a47fd8a4e1a98b552ef60c37643', 'T001', '1', '新增/修改', 'fd8a867a59924bbcae445046d7e1a5c2', '新增/修改管理员', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:31:14', NULL, NULL, 'sysUser:save');
INSERT INTO `sys_button` VALUES ('366a577f08674f8bbe4c3f7164e908a7', 'T002', '1', '删除', 'e4b0afc1df694c12b54f3d8e58c394ca', '删除菜单', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:19:31', NULL, NULL, 'sysMenu:delete');
INSERT INTO `sys_button` VALUES ('3700186ba1a5417490322f4d337a7ea4', 'T001', '1', '新增/修改', 'e4b0afc1df694c12b54f3d8e58c394ca', '新增/修改菜单', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:18:43', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:19:39', 'sysMenu:save');
INSERT INTO `sys_button` VALUES ('5a193e98280e46e1b6a86c68aeb653eb', 'T001', '1', '新增/修改', 'e4b0afc1df694c12b54f3d8e58c394ca', '新增/修改权限按钮', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:21:13', NULL, NULL, 'sysButton:save');
INSERT INTO `sys_button` VALUES ('7b373815054e49bfabaf0273f0419bc9', 'T006', '1', '批量保存', 'eee385792dc44c7191641f4cc70e007c', '批量保存权限', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:29:27', NULL, NULL, 'rolePermission:save');
INSERT INTO `sys_button` VALUES ('98837acc49d5480793ebd949d6410548', 'T002', '1', '删除', '3f913fd812364619a8efe9b727696a98', '删除字典类型', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:34:32', NULL, NULL, 'dicType:deleteID');
INSERT INTO `sys_button` VALUES ('9cdd5443365f4e38a478d6e36c6aa40e', 'T002', '1', '删除', 'e4b0afc1df694c12b54f3d8e58c394ca', '删除权限按钮', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:21:42', NULL, NULL, 'sysButton:delete');
INSERT INTO `sys_button` VALUES ('b24fa16517354646ac49bd535b081f80', 'T001', '1', '新增/修改', '95456a9c2e394441b97671dbe19137bb', '新增/修改按钮', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:35:27', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:36:10', 'buttonConfig:save');
INSERT INTO `sys_button` VALUES ('be0eb3b0c68441bc8b6de554082821f3', 'T003', '1', '批量删除', 'fd8a867a59924bbcae445046d7e1a5c2', '批量删除管理员', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:31:56', NULL, NULL, 'sysUser:batchDelete');
INSERT INTO `sys_button` VALUES ('c8b689b3a9484fb69e4532a185928baa', 'T003', '1', '批量删除', '95456a9c2e394441b97671dbe19137bb', '批量删除按钮', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:36:53', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:37:00', 'buttonConfig:batchDelete');
INSERT INTO `sys_button` VALUES ('d2e2d7bb8373428bab6b03d7aca33f7d', 'T003', '1', '批量删除', '3f913fd812364619a8efe9b727696a98', '批量删除字典', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:32:51', NULL, NULL, 'sysdic:batchDelete');
INSERT INTO `sys_button` VALUES ('d94b592715de4489b5bc61cfc767ac18', 'T001', '1', '新增/修改', '3f913fd812364619a8efe9b727696a98', '新增/修改字典类型', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:34:11', NULL, NULL, 'dicType:save');
INSERT INTO `sys_button` VALUES ('e983e5dbfd6e41cbb24553cd9ae007f3', 'T002', '1', '删除', 'fd8a867a59924bbcae445046d7e1a5c2', '删除管理员', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:31:37', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:32:03', 'sysUser:deleteID');
INSERT INTO `sys_button` VALUES ('eac4c809840e46d6ada8ed12773d831b', 'T001', '1', '新增/修改', 'eee385792dc44c7191641f4cc70e007c', '新增/修改角色', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:22:21', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:25:01', 'sysRole:save');
INSERT INTO `sys_button` VALUES ('eadcec66d32c4eb0998eab7b2bb9abfd', 'T002', '1', '删除', 'eee385792dc44c7191641f4cc70e007c', '删除角色', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:23:30', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:25:27', 'sysRole:delete');
INSERT INTO `sys_button` VALUES ('f1eb624af2cf42448671288969f9f6a5', 'T003', '1', '批量删除', 'eee385792dc44c7191641f4cc70e007c', '批量删除角色', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:22:47', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:25:40', 'sysRole:batchDelete');
INSERT INTO `sys_button` VALUES ('f98965a6d0e84829a3c59644b9108cc8', 'T005', '1', '批量更新状态', 'eee385792dc44c7191641f4cc70e007c', '批量更新角色状态', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:27:55', NULL, NULL, 'sysRole:updateStatus');

-- ----------------------------
-- Table structure for sys_button_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_button_config`;
CREATE TABLE `sys_button_config`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮id',
  `button_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮编码',
  `button_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮描述',
  `create_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新用户',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_button_config
-- ----------------------------
INSERT INTO `sys_button_config` VALUES ('27d1d29b22da4da6a01d3be35070e303', 'T007', '重置密码', '重置密码', '4fcee6c3f7164300ab75e67b32871145', '2020-03-22 14:47:03', NULL, NULL);
INSERT INTO `sys_button_config` VALUES ('3cc5d609a587456ea35442dacb02a6dc', 'T001', '新增/修改', '新增/修改', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:15:41', NULL, NULL);
INSERT INTO `sys_button_config` VALUES ('7cc1ec1d04b54ecbbfdcfdb15b7eb048', 'T006', '批量保存', '批量保存', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:28:59', NULL, NULL);
INSERT INTO `sys_button_config` VALUES ('8a9aa865dc6141babcca76286083031e', 'T005', '批量更新状态', '批量更新状态', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:26:52', NULL, NULL);
INSERT INTO `sys_button_config` VALUES ('d64e4f7795a447cab75a0830a91ba093', 'T003', '批量删除', '批量删除', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:16:18', NULL, NULL);
INSERT INTO `sys_button_config` VALUES ('dd6389887e28413fa1f3f63a5bb030d2', 'T002', '删除', '删除', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:16:06', NULL, NULL);
INSERT INTO `sys_button_config` VALUES ('f64e1d2367cd4930a8aa5fe0da64bec1', 'T004', '更新状态', '更新状态', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:26:30', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dic
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic`;
CREATE TABLE `sys_dic`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典数据id',
  `dic_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典数据标签',
  `dic_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典数据值',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典数据状态',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典状态描述',
  `dic_type_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属字典类型id',
  `create_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新用户',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dic
-- ----------------------------
INSERT INTO `sys_dic` VALUES ('06790bac7c0b45a9973bc1e39a293007', 'DOUBLE', '6', '1', '浮点数值', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:13:03', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('0f5ca1ecb90846a7adcce173c9088e74', '启用', '1', '1', '启用', '5c3f998628df4b8ca5fe0a77a0dfb028', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:08:27', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('15771d5c2e1842638b29dcfde176a164', '其他', '0', '1', '其他', 'f4e43c924d7a4dff96e5eea0d38b281c', '4fcee6c3f7164300ab75e67b32871145', '2020-06-16 22:05:17', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('181f1605af9f48a298068be82a8aa4ad', 'INT', '3', '1', '大整数值 4byte', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:09:14', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('1d59a86f23e44409ae0c120c4c755282', '是', '1', '1', '是', '507dcfeb7562421e93cba0e7d1300608', '4fcee6c3f7164300ab75e67b32871145', '2021-01-31 19:36:48', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('23b0ea617b6b4625b1e5b2abdd781ab1', 'linux', '3', '1', 'linux', 'f4e43c924d7a4dff96e5eea0d38b281c', '4fcee6c3f7164300ab75e67b32871145', '2020-06-16 22:04:54', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('28d3d388733f4ce8a5fbd463fba86b69', 'TIME', '9', '1', '时间值或持续时间', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:14:51', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('2a53f91c40dd42619eccc37ed68fb46f', 'BLOB', '17', '1', '二进制形式的长文本数据', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:24:55', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('304f7c2067b745018604f96144ed4246', 'CHAR', '13', '1', '定长字符串', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:23:42', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('3f2e83cf046841dd846055367294f00a', '已生成', '1', '1', '模板已生成', '08cf86e081bb47728563c853af0aec1e', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 09:45:34', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('41242682a5854873a75273e611e0fa45', '主表', '1', '1', '主表', 'adda6338493546faa980adc61bd4a84e', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 10:53:31', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('43133df22c2e468d9f09778ec28757c0', '未状态', '0', '1', '未状态', '80c4072f134c435997fe8c665516c404', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:40:54', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('4770647e8f794c21ae1caa72fc5e1ed3', 'VARCHAR', '14', '1', '变长字符串', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:23:55', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('513b52f2e68c4a2596b911689e473e02', 'varchar', '0', '1', '字符型', NULL, '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 16:24:06', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('68165c46a8dc4888bc4418845961b0b6', '已登入', '1', '1', '已登入', '80c4072f134c435997fe8c665516c404', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:41:08', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('6cf5480f73274756b17539fab8752990', '单表', '0', '1', '单表', 'adda6338493546faa980adc61bd4a84e', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 10:53:12', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('6fa4f4cb593d42e59680559bad88d5aa', 'TEXT', '18', '1', '长文本数据', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:25:09', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('77821d37cf714210a9b99f90b6f7dc38', 'BIGINT', '5', '1', '极大整数值 8 bytes', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:11:46', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:12:36');
INSERT INTO `sys_dic` VALUES ('82e816dd3ee24d678b700eb9ae4b3ce4', '禁用', '0', '1', '禁用', '5c3f998628df4b8ca5fe0a77a0dfb028', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:08:13', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('877d106143974ce49d569a3084dc9459', 'LONGTEXT', '22', '1', '极大文本数据', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:25:58', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('8bb8b2597f4d42a4a9f7837d35a00e87', '否', '0', '1', '否', '507dcfeb7562421e93cba0e7d1300608', '4fcee6c3f7164300ab75e67b32871145', '2021-01-31 19:36:31', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('9696583debba43dd827a3fbce882c086', '附表', '2', '1', '附表', 'adda6338493546faa980adc61bd4a84e', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 10:53:43', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('9b37562a38b34cfe962ecf5d88ee52dc', 'TINYTEXT', '16', '1', '短文本字符串', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:24:36', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('9c002b2c2ca54f90a99286dc964a5038', '存在', '1', '1', '存在', 'd598e4e5ee5e4a83a158557398a4cce6', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:10:23', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('9d8a62ffe68645488f933feb957ad355', '女', '1', '1', '女', 'db3d45abda294918a1f7f16d8b0308e8', '4fcee6c3f7164300ab75e67b32871145', '2020-03-08 04:05:15', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('9ecc34507b13468b96ef9c59c09fa107', '男', '0', '1', '男', 'db3d45abda294918a1f7f16d8b0308e8', '4fcee6c3f7164300ab75e67b32871145', '2020-03-08 04:05:06', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('a4ff7a7ac2db4319a04f97644571aa79', '未生成', '0', '1', '代码未生成', '08cf86e081bb47728563c853af0aec1e', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 09:43:44', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('a5655b1fa3da48178fc7a7f3fdc810f1', '模板一', '0', '1', '模板一', '487646fe53184216aca0e7232d45ef1b', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 14:48:26', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('a5ad3c227d8340008dd7d72168b22e7d', 'TINYINT', '0', '1', '小整数值', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:08:12', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('a84292d2165b4542a5107562b18cafcb', 'FLOAT', '4', '1', '浮点数值4 bytes', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:12:05', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:12:22');
INSERT INTO `sys_dic` VALUES ('a995a8b932d049dba1c0b1251b739249', 'MEDIUMTEXT', '20', '1', '中等长度文本数据', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:25:34', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('ad42a5a1ce824e468ddf1fbe69426fb6', 'TINYBLOB', '15', '1', '不超过 255 个字符的二进制字符串', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:24:20', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('b79179d2a58e464eb394d7fa520f9914', '健在', '0', '1', '健在', '789492ed5edc4f20b8f9d756a6dd9fc8', '4fcee6c3f7164300ab75e67b32871145', '2021-02-25 16:58:24', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('baf69dc198bd46ecad249af521396e64', 'DECIMAL', '7', '1', '小数值', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:13:17', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('c4c4b3f94ac944f98d1df7ae8b2097da', '模板二', '1', '1', '模板一', '487646fe53184216aca0e7232d45ef1b', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 14:48:38', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('c93708714c4f448e9c7c4db68479137b', 'DATETIME', '11', '1', '混合日期和时间值', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:15:23', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('cc1caf56848d419aaad8ce6713b04cbf', '不存在', '0', '1', '不存在', 'd598e4e5ee5e4a83a158557398a4cce6', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:10:12', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('d0f4196e1f8340d9bad7b62f452e4e07', 'MEDIUMBLOB', '19', '1', '二进制形式的中等长度文本数据', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:25:25', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('d6f7954da58f4c54b132ef68d7b3693d', '已删除', '2', '1', '已删除', '08cf86e081bb47728563c853af0aec1e', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 09:49:10', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('d839a5091aa542e6a4f09c0bf4f8658f', 'java', '2', '1', 'java', 'f4e43c924d7a4dff96e5eea0d38b281c', '4fcee6c3f7164300ab75e67b32871145', '2020-06-16 22:03:44', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('da275295aa8b40c58203b4bc76a4e834', 'LONGBLOB', '21', '1', '二进制形式的极大文本数据', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:25:45', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('da7bd2bf9ef444b7a97782a4356d353f', 'MEDIUMINT', '2', '1', '大整数值 3byte', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:08:43', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:09:29');
INSERT INTO `sys_dic` VALUES ('e4dadb0df1c74266aab3da49a28e9779', '已故', '1', '1', '已故', '789492ed5edc4f20b8f9d756a6dd9fc8', '4fcee6c3f7164300ab75e67b32871145', '2021-02-25 16:58:37', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('e5fe84e5dd834bc9a806744062cdd437', 'SMALLINT', '1', '1', '大整数值', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:08:28', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('eadec425b54549bd8cc966a9ea4f8143', 'vue', '1', '1', 'vue', 'f4e43c924d7a4dff96e5eea0d38b281c', '4fcee6c3f7164300ab75e67b32871145', '2020-06-16 22:03:32', NULL, NULL);
INSERT INTO `sys_dic` VALUES ('eec21245b2484da986489abbbafd29b2', 'TIMESTAMP', '12', '1', '混合日期和时间值，时间戳', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:15:39', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:23:10');
INSERT INTO `sys_dic` VALUES ('f33f6d02e640415fbdf963a639999950', 'YEAR', '10', '1', '年份值', '67409b5a120c49b4a3fdab8d23708e14', '4fcee6c3f7164300ab75e67b32871145', '2020-10-19 17:15:11', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic_type`;
CREATE TABLE `sys_dic_type`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典类型id',
  `dic_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型名称',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典类型状态',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型描述',
  `create_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新用户',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dic_type
-- ----------------------------
INSERT INTO `sys_dic_type` VALUES ('08cf86e081bb47728563c853af0aec1e', 'autoTableStatus', '1', '代码生成中表的状态', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 09:34:14', NULL, NULL);
INSERT INTO `sys_dic_type` VALUES ('487646fe53184216aca0e7232d45ef1b', 'autoTableTemplate', '1', '前端模板类型', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 10:06:06', NULL, NULL);
INSERT INTO `sys_dic_type` VALUES ('507dcfeb7562421e93cba0e7d1300608', 'status', '1', '状态', '4fcee6c3f7164300ab75e67b32871145', '2021-01-31 19:36:10', NULL, NULL);
INSERT INTO `sys_dic_type` VALUES ('5c3f998628df4b8ca5fe0a77a0dfb028', 'enabled', '1', '启用状态', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:07:30', '4fcee6c3f7164300ab75e67b32871145', '2021-02-01 16:17:34');
INSERT INTO `sys_dic_type` VALUES ('67409b5a120c49b4a3fdab8d23708e14', 'fieldType', '1', '字段类型', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 17:11:38', NULL, NULL);
INSERT INTO `sys_dic_type` VALUES ('789492ed5edc4f20b8f9d756a6dd9fc8', 'liveState', '1', '生存状态', '4fcee6c3f7164300ab75e67b32871145', '2021-02-25 16:56:34', NULL, NULL);
INSERT INTO `sys_dic_type` VALUES ('80c4072f134c435997fe8c665516c404', 'loginStatus', '1', '登入状态', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:39:58', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:40:27');
INSERT INTO `sys_dic_type` VALUES ('adda6338493546faa980adc61bd4a84e', 'autoTableType', '1', '表类型', '4fcee6c3f7164300ab75e67b32871145', '2020-10-16 10:52:49', NULL, NULL);
INSERT INTO `sys_dic_type` VALUES ('d598e4e5ee5e4a83a158557398a4cce6', 'isChildren', '1', '是否存在下级', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:09:40', NULL, NULL);
INSERT INTO `sys_dic_type` VALUES ('db3d45abda294918a1f7f16d8b0308e8', 'gender', '1', '性别', '4fcee6c3f7164300ab75e67b32871145', '2020-03-08 04:04:43', NULL, NULL);
INSERT INTO `sys_dic_type` VALUES ('f4e43c924d7a4dff96e5eea0d38b281c', 'blogType', '1', '博客标签', '4fcee6c3f7164300ab75e67b32871145', '2020-06-16 22:02:09', NULL, NULL);

-- ----------------------------
-- Table structure for sys_files
-- ----------------------------
DROP TABLE IF EXISTS `sys_files`;
CREATE TABLE `sys_files`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路径',
  `type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_files
-- ----------------------------

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `user_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id,记录登录用户',
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `login_address` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `browser_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器名称',
  `operation_system` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `login_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录状态',
  `operation_info` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作信息',
  `login_time` datetime(0) NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8319 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (7262, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.92', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-21 16:26:02');
INSERT INTO `sys_login_log` VALUES (7263, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.92', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-21 16:29:13');
INSERT INTO `sys_login_log` VALUES (7264, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.92', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-21 16:33:15');
INSERT INTO `sys_login_log` VALUES (7265, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-21 21:36:52');
INSERT INTO `sys_login_log` VALUES (7266, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-22 00:42:50');
INSERT INTO `sys_login_log` VALUES (7267, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.92', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-22 09:13:32');
INSERT INTO `sys_login_log` VALUES (7268, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.237', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-22 16:15:18');
INSERT INTO `sys_login_log` VALUES (7269, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-31 14:44:31');
INSERT INTO `sys_login_log` VALUES (7270, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-31 14:50:03');
INSERT INTO `sys_login_log` VALUES (7271, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-31 14:52:33');
INSERT INTO `sys_login_log` VALUES (7272, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-31 15:00:52');
INSERT INTO `sys_login_log` VALUES (7273, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-31 15:11:17');
INSERT INTO `sys_login_log` VALUES (7274, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-07-31 15:35:14');
INSERT INTO `sys_login_log` VALUES (7275, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-01 09:14:03');
INSERT INTO `sys_login_log` VALUES (7276, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-01 11:45:40');
INSERT INTO `sys_login_log` VALUES (7277, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-01 11:45:48');
INSERT INTO `sys_login_log` VALUES (7278, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-01 21:11:06');
INSERT INTO `sys_login_log` VALUES (7279, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-01 21:28:24');
INSERT INTO `sys_login_log` VALUES (7280, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-01 21:31:09');
INSERT INTO `sys_login_log` VALUES (7281, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-01 23:53:43');
INSERT INTO `sys_login_log` VALUES (7282, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-01 23:54:47');
INSERT INTO `sys_login_log` VALUES (7283, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-02 06:31:55');
INSERT INTO `sys_login_log` VALUES (7284, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-02 07:12:19');
INSERT INTO `sys_login_log` VALUES (7285, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-02 11:10:00');
INSERT INTO `sys_login_log` VALUES (7286, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-02 11:13:03');
INSERT INTO `sys_login_log` VALUES (7287, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-02 11:13:10');
INSERT INTO `sys_login_log` VALUES (7288, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-02 12:34:50');
INSERT INTO `sys_login_log` VALUES (7289, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 00:11:22');
INSERT INTO `sys_login_log` VALUES (7290, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 00:27:10');
INSERT INTO `sys_login_log` VALUES (7291, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 00:48:01');
INSERT INTO `sys_login_log` VALUES (7292, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 00:49:10');
INSERT INTO `sys_login_log` VALUES (7293, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 00:49:20');
INSERT INTO `sys_login_log` VALUES (7294, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 00:49:56');
INSERT INTO `sys_login_log` VALUES (7295, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 00:58:38');
INSERT INTO `sys_login_log` VALUES (7296, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 00:58:52');
INSERT INTO `sys_login_log` VALUES (7297, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 08:52:58');
INSERT INTO `sys_login_log` VALUES (7298, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 09:17:49');
INSERT INTO `sys_login_log` VALUES (7299, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 14:10:51');
INSERT INTO `sys_login_log` VALUES (7300, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 14:56:20');
INSERT INTO `sys_login_log` VALUES (7301, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 14:58:18');
INSERT INTO `sys_login_log` VALUES (7302, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 14:58:31');
INSERT INTO `sys_login_log` VALUES (7303, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 16:04:07');
INSERT INTO `sys_login_log` VALUES (7304, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 16:05:49');
INSERT INTO `sys_login_log` VALUES (7305, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 16:48:31');
INSERT INTO `sys_login_log` VALUES (7306, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 17:09:24');
INSERT INTO `sys_login_log` VALUES (7307, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 17:17:44');
INSERT INTO `sys_login_log` VALUES (7308, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 19:28:42');
INSERT INTO `sys_login_log` VALUES (7309, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-03 20:35:17');
INSERT INTO `sys_login_log` VALUES (7310, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 08:42:49');
INSERT INTO `sys_login_log` VALUES (7311, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 09:07:48');
INSERT INTO `sys_login_log` VALUES (7312, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 14:32:47');
INSERT INTO `sys_login_log` VALUES (7313, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 16:53:05');
INSERT INTO `sys_login_log` VALUES (7314, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 17:18:06');
INSERT INTO `sys_login_log` VALUES (7315, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 19:35:34');
INSERT INTO `sys_login_log` VALUES (7316, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 23:02:17');
INSERT INTO `sys_login_log` VALUES (7317, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 23:20:02');
INSERT INTO `sys_login_log` VALUES (7318, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 23:23:20');
INSERT INTO `sys_login_log` VALUES (7319, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 23:36:03');
INSERT INTO `sys_login_log` VALUES (7320, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-04 23:36:25');
INSERT INTO `sys_login_log` VALUES (7321, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-05 09:05:25');
INSERT INTO `sys_login_log` VALUES (7322, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-05 10:10:26');
INSERT INTO `sys_login_log` VALUES (7323, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-05 10:41:19');
INSERT INTO `sys_login_log` VALUES (7324, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-05 10:55:44');
INSERT INTO `sys_login_log` VALUES (7325, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-05 10:59:25');
INSERT INTO `sys_login_log` VALUES (7332, '', '10.7.160.92', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-05 16:24:55');
INSERT INTO `sys_login_log` VALUES (7347, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 09:41:20');
INSERT INTO `sys_login_log` VALUES (7348, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 10:03:18');
INSERT INTO `sys_login_log` VALUES (7349, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 10:04:36');
INSERT INTO `sys_login_log` VALUES (7350, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 10:23:58');
INSERT INTO `sys_login_log` VALUES (7351, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 14:27:50');
INSERT INTO `sys_login_log` VALUES (7352, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 14:49:38');
INSERT INTO `sys_login_log` VALUES (7353, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 15:26:20');
INSERT INTO `sys_login_log` VALUES (7354, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 16:00:14');
INSERT INTO `sys_login_log` VALUES (7355, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 16:10:05');
INSERT INTO `sys_login_log` VALUES (7356, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome Mobile', 'Android 1.x', '1', '登录成功', '2020-08-07 16:55:36');
INSERT INTO `sys_login_log` VALUES (7357, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 53', 'Windows 10', '1', '登录成功', '2020-08-07 16:58:28');
INSERT INTO `sys_login_log` VALUES (7358, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-07 17:00:57');
INSERT INTO `sys_login_log` VALUES (7359, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 17:24:42');
INSERT INTO `sys_login_log` VALUES (7360, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 19:49:50');
INSERT INTO `sys_login_log` VALUES (7361, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 19:50:05');
INSERT INTO `sys_login_log` VALUES (7362, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 19:50:15');
INSERT INTO `sys_login_log` VALUES (7363, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 19:51:16');
INSERT INTO `sys_login_log` VALUES (7364, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 19:51:34');
INSERT INTO `sys_login_log` VALUES (7365, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 20:08:05');
INSERT INTO `sys_login_log` VALUES (7366, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 20:08:30');
INSERT INTO `sys_login_log` VALUES (7367, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 20:15:21');
INSERT INTO `sys_login_log` VALUES (7368, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 20:18:54');
INSERT INTO `sys_login_log` VALUES (7369, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 20:18:54');
INSERT INTO `sys_login_log` VALUES (7370, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 20:20:13');
INSERT INTO `sys_login_log` VALUES (7371, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 20:22:25');
INSERT INTO `sys_login_log` VALUES (7372, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 20:25:15');
INSERT INTO `sys_login_log` VALUES (7373, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 20:29:56');
INSERT INTO `sys_login_log` VALUES (7374, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 20:33:18');
INSERT INTO `sys_login_log` VALUES (7375, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 20:35:26');
INSERT INTO `sys_login_log` VALUES (7376, '27de363882514f65b1763eea6724e665', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 20:41:47');
INSERT INTO `sys_login_log` VALUES (7377, '27de363882514f65b1763eea6724e665', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 20:42:50');
INSERT INTO `sys_login_log` VALUES (7378, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 20:47:26');
INSERT INTO `sys_login_log` VALUES (7379, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 20:50:16');
INSERT INTO `sys_login_log` VALUES (7380, '27de363882514f65b1763eea6724e665', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 21:07:00');
INSERT INTO `sys_login_log` VALUES (7381, '27de363882514f65b1763eea6724e665', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 21:17:34');
INSERT INTO `sys_login_log` VALUES (7382, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 22:29:41');
INSERT INTO `sys_login_log` VALUES (7383, '', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-09 23:02:15');
INSERT INTO `sys_login_log` VALUES (7384, '27de363882514f65b1763eea6724e665', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 23:02:22');
INSERT INTO `sys_login_log` VALUES (7385, '27de363882514f65b1763eea6724e665', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-09 23:02:49');
INSERT INTO `sys_login_log` VALUES (7386, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:22:18');
INSERT INTO `sys_login_log` VALUES (7387, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:25:35');
INSERT INTO `sys_login_log` VALUES (7388, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:30:29');
INSERT INTO `sys_login_log` VALUES (7389, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:37:54');
INSERT INTO `sys_login_log` VALUES (7390, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:41:11');
INSERT INTO `sys_login_log` VALUES (7391, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:42:36');
INSERT INTO `sys_login_log` VALUES (7392, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:44:35');
INSERT INTO `sys_login_log` VALUES (7393, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:48:37');
INSERT INTO `sys_login_log` VALUES (7394, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 00:51:01');
INSERT INTO `sys_login_log` VALUES (7395, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 01:03:20');
INSERT INTO `sys_login_log` VALUES (7396, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 01:08:47');
INSERT INTO `sys_login_log` VALUES (7397, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 09:08:53');
INSERT INTO `sys_login_log` VALUES (7398, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 09:10:40');
INSERT INTO `sys_login_log` VALUES (7399, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 09:12:20');
INSERT INTO `sys_login_log` VALUES (7400, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 10:54:49');
INSERT INTO `sys_login_log` VALUES (7401, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 11:19:53');
INSERT INTO `sys_login_log` VALUES (7402, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 14:32:28');
INSERT INTO `sys_login_log` VALUES (7403, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 16:01:25');
INSERT INTO `sys_login_log` VALUES (7404, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 17:33:18');
INSERT INTO `sys_login_log` VALUES (7405, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 21:38:04');
INSERT INTO `sys_login_log` VALUES (7406, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 22:16:24');
INSERT INTO `sys_login_log` VALUES (7407, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 22:33:02');
INSERT INTO `sys_login_log` VALUES (7408, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 22:43:36');
INSERT INTO `sys_login_log` VALUES (7409, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 22:56:12');
INSERT INTO `sys_login_log` VALUES (7410, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 22:58:56');
INSERT INTO `sys_login_log` VALUES (7411, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 23:02:57');
INSERT INTO `sys_login_log` VALUES (7412, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 23:12:19');
INSERT INTO `sys_login_log` VALUES (7413, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 23:15:47');
INSERT INTO `sys_login_log` VALUES (7414, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-10 23:30:04');
INSERT INTO `sys_login_log` VALUES (7415, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 09:09:20');
INSERT INTO `sys_login_log` VALUES (7416, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 09:43:42');
INSERT INTO `sys_login_log` VALUES (7417, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 09:48:08');
INSERT INTO `sys_login_log` VALUES (7418, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 09:51:03');
INSERT INTO `sys_login_log` VALUES (7419, '27de363882514f65b1763eea6724e665', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:01:22');
INSERT INTO `sys_login_log` VALUES (7420, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:02:30');
INSERT INTO `sys_login_log` VALUES (7421, '27de363882514f65b1763eea6724e665', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:04:24');
INSERT INTO `sys_login_log` VALUES (7422, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:14:23');
INSERT INTO `sys_login_log` VALUES (7423, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:16:16');
INSERT INTO `sys_login_log` VALUES (7424, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:20:55');
INSERT INTO `sys_login_log` VALUES (7425, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:25:48');
INSERT INTO `sys_login_log` VALUES (7426, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:38:34');
INSERT INTO `sys_login_log` VALUES (7427, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:41:49');
INSERT INTO `sys_login_log` VALUES (7428, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 10:44:16');
INSERT INTO `sys_login_log` VALUES (7429, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 11:01:06');
INSERT INTO `sys_login_log` VALUES (7430, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 14:15:41');
INSERT INTO `sys_login_log` VALUES (7431, '', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-11 14:21:21');
INSERT INTO `sys_login_log` VALUES (7432, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 14:21:35');
INSERT INTO `sys_login_log` VALUES (7433, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 14:22:39');
INSERT INTO `sys_login_log` VALUES (7434, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 14:30:35');
INSERT INTO `sys_login_log` VALUES (7435, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 14:36:03');
INSERT INTO `sys_login_log` VALUES (7436, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 14:36:25');
INSERT INTO `sys_login_log` VALUES (7437, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.22', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 14:54:32');
INSERT INTO `sys_login_log` VALUES (7438, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 22:23:13');
INSERT INTO `sys_login_log` VALUES (7439, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-11 23:07:16');
INSERT INTO `sys_login_log` VALUES (7440, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 09:14:28');
INSERT INTO `sys_login_log` VALUES (7441, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-12 11:00:57');
INSERT INTO `sys_login_log` VALUES (7442, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 11:03:46');
INSERT INTO `sys_login_log` VALUES (7443, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 13:49:13');
INSERT INTO `sys_login_log` VALUES (7444, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 13:52:07');
INSERT INTO `sys_login_log` VALUES (7445, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 13:52:34');
INSERT INTO `sys_login_log` VALUES (7446, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:28:06');
INSERT INTO `sys_login_log` VALUES (7447, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:29:31');
INSERT INTO `sys_login_log` VALUES (7448, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:30:00');
INSERT INTO `sys_login_log` VALUES (7449, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:32:40');
INSERT INTO `sys_login_log` VALUES (7450, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:33:09');
INSERT INTO `sys_login_log` VALUES (7451, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:34:12');
INSERT INTO `sys_login_log` VALUES (7452, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:36:42');
INSERT INTO `sys_login_log` VALUES (7453, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:37:32');
INSERT INTO `sys_login_log` VALUES (7454, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:42:01');
INSERT INTO `sys_login_log` VALUES (7455, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:43:13');
INSERT INTO `sys_login_log` VALUES (7456, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:51:59');
INSERT INTO `sys_login_log` VALUES (7457, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 14:53:46');
INSERT INTO `sys_login_log` VALUES (7458, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 15:10:23');
INSERT INTO `sys_login_log` VALUES (7459, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 15:13:25');
INSERT INTO `sys_login_log` VALUES (7460, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 15:15:29');
INSERT INTO `sys_login_log` VALUES (7461, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 15:42:52');
INSERT INTO `sys_login_log` VALUES (7462, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 15:44:29');
INSERT INTO `sys_login_log` VALUES (7463, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 15:45:42');
INSERT INTO `sys_login_log` VALUES (7464, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 15:46:37');
INSERT INTO `sys_login_log` VALUES (7465, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 16:31:44');
INSERT INTO `sys_login_log` VALUES (7466, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 16:32:06');
INSERT INTO `sys_login_log` VALUES (7467, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 16:33:57');
INSERT INTO `sys_login_log` VALUES (7468, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 16:35:11');
INSERT INTO `sys_login_log` VALUES (7469, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 16:42:41');
INSERT INTO `sys_login_log` VALUES (7470, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 17:00:19');
INSERT INTO `sys_login_log` VALUES (7471, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-12 17:02:46');
INSERT INTO `sys_login_log` VALUES (7472, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-13 09:02:10');
INSERT INTO `sys_login_log` VALUES (7473, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-13 09:02:17');
INSERT INTO `sys_login_log` VALUES (7474, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-13 14:52:29');
INSERT INTO `sys_login_log` VALUES (7475, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-13 14:58:59');
INSERT INTO `sys_login_log` VALUES (7476, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-13 17:00:59');
INSERT INTO `sys_login_log` VALUES (7477, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-13 17:13:17');
INSERT INTO `sys_login_log` VALUES (7478, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-13 17:13:25');
INSERT INTO `sys_login_log` VALUES (7479, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 07:33:30');
INSERT INTO `sys_login_log` VALUES (7480, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:12:11');
INSERT INTO `sys_login_log` VALUES (7481, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:31:51');
INSERT INTO `sys_login_log` VALUES (7482, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:35:33');
INSERT INTO `sys_login_log` VALUES (7483, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:35:45');
INSERT INTO `sys_login_log` VALUES (7484, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:38:09');
INSERT INTO `sys_login_log` VALUES (7485, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:40:47');
INSERT INTO `sys_login_log` VALUES (7486, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:41:13');
INSERT INTO `sys_login_log` VALUES (7487, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:46:18');
INSERT INTO `sys_login_log` VALUES (7488, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:46:39');
INSERT INTO `sys_login_log` VALUES (7489, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:48:29');
INSERT INTO `sys_login_log` VALUES (7490, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:53:08');
INSERT INTO `sys_login_log` VALUES (7491, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:55:54');
INSERT INTO `sys_login_log` VALUES (7492, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 09:58:28');
INSERT INTO `sys_login_log` VALUES (7493, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 10:02:36');
INSERT INTO `sys_login_log` VALUES (7494, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 10:03:30');
INSERT INTO `sys_login_log` VALUES (7495, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 10:58:20');
INSERT INTO `sys_login_log` VALUES (7496, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 11:02:01');
INSERT INTO `sys_login_log` VALUES (7497, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 11:11:29');
INSERT INTO `sys_login_log` VALUES (7498, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 15:36:22');
INSERT INTO `sys_login_log` VALUES (7499, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 15:37:00');
INSERT INTO `sys_login_log` VALUES (7500, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 16:50:33');
INSERT INTO `sys_login_log` VALUES (7501, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-14 17:29:34');
INSERT INTO `sys_login_log` VALUES (7502, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-15 17:59:54');
INSERT INTO `sys_login_log` VALUES (7503, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-15 18:35:17');
INSERT INTO `sys_login_log` VALUES (7504, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-16 16:10:25');
INSERT INTO `sys_login_log` VALUES (7505, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-16 16:57:50');
INSERT INTO `sys_login_log` VALUES (7506, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-16 17:10:30');
INSERT INTO `sys_login_log` VALUES (7507, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-16 19:56:24');
INSERT INTO `sys_login_log` VALUES (7508, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 09:20:16');
INSERT INTO `sys_login_log` VALUES (7509, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 09:48:13');
INSERT INTO `sys_login_log` VALUES (7510, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 09:48:54');
INSERT INTO `sys_login_log` VALUES (7511, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 09:52:09');
INSERT INTO `sys_login_log` VALUES (7512, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 09:57:05');
INSERT INTO `sys_login_log` VALUES (7513, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 09:58:17');
INSERT INTO `sys_login_log` VALUES (7514, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 10:00:04');
INSERT INTO `sys_login_log` VALUES (7515, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 10:01:00');
INSERT INTO `sys_login_log` VALUES (7516, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 10:03:51');
INSERT INTO `sys_login_log` VALUES (7517, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 10:04:33');
INSERT INTO `sys_login_log` VALUES (7518, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 13:39:35');
INSERT INTO `sys_login_log` VALUES (7519, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 14:08:47');
INSERT INTO `sys_login_log` VALUES (7520, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Microsoft Edge', 'Windows 10', '1', '登录成功', '2020-08-17 14:08:58');
INSERT INTO `sys_login_log` VALUES (7521, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-17 14:27:46');
INSERT INTO `sys_login_log` VALUES (7522, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 14:27:49');
INSERT INTO `sys_login_log` VALUES (7523, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 14:29:32');
INSERT INTO `sys_login_log` VALUES (7524, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 14:34:21');
INSERT INTO `sys_login_log` VALUES (7525, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 14:51:04');
INSERT INTO `sys_login_log` VALUES (7526, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 15:01:55');
INSERT INTO `sys_login_log` VALUES (7527, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 16:22:02');
INSERT INTO `sys_login_log` VALUES (7528, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 16:24:15');
INSERT INTO `sys_login_log` VALUES (7529, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 17:09:54');
INSERT INTO `sys_login_log` VALUES (7530, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 17:10:16');
INSERT INTO `sys_login_log` VALUES (7531, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 17:28:57');
INSERT INTO `sys_login_log` VALUES (7532, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 17:30:08');
INSERT INTO `sys_login_log` VALUES (7533, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-17 21:37:45');
INSERT INTO `sys_login_log` VALUES (7534, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 09:01:08');
INSERT INTO `sys_login_log` VALUES (7535, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 09:07:19');
INSERT INTO `sys_login_log` VALUES (7536, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 11:05:43');
INSERT INTO `sys_login_log` VALUES (7537, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 11:15:21');
INSERT INTO `sys_login_log` VALUES (7538, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 11:15:38');
INSERT INTO `sys_login_log` VALUES (7539, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-18 15:24:45');
INSERT INTO `sys_login_log` VALUES (7540, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:24:49');
INSERT INTO `sys_login_log` VALUES (7541, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:28:50');
INSERT INTO `sys_login_log` VALUES (7542, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:29:19');
INSERT INTO `sys_login_log` VALUES (7543, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:33:17');
INSERT INTO `sys_login_log` VALUES (7544, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:34:39');
INSERT INTO `sys_login_log` VALUES (7545, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:37:28');
INSERT INTO `sys_login_log` VALUES (7546, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:41:20');
INSERT INTO `sys_login_log` VALUES (7547, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:44:45');
INSERT INTO `sys_login_log` VALUES (7548, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:45:06');
INSERT INTO `sys_login_log` VALUES (7549, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:54:24');
INSERT INTO `sys_login_log` VALUES (7550, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:55:49');
INSERT INTO `sys_login_log` VALUES (7551, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:57:51');
INSERT INTO `sys_login_log` VALUES (7552, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 15:59:28');
INSERT INTO `sys_login_log` VALUES (7553, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 16:03:14');
INSERT INTO `sys_login_log` VALUES (7554, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 16:10:38');
INSERT INTO `sys_login_log` VALUES (7555, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 16:43:20');
INSERT INTO `sys_login_log` VALUES (7556, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 16:44:41');
INSERT INTO `sys_login_log` VALUES (7557, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 16:45:55');
INSERT INTO `sys_login_log` VALUES (7558, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 16:58:59');
INSERT INTO `sys_login_log` VALUES (7559, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 17:00:30');
INSERT INTO `sys_login_log` VALUES (7560, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 17:02:50');
INSERT INTO `sys_login_log` VALUES (7561, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 17:09:53');
INSERT INTO `sys_login_log` VALUES (7562, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 17:15:09');
INSERT INTO `sys_login_log` VALUES (7563, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 17:18:02');
INSERT INTO `sys_login_log` VALUES (7564, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 17:20:15');
INSERT INTO `sys_login_log` VALUES (7565, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-18 17:22:11');
INSERT INTO `sys_login_log` VALUES (7566, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:03:47');
INSERT INTO `sys_login_log` VALUES (7567, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:05:08');
INSERT INTO `sys_login_log` VALUES (7568, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:07:28');
INSERT INTO `sys_login_log` VALUES (7569, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:14:18');
INSERT INTO `sys_login_log` VALUES (7570, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:30:22');
INSERT INTO `sys_login_log` VALUES (7571, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:33:32');
INSERT INTO `sys_login_log` VALUES (7572, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:36:37');
INSERT INTO `sys_login_log` VALUES (7573, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:39:14');
INSERT INTO `sys_login_log` VALUES (7574, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:40:48');
INSERT INTO `sys_login_log` VALUES (7575, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 09:56:01');
INSERT INTO `sys_login_log` VALUES (7576, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:17:34');
INSERT INTO `sys_login_log` VALUES (7577, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:32:18');
INSERT INTO `sys_login_log` VALUES (7578, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:35:22');
INSERT INTO `sys_login_log` VALUES (7579, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:48:22');
INSERT INTO `sys_login_log` VALUES (7580, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 10:48:53');
INSERT INTO `sys_login_log` VALUES (7581, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 10:48:58');
INSERT INTO `sys_login_log` VALUES (7582, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:51:52');
INSERT INTO `sys_login_log` VALUES (7583, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:52:02');
INSERT INTO `sys_login_log` VALUES (7584, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:56:26');
INSERT INTO `sys_login_log` VALUES (7585, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:56:53');
INSERT INTO `sys_login_log` VALUES (7586, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 10:57:11');
INSERT INTO `sys_login_log` VALUES (7587, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 11:03:16');
INSERT INTO `sys_login_log` VALUES (7588, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 11:03:59');
INSERT INTO `sys_login_log` VALUES (7589, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 11:04:28');
INSERT INTO `sys_login_log` VALUES (7590, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 11:04:43');
INSERT INTO `sys_login_log` VALUES (7591, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 11:04:54');
INSERT INTO `sys_login_log` VALUES (7592, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 11:05:04');
INSERT INTO `sys_login_log` VALUES (7593, '', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-08-19 11:05:23');
INSERT INTO `sys_login_log` VALUES (7594, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 11:14:27');
INSERT INTO `sys_login_log` VALUES (7595, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 11:14:46');
INSERT INTO `sys_login_log` VALUES (7596, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome Mobile', 'Android 6.x', '1', '登录成功', '2020-08-19 11:18:19');
INSERT INTO `sys_login_log` VALUES (7597, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 13:42:03');
INSERT INTO `sys_login_log` VALUES (7598, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 13:54:22');
INSERT INTO `sys_login_log` VALUES (7599, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 13:55:22');
INSERT INTO `sys_login_log` VALUES (7600, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 13:57:30');
INSERT INTO `sys_login_log` VALUES (7601, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 13:59:13');
INSERT INTO `sys_login_log` VALUES (7602, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:01:22');
INSERT INTO `sys_login_log` VALUES (7603, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:03:06');
INSERT INTO `sys_login_log` VALUES (7604, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:03:49');
INSERT INTO `sys_login_log` VALUES (7605, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:05:51');
INSERT INTO `sys_login_log` VALUES (7606, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:06:55');
INSERT INTO `sys_login_log` VALUES (7607, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:11:00');
INSERT INTO `sys_login_log` VALUES (7608, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:28:38');
INSERT INTO `sys_login_log` VALUES (7609, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:29:36');
INSERT INTO `sys_login_log` VALUES (7610, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:31:50');
INSERT INTO `sys_login_log` VALUES (7611, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:32:44');
INSERT INTO `sys_login_log` VALUES (7612, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:34:32');
INSERT INTO `sys_login_log` VALUES (7613, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:34:49');
INSERT INTO `sys_login_log` VALUES (7614, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:35:08');
INSERT INTO `sys_login_log` VALUES (7615, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:36:58');
INSERT INTO `sys_login_log` VALUES (7616, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:37:28');
INSERT INTO `sys_login_log` VALUES (7617, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 14:38:38');
INSERT INTO `sys_login_log` VALUES (7618, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:05:25');
INSERT INTO `sys_login_log` VALUES (7619, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:05:47');
INSERT INTO `sys_login_log` VALUES (7620, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:06:29');
INSERT INTO `sys_login_log` VALUES (7621, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:08:13');
INSERT INTO `sys_login_log` VALUES (7622, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:08:43');
INSERT INTO `sys_login_log` VALUES (7623, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:09:53');
INSERT INTO `sys_login_log` VALUES (7624, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:13:50');
INSERT INTO `sys_login_log` VALUES (7625, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:16:11');
INSERT INTO `sys_login_log` VALUES (7626, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:30:47');
INSERT INTO `sys_login_log` VALUES (7627, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:31:36');
INSERT INTO `sys_login_log` VALUES (7628, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:32:21');
INSERT INTO `sys_login_log` VALUES (7629, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:33:54');
INSERT INTO `sys_login_log` VALUES (7630, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:38:06');
INSERT INTO `sys_login_log` VALUES (7631, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:40:18');
INSERT INTO `sys_login_log` VALUES (7632, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:41:29');
INSERT INTO `sys_login_log` VALUES (7633, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:45:56');
INSERT INTO `sys_login_log` VALUES (7634, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:48:28');
INSERT INTO `sys_login_log` VALUES (7635, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:50:38');
INSERT INTO `sys_login_log` VALUES (7636, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:55:33');
INSERT INTO `sys_login_log` VALUES (7637, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:55:47');
INSERT INTO `sys_login_log` VALUES (7638, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:56:21');
INSERT INTO `sys_login_log` VALUES (7639, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:57:05');
INSERT INTO `sys_login_log` VALUES (7640, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 15:58:26');
INSERT INTO `sys_login_log` VALUES (7641, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:00:43');
INSERT INTO `sys_login_log` VALUES (7642, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:02:28');
INSERT INTO `sys_login_log` VALUES (7643, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:06:56');
INSERT INTO `sys_login_log` VALUES (7644, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:18:59');
INSERT INTO `sys_login_log` VALUES (7645, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:19:03');
INSERT INTO `sys_login_log` VALUES (7646, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:20:59');
INSERT INTO `sys_login_log` VALUES (7647, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:25:08');
INSERT INTO `sys_login_log` VALUES (7648, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:31:51');
INSERT INTO `sys_login_log` VALUES (7649, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:32:52');
INSERT INTO `sys_login_log` VALUES (7650, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:34:05');
INSERT INTO `sys_login_log` VALUES (7651, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:34:38');
INSERT INTO `sys_login_log` VALUES (7652, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:35:39');
INSERT INTO `sys_login_log` VALUES (7653, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:36:10');
INSERT INTO `sys_login_log` VALUES (7654, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:40:31');
INSERT INTO `sys_login_log` VALUES (7655, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:43:22');
INSERT INTO `sys_login_log` VALUES (7656, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:45:03');
INSERT INTO `sys_login_log` VALUES (7657, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:45:45');
INSERT INTO `sys_login_log` VALUES (7658, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Microsoft Edge', 'Windows 10', '1', '登录成功', '2020-08-19 16:49:07');
INSERT INTO `sys_login_log` VALUES (7659, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Microsoft Edge', 'Windows 10', '1', '登录成功', '2020-08-19 16:52:28');
INSERT INTO `sys_login_log` VALUES (7660, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:56:20');
INSERT INTO `sys_login_log` VALUES (7661, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 16:58:28');
INSERT INTO `sys_login_log` VALUES (7662, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 17:05:58');
INSERT INTO `sys_login_log` VALUES (7663, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 17:31:28');
INSERT INTO `sys_login_log` VALUES (7664, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 17:34:19');
INSERT INTO `sys_login_log` VALUES (7665, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 17:36:05');
INSERT INTO `sys_login_log` VALUES (7666, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 17:36:58');
INSERT INTO `sys_login_log` VALUES (7667, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 17:38:17');
INSERT INTO `sys_login_log` VALUES (7668, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-19 22:57:51');
INSERT INTO `sys_login_log` VALUES (7669, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 05:53:59');
INSERT INTO `sys_login_log` VALUES (7670, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 08:58:06');
INSERT INTO `sys_login_log` VALUES (7671, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:05:28');
INSERT INTO `sys_login_log` VALUES (7672, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:05:52');
INSERT INTO `sys_login_log` VALUES (7673, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:05:53');
INSERT INTO `sys_login_log` VALUES (7674, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:06:00');
INSERT INTO `sys_login_log` VALUES (7675, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:06:07');
INSERT INTO `sys_login_log` VALUES (7676, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:06:08');
INSERT INTO `sys_login_log` VALUES (7677, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:06:13');
INSERT INTO `sys_login_log` VALUES (7678, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:06:20');
INSERT INTO `sys_login_log` VALUES (7679, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:08:54');
INSERT INTO `sys_login_log` VALUES (7680, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:12:02');
INSERT INTO `sys_login_log` VALUES (7681, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:14:38');
INSERT INTO `sys_login_log` VALUES (7682, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:20:17');
INSERT INTO `sys_login_log` VALUES (7683, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:21:47');
INSERT INTO `sys_login_log` VALUES (7684, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:21:59');
INSERT INTO `sys_login_log` VALUES (7685, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:22:08');
INSERT INTO `sys_login_log` VALUES (7686, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:22:30');
INSERT INTO `sys_login_log` VALUES (7687, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:24:40');
INSERT INTO `sys_login_log` VALUES (7688, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:25:43');
INSERT INTO `sys_login_log` VALUES (7689, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:26:03');
INSERT INTO `sys_login_log` VALUES (7690, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:26:10');
INSERT INTO `sys_login_log` VALUES (7691, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:26:32');
INSERT INTO `sys_login_log` VALUES (7692, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome Mobile', 'Android 6.x', '1', '登录成功', '2020-08-20 09:27:14');
INSERT INTO `sys_login_log` VALUES (7693, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:40:29');
INSERT INTO `sys_login_log` VALUES (7694, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:40:52');
INSERT INTO `sys_login_log` VALUES (7695, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:42:20');
INSERT INTO `sys_login_log` VALUES (7696, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:43:29');
INSERT INTO `sys_login_log` VALUES (7697, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:43:36');
INSERT INTO `sys_login_log` VALUES (7698, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:43:53');
INSERT INTO `sys_login_log` VALUES (7699, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:44:07');
INSERT INTO `sys_login_log` VALUES (7700, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 09:44:08');
INSERT INTO `sys_login_log` VALUES (7701, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 10:37:35');
INSERT INTO `sys_login_log` VALUES (7702, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 10:54:20');
INSERT INTO `sys_login_log` VALUES (7703, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 13:50:21');
INSERT INTO `sys_login_log` VALUES (7704, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 13:53:02');
INSERT INTO `sys_login_log` VALUES (7705, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 13:53:20');
INSERT INTO `sys_login_log` VALUES (7706, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 13:54:01');
INSERT INTO `sys_login_log` VALUES (7707, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 13:54:22');
INSERT INTO `sys_login_log` VALUES (7708, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 13:57:02');
INSERT INTO `sys_login_log` VALUES (7709, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 14:01:31');
INSERT INTO `sys_login_log` VALUES (7710, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 14:17:54');
INSERT INTO `sys_login_log` VALUES (7711, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 14:18:00');
INSERT INTO `sys_login_log` VALUES (7712, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 14:19:34');
INSERT INTO `sys_login_log` VALUES (7713, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 15:23:22');
INSERT INTO `sys_login_log` VALUES (7714, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:11:07');
INSERT INTO `sys_login_log` VALUES (7715, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:16:32');
INSERT INTO `sys_login_log` VALUES (7716, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:25:44');
INSERT INTO `sys_login_log` VALUES (7717, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:26:09');
INSERT INTO `sys_login_log` VALUES (7718, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:26:36');
INSERT INTO `sys_login_log` VALUES (7719, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:30:07');
INSERT INTO `sys_login_log` VALUES (7720, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:31:15');
INSERT INTO `sys_login_log` VALUES (7721, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:32:52');
INSERT INTO `sys_login_log` VALUES (7722, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:34:12');
INSERT INTO `sys_login_log` VALUES (7723, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 17:34:38');
INSERT INTO `sys_login_log` VALUES (7724, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-20 18:05:20');
INSERT INTO `sys_login_log` VALUES (7725, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 00:10:41');
INSERT INTO `sys_login_log` VALUES (7726, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 00:11:03');
INSERT INTO `sys_login_log` VALUES (7727, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 01:19:12');
INSERT INTO `sys_login_log` VALUES (7728, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 01:52:54');
INSERT INTO `sys_login_log` VALUES (7729, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 02:34:03');
INSERT INTO `sys_login_log` VALUES (7730, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 08:55:37');
INSERT INTO `sys_login_log` VALUES (7731, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 09:07:07');
INSERT INTO `sys_login_log` VALUES (7732, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:24:48');
INSERT INTO `sys_login_log` VALUES (7733, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:26:37');
INSERT INTO `sys_login_log` VALUES (7734, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:26:43');
INSERT INTO `sys_login_log` VALUES (7735, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:39:47');
INSERT INTO `sys_login_log` VALUES (7736, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:40:22');
INSERT INTO `sys_login_log` VALUES (7737, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:40:41');
INSERT INTO `sys_login_log` VALUES (7738, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:42:56');
INSERT INTO `sys_login_log` VALUES (7739, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:43:19');
INSERT INTO `sys_login_log` VALUES (7740, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 10:53:32');
INSERT INTO `sys_login_log` VALUES (7741, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 11:06:21');
INSERT INTO `sys_login_log` VALUES (7742, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 11:06:39');
INSERT INTO `sys_login_log` VALUES (7743, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 11:07:10');
INSERT INTO `sys_login_log` VALUES (7744, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 11:11:41');
INSERT INTO `sys_login_log` VALUES (7745, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 11:13:39');
INSERT INTO `sys_login_log` VALUES (7746, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 11:23:43');
INSERT INTO `sys_login_log` VALUES (7747, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 12:07:05');
INSERT INTO `sys_login_log` VALUES (7748, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 12:09:38');
INSERT INTO `sys_login_log` VALUES (7749, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 12:09:51');
INSERT INTO `sys_login_log` VALUES (7750, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 15:51:07');
INSERT INTO `sys_login_log` VALUES (7751, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 16:21:44');
INSERT INTO `sys_login_log` VALUES (7752, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 16:22:33');
INSERT INTO `sys_login_log` VALUES (7753, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 16:52:42');
INSERT INTO `sys_login_log` VALUES (7754, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 16:56:18');
INSERT INTO `sys_login_log` VALUES (7755, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 17:07:02');
INSERT INTO `sys_login_log` VALUES (7756, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 17:07:16');
INSERT INTO `sys_login_log` VALUES (7757, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 17:07:39');
INSERT INTO `sys_login_log` VALUES (7758, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 17:37:28');
INSERT INTO `sys_login_log` VALUES (7759, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 17:41:34');
INSERT INTO `sys_login_log` VALUES (7760, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-21 17:47:09');
INSERT INTO `sys_login_log` VALUES (7761, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:21:13');
INSERT INTO `sys_login_log` VALUES (7762, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:46:10');
INSERT INTO `sys_login_log` VALUES (7763, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:46:25');
INSERT INTO `sys_login_log` VALUES (7764, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:46:40');
INSERT INTO `sys_login_log` VALUES (7765, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:46:50');
INSERT INTO `sys_login_log` VALUES (7766, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:46:50');
INSERT INTO `sys_login_log` VALUES (7767, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:46:50');
INSERT INTO `sys_login_log` VALUES (7768, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:47:03');
INSERT INTO `sys_login_log` VALUES (7769, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:47:19');
INSERT INTO `sys_login_log` VALUES (7770, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:47:40');
INSERT INTO `sys_login_log` VALUES (7771, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:48:24');
INSERT INTO `sys_login_log` VALUES (7772, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 22:49:00');
INSERT INTO `sys_login_log` VALUES (7773, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-23 23:28:29');
INSERT INTO `sys_login_log` VALUES (7774, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:04:44');
INSERT INTO `sys_login_log` VALUES (7775, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:17:48');
INSERT INTO `sys_login_log` VALUES (7776, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:20:51');
INSERT INTO `sys_login_log` VALUES (7777, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:24:02');
INSERT INTO `sys_login_log` VALUES (7778, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:25:36');
INSERT INTO `sys_login_log` VALUES (7779, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:25:42');
INSERT INTO `sys_login_log` VALUES (7780, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:38:08');
INSERT INTO `sys_login_log` VALUES (7781, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:39:10');
INSERT INTO `sys_login_log` VALUES (7782, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:39:33');
INSERT INTO `sys_login_log` VALUES (7783, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:40:36');
INSERT INTO `sys_login_log` VALUES (7784, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:40:41');
INSERT INTO `sys_login_log` VALUES (7785, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 09:43:07');
INSERT INTO `sys_login_log` VALUES (7786, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 11:03:05');
INSERT INTO `sys_login_log` VALUES (7787, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 11:21:14');
INSERT INTO `sys_login_log` VALUES (7788, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 13:34:49');
INSERT INTO `sys_login_log` VALUES (7789, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 14:03:38');
INSERT INTO `sys_login_log` VALUES (7790, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 14:16:22');
INSERT INTO `sys_login_log` VALUES (7791, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 14:16:55');
INSERT INTO `sys_login_log` VALUES (7792, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 14:19:27');
INSERT INTO `sys_login_log` VALUES (7793, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 14:19:45');
INSERT INTO `sys_login_log` VALUES (7794, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 14:19:53');
INSERT INTO `sys_login_log` VALUES (7795, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 15:24:02');
INSERT INTO `sys_login_log` VALUES (7796, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 15:30:54');
INSERT INTO `sys_login_log` VALUES (7797, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 15:35:01');
INSERT INTO `sys_login_log` VALUES (7798, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 15:36:06');
INSERT INTO `sys_login_log` VALUES (7799, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 15:38:57');
INSERT INTO `sys_login_log` VALUES (7800, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 15:39:27');
INSERT INTO `sys_login_log` VALUES (7801, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 15:56:34');
INSERT INTO `sys_login_log` VALUES (7802, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 15:58:44');
INSERT INTO `sys_login_log` VALUES (7803, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 16:13:26');
INSERT INTO `sys_login_log` VALUES (7804, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 16:13:31');
INSERT INTO `sys_login_log` VALUES (7805, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 16:19:27');
INSERT INTO `sys_login_log` VALUES (7806, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 16:36:41');
INSERT INTO `sys_login_log` VALUES (7807, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 16:41:58');
INSERT INTO `sys_login_log` VALUES (7808, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 18:16:26');
INSERT INTO `sys_login_log` VALUES (7809, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 18:17:31');
INSERT INTO `sys_login_log` VALUES (7810, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 18:26:56');
INSERT INTO `sys_login_log` VALUES (7811, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 18:31:30');
INSERT INTO `sys_login_log` VALUES (7812, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-24 18:31:56');
INSERT INTO `sys_login_log` VALUES (7813, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 00:18:34');
INSERT INTO `sys_login_log` VALUES (7814, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 00:18:49');
INSERT INTO `sys_login_log` VALUES (7815, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 00:19:42');
INSERT INTO `sys_login_log` VALUES (7816, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 01:44:51');
INSERT INTO `sys_login_log` VALUES (7817, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 01:47:11');
INSERT INTO `sys_login_log` VALUES (7818, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 01:49:01');
INSERT INTO `sys_login_log` VALUES (7819, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 01:51:39');
INSERT INTO `sys_login_log` VALUES (7820, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 01:55:07');
INSERT INTO `sys_login_log` VALUES (7821, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 08:50:32');
INSERT INTO `sys_login_log` VALUES (7822, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 09:22:41');
INSERT INTO `sys_login_log` VALUES (7823, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 09:24:18');
INSERT INTO `sys_login_log` VALUES (7824, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 09:48:16');
INSERT INTO `sys_login_log` VALUES (7825, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 10:32:24');
INSERT INTO `sys_login_log` VALUES (7826, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 10:52:02');
INSERT INTO `sys_login_log` VALUES (7827, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 11:06:59');
INSERT INTO `sys_login_log` VALUES (7828, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 11:07:06');
INSERT INTO `sys_login_log` VALUES (7829, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 13:19:25');
INSERT INTO `sys_login_log` VALUES (7830, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 13:48:56');
INSERT INTO `sys_login_log` VALUES (7831, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 13:49:08');
INSERT INTO `sys_login_log` VALUES (7832, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 13:49:09');
INSERT INTO `sys_login_log` VALUES (7833, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 13:49:13');
INSERT INTO `sys_login_log` VALUES (7834, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 14:36:27');
INSERT INTO `sys_login_log` VALUES (7835, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 15:20:27');
INSERT INTO `sys_login_log` VALUES (7836, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 15:20:39');
INSERT INTO `sys_login_log` VALUES (7837, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 15:21:57');
INSERT INTO `sys_login_log` VALUES (7838, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 15:37:33');
INSERT INTO `sys_login_log` VALUES (7839, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 16:23:58');
INSERT INTO `sys_login_log` VALUES (7840, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 16:49:49');
INSERT INTO `sys_login_log` VALUES (7841, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 16:49:59');
INSERT INTO `sys_login_log` VALUES (7842, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 16:55:00');
INSERT INTO `sys_login_log` VALUES (7843, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 16:57:34');
INSERT INTO `sys_login_log` VALUES (7844, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 16:59:13');
INSERT INTO `sys_login_log` VALUES (7845, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-25 17:02:24');
INSERT INTO `sys_login_log` VALUES (7846, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:08:00');
INSERT INTO `sys_login_log` VALUES (7847, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:09:16');
INSERT INTO `sys_login_log` VALUES (7848, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:09:22');
INSERT INTO `sys_login_log` VALUES (7849, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:09:26');
INSERT INTO `sys_login_log` VALUES (7850, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:09:30');
INSERT INTO `sys_login_log` VALUES (7851, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:09:32');
INSERT INTO `sys_login_log` VALUES (7852, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:09:44');
INSERT INTO `sys_login_log` VALUES (7853, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:10:03');
INSERT INTO `sys_login_log` VALUES (7854, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:10:06');
INSERT INTO `sys_login_log` VALUES (7855, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:10:07');
INSERT INTO `sys_login_log` VALUES (7856, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:10:08');
INSERT INTO `sys_login_log` VALUES (7857, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:10:09');
INSERT INTO `sys_login_log` VALUES (7858, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:10:09');
INSERT INTO `sys_login_log` VALUES (7859, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:10:54');
INSERT INTO `sys_login_log` VALUES (7860, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:11:49');
INSERT INTO `sys_login_log` VALUES (7861, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:15:30');
INSERT INTO `sys_login_log` VALUES (7862, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:16:36');
INSERT INTO `sys_login_log` VALUES (7863, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:18:32');
INSERT INTO `sys_login_log` VALUES (7864, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:18:33');
INSERT INTO `sys_login_log` VALUES (7865, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:18:38');
INSERT INTO `sys_login_log` VALUES (7866, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:18:43');
INSERT INTO `sys_login_log` VALUES (7867, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:18:44');
INSERT INTO `sys_login_log` VALUES (7868, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:18:45');
INSERT INTO `sys_login_log` VALUES (7869, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:18:46');
INSERT INTO `sys_login_log` VALUES (7870, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:18:48');
INSERT INTO `sys_login_log` VALUES (7871, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:21:40');
INSERT INTO `sys_login_log` VALUES (7872, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 09:30:44');
INSERT INTO `sys_login_log` VALUES (7873, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 10:06:26');
INSERT INTO `sys_login_log` VALUES (7874, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 10:07:21');
INSERT INTO `sys_login_log` VALUES (7875, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 10:08:06');
INSERT INTO `sys_login_log` VALUES (7876, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 10:12:19');
INSERT INTO `sys_login_log` VALUES (7877, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 10:33:33');
INSERT INTO `sys_login_log` VALUES (7878, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 13:54:02');
INSERT INTO `sys_login_log` VALUES (7879, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 13:54:28');
INSERT INTO `sys_login_log` VALUES (7880, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 13:56:07');
INSERT INTO `sys_login_log` VALUES (7881, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 13:58:11');
INSERT INTO `sys_login_log` VALUES (7882, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:00:36');
INSERT INTO `sys_login_log` VALUES (7883, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:02:48');
INSERT INTO `sys_login_log` VALUES (7884, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:06:42');
INSERT INTO `sys_login_log` VALUES (7885, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:07:03');
INSERT INTO `sys_login_log` VALUES (7886, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:19:32');
INSERT INTO `sys_login_log` VALUES (7887, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:25:40');
INSERT INTO `sys_login_log` VALUES (7888, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:27:22');
INSERT INTO `sys_login_log` VALUES (7889, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:28:11');
INSERT INTO `sys_login_log` VALUES (7890, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:30:12');
INSERT INTO `sys_login_log` VALUES (7891, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:32:53');
INSERT INTO `sys_login_log` VALUES (7892, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:35:45');
INSERT INTO `sys_login_log` VALUES (7893, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:36:37');
INSERT INTO `sys_login_log` VALUES (7894, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:37:17');
INSERT INTO `sys_login_log` VALUES (7895, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:37:40');
INSERT INTO `sys_login_log` VALUES (7896, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:38:24');
INSERT INTO `sys_login_log` VALUES (7897, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:39:16');
INSERT INTO `sys_login_log` VALUES (7898, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:39:38');
INSERT INTO `sys_login_log` VALUES (7899, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:39:44');
INSERT INTO `sys_login_log` VALUES (7900, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:40:39');
INSERT INTO `sys_login_log` VALUES (7901, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:41:51');
INSERT INTO `sys_login_log` VALUES (7902, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:43:12');
INSERT INTO `sys_login_log` VALUES (7903, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:44:32');
INSERT INTO `sys_login_log` VALUES (7904, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:45:22');
INSERT INTO `sys_login_log` VALUES (7905, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:45:56');
INSERT INTO `sys_login_log` VALUES (7906, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:47:51');
INSERT INTO `sys_login_log` VALUES (7907, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:48:28');
INSERT INTO `sys_login_log` VALUES (7908, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 14:53:45');
INSERT INTO `sys_login_log` VALUES (7909, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 15:04:38');
INSERT INTO `sys_login_log` VALUES (7910, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 15:05:26');
INSERT INTO `sys_login_log` VALUES (7911, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-26 17:29:18');
INSERT INTO `sys_login_log` VALUES (7912, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-27 09:56:50');
INSERT INTO `sys_login_log` VALUES (7913, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-27 09:59:18');
INSERT INTO `sys_login_log` VALUES (7914, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-27 10:01:07');
INSERT INTO `sys_login_log` VALUES (7915, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-27 10:02:14');
INSERT INTO `sys_login_log` VALUES (7916, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-27 10:10:32');
INSERT INTO `sys_login_log` VALUES (7917, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-27 10:11:54');
INSERT INTO `sys_login_log` VALUES (7918, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-27 15:22:15');
INSERT INTO `sys_login_log` VALUES (7919, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-27 22:59:35');
INSERT INTO `sys_login_log` VALUES (7920, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-28 09:33:39');
INSERT INTO `sys_login_log` VALUES (7921, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-28 10:20:55');
INSERT INTO `sys_login_log` VALUES (7922, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-28 15:02:14');
INSERT INTO `sys_login_log` VALUES (7923, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-28 15:30:25');
INSERT INTO `sys_login_log` VALUES (7924, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 01:48:53');
INSERT INTO `sys_login_log` VALUES (7925, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 02:24:28');
INSERT INTO `sys_login_log` VALUES (7926, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 03:45:51');
INSERT INTO `sys_login_log` VALUES (7927, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 16:00:23');
INSERT INTO `sys_login_log` VALUES (7928, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 19:03:38');
INSERT INTO `sys_login_log` VALUES (7929, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 19:03:55');
INSERT INTO `sys_login_log` VALUES (7930, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 19:26:15');
INSERT INTO `sys_login_log` VALUES (7931, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 19:35:12');
INSERT INTO `sys_login_log` VALUES (7932, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 19:35:44');
INSERT INTO `sys_login_log` VALUES (7933, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 19:35:56');
INSERT INTO `sys_login_log` VALUES (7934, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 19:56:10');
INSERT INTO `sys_login_log` VALUES (7935, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-30 22:17:08');
INSERT INTO `sys_login_log` VALUES (7936, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-31 14:08:17');
INSERT INTO `sys_login_log` VALUES (7937, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-31 22:37:40');
INSERT INTO `sys_login_log` VALUES (7938, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-31 22:52:13');
INSERT INTO `sys_login_log` VALUES (7939, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-08-31 22:55:13');
INSERT INTO `sys_login_log` VALUES (7940, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-03 22:33:31');
INSERT INTO `sys_login_log` VALUES (7941, '4fcee6c3f7164300ab75e67b32871145', '172.18.64.202', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-06 16:02:17');
INSERT INTO `sys_login_log` VALUES (7942, '4fcee6c3f7164300ab75e67b32871145', '172.20.10.2', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-06 16:49:42');
INSERT INTO `sys_login_log` VALUES (7943, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-17 16:45:20');
INSERT INTO `sys_login_log` VALUES (7944, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-18 10:57:30');
INSERT INTO `sys_login_log` VALUES (7945, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-18 11:13:25');
INSERT INTO `sys_login_log` VALUES (7946, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-18 14:13:55');
INSERT INTO `sys_login_log` VALUES (7947, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-18 14:14:35');
INSERT INTO `sys_login_log` VALUES (7948, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-21 09:34:24');
INSERT INTO `sys_login_log` VALUES (7949, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-21 10:16:45');
INSERT INTO `sys_login_log` VALUES (7950, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-21 10:41:19');
INSERT INTO `sys_login_log` VALUES (7951, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-21 11:09:54');
INSERT INTO `sys_login_log` VALUES (7952, '4fcee6c3f7164300ab75e67b32871145', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-21 13:53:51');
INSERT INTO `sys_login_log` VALUES (7953, '4fcee6c3f7164300ab75e67b32871145', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-21 16:13:15');
INSERT INTO `sys_login_log` VALUES (7954, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-25 17:06:44');
INSERT INTO `sys_login_log` VALUES (7955, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-25 17:30:32');
INSERT INTO `sys_login_log` VALUES (7956, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 14:05:14');
INSERT INTO `sys_login_log` VALUES (7957, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 14:10:35');
INSERT INTO `sys_login_log` VALUES (7958, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-09-27 14:16:26');
INSERT INTO `sys_login_log` VALUES (7959, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 14:17:59');
INSERT INTO `sys_login_log` VALUES (7960, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 14:24:58');
INSERT INTO `sys_login_log` VALUES (7961, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 14:26:25');
INSERT INTO `sys_login_log` VALUES (7962, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 14:32:53');
INSERT INTO `sys_login_log` VALUES (7963, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 14:45:12');
INSERT INTO `sys_login_log` VALUES (7964, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 14:46:26');
INSERT INTO `sys_login_log` VALUES (7965, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 15:05:42');
INSERT INTO `sys_login_log` VALUES (7966, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 15:15:25');
INSERT INTO `sys_login_log` VALUES (7967, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 15:40:47');
INSERT INTO `sys_login_log` VALUES (7968, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 16:01:07');
INSERT INTO `sys_login_log` VALUES (7969, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-27 17:11:42');
INSERT INTO `sys_login_log` VALUES (7970, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-09-28 09:18:36');
INSERT INTO `sys_login_log` VALUES (7971, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-28 09:20:03');
INSERT INTO `sys_login_log` VALUES (7972, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-28 09:44:19');
INSERT INTO `sys_login_log` VALUES (7973, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-28 09:44:52');
INSERT INTO `sys_login_log` VALUES (7974, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-28 10:37:43');
INSERT INTO `sys_login_log` VALUES (7975, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-28 16:22:55');
INSERT INTO `sys_login_log` VALUES (7976, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-09-29 17:00:24');
INSERT INTO `sys_login_log` VALUES (7977, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-29 17:01:11');
INSERT INTO `sys_login_log` VALUES (7978, '', '172.16.10.123', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-09-30 09:01:49');
INSERT INTO `sys_login_log` VALUES (7979, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-09-30 09:03:36');
INSERT INTO `sys_login_log` VALUES (7980, '', '127.0.0.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-08 19:30:34');
INSERT INTO `sys_login_log` VALUES (7981, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-09 08:55:58');
INSERT INTO `sys_login_log` VALUES (7982, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-09 09:30:03');
INSERT INTO `sys_login_log` VALUES (7983, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-09 15:04:14');
INSERT INTO `sys_login_log` VALUES (7984, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-09 15:05:18');
INSERT INTO `sys_login_log` VALUES (7985, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-09 15:35:23');
INSERT INTO `sys_login_log` VALUES (7986, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-09 17:06:24');
INSERT INTO `sys_login_log` VALUES (7987, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-10 09:16:45');
INSERT INTO `sys_login_log` VALUES (7988, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-10 09:50:32');
INSERT INTO `sys_login_log` VALUES (7989, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-10 10:37:01');
INSERT INTO `sys_login_log` VALUES (7990, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-10 13:28:06');
INSERT INTO `sys_login_log` VALUES (7991, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-10 17:17:05');
INSERT INTO `sys_login_log` VALUES (7992, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-12 09:10:45');
INSERT INTO `sys_login_log` VALUES (7993, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-12 10:00:07');
INSERT INTO `sys_login_log` VALUES (7994, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-12 10:46:35');
INSERT INTO `sys_login_log` VALUES (7995, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-12 11:16:02');
INSERT INTO `sys_login_log` VALUES (7996, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-14 13:39:13');
INSERT INTO `sys_login_log` VALUES (7997, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-14 16:05:50');
INSERT INTO `sys_login_log` VALUES (7998, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-14 16:07:55');
INSERT INTO `sys_login_log` VALUES (7999, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-14 16:10:49');
INSERT INTO `sys_login_log` VALUES (8000, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-14 16:13:21');
INSERT INTO `sys_login_log` VALUES (8001, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-14 16:27:05');
INSERT INTO `sys_login_log` VALUES (8002, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 10:15:33');
INSERT INTO `sys_login_log` VALUES (8003, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 10:19:19');
INSERT INTO `sys_login_log` VALUES (8004, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 10:28:05');
INSERT INTO `sys_login_log` VALUES (8005, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 13:31:46');
INSERT INTO `sys_login_log` VALUES (8006, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 13:59:06');
INSERT INTO `sys_login_log` VALUES (8007, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 13:59:27');
INSERT INTO `sys_login_log` VALUES (8008, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:00:59');
INSERT INTO `sys_login_log` VALUES (8009, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:01:41');
INSERT INTO `sys_login_log` VALUES (8010, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:07:24');
INSERT INTO `sys_login_log` VALUES (8011, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:09:16');
INSERT INTO `sys_login_log` VALUES (8012, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:10:54');
INSERT INTO `sys_login_log` VALUES (8013, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:11:11');
INSERT INTO `sys_login_log` VALUES (8014, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:18:25');
INSERT INTO `sys_login_log` VALUES (8015, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:23:51');
INSERT INTO `sys_login_log` VALUES (8016, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 14:38:25');
INSERT INTO `sys_login_log` VALUES (8017, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 15:57:02');
INSERT INTO `sys_login_log` VALUES (8018, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 15:57:52');
INSERT INTO `sys_login_log` VALUES (8019, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 15:58:27');
INSERT INTO `sys_login_log` VALUES (8020, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 15:59:04');
INSERT INTO `sys_login_log` VALUES (8021, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 16:00:25');
INSERT INTO `sys_login_log` VALUES (8022, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-15 16:10:26');
INSERT INTO `sys_login_log` VALUES (8023, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-16 09:12:38');
INSERT INTO `sys_login_log` VALUES (8024, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-16 10:52:32');
INSERT INTO `sys_login_log` VALUES (8025, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-16 13:44:34');
INSERT INTO `sys_login_log` VALUES (8026, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-16 14:45:55');
INSERT INTO `sys_login_log` VALUES (8027, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-19 13:56:44');
INSERT INTO `sys_login_log` VALUES (8028, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-19 13:57:43');
INSERT INTO `sys_login_log` VALUES (8029, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-19 16:19:00');
INSERT INTO `sys_login_log` VALUES (8030, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-20 10:42:03');
INSERT INTO `sys_login_log` VALUES (8031, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-21 09:12:50');
INSERT INTO `sys_login_log` VALUES (8032, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-21 09:13:24');
INSERT INTO `sys_login_log` VALUES (8033, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-23 15:05:08');
INSERT INTO `sys_login_log` VALUES (8034, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-26 08:56:45');
INSERT INTO `sys_login_log` VALUES (8035, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-26 08:57:08');
INSERT INTO `sys_login_log` VALUES (8036, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-26 14:33:29');
INSERT INTO `sys_login_log` VALUES (8037, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-26 15:33:55');
INSERT INTO `sys_login_log` VALUES (8038, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-26 16:30:01');
INSERT INTO `sys_login_log` VALUES (8039, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-27 09:03:24');
INSERT INTO `sys_login_log` VALUES (8040, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-27 09:05:23');
INSERT INTO `sys_login_log` VALUES (8041, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-27 14:29:28');
INSERT INTO `sys_login_log` VALUES (8042, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-27 16:48:37');
INSERT INTO `sys_login_log` VALUES (8043, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-28 09:25:35');
INSERT INTO `sys_login_log` VALUES (8044, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-28 09:45:55');
INSERT INTO `sys_login_log` VALUES (8045, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-28 10:44:03');
INSERT INTO `sys_login_log` VALUES (8046, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-28 14:21:42');
INSERT INTO `sys_login_log` VALUES (8047, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-28 14:21:50');
INSERT INTO `sys_login_log` VALUES (8048, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-28 14:28:01');
INSERT INTO `sys_login_log` VALUES (8049, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-28 16:05:22');
INSERT INTO `sys_login_log` VALUES (8050, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-28 16:06:01');
INSERT INTO `sys_login_log` VALUES (8051, '', '10.7.160.105', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-28 16:06:35');
INSERT INTO `sys_login_log` VALUES (8052, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-29 10:29:25');
INSERT INTO `sys_login_log` VALUES (8053, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-29 10:29:51');
INSERT INTO `sys_login_log` VALUES (8054, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-29 10:48:00');
INSERT INTO `sys_login_log` VALUES (8055, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-10-29 10:48:18');
INSERT INTO `sys_login_log` VALUES (8056, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-29 10:49:24');
INSERT INTO `sys_login_log` VALUES (8057, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-29 11:57:43');
INSERT INTO `sys_login_log` VALUES (8058, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-29 14:02:47');
INSERT INTO `sys_login_log` VALUES (8059, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-29 17:43:38');
INSERT INTO `sys_login_log` VALUES (8060, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-30 09:32:53');
INSERT INTO `sys_login_log` VALUES (8061, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-30 13:56:31');
INSERT INTO `sys_login_log` VALUES (8062, '', '192.168.30.156', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-10-30 16:37:06');
INSERT INTO `sys_login_log` VALUES (8063, '', '192.168.30.72', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-11-02 09:22:26');
INSERT INTO `sys_login_log` VALUES (8064, '', '192.168.30.72', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-02 09:22:47');
INSERT INTO `sys_login_log` VALUES (8065, '', '192.168.30.72', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-11-03 12:00:53');
INSERT INTO `sys_login_log` VALUES (8066, '', '192.168.30.72', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-11-03 16:43:58');
INSERT INTO `sys_login_log` VALUES (8067, '', '192.168.30.72', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-03 16:44:25');
INSERT INTO `sys_login_log` VALUES (8068, '', '192.168.30.72', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-04 15:31:52');
INSERT INTO `sys_login_log` VALUES (8069, '', '192.168.30.72', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-04 15:36:04');
INSERT INTO `sys_login_log` VALUES (8070, '', '192.168.30.73', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-06 10:18:34');
INSERT INTO `sys_login_log` VALUES (8071, '', '192.168.30.73', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-06 11:27:16');
INSERT INTO `sys_login_log` VALUES (8072, '', '192.168.30.73', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-06 11:49:42');
INSERT INTO `sys_login_log` VALUES (8073, '', '192.168.30.43', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-11-20 11:29:16');
INSERT INTO `sys_login_log` VALUES (8074, '', '192.168.30.43', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-11-20 11:29:25');
INSERT INTO `sys_login_log` VALUES (8075, '', '192.168.30.43', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-11-20 11:30:39');
INSERT INTO `sys_login_log` VALUES (8076, '', '192.168.30.43', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-20 11:31:12');
INSERT INTO `sys_login_log` VALUES (8077, '', '192.168.30.43', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-20 13:42:11');
INSERT INTO `sys_login_log` VALUES (8078, '', '172.20.10.5', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-11-22 17:10:17');
INSERT INTO `sys_login_log` VALUES (8079, '', '172.20.10.5', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-11-22 17:10:49');
INSERT INTO `sys_login_log` VALUES (8080, '', '127.0.0.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-06 14:14:03');
INSERT INTO `sys_login_log` VALUES (8081, '', '172.20.10.5', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-06 17:32:38');
INSERT INTO `sys_login_log` VALUES (8082, '', '172.20.10.5', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-06 17:41:57');
INSERT INTO `sys_login_log` VALUES (8083, '', '192.168.30.51', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-07 16:32:59');
INSERT INTO `sys_login_log` VALUES (8084, '', '192.168.30.51', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-07 16:34:35');
INSERT INTO `sys_login_log` VALUES (8085, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-23 10:43:55');
INSERT INTO `sys_login_log` VALUES (8086, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-23 11:25:16');
INSERT INTO `sys_login_log` VALUES (8087, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-23 11:29:20');
INSERT INTO `sys_login_log` VALUES (8088, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-24 11:39:01');
INSERT INTO `sys_login_log` VALUES (8089, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-12-24 11:58:38');
INSERT INTO `sys_login_log` VALUES (8090, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-24 11:58:45');
INSERT INTO `sys_login_log` VALUES (8091, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-25 11:07:55');
INSERT INTO `sys_login_log` VALUES (8092, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-25 11:11:40');
INSERT INTO `sys_login_log` VALUES (8093, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-25 11:32:07');
INSERT INTO `sys_login_log` VALUES (8094, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-12-25 13:53:08');
INSERT INTO `sys_login_log` VALUES (8095, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-25 13:53:15');
INSERT INTO `sys_login_log` VALUES (8096, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-29 14:48:04');
INSERT INTO `sys_login_log` VALUES (8097, '', '192.168.30.26', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2020-12-30 15:55:21');
INSERT INTO `sys_login_log` VALUES (8098, '', '192.168.30.26', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-30 15:55:28');
INSERT INTO `sys_login_log` VALUES (8099, '', '192.168.30.26', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2020-12-30 17:10:52');
INSERT INTO `sys_login_log` VALUES (8100, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-01 20:51:49');
INSERT INTO `sys_login_log` VALUES (8101, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-02 18:44:04');
INSERT INTO `sys_login_log` VALUES (8102, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-04 10:43:24');
INSERT INTO `sys_login_log` VALUES (8103, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-07 10:28:05');
INSERT INTO `sys_login_log` VALUES (8104, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-07 10:28:23');
INSERT INTO `sys_login_log` VALUES (8105, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-11 09:29:38');
INSERT INTO `sys_login_log` VALUES (8106, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-12 11:05:48');
INSERT INTO `sys_login_log` VALUES (8107, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-12 11:06:01');
INSERT INTO `sys_login_log` VALUES (8108, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-12 15:24:00');
INSERT INTO `sys_login_log` VALUES (8109, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-13 09:53:49');
INSERT INTO `sys_login_log` VALUES (8110, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-14 11:04:39');
INSERT INTO `sys_login_log` VALUES (8111, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-15 09:14:54');
INSERT INTO `sys_login_log` VALUES (8112, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-15 14:10:34');
INSERT INTO `sys_login_log` VALUES (8113, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-15 14:12:28');
INSERT INTO `sys_login_log` VALUES (8114, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-15 14:12:35');
INSERT INTO `sys_login_log` VALUES (8115, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-15 16:26:29');
INSERT INTO `sys_login_log` VALUES (8116, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-17 20:05:05');
INSERT INTO `sys_login_log` VALUES (8117, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-18 09:20:27');
INSERT INTO `sys_login_log` VALUES (8118, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-18 09:20:42');
INSERT INTO `sys_login_log` VALUES (8119, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-18 17:47:45');
INSERT INTO `sys_login_log` VALUES (8120, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-19 09:18:20');
INSERT INTO `sys_login_log` VALUES (8121, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-20 15:56:43');
INSERT INTO `sys_login_log` VALUES (8122, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-21 09:34:48');
INSERT INTO `sys_login_log` VALUES (8123, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-21 13:25:26');
INSERT INTO `sys_login_log` VALUES (8124, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-21 13:25:43');
INSERT INTO `sys_login_log` VALUES (8125, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-22 09:57:08');
INSERT INTO `sys_login_log` VALUES (8126, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-22 13:34:52');
INSERT INTO `sys_login_log` VALUES (8127, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-22 13:35:01');
INSERT INTO `sys_login_log` VALUES (8128, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-23 19:04:55');
INSERT INTO `sys_login_log` VALUES (8129, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-23 19:05:08');
INSERT INTO `sys_login_log` VALUES (8130, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-24 21:15:50');
INSERT INTO `sys_login_log` VALUES (8131, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-25 18:00:21');
INSERT INTO `sys_login_log` VALUES (8132, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-25 18:00:35');
INSERT INTO `sys_login_log` VALUES (8133, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 17:11:36');
INSERT INTO `sys_login_log` VALUES (8134, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 17:11:44');
INSERT INTO `sys_login_log` VALUES (8135, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 17:24:03');
INSERT INTO `sys_login_log` VALUES (8136, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-26 17:24:15');
INSERT INTO `sys_login_log` VALUES (8137, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-26 17:25:57');
INSERT INTO `sys_login_log` VALUES (8138, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 17:36:00');
INSERT INTO `sys_login_log` VALUES (8139, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 18:00:51');
INSERT INTO `sys_login_log` VALUES (8140, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 18:09:10');
INSERT INTO `sys_login_log` VALUES (8141, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 18:09:56');
INSERT INTO `sys_login_log` VALUES (8142, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 18:12:54');
INSERT INTO `sys_login_log` VALUES (8143, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 18:14:22');
INSERT INTO `sys_login_log` VALUES (8144, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-01-26 18:16:39');
INSERT INTO `sys_login_log` VALUES (8145, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-26 18:27:43');
INSERT INTO `sys_login_log` VALUES (8146, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-26 18:32:26');
INSERT INTO `sys_login_log` VALUES (8147, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-27 09:28:47');
INSERT INTO `sys_login_log` VALUES (8148, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-27 13:37:59');
INSERT INTO `sys_login_log` VALUES (8149, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-27 15:44:11');
INSERT INTO `sys_login_log` VALUES (8150, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-29 09:33:47');
INSERT INTO `sys_login_log` VALUES (8151, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-31 18:32:41');
INSERT INTO `sys_login_log` VALUES (8152, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-31 18:59:17');
INSERT INTO `sys_login_log` VALUES (8153, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-31 19:32:05');
INSERT INTO `sys_login_log` VALUES (8154, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-31 20:35:52');
INSERT INTO `sys_login_log` VALUES (8155, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-01-31 20:39:49');
INSERT INTO `sys_login_log` VALUES (8156, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 09:43:20');
INSERT INTO `sys_login_log` VALUES (8157, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 10:07:29');
INSERT INTO `sys_login_log` VALUES (8158, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 10:24:54');
INSERT INTO `sys_login_log` VALUES (8159, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 11:49:06');
INSERT INTO `sys_login_log` VALUES (8160, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 14:06:21');
INSERT INTO `sys_login_log` VALUES (8161, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-02-01 15:41:41');
INSERT INTO `sys_login_log` VALUES (8162, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 15:41:53');
INSERT INTO `sys_login_log` VALUES (8163, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 15:43:18');
INSERT INTO `sys_login_log` VALUES (8164, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 15:46:46');
INSERT INTO `sys_login_log` VALUES (8165, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 15:50:29');
INSERT INTO `sys_login_log` VALUES (8166, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-02-01 15:57:14');
INSERT INTO `sys_login_log` VALUES (8167, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 15:57:46');
INSERT INTO `sys_login_log` VALUES (8168, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-01 16:52:58');
INSERT INTO `sys_login_log` VALUES (8169, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-02 09:38:16');
INSERT INTO `sys_login_log` VALUES (8170, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-02 09:39:03');
INSERT INTO `sys_login_log` VALUES (8171, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-02-02 09:45:19');
INSERT INTO `sys_login_log` VALUES (8172, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-02 09:49:02');
INSERT INTO `sys_login_log` VALUES (8173, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-02 09:56:28');
INSERT INTO `sys_login_log` VALUES (8174, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-02 09:59:04');
INSERT INTO `sys_login_log` VALUES (8175, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-02-02 10:04:05');
INSERT INTO `sys_login_log` VALUES (8176, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-02-02 10:16:00');
INSERT INTO `sys_login_log` VALUES (8177, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-02 10:19:49');
INSERT INTO `sys_login_log` VALUES (8178, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-02 10:22:39');
INSERT INTO `sys_login_log` VALUES (8179, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-02-02 11:58:33');
INSERT INTO `sys_login_log` VALUES (8180, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-02 12:00:26');
INSERT INTO `sys_login_log` VALUES (8181, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-04 09:58:16');
INSERT INTO `sys_login_log` VALUES (8182, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-04 10:00:29');
INSERT INTO `sys_login_log` VALUES (8183, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-04 10:02:46');
INSERT INTO `sys_login_log` VALUES (8184, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-04 10:05:14');
INSERT INTO `sys_login_log` VALUES (8185, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-04 10:16:55');
INSERT INTO `sys_login_log` VALUES (8186, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-04 16:32:00');
INSERT INTO `sys_login_log` VALUES (8187, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-05 09:22:13');
INSERT INTO `sys_login_log` VALUES (8188, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-05 11:34:44');
INSERT INTO `sys_login_log` VALUES (8189, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-05 13:45:46');
INSERT INTO `sys_login_log` VALUES (8190, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-05 13:51:48');
INSERT INTO `sys_login_log` VALUES (8191, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-05 16:47:00');
INSERT INTO `sys_login_log` VALUES (8192, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-07 09:30:14');
INSERT INTO `sys_login_log` VALUES (8193, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-07 11:03:38');
INSERT INTO `sys_login_log` VALUES (8194, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-07 13:39:15');
INSERT INTO `sys_login_log` VALUES (8195, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-07 14:45:55');
INSERT INTO `sys_login_log` VALUES (8196, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-07 16:08:01');
INSERT INTO `sys_login_log` VALUES (8197, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-07 17:21:58');
INSERT INTO `sys_login_log` VALUES (8198, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-11 23:01:05');
INSERT INTO `sys_login_log` VALUES (8199, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-12 20:10:55');
INSERT INTO `sys_login_log` VALUES (8200, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-24 22:35:29');
INSERT INTO `sys_login_log` VALUES (8201, '', '192.168.1.7', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-24 22:50:41');
INSERT INTO `sys_login_log` VALUES (8202, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-25 13:52:21');
INSERT INTO `sys_login_log` VALUES (8203, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-25 16:38:54');
INSERT INTO `sys_login_log` VALUES (8204, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-25 16:52:39');
INSERT INTO `sys_login_log` VALUES (8205, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-26 09:23:19');
INSERT INTO `sys_login_log` VALUES (8206, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-26 17:15:54');
INSERT INTO `sys_login_log` VALUES (8207, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-26 17:16:14');
INSERT INTO `sys_login_log` VALUES (8208, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-26 21:09:50');
INSERT INTO `sys_login_log` VALUES (8209, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-26 21:21:40');
INSERT INTO `sys_login_log` VALUES (8210, '', '192.168.1.7', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-28 21:07:45');
INSERT INTO `sys_login_log` VALUES (8211, '', '192.168.1.7', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-28 23:44:25');
INSERT INTO `sys_login_log` VALUES (8212, '', '192.168.1.7', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-28 23:44:53');
INSERT INTO `sys_login_log` VALUES (8213, '', '192.168.1.7', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-28 23:46:05');
INSERT INTO `sys_login_log` VALUES (8214, '', '192.168.1.7', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-28 23:47:19');
INSERT INTO `sys_login_log` VALUES (8215, '', '192.168.1.7', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-02-28 23:48:30');
INSERT INTO `sys_login_log` VALUES (8216, '', '192.168.1.7', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-01 00:03:57');
INSERT INTO `sys_login_log` VALUES (8217, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-01 09:19:08');
INSERT INTO `sys_login_log` VALUES (8218, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-08 16:52:35');
INSERT INTO `sys_login_log` VALUES (8219, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-08 16:56:35');
INSERT INTO `sys_login_log` VALUES (8220, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-08 17:00:02');
INSERT INTO `sys_login_log` VALUES (8221, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-08 17:17:06');
INSERT INTO `sys_login_log` VALUES (8222, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-09 09:27:27');
INSERT INTO `sys_login_log` VALUES (8223, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-09 09:28:08');
INSERT INTO `sys_login_log` VALUES (8224, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-09 09:29:37');
INSERT INTO `sys_login_log` VALUES (8225, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-09 09:30:22');
INSERT INTO `sys_login_log` VALUES (8226, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-09 14:32:36');
INSERT INTO `sys_login_log` VALUES (8227, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-09 17:22:22');
INSERT INTO `sys_login_log` VALUES (8228, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-09 17:35:03');
INSERT INTO `sys_login_log` VALUES (8229, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-09 17:39:05');
INSERT INTO `sys_login_log` VALUES (8230, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-10 10:41:31');
INSERT INTO `sys_login_log` VALUES (8231, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-10 15:48:00');
INSERT INTO `sys_login_log` VALUES (8232, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-10 15:49:04');
INSERT INTO `sys_login_log` VALUES (8233, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-10 15:49:19');
INSERT INTO `sys_login_log` VALUES (8234, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-10 15:49:47');
INSERT INTO `sys_login_log` VALUES (8235, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-03-10 17:48:29');
INSERT INTO `sys_login_log` VALUES (8236, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-10 17:48:34');
INSERT INTO `sys_login_log` VALUES (8237, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-03-13 19:27:47');
INSERT INTO `sys_login_log` VALUES (8238, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-13 19:29:27');
INSERT INTO `sys_login_log` VALUES (8239, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-16 09:36:59');
INSERT INTO `sys_login_log` VALUES (8240, '', '172.29.165.111', 'xx', 'Firefox 8', 'Windows 10', '1', '登录成功', '2021-03-16 18:04:35');
INSERT INTO `sys_login_log` VALUES (8241, '', '172.29.165.111', 'xx', 'Firefox 8', 'Windows 10', '1', '登录成功', '2021-03-16 18:06:08');
INSERT INTO `sys_login_log` VALUES (8242, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-17 22:44:00');
INSERT INTO `sys_login_log` VALUES (8243, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-17 23:19:43');
INSERT INTO `sys_login_log` VALUES (8244, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 09:26:57');
INSERT INTO `sys_login_log` VALUES (8245, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 10:00:12');
INSERT INTO `sys_login_log` VALUES (8246, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 10:00:18');
INSERT INTO `sys_login_log` VALUES (8247, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 10:01:46');
INSERT INTO `sys_login_log` VALUES (8248, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 22:41:20');
INSERT INTO `sys_login_log` VALUES (8249, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 22:54:25');
INSERT INTO `sys_login_log` VALUES (8250, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 22:57:54');
INSERT INTO `sys_login_log` VALUES (8251, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 22:58:06');
INSERT INTO `sys_login_log` VALUES (8252, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-18 22:58:28');
INSERT INTO `sys_login_log` VALUES (8253, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-19 09:40:24');
INSERT INTO `sys_login_log` VALUES (8254, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-19 10:14:04');
INSERT INTO `sys_login_log` VALUES (8255, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-19 10:15:19');
INSERT INTO `sys_login_log` VALUES (8256, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-19 19:46:55');
INSERT INTO `sys_login_log` VALUES (8257, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:21:25');
INSERT INTO `sys_login_log` VALUES (8258, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:42:51');
INSERT INTO `sys_login_log` VALUES (8259, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:45:57');
INSERT INTO `sys_login_log` VALUES (8260, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:48:20');
INSERT INTO `sys_login_log` VALUES (8261, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:48:34');
INSERT INTO `sys_login_log` VALUES (8262, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:49:01');
INSERT INTO `sys_login_log` VALUES (8263, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:49:19');
INSERT INTO `sys_login_log` VALUES (8264, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:49:59');
INSERT INTO `sys_login_log` VALUES (8265, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:50:28');
INSERT INTO `sys_login_log` VALUES (8266, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 20:50:53');
INSERT INTO `sys_login_log` VALUES (8267, '', '192.168.1.12', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-20 21:04:29');
INSERT INTO `sys_login_log` VALUES (8268, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-23 15:41:35');
INSERT INTO `sys_login_log` VALUES (8269, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-23 17:09:43');
INSERT INTO `sys_login_log` VALUES (8270, '', '172.29.165.111', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-23 17:19:10');
INSERT INTO `sys_login_log` VALUES (8271, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:10:07');
INSERT INTO `sys_login_log` VALUES (8272, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:12:52');
INSERT INTO `sys_login_log` VALUES (8273, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:22:46');
INSERT INTO `sys_login_log` VALUES (8274, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:23:43');
INSERT INTO `sys_login_log` VALUES (8275, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:24:08');
INSERT INTO `sys_login_log` VALUES (8276, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:32:04');
INSERT INTO `sys_login_log` VALUES (8277, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:58:03');
INSERT INTO `sys_login_log` VALUES (8278, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:59:03');
INSERT INTO `sys_login_log` VALUES (8279, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 18:59:58');
INSERT INTO `sys_login_log` VALUES (8280, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 19:01:35');
INSERT INTO `sys_login_log` VALUES (8281, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 19:03:54');
INSERT INTO `sys_login_log` VALUES (8282, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 19:05:14');
INSERT INTO `sys_login_log` VALUES (8283, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 19:07:14');
INSERT INTO `sys_login_log` VALUES (8284, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 19:10:21');
INSERT INTO `sys_login_log` VALUES (8285, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-03-28 19:34:13');
INSERT INTO `sys_login_log` VALUES (8286, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-03-28 19:35:42');
INSERT INTO `sys_login_log` VALUES (8287, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-03-28 19:38:41');
INSERT INTO `sys_login_log` VALUES (8288, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-03-28 19:39:12');
INSERT INTO `sys_login_log` VALUES (8289, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 19:40:49');
INSERT INTO `sys_login_log` VALUES (8290, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 20:25:45');
INSERT INTO `sys_login_log` VALUES (8291, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 20:28:20');
INSERT INTO `sys_login_log` VALUES (8292, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 20:30:27');
INSERT INTO `sys_login_log` VALUES (8293, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 20:32:25');
INSERT INTO `sys_login_log` VALUES (8294, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 20:49:18');
INSERT INTO `sys_login_log` VALUES (8295, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 20:49:31');
INSERT INTO `sys_login_log` VALUES (8296, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 20:54:00');
INSERT INTO `sys_login_log` VALUES (8297, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '0', '登录失败', '2021-03-28 21:11:32');
INSERT INTO `sys_login_log` VALUES (8298, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 21:12:20');
INSERT INTO `sys_login_log` VALUES (8299, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 21:15:05');
INSERT INTO `sys_login_log` VALUES (8300, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-28 21:15:31');
INSERT INTO `sys_login_log` VALUES (8301, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-29 15:28:00');
INSERT INTO `sys_login_log` VALUES (8302, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-29 15:32:12');
INSERT INTO `sys_login_log` VALUES (8303, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-29 15:58:11');
INSERT INTO `sys_login_log` VALUES (8304, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-29 15:58:34');
INSERT INTO `sys_login_log` VALUES (8305, '', '192.168.56.1', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-29 16:01:52');
INSERT INTO `sys_login_log` VALUES (8306, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-29 19:44:31');
INSERT INTO `sys_login_log` VALUES (8307, '', '192.168.1.15', 'xx', 'Chrome 8', 'Windows 10', '1', '登录成功', '2021-03-29 20:17:57');
INSERT INTO `sys_login_log` VALUES (8308, '', '172.18.0.4', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 09:20:19');
INSERT INTO `sys_login_log` VALUES (8309, '', '172.18.0.4', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 09:32:09');
INSERT INTO `sys_login_log` VALUES (8310, '', '172.18.0.4', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 09:34:14');
INSERT INTO `sys_login_log` VALUES (8311, '', '172.18.0.4', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 09:35:35');
INSERT INTO `sys_login_log` VALUES (8312, '', '172.18.0.4', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 09:37:41');
INSERT INTO `sys_login_log` VALUES (8313, '', '172.18.0.4', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 09:39:40');
INSERT INTO `sys_login_log` VALUES (8314, '', '192.168.43.140', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 09:43:46');
INSERT INTO `sys_login_log` VALUES (8315, '', '192.168.43.140', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 09:51:49');
INSERT INTO `sys_login_log` VALUES (8316, '', '172.18.0.4', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 10:09:15');
INSERT INTO `sys_login_log` VALUES (8317, '', '172.18.0.4', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 10:27:49');
INSERT INTO `sys_login_log` VALUES (8318, '', '192.168.43.140', 'xx', 'Chrome 9', 'Windows 10', '1', '登录成功', '2022-01-18 10:37:34');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `menu_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `parent_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级主键',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '路径',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态(是否启用 0禁用 1启用)',
  `create_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sys_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全选表用到的占位字段',
  `is_children` int(11) NULL DEFAULT NULL COMMENT '是否含有下级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('05626cd8b1d0451d8554d0739562c6d6', '0002005', '测试', 'icon-e944', '48301af1d1964ade807d40e95f3bf369', '/moban/textUser/textUser', '1', '2', '2020-07-10 16:27:43', '2', '2020-07-10 16:29:02', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('069ab7cacef24e57813b315c199e66c8', '001', '系统配置', 'icon-weibiaoti-1', '', '/001', '1', '2', '2020-02-29 15:41:48', '2', '2020-08-17 17:11:18', '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('0dfe3dc17e834905ad26f242e62e2938', '003001', '个人信息', 'icon-nanren', 'f0d3b0b49bde44d78b7a1fddbb7fbeff', '/system/sysPrivilege/sysUser/userInfo', '1', '2', '2020-02-29 15:53:43', '2', '2020-08-20 17:15:25', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('1551fbb63e1a4034b605569eab581556', '004002', '前端模板', 'icon-gongwenshouwen', 'e838fa2274414553a1c4a4d285618923', '/quickCode/sysAutoTem/query', '1', '2', '2021-02-05 13:51:37', '', NULL, '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('2237a4eaab874227918f584777b2e83e', '007002', '族谱创建', 'icon-gerenbangong', '4b3478fd685548e0ac168165c5c8aff2', '/familyTree/faTable/query', '1', '2', '2021-03-18 22:56:55', '', NULL, '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('2e66f6a396fb44a59ba3090c8224f6df', '005003', '全表格', 'icon-kongbaiwendang', '9ead0e4c34f44865ad4a7027b01a91e9', '/demonstration/allTable', '1', '2', '2020-07-21 16:31:46', '2', '2020-08-20 17:16:10', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3f913fd812364619a8efe9b727696a98', '001003001', '字典管理', 'icon-gengduo', '448be58a26b7400dbe7fe7757f352248', '/system/sysParameter/sysDic/sysDicList', '1', '2', '2020-02-29 15:48:52', '2', '2020-08-17 17:13:27', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('448be58a26b7400dbe7fe7757f352248', '001003', '全局参数', 'icon-dingdan', '069ab7cacef24e57813b315c199e66c8', '/001003', '1', '2', '2020-02-29 15:45:49', '2', '2020-08-20 17:14:06', '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('45e2aa89304f43b297f71df411f5229b', '001004', '基本信息', 'icon-chuzhi', '069ab7cacef24e57813b315c199e66c8', '/001004', '1', '2', '2020-02-29 15:46:55', '2', '2020-08-20 17:14:33', '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('4888f2767abe40ae9593b5a0912d22c0', '005007', '测试', 'icon-fagongwen', '9ead0e4c34f44865ad4a7027b01a91e9', '/demonstration/test', '1', '2', '2020-08-31 22:50:43', '2', '2020-09-18 14:14:11', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('542f1746b229448c9c6b96cccae0735f', '002004', '官网样式', 'icon-e93e', '48301af1d1964ade807d40e95f3bf369', '/moban/layout/layout', '1', '2', '2020-03-20 01:31:39', '', NULL, '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('58cec9f0668248ab8b55ad2690531f07', '005008', 'websocker', '', '9ead0e4c34f44865ad4a7027b01a91e9', '/demonstration/websocket', '1', '2', '2022-01-18 09:39:31', '', NULL, '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('62b05ec1d60e49aca31e36d3af5cfaee', '004001', '代码生成', 'icon-dianzan', 'e838fa2274414553a1c4a4d285618923', '/quickCode/codeAuto/codeAuto', '1', '2', '2020-09-28 09:33:27', '2', '2021-02-05 13:50:49', '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('6746825968ef4547bd35de27b5dfc23f', '008001', '博客1', 'icon-dianzan', 'cded82073b4344ed968b37b16b4826bd', '/blog/blogBlog/blogBlogList', '1', '2', '2021-03-09 14:38:25', '', NULL, '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('75fca2801cd0415cb9e865871d2f85fc', '001004001', '登入日志', 'icon-chuzhi', '45e2aa89304f43b297f71df411f5229b', '/system/syslog/sysLoginLog', '1', '2', '2020-02-29 15:51:43', '2', '2020-08-20 17:14:43', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('7b3ede7ac32942e5935c4f0007ba5f34', '001002', '权限管理', 'icon-gerenbangong', '069ab7cacef24e57813b315c199e66c8', '/001002', '1', '2', '2020-02-29 15:44:15', '2', '2020-08-20 17:13:23', '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('95456a9c2e394441b97671dbe19137bb', '001003002', '按钮配置', 'icon-dizhibu', '448be58a26b7400dbe7fe7757f352248', '/system/sysParameter/sysBut/sysButList', '1', '2', '2020-02-29 15:49:33', '2', '2020-08-17 17:14:24', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('9c4551d782ba4ca1bb9aa94a82fe77a0', '007003', '族谱用户映射表', 'icon-dizhibu', '4b3478fd685548e0ac168165c5c8aff2', '/familyTree/tableUser/query', '1', '2', '2021-03-20 20:47:07', '2', '2021-03-20 20:50:48', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('9ead0e4c34f44865ad4a7027b01a91e9', '005', '演示实例', 'icon-hangzhengguanli', '', '/005', '1', '2', '2020-07-21 15:54:31', '2', '2020-08-20 17:15:40', '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('aeb1e5a34d37403c9f115b60612227a2', '007001', '族谱用户管理', 'icon-gerenbangong', '4b3478fd685548e0ac168165c5c8aff2', '/familyTree/faUser/query', '1', '2', '2021-02-28 23:44:14', '2', '2021-03-01 00:03:48', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('af965b9edceb4853a1db088f2c556850', '001005', '文件上传', 'icon-xinfeng', '069ab7cacef24e57813b315c199e66c8', '/system/sysFiles/sysFilesList', '1', '2', '2020-05-30 04:11:26', '2', '2020-08-20 17:15:00', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('b3942ff6903c4f22be0e9e0770bd2222', '008002', '博客2', 'icon-hongbao', 'cded82073b4344ed968b37b16b4826bd', '/blog/blogProject/blogProjectList', '1', '2', '2021-03-09 14:39:28', '', NULL, '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('cbaba57dda95454193c1187cf70633f3', '002003', 'websocket', 'icon-e935', '48301af1d1964ade807d40e95f3bf369', '/moban/websocket/websocket', '1', '2', '2020-03-15 12:55:59', '', NULL, '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('d03bbf4b40294417ae9bd70933d04eae', '005001', '左树右表', 'icon-rili1', '9ead0e4c34f44865ad4a7027b01a91e9', '/demonstration/treeTable', '1', '2', '2020-09-18 11:12:25', '', NULL, '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('e48d75b09aa147c0936b8de403842331', '005005', 'echart图表', 'icon-zuo', '9ead0e4c34f44865ad4a7027b01a91e9', '/demonstration/echart', '1', '2', '2020-07-21 16:32:49', '2', '2020-08-20 17:16:25', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('e4b0afc1df694c12b54f3d8e58c394ca', '001001', '菜单配置', 'icon-fenlei1', '069ab7cacef24e57813b315c199e66c8', '/system/sysMenu/sysMenuList', '1', '2', '2020-02-29 15:43:31', '2', '2020-08-17 17:10:05', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('e838fa2274414553a1c4a4d285618923', '004', '快捷编码', 'icon-gongwenshouwen', '', '004', '1', '2', '2021-02-05 13:47:36', '2', '2021-02-28 23:46:56', '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('eee385792dc44c7191641f4cc70e007c', '001002001', '角色管理', 'icon-laoban', '7b3ede7ac32942e5935c4f0007ba5f34', '/system/sysPrivilege/sysRole/sysRoleList', '1', '2', '2020-02-29 15:47:41', '2', '2020-08-17 17:11:28', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('f0d3b0b49bde44d78b7a1fddbb7fbeff', '003', '个人中心', 'icon-gerenzhongxin', '', '/003', '1', '2', '2020-02-29 15:53:09', '2', '2020-08-20 17:15:14', '', NULL, 1);
INSERT INTO `sys_menu` VALUES ('fd8a867a59924bbcae445046d7e1a5c2', '001002002', '账号管理', 'icon-wode', '7b3ede7ac32942e5935c4f0007ba5f34', '/system/sysPrivilege/sysUser/sysUserList', '1', '2', '2020-02-29 15:48:16', '2', '2020-08-17 17:12:58', '', NULL, 0);
INSERT INTO `sys_menu` VALUES ('ffed73862930480ab823ebbcd02a7874', '005002', '查询区域表格', 'icon-shousuo', '9ead0e4c34f44865ad4a7027b01a91e9', '/demonstration/queryAreaTable', '1', '2', '2020-09-18 11:13:13', '', NULL, '', NULL, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '瑙掕壊鍚嶇О',
  `dr` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '瑙掕壊鎻忚堪',
  `create_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新用户',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('ca567906cd45495f8110e7d1083034f8', '管理员', '1', '1', '管理员', 'admin', '2021-03-10 15:48:25', NULL, NULL);
INSERT INTO `sys_role` VALUES ('fe9502fa296b4a6fa86812348537d496', '超级管理员', '1', '1', '超级管理员', 'admin', '2020-02-29 16:44:20', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限表id',
  `role_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单id',
  `button_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮id',
  `parent_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父节点id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('00a38ee67c064df7bc262bf140afba97', 'fe9502fa296b4a6fa86812348537d496', '95456a9c2e394441b97671dbe19137bb', 'b24fa16517354646ac49bd535b081f80', NULL);
INSERT INTO `sys_role_permission` VALUES ('00a9f1dd4ad748ddb87d9cd5dd090d4e', 'ca567906cd45495f8110e7d1083034f8', '069ab7cacef24e57813b315c199e66c8', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('00f1c40a229f410fbe48a3430e60af93', '0f5462af2dad446182d0a2bc37e6a999', 'eee385792dc44c7191641f4cc70e007c', '7b373815054e49bfabaf0273f0419bc9', NULL);
INSERT INTO `sys_role_permission` VALUES ('071e82e566994ff0ab44d2957903340c', 'fe9502fa296b4a6fa86812348537d496', '3f913fd812364619a8efe9b727696a98', NULL, '448be58a26b7400dbe7fe7757f352248');
INSERT INTO `sys_role_permission` VALUES ('07bfeef5b5f349f0a08610adc61e01ba', 'fe9502fa296b4a6fa86812348537d496', '3f913fd812364619a8efe9b727696a98', '0f9366c3ac244b7eab15aeaa6a03c943', NULL);
INSERT INTO `sys_role_permission` VALUES ('0c037445c65543e783beeff05accca49', 'ca567906cd45495f8110e7d1083034f8', 'e48d75b09aa147c0936b8de403842331', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('0ca82902b0b845178138bf851453d239', 'fe9502fa296b4a6fa86812348537d496', 'fd8a867a59924bbcae445046d7e1a5c2', '2d062a47fd8a4e1a98b552ef60c37643', NULL);
INSERT INTO `sys_role_permission` VALUES ('0f4b54ab773f4da89657fd758a4690f0', '0f5462af2dad446182d0a2bc37e6a999', '3f913fd812364619a8efe9b727696a98', '1b38f27b09d6436cbd7ce578f28f7a8e', NULL);
INSERT INTO `sys_role_permission` VALUES ('1002aa82df99445287b99d56f45cde0e', 'ca567906cd45495f8110e7d1083034f8', 'cded82073b4344ed968b37b16b4826bd', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('10df333a36cb4019aac2e65f601a5684', 'fe9502fa296b4a6fa86812348537d496', 'eee385792dc44c7191641f4cc70e007c', 'eac4c809840e46d6ada8ed12773d831b', NULL);
INSERT INTO `sys_role_permission` VALUES ('11f1a92f219040d9a2d4e0bde83cfe77', '0f5462af2dad446182d0a2bc37e6a999', 'e4b0afc1df694c12b54f3d8e58c394ca', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('139f195096054cebb0ce9161aa08a823', '0f5462af2dad446182d0a2bc37e6a999', '2e66f6a396fb44a59ba3090c8224f6df', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('13b69859ef37467f8778e535b0919a98', 'fe9502fa296b4a6fa86812348537d496', 'eee385792dc44c7191641f4cc70e007c', 'f1eb624af2cf42448671288969f9f6a5', NULL);
INSERT INTO `sys_role_permission` VALUES ('16f446f2e2ff44ed819403ae60ac81ef', '0f5462af2dad446182d0a2bc37e6a999', '9ead0e4c34f44865ad4a7027b01a91e9', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('181d5259c76c4e66b9c031ebfafbb9f9', 'fe9502fa296b4a6fa86812348537d496', '48301af1d1964ade807d40e95f3bf369', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('19ec21d1b83747b7b8bfaa8b664a308b', 'fe9502fa296b4a6fa86812348537d496', '45e2aa89304f43b297f71df411f5229b', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('2344f22fe5744290b7c2022a4dde9b8c', 'fe9502fa296b4a6fa86812348537d496', '95456a9c2e394441b97671dbe19137bb', NULL, '448be58a26b7400dbe7fe7757f352248');
INSERT INTO `sys_role_permission` VALUES ('253451caa7b049b2bc588b112b8a9977', 'ca567906cd45495f8110e7d1083034f8', '9ead0e4c34f44865ad4a7027b01a91e9', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('2715bb9be61443098e65bb37f455f550', '0f5462af2dad446182d0a2bc37e6a999', 'eee385792dc44c7191641f4cc70e007c', 'f1eb624af2cf42448671288969f9f6a5', NULL);
INSERT INTO `sys_role_permission` VALUES ('2d8dbba2be3f416f8d9966f43b7793fa', 'ca567906cd45495f8110e7d1083034f8', '62b05ec1d60e49aca31e36d3af5cfaee', NULL, 'e838fa2274414553a1c4a4d285618923');
INSERT INTO `sys_role_permission` VALUES ('30d21238cbb64ef79daf6d69fc177a82', 'ca567906cd45495f8110e7d1083034f8', 'b3942ff6903c4f22be0e9e0770bd2222', NULL, 'cded82073b4344ed968b37b16b4826bd');
INSERT INTO `sys_role_permission` VALUES ('33e705dfea654736b9888a5661baa922', 'fe9502fa296b4a6fa86812348537d496', 'e4b0afc1df694c12b54f3d8e58c394ca', '3700186ba1a5417490322f4d337a7ea4', NULL);
INSERT INTO `sys_role_permission` VALUES ('3aacbc0b91e64e9db9265a061281e0e0', '0f5462af2dad446182d0a2bc37e6a999', '75fca2801cd0415cb9e865871d2f85fc', NULL, '45e2aa89304f43b297f71df411f5229b');
INSERT INTO `sys_role_permission` VALUES ('3d8a6cac097c423c88974bb94e78c27a', 'ca567906cd45495f8110e7d1083034f8', '1551fbb63e1a4034b605569eab581556', NULL, 'e838fa2274414553a1c4a4d285618923');
INSERT INTO `sys_role_permission` VALUES ('3f342f5959494b1f913b75c6f254971c', 'fe9502fa296b4a6fa86812348537d496', '3f913fd812364619a8efe9b727696a98', '13f2ea34b9d5447e9d04943395aad098', NULL);
INSERT INTO `sys_role_permission` VALUES ('412de099fc194511af4602f8d6b2baff', '0f5462af2dad446182d0a2bc37e6a999', 'fd8a867a59924bbcae445046d7e1a5c2', NULL, '7b3ede7ac32942e5935c4f0007ba5f34');
INSERT INTO `sys_role_permission` VALUES ('437259537a31442da196d942215615a5', 'ca567906cd45495f8110e7d1083034f8', '9c4551d782ba4ca1bb9aa94a82fe77a0', NULL, '4b3478fd685548e0ac168165c5c8aff2');
INSERT INTO `sys_role_permission` VALUES ('4814e92f94f44238918198850bf06d66', 'fe9502fa296b4a6fa86812348537d496', 'f590eab1dd624836b07332f072db2390', NULL, '48301af1d1964ade807d40e95f3bf369');
INSERT INTO `sys_role_permission` VALUES ('48c64bb90b784480a9844094a0665066', '0f5462af2dad446182d0a2bc37e6a999', '7b3ede7ac32942e5935c4f0007ba5f34', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('4bff5aa1549e44bea67e988bd8cc6208', '0f5462af2dad446182d0a2bc37e6a999', 'eee385792dc44c7191641f4cc70e007c', 'f98965a6d0e84829a3c59644b9108cc8', NULL);
INSERT INTO `sys_role_permission` VALUES ('50010a1af8134a23b42a666e451dccff', 'fe9502fa296b4a6fa86812348537d496', '75fca2801cd0415cb9e865871d2f85fc', NULL, '45e2aa89304f43b297f71df411f5229b');
INSERT INTO `sys_role_permission` VALUES ('5a15d0a7ed24406d932d59cdbc6e6e79', 'ca567906cd45495f8110e7d1083034f8', 'd03bbf4b40294417ae9bd70933d04eae', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('5dc1b7bcb24448b4ae1973f4c07e4f2f', '0f5462af2dad446182d0a2bc37e6a999', 'fd8a867a59924bbcae445046d7e1a5c2', '292fa92fae2c4cb9a1136ba699a40365', NULL);
INSERT INTO `sys_role_permission` VALUES ('639e7a81782f44fa98ee16fedefb8c45', '0f5462af2dad446182d0a2bc37e6a999', '3f913fd812364619a8efe9b727696a98', '0f9366c3ac244b7eab15aeaa6a03c943', NULL);
INSERT INTO `sys_role_permission` VALUES ('641945900db34d87b9048f46e317950b', '0f5462af2dad446182d0a2bc37e6a999', 'fd8a867a59924bbcae445046d7e1a5c2', 'e983e5dbfd6e41cbb24553cd9ae007f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('656f677eecca48f8ad4f0bd1fb3eba8d', '0f5462af2dad446182d0a2bc37e6a999', 'eee385792dc44c7191641f4cc70e007c', 'eac4c809840e46d6ada8ed12773d831b', NULL);
INSERT INTO `sys_role_permission` VALUES ('65ec6b32154e4a268f5d011e9783c70f', 'ca567906cd45495f8110e7d1083034f8', 'aeb1e5a34d37403c9f115b60612227a2', NULL, '4b3478fd685548e0ac168165c5c8aff2');
INSERT INTO `sys_role_permission` VALUES ('680ac356e2a94e998df43553fbcfecab', '0f5462af2dad446182d0a2bc37e6a999', '448be58a26b7400dbe7fe7757f352248', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('6b818ae6fff640f49f527a279253d153', '0f5462af2dad446182d0a2bc37e6a999', 'fd8a867a59924bbcae445046d7e1a5c2', '2d062a47fd8a4e1a98b552ef60c37643', NULL);
INSERT INTO `sys_role_permission` VALUES ('6ce80eead10c4209bcd8c4a41daa4d7a', 'fe9502fa296b4a6fa86812348537d496', '069ab7cacef24e57813b315c199e66c8', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('705c8ecb58934d1b8d790219c660cc1e', '0f5462af2dad446182d0a2bc37e6a999', '069ab7cacef24e57813b315c199e66c8', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('770ca9275e0f4c85bd5911bbae54feb6', 'fe9502fa296b4a6fa86812348537d496', 'eee385792dc44c7191641f4cc70e007c', 'eadcec66d32c4eb0998eab7b2bb9abfd', NULL);
INSERT INTO `sys_role_permission` VALUES ('7e625fa39c564ff98edf853fd51099cc', 'ca567906cd45495f8110e7d1083034f8', 'ffed73862930480ab823ebbcd02a7874', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('80d5037a4d204aefa638892dfe27fd69', '0f5462af2dad446182d0a2bc37e6a999', '95456a9c2e394441b97671dbe19137bb', '11a09de082b949bcbdd400723c2b3887', NULL);
INSERT INTO `sys_role_permission` VALUES ('8170536a96474e9dbbb88ac754ced8a1', 'fe9502fa296b4a6fa86812348537d496', '3f913fd812364619a8efe9b727696a98', '1b38f27b09d6436cbd7ce578f28f7a8e', NULL);
INSERT INTO `sys_role_permission` VALUES ('81bbbfe944a54c76b9ddf89585faaf0f', '0f5462af2dad446182d0a2bc37e6a999', 'e48d75b09aa147c0936b8de403842331', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('8313fa1caf5a4dfba7137b5caa8aee83', 'ca567906cd45495f8110e7d1083034f8', '2237a4eaab874227918f584777b2e83e', NULL, '4b3478fd685548e0ac168165c5c8aff2');
INSERT INTO `sys_role_permission` VALUES ('852cedcdb191456ca7935ff5058fac05', 'fe9502fa296b4a6fa86812348537d496', '448be58a26b7400dbe7fe7757f352248', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('86945795caa740d6bea0c5419798688c', '0f5462af2dad446182d0a2bc37e6a999', '3f913fd812364619a8efe9b727696a98', 'd94b592715de4489b5bc61cfc767ac18', NULL);
INSERT INTO `sys_role_permission` VALUES ('880dc12c06114efaacdd1a9672eb0953', 'fe9502fa296b4a6fa86812348537d496', 'e4b0afc1df694c12b54f3d8e58c394ca', '366a577f08674f8bbe4c3f7164e908a7', NULL);
INSERT INTO `sys_role_permission` VALUES ('89bbb3c467ea4ae283f1c9b10bf86a26', '0f5462af2dad446182d0a2bc37e6a999', 'eee385792dc44c7191641f4cc70e007c', 'eadcec66d32c4eb0998eab7b2bb9abfd', NULL);
INSERT INTO `sys_role_permission` VALUES ('93897c2abb48418fa9f057e549878758', 'fe9502fa296b4a6fa86812348537d496', 'e4b0afc1df694c12b54f3d8e58c394ca', '5a193e98280e46e1b6a86c68aeb653eb', NULL);
INSERT INTO `sys_role_permission` VALUES ('96ee657123cb48b4a1d0491e843b48c8', 'ca567906cd45495f8110e7d1083034f8', '0dfe3dc17e834905ad26f242e62e2938', NULL, 'f0d3b0b49bde44d78b7a1fddbb7fbeff');
INSERT INTO `sys_role_permission` VALUES ('9711f09001c24f4a9f453f92f5793ce4', '0f5462af2dad446182d0a2bc37e6a999', 'f0d3b0b49bde44d78b7a1fddbb7fbeff', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('9bb5b2f78856477f898a9655d9d61d02', '0f5462af2dad446182d0a2bc37e6a999', '3f913fd812364619a8efe9b727696a98', '13f2ea34b9d5447e9d04943395aad098', NULL);
INSERT INTO `sys_role_permission` VALUES ('a02e4acca2d04ab1a712bd17d60d8978', '0f5462af2dad446182d0a2bc37e6a999', 'de7309700c3e430a9ee5c33b69ea65c7', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('a1e88d8d10b047a1b0ad50bbb280b264', 'ca567906cd45495f8110e7d1083034f8', '4b3478fd685548e0ac168165c5c8aff2', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('a3ff384607f341f59ad090b01a9cc605', 'ca567906cd45495f8110e7d1083034f8', 'f0d3b0b49bde44d78b7a1fddbb7fbeff', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('a4ba4ed18c9b4786aece1e570e4a11c9', '0f5462af2dad446182d0a2bc37e6a999', 'bbd573bdfdf54fb1a924138282affc73', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('a8324cc5f4f6461ea8adbacb6d816044', '0f5462af2dad446182d0a2bc37e6a999', '95456a9c2e394441b97671dbe19137bb', 'c8b689b3a9484fb69e4532a185928baa', NULL);
INSERT INTO `sys_role_permission` VALUES ('ab6bff9e3bfc48559bfead71ce6abe12', '0f5462af2dad446182d0a2bc37e6a999', '3f913fd812364619a8efe9b727696a98', 'd2e2d7bb8373428bab6b03d7aca33f7d', NULL);
INSERT INTO `sys_role_permission` VALUES ('acdea36342b9435588a5a7f6abc52270', 'ca567906cd45495f8110e7d1083034f8', '4888f2767abe40ae9593b5a0912d22c0', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('af0cfb6b995d4c04b6c6eed50162b265', '0f5462af2dad446182d0a2bc37e6a999', 'e4b0afc1df694c12b54f3d8e58c394ca', '5a193e98280e46e1b6a86c68aeb653eb', NULL);
INSERT INTO `sys_role_permission` VALUES ('b133819b15994dfea6cf802ed8dd0fb1', 'fe9502fa296b4a6fa86812348537d496', '3f913fd812364619a8efe9b727696a98', 'd2e2d7bb8373428bab6b03d7aca33f7d', NULL);
INSERT INTO `sys_role_permission` VALUES ('b9ec845a8f9d4581a49e4f66a058575b', 'fe9502fa296b4a6fa86812348537d496', 'e4b0afc1df694c12b54f3d8e58c394ca', '9cdd5443365f4e38a478d6e36c6aa40e', NULL);
INSERT INTO `sys_role_permission` VALUES ('bac95dc981c64d988b75c58451674e16', '0f5462af2dad446182d0a2bc37e6a999', '45e2aa89304f43b297f71df411f5229b', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('bcde6e26db064f9b9628a978943bf772', '0f5462af2dad446182d0a2bc37e6a999', '3f913fd812364619a8efe9b727696a98', NULL, '448be58a26b7400dbe7fe7757f352248');
INSERT INTO `sys_role_permission` VALUES ('be5f2ed87bb14e7087dfe5f5bdd1734f', 'ca567906cd45495f8110e7d1083034f8', '6746825968ef4547bd35de27b5dfc23f', NULL, 'cded82073b4344ed968b37b16b4826bd');
INSERT INTO `sys_role_permission` VALUES ('bfa2fb78417e4de2af4a3828bc44d751', '0f5462af2dad446182d0a2bc37e6a999', 'eee385792dc44c7191641f4cc70e007c', NULL, '7b3ede7ac32942e5935c4f0007ba5f34');
INSERT INTO `sys_role_permission` VALUES ('c3ba26f9e70b4839a4f2414e553bd823', '0f5462af2dad446182d0a2bc37e6a999', '0ff53d98380b48b79adcbf1b5b71de44', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('c965865749c2478299591328135e8e6c', 'fe9502fa296b4a6fa86812348537d496', 'fd8a867a59924bbcae445046d7e1a5c2', 'e983e5dbfd6e41cbb24553cd9ae007f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('cb909f85435e4d048035722091a3516e', 'ca567906cd45495f8110e7d1083034f8', 'e838fa2274414553a1c4a4d285618923', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('cca57a3e9cf64fa989c20fd891bd1503', 'ca567906cd45495f8110e7d1083034f8', '2e66f6a396fb44a59ba3090c8224f6df', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('cccb8844ab29475e9ac17e05b27f5efd', 'fe9502fa296b4a6fa86812348537d496', '0dfe3dc17e834905ad26f242e62e2938', NULL, 'f0d3b0b49bde44d78b7a1fddbb7fbeff');
INSERT INTO `sys_role_permission` VALUES ('cffe5f34fdf44bf5ae12a17714eb9a99', '0f5462af2dad446182d0a2bc37e6a999', 'e4b0afc1df694c12b54f3d8e58c394ca', '9cdd5443365f4e38a478d6e36c6aa40e', NULL);
INSERT INTO `sys_role_permission` VALUES ('d18179f3228c479bb33041fe3462626a', 'fe9502fa296b4a6fa86812348537d496', 'eee385792dc44c7191641f4cc70e007c', '7b373815054e49bfabaf0273f0419bc9', NULL);
INSERT INTO `sys_role_permission` VALUES ('d39e254065b44f9d89677c8f06733afa', 'fe9502fa296b4a6fa86812348537d496', 'eee385792dc44c7191641f4cc70e007c', 'f98965a6d0e84829a3c59644b9108cc8', NULL);
INSERT INTO `sys_role_permission` VALUES ('d5f96ec073414523a85de6a4ee3df657', 'fe9502fa296b4a6fa86812348537d496', 'e4b0afc1df694c12b54f3d8e58c394ca', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('d96d7f5cc6c44ea4a3a6d8205eb90f60', 'fe9502fa296b4a6fa86812348537d496', 'dc87ede61db24e7b908892c0ae5d8016', NULL, '48301af1d1964ade807d40e95f3bf369');
INSERT INTO `sys_role_permission` VALUES ('da8d20ce89874f798b46341f9f57faef', 'ca567906cd45495f8110e7d1083034f8', 'af965b9edceb4853a1db088f2c556850', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('dee1a26eb05d4bafaf2a981d9dad83ee', 'fe9502fa296b4a6fa86812348537d496', '3f913fd812364619a8efe9b727696a98', '98837acc49d5480793ebd949d6410548', NULL);
INSERT INTO `sys_role_permission` VALUES ('df1b89f6e3e348bfb2b50a49685163d0', 'fe9502fa296b4a6fa86812348537d496', '95456a9c2e394441b97671dbe19137bb', 'c8b689b3a9484fb69e4532a185928baa', NULL);
INSERT INTO `sys_role_permission` VALUES ('df44329da547494095c6a1bdf4194cac', 'fe9502fa296b4a6fa86812348537d496', 'f0d3b0b49bde44d78b7a1fddbb7fbeff', NULL, '');
INSERT INTO `sys_role_permission` VALUES ('e4d2a538a7c04828a39e527b51a31658', 'fe9502fa296b4a6fa86812348537d496', '3f913fd812364619a8efe9b727696a98', 'd94b592715de4489b5bc61cfc767ac18', NULL);
INSERT INTO `sys_role_permission` VALUES ('e5978cb7d7ba4eb893048b5e6afa21c4', 'fe9502fa296b4a6fa86812348537d496', '7b3ede7ac32942e5935c4f0007ba5f34', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('e854754c891e4b61a9b210d80032db17', '0f5462af2dad446182d0a2bc37e6a999', 'e4b0afc1df694c12b54f3d8e58c394ca', '3700186ba1a5417490322f4d337a7ea4', NULL);
INSERT INTO `sys_role_permission` VALUES ('ea31f372c91f48ce835f17b110e67932', 'fe9502fa296b4a6fa86812348537d496', 'fd8a867a59924bbcae445046d7e1a5c2', 'be0eb3b0c68441bc8b6de554082821f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('ea5fc35259544f3fb48d4ef99a9d2efa', '0f5462af2dad446182d0a2bc37e6a999', '95456a9c2e394441b97671dbe19137bb', 'b24fa16517354646ac49bd535b081f80', NULL);
INSERT INTO `sys_role_permission` VALUES ('f0267591db334f5e947ba49212d25865', '0f5462af2dad446182d0a2bc37e6a999', 'f8e349dacb33466f89e7971dc06bcb91', NULL, '9ead0e4c34f44865ad4a7027b01a91e9');
INSERT INTO `sys_role_permission` VALUES ('f046b9b7192342cba166185d6954dc31', '0f5462af2dad446182d0a2bc37e6a999', '3f913fd812364619a8efe9b727696a98', '98837acc49d5480793ebd949d6410548', NULL);
INSERT INTO `sys_role_permission` VALUES ('f3bfdae178594702922beb2ac32b8083', '0f5462af2dad446182d0a2bc37e6a999', 'fd8a867a59924bbcae445046d7e1a5c2', 'be0eb3b0c68441bc8b6de554082821f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('f40d1d5eb1924dc38f3fc5d932aacdfa', 'fe9502fa296b4a6fa86812348537d496', 'fd8a867a59924bbcae445046d7e1a5c2', NULL, '7b3ede7ac32942e5935c4f0007ba5f34');
INSERT INTO `sys_role_permission` VALUES ('f88f1c1b37de452493e538aee36bc15a', 'fe9502fa296b4a6fa86812348537d496', 'eee385792dc44c7191641f4cc70e007c', NULL, '7b3ede7ac32942e5935c4f0007ba5f34');
INSERT INTO `sys_role_permission` VALUES ('fd5415a0c7274038a6ad53cbfffa04dc', '0f5462af2dad446182d0a2bc37e6a999', '95456a9c2e394441b97671dbe19137bb', NULL, '448be58a26b7400dbe7fe7757f352248');
INSERT INTO `sys_role_permission` VALUES ('fd6c6f1723fa4dd49497282fc4e6b0bd', '0f5462af2dad446182d0a2bc37e6a999', 'af965b9edceb4853a1db088f2c556850', NULL, '069ab7cacef24e57813b315c199e66c8');
INSERT INTO `sys_role_permission` VALUES ('fe120763b24347249f1c89e3f9ad850e', 'fe9502fa296b4a6fa86812348537d496', '95456a9c2e394441b97671dbe19137bb', '11a09de082b949bcbdd400723c2b3887', NULL);

-- ----------------------------
-- Table structure for sys_test
-- ----------------------------
DROP TABLE IF EXISTS `sys_test`;
CREATE TABLE `sys_test`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `test_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测试名',
  `test_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测试类型',
  `test_status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测试状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `parent_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父id',
  `test_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '测试文本',
  `test_num` float(11, 2) NULL DEFAULT NULL COMMENT '个数',
  `test_unit` decimal(11, 2) NULL DEFAULT NULL COMMENT '单价',
  `test_total` decimal(11, 2) NULL DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_test
-- ----------------------------
INSERT INTO `sys_test` VALUES ('3a127478b37948088236bb421167bae3', '测试二三111', '5,3', '1', '2020-06-15 00:00:00', '4fcee6c3f7164300ab75e67b32871145', NULL, 'bbbb', 22.00, 0.99, 98.01);
INSERT INTO `sys_test` VALUES ('79df40025f324e0cad949c470fa4b428', 'pppp', '', '', '2021-01-12 02:00:00', '', '', '', NULL, NULL, NULL);
INSERT INTO `sys_test` VALUES ('8b02f8348a8a47bfa275b457e5cd0e2a', 'ppp', '', '', '2021-01-22 00:00:00', '', '', '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_test_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_test_detail`;
CREATE TABLE `sys_test_detail`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键',
  `parent_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  `money` decimal(10, 0) NULL DEFAULT NULL COMMENT '钱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_test_detail
-- ----------------------------
INSERT INTO `sys_test_detail` VALUES ('cefde2b0a86e4867bacc6de7883cbfe1', 'f55719ec8de442a0a91373f6e4bc99bb', '明细1', '1', 50);
INSERT INTO `sys_test_detail` VALUES ('e156243dcb20485f8e9e51bf4b63b840', 'f55719ec8de442a0a91373f6e4bc99bb', '明细2', '1', 80);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `mobile_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `role_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '鑱岀Оid',
  `birthday` datetime(6) NULL DEFAULT NULL COMMENT '生日',
  `identity_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密用的盐值',
  `login_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `head_portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('4fcee6c3f7164300ab75e67b32871145', 'admin', '0', 'c23d007f772aa61cb203b1c16092bef7', '1577023143', '1542@qq.com', 'fe9502fa296b4a6fa86812348537d496', NULL, '', 'e9489043d06ee1c243981c4bb72ff9bb', 'admin', '1', '', 'nullcc9e056f-2ef7-4268-995c-ad00ce597c16.jpg', '', '2020-02-29 16:02:44', '4fcee6c3f7164300ab75e67b32871145', '2020-02-29 16:45:15');
INSERT INTO `sys_user` VALUES ('ef46ddb8e7f84c7db1d81110ba992aa0', 'whfch', '0', 'cc36b24436871e107c84f8cbeeb0988f', '', '', 'ca567906cd45495f8110e7d1083034f8', NULL, '', 'fdd35a59a474281d40fd9f508f925db5', 'whfch', '1', '', NULL, '4fcee6c3f7164300ab75e67b32871145', '2021-03-09 09:29:05', 'ef46ddb8e7f84c7db1d81110ba992aa0', '2021-03-10 15:49:41');

SET FOREIGN_KEY_CHECKS = 1;
