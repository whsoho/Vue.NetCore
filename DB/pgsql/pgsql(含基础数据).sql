/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云3M
 Source Server Type    : PostgreSQL
 Source Server Version : 120001
 Source Host           : 193.112.89.206:5432
 Source Catalog        : paopao
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120001
 File Encoding         : 65001

 Date: 20/05/2020 03:21:22
*/


-- ----------------------------
-- Table structure for Sys_Dictionary
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_Dictionary";
CREATE TABLE "public"."Sys_Dictionary" (
  "Dic_ID" int4 NOT NULL,
  "Config" varchar(4000) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "DBServer" varchar(4000) COLLATE "pg_catalog"."default",
  "DbSql" varchar(4000) COLLATE "pg_catalog"."default",
  "DicName" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "DicNo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "Enable" int2 NOT NULL,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "OrderNo" int4,
  "ParentId" int4 NOT NULL,
  "Remark" varchar(2000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_Dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_DictionaryList
-- ----------------------------
DROP TABLE IF EXISTS "public"."Sys_DictionaryList";
CREATE TABLE "public"."Sys_DictionaryList" (
  "DicList_ID" int4 NOT NULL,
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "DicName" varchar(100) COLLATE "pg_catalog"."default",
  "DicValue" varchar(100) COLLATE "pg_catalog"."default",
  "Dic_ID" int4,
  "Enable" int2,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "OrderNo" int4,
  "Remark" varchar(2000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Sys_DictionaryList
-- ----------------------------

-- ----------------------------
-- Table structure for app_appointment
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_appointment";
CREATE TABLE "public"."app_appointment" (
  "Id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "Describe" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "Name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "PhoneNo" varchar(15) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of app_appointment
-- ----------------------------
INSERT INTO "public"."app_appointment" VALUES ('08d73c0e-edef-0a68-ab81-c3dc5e0fe407', '2019-09-18 16:05:11', 1, '超级管理员', '来自火星。。。', '超级管理员', '2020-04-24 13:47:46', 1, '元霸', '138888887698');
INSERT INTO "public"."app_appointment" VALUES ('08d73c0e-edf8-595b-9a8f-2ff134751833', '2019-09-18 16:05:11', 1, '超级管理员', '元歌有8个技能..', '超级管理员', '2020-04-24 13:44:04', 1, '元歌', '1300111235');
INSERT INTO "public"."app_appointment" VALUES ('08d73c11-6a43-97e8-ca70-e8b0d906807e', '2019-09-18 16:22:59', 1, '超级管理员', '来自火星。。。', '超级管理员', '2020-04-27 14:20:58', 1, '元华', '138888887698');

-- ----------------------------
-- Table structure for app_news
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_news";
CREATE TABLE "public"."app_news" (
  "Id" int4 NOT NULL,
  "Author" varchar(50) COLLATE "pg_catalog"."default",
  "BigImageUrls" varchar(500) COLLATE "pg_catalog"."default",
  "Content" text COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "DailyRecommend" int2 NOT NULL,
  "DetailUrl" varchar(200) COLLATE "pg_catalog"."default",
  "Enable" int2,
  "ImageUrl" varchar(500) COLLATE "pg_catalog"."default",
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "NewsType" int4 NOT NULL,
  "OrderNo" int4,
  "ReleaseDate" timestamp(6),
  "Title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "ViewCount" int4
)
;

-- ----------------------------
-- Records of app_news
-- ----------------------------

-- ----------------------------
-- Table structure for app_reportprice
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_reportprice";
CREATE TABLE "public"."app_reportprice" (
  "Id" int4 NOT NULL,
  "Age" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "AuditDate" timestamp(6),
  "AuditId" int4,
  "AuditStatus" int4,
  "Auditor" varchar(20) COLLATE "pg_catalog"."default",
  "City" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "Enable" int2,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "Price" numeric(10) NOT NULL,
  "Variety" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of app_reportprice
-- ----------------------------
INSERT INTO "public"."app_reportprice" VALUES (67, '12-16月龄', '2019-10-21 16:41:22', 1, 1, '超级管理员', '忻州市', '2018-09-10 10:12:50', 3344, '啊啊啊', 0, '超级管理员', '2019-07-16 15:07:16', 1, 29, '西门塔尔');
INSERT INTO "public"."app_reportprice" VALUES (74, '7-12月龄', '2019-10-21 16:41:22', 1, 1, '超级管理员', '唐山市', '2019-07-11 18:25:35', 1, '超级管理员', 0, '超级管理员', '2019-08-09 09:28:41', 1, 65, '利木赞牛');
INSERT INTO "public"."app_reportprice" VALUES (75, '7-12月龄', '2019-10-21 16:41:22', 1, 1, '超级管理员', '北京市', '2019-07-11 18:28:53', 1, '超级管理员', 1, '超级管理员', '2019-08-09 09:29:03', 1, 43, '夏洛莱牛');
INSERT INTO "public"."app_reportprice" VALUES (83, '12-16月龄', '2019-10-21 16:41:22', 1, 1, '超级管理员', '天津市', '2019-07-26 13:20:43', 1, '超级管理员', 1, '超级管理员', '2020-02-01 12:42:37', 1, 12, '利木赞牛');
INSERT INTO "public"."app_reportprice" VALUES (85, '0-2月龄', '2019-10-21 16:42:04', 1, 2, '超级管理员', '天津市', '2019-10-21 16:41:48', 1, '超级管理员', 1, '超级管理员', '2020-04-03 22:56:46', 1, 23, '神户肉牛');

-- ----------------------------
-- Table structure for app_transaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_transaction";
CREATE TABLE "public"."app_transaction" (
  "Id" int4 NOT NULL,
  "CowType" varchar(100) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "Describe" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "Enable" int2,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "Name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "PhoneNo" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "Quantity" int4 NOT NULL,
  "TransactionType" int4 NOT NULL
)
;

-- ----------------------------
-- Records of app_transaction
-- ----------------------------
INSERT INTO "public"."app_transaction" VALUES (4, '1', '2019-09-18 18:10:01', 1, '超级管理员', '寒江孤影，江湖故人....', NULL, '超级管理员', '2020-04-24 13:39:41', 1, '寒江孤影', '13419098211', 25, 0);
INSERT INTO "public"."app_transaction" VALUES (5, '1', '2019-09-18 18:10:01', 1, '超级管理员', '闻着臭，吃着更臭。。。。。', NULL, '超级管理员', '2020-04-24 13:38:37', 1, '不爱`吃臭`豆腐', '13419098211', 25, 1);
INSERT INTO "public"."app_transaction" VALUES (6, '3', '2019-09-18 18:22:25', 1, '超级管理员', '浪子回头...。。。', NULL, '超级管理员', '2020-04-24 13:37:24', 1, '同是天涯流落人', '13419444421', 199, 1);

-- ----------------------------
-- Table structure for app_transactionavgprice
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_transactionavgprice";
CREATE TABLE "public"."app_transactionavgprice" (
  "Id" int4 NOT NULL,
  "AgeRange" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "AvgPrice" numeric(10,2) NOT NULL,
  "City" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "Date" date NOT NULL,
  "Enable" int2,
  "IsTop" int4 NOT NULL,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "Variety" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of app_transactionavgprice
-- ----------------------------
INSERT INTO "public"."app_transactionavgprice" VALUES (2, '12-16月龄', 22.00, '天津市', '2019-05-06 14:06:15', 1, '超级管理员', '2019-05-30', 0, 1, '超级管理员', '2019-08-01 13:06:16', 1, '鲁西黄牛');
INSERT INTO "public"."app_transactionavgprice" VALUES (3, '16月龄以上', 18.00, '石家庄市', '2019-05-06 14:06:35', 1, '超级管理员', '2019-05-08', 0, 1, '超级管理员', '2019-08-01 15:20:42', 1, '秦川牛');
INSERT INTO "public"."app_transactionavgprice" VALUES (6, '7-12月龄', 19.00, '北京市', '2019-05-08 15:42:30', 1, '超级管理员', '2019-05-07', 0, 1, '超级管理员', '2019-07-15 15:24:45', 1, '神户肉牛');
INSERT INTO "public"."app_transactionavgprice" VALUES (7, '2-6月龄', 22.00, '北京市', '2019-07-12 10:39:44', 1, '超级管理员', '2019-07-16', 0, 1, '超级管理员', '2019-07-31 13:45:41', 1, '南阳牛');
INSERT INTO "public"."app_transactionavgprice" VALUES (8, '12-16月龄', 23.43, '上海市', '2019-07-12 14:32:29', 1, '超级管理员', '2019-07-10', 0, 2, '超级管理员', '2020-03-03 12:35:43', 1, '神户肉牛');
INSERT INTO "public"."app_transactionavgprice" VALUES (10, '12-16月龄', 22.00, '唐山市', '2019-07-12 18:01:27', 1, '超级管理员', '2019-07-07', NULL, 2, '超级管理员', '2020-04-24 13:48:27', 1, '利木赞牛');

-- ----------------------------
-- Table structure for news_article
-- ----------------------------
DROP TABLE IF EXISTS "public"."news_article";
CREATE TABLE "public"."news_article" (
  "Id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "CreateID" int4,
  "Creator" varchar(30) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(30) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "Author" varchar(50) COLLATE "pg_catalog"."default",
  "Content" text COLLATE "pg_catalog"."default",
  "Title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of news_article
-- ----------------------------

-- ----------------------------
-- Table structure for sellorder
-- ----------------------------
DROP TABLE IF EXISTS "public"."sellorder";
CREATE TABLE "public"."sellorder" (
  "Order_Id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "OrderType" int4 NOT NULL,
  "TranNo" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "SellNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "Qty" int4 NOT NULL,
  "AuditDate" timestamp(6),
  "AuditStatus" int4 NOT NULL,
  "AuditId" int4,
  "Auditor" varchar(100) COLLATE "pg_catalog"."default",
  "Remark" varchar(1000) COLLATE "pg_catalog"."default",
  "CreateID" int4,
  "Creator" varchar(255) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(255) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of sellorder
-- ----------------------------

-- ----------------------------
-- Table structure for sellorderlist
-- ----------------------------
DROP TABLE IF EXISTS "public"."sellorderlist";
CREATE TABLE "public"."sellorderlist" (
  "OrderList_Id" char(36) COLLATE "pg_catalog"."default" NOT NULL,
  "Order_Id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "ProductName" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "MO" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "Qty" int4 NOT NULL,
  "Weight" numeric(11,2),
  "Remark" varchar(1000) COLLATE "pg_catalog"."default",
  "CreateID" int4,
  "Creator" varchar(255) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "ModifyID" int4,
  "Modifier" varchar(255) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of sellorderlist
-- ----------------------------

-- ----------------------------
-- Table structure for sys_city
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_city";
CREATE TABLE "public"."sys_city" (
  "CityId" int4 NOT NULL,
  "CityCode" varchar(20) COLLATE "pg_catalog"."default",
  "CityName" varchar(30) COLLATE "pg_catalog"."default",
  "ProvinceCode" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sys_city
-- ----------------------------
INSERT INTO "public"."sys_city" VALUES (1, '110100', '市辖区', '110000');
INSERT INTO "public"."sys_city" VALUES (2, '110200', '县', '110000');
INSERT INTO "public"."sys_city" VALUES (3, '120100', '市辖区', '120000');
INSERT INTO "public"."sys_city" VALUES (4, '120200', '县', '120000');
INSERT INTO "public"."sys_city" VALUES (5, '130100', '石家庄市', '130000');
INSERT INTO "public"."sys_city" VALUES (6, '130200', '唐山市', '130000');
INSERT INTO "public"."sys_city" VALUES (7, '130300', '秦皇岛市', '130000');
INSERT INTO "public"."sys_city" VALUES (8, '130400', '邯郸市', '130000');
INSERT INTO "public"."sys_city" VALUES (9, '130500', '邢台市', '130000');
INSERT INTO "public"."sys_city" VALUES (10, '130600', '保定市', '130000');
INSERT INTO "public"."sys_city" VALUES (11, '130700', '张家口市', '130000');
INSERT INTO "public"."sys_city" VALUES (12, '130800', '承德市', '130000');
INSERT INTO "public"."sys_city" VALUES (13, '130900', '沧州市', '130000');
INSERT INTO "public"."sys_city" VALUES (14, '131000', '廊坊市', '130000');
INSERT INTO "public"."sys_city" VALUES (15, '131100', '衡水市', '130000');
INSERT INTO "public"."sys_city" VALUES (16, '140100', '太原市', '140000');
INSERT INTO "public"."sys_city" VALUES (17, '140200', '大同市', '140000');
INSERT INTO "public"."sys_city" VALUES (18, '140300', '阳泉市', '140000');
INSERT INTO "public"."sys_city" VALUES (19, '140400', '长治市', '140000');
INSERT INTO "public"."sys_city" VALUES (20, '140500', '晋城市', '140000');
INSERT INTO "public"."sys_city" VALUES (21, '140600', '朔州市', '140000');
INSERT INTO "public"."sys_city" VALUES (22, '140700', '晋中市', '140000');
INSERT INTO "public"."sys_city" VALUES (23, '140800', '运城市', '140000');
INSERT INTO "public"."sys_city" VALUES (24, '140900', '忻州市', '140000');
INSERT INTO "public"."sys_city" VALUES (25, '141000', '临汾市', '140000');
INSERT INTO "public"."sys_city" VALUES (26, '141100', '吕梁市', '140000');
INSERT INTO "public"."sys_city" VALUES (27, '150100', '呼和浩特市', '150000');
INSERT INTO "public"."sys_city" VALUES (28, '150200', '包头市', '150000');
INSERT INTO "public"."sys_city" VALUES (29, '150300', '乌海市', '150000');
INSERT INTO "public"."sys_city" VALUES (30, '150400', '赤峰市', '150000');
INSERT INTO "public"."sys_city" VALUES (31, '150500', '通辽市', '150000');
INSERT INTO "public"."sys_city" VALUES (32, '150600', '鄂尔多斯市', '150000');
INSERT INTO "public"."sys_city" VALUES (33, '150700', '呼伦贝尔市', '150000');
INSERT INTO "public"."sys_city" VALUES (34, '150800', '巴彦淖尔市', '150000');
INSERT INTO "public"."sys_city" VALUES (35, '150900', '乌兰察布市', '150000');
INSERT INTO "public"."sys_city" VALUES (36, '152200', '兴安盟', '150000');
INSERT INTO "public"."sys_city" VALUES (37, '152500', '锡林郭勒盟', '150000');
INSERT INTO "public"."sys_city" VALUES (38, '152900', '阿拉善盟', '150000');
INSERT INTO "public"."sys_city" VALUES (39, '210100', '沈阳市', '210000');
INSERT INTO "public"."sys_city" VALUES (40, '210200', '大连市', '210000');
INSERT INTO "public"."sys_city" VALUES (41, '210300', '鞍山市', '210000');
INSERT INTO "public"."sys_city" VALUES (42, '210400', '抚顺市', '210000');
INSERT INTO "public"."sys_city" VALUES (43, '210500', '本溪市', '210000');
INSERT INTO "public"."sys_city" VALUES (44, '210600', '丹东市', '210000');
INSERT INTO "public"."sys_city" VALUES (45, '210700', '锦州市', '210000');
INSERT INTO "public"."sys_city" VALUES (46, '210800', '营口市', '210000');
INSERT INTO "public"."sys_city" VALUES (47, '210900', '阜新市', '210000');
INSERT INTO "public"."sys_city" VALUES (48, '211000', '辽阳市', '210000');
INSERT INTO "public"."sys_city" VALUES (49, '211100', '盘锦市', '210000');
INSERT INTO "public"."sys_city" VALUES (50, '211200', '铁岭市', '210000');
INSERT INTO "public"."sys_city" VALUES (51, '211300', '朝阳市', '210000');
INSERT INTO "public"."sys_city" VALUES (52, '211400', '葫芦岛市', '210000');
INSERT INTO "public"."sys_city" VALUES (53, '220100', '长春市', '220000');
INSERT INTO "public"."sys_city" VALUES (54, '220200', '吉林市', '220000');
INSERT INTO "public"."sys_city" VALUES (55, '220300', '四平市', '220000');
INSERT INTO "public"."sys_city" VALUES (56, '220400', '辽源市', '220000');
INSERT INTO "public"."sys_city" VALUES (57, '220500', '通化市', '220000');
INSERT INTO "public"."sys_city" VALUES (58, '220600', '白山市', '220000');
INSERT INTO "public"."sys_city" VALUES (59, '220700', '松原市', '220000');
INSERT INTO "public"."sys_city" VALUES (60, '220800', '白城市', '220000');
INSERT INTO "public"."sys_city" VALUES (61, '222400', '延边朝鲜族自治州', '220000');
INSERT INTO "public"."sys_city" VALUES (62, '230100', '哈尔滨市', '230000');
INSERT INTO "public"."sys_city" VALUES (63, '230200', '齐齐哈尔市', '230000');
INSERT INTO "public"."sys_city" VALUES (64, '230300', '鸡西市', '230000');
INSERT INTO "public"."sys_city" VALUES (65, '230400', '鹤岗市', '230000');
INSERT INTO "public"."sys_city" VALUES (66, '230500', '双鸭山市', '230000');
INSERT INTO "public"."sys_city" VALUES (67, '230600', '大庆市', '230000');
INSERT INTO "public"."sys_city" VALUES (68, '230700', '伊春市', '230000');
INSERT INTO "public"."sys_city" VALUES (69, '230800', '佳木斯市', '230000');
INSERT INTO "public"."sys_city" VALUES (70, '230900', '七台河市', '230000');
INSERT INTO "public"."sys_city" VALUES (71, '231000', '牡丹江市', '230000');
INSERT INTO "public"."sys_city" VALUES (72, '231100', '黑河市', '230000');
INSERT INTO "public"."sys_city" VALUES (73, '231200', '绥化市', '230000');
INSERT INTO "public"."sys_city" VALUES (74, '232700', '大兴安岭地区', '230000');
INSERT INTO "public"."sys_city" VALUES (75, '310100', '市辖区', '310000');
INSERT INTO "public"."sys_city" VALUES (76, '310200', '县', '310000');
INSERT INTO "public"."sys_city" VALUES (77, '320100', '南京市', '320000');
INSERT INTO "public"."sys_city" VALUES (78, '320200', '无锡市', '320000');
INSERT INTO "public"."sys_city" VALUES (79, '320300', '徐州市', '320000');
INSERT INTO "public"."sys_city" VALUES (80, '320400', '常州市', '320000');
INSERT INTO "public"."sys_city" VALUES (81, '320500', '苏州市', '320000');
INSERT INTO "public"."sys_city" VALUES (82, '320600', '南通市', '320000');
INSERT INTO "public"."sys_city" VALUES (83, '320700', '连云港市', '320000');
INSERT INTO "public"."sys_city" VALUES (84, '320800', '淮安市', '320000');
INSERT INTO "public"."sys_city" VALUES (85, '320900', '盐城市', '320000');
INSERT INTO "public"."sys_city" VALUES (86, '321000', '扬州市', '320000');
INSERT INTO "public"."sys_city" VALUES (87, '321100', '镇江市', '320000');
INSERT INTO "public"."sys_city" VALUES (88, '321200', '泰州市', '320000');
INSERT INTO "public"."sys_city" VALUES (89, '321300', '宿迁市', '320000');
INSERT INTO "public"."sys_city" VALUES (90, '330100', '杭州市', '330000');
INSERT INTO "public"."sys_city" VALUES (91, '330200', '宁波市', '330000');
INSERT INTO "public"."sys_city" VALUES (92, '330300', '温州市', '330000');
INSERT INTO "public"."sys_city" VALUES (93, '330400', '嘉兴市', '330000');
INSERT INTO "public"."sys_city" VALUES (94, '330500', '湖州市', '330000');
INSERT INTO "public"."sys_city" VALUES (95, '330600', '绍兴市', '330000');
INSERT INTO "public"."sys_city" VALUES (96, '330700', '金华市', '330000');
INSERT INTO "public"."sys_city" VALUES (97, '330800', '衢州市', '330000');
INSERT INTO "public"."sys_city" VALUES (98, '330900', '舟山市', '330000');
INSERT INTO "public"."sys_city" VALUES (99, '331000', '台州市', '330000');
INSERT INTO "public"."sys_city" VALUES (100, '331100', '丽水市', '330000');
INSERT INTO "public"."sys_city" VALUES (101, '340100', '合肥市', '340000');
INSERT INTO "public"."sys_city" VALUES (102, '340200', '芜湖市', '340000');
INSERT INTO "public"."sys_city" VALUES (103, '340300', '蚌埠市', '340000');
INSERT INTO "public"."sys_city" VALUES (104, '340400', '淮南市', '340000');
INSERT INTO "public"."sys_city" VALUES (105, '340500', '马鞍山市', '340000');
INSERT INTO "public"."sys_city" VALUES (106, '340600', '淮北市', '340000');
INSERT INTO "public"."sys_city" VALUES (107, '340700', '铜陵市', '340000');
INSERT INTO "public"."sys_city" VALUES (108, '340800', '安庆市', '340000');
INSERT INTO "public"."sys_city" VALUES (109, '341000', '黄山市', '340000');
INSERT INTO "public"."sys_city" VALUES (110, '341100', '滁州市', '340000');
INSERT INTO "public"."sys_city" VALUES (111, '341200', '阜阳市', '340000');
INSERT INTO "public"."sys_city" VALUES (112, '341300', '宿州市', '340000');
INSERT INTO "public"."sys_city" VALUES (113, '341400', '巢湖市', '340000');
INSERT INTO "public"."sys_city" VALUES (114, '341500', '六安市', '340000');
INSERT INTO "public"."sys_city" VALUES (115, '341600', '亳州市', '340000');
INSERT INTO "public"."sys_city" VALUES (116, '341700', '池州市', '340000');
INSERT INTO "public"."sys_city" VALUES (117, '341800', '宣城市', '340000');
INSERT INTO "public"."sys_city" VALUES (118, '350100', '福州市', '350000');
INSERT INTO "public"."sys_city" VALUES (119, '350200', '厦门市', '350000');
INSERT INTO "public"."sys_city" VALUES (120, '350300', '莆田市', '350000');
INSERT INTO "public"."sys_city" VALUES (121, '350400', '三明市', '350000');
INSERT INTO "public"."sys_city" VALUES (122, '350500', '泉州市', '350000');
INSERT INTO "public"."sys_city" VALUES (123, '350600', '漳州市', '350000');
INSERT INTO "public"."sys_city" VALUES (124, '350700', '南平市', '350000');
INSERT INTO "public"."sys_city" VALUES (125, '350800', '龙岩市', '350000');
INSERT INTO "public"."sys_city" VALUES (126, '350900', '宁德市', '350000');
INSERT INTO "public"."sys_city" VALUES (127, '360100', '南昌市', '360000');
INSERT INTO "public"."sys_city" VALUES (128, '360200', '景德镇市', '360000');
INSERT INTO "public"."sys_city" VALUES (129, '360300', '萍乡市', '360000');
INSERT INTO "public"."sys_city" VALUES (130, '360400', '九江市', '360000');
INSERT INTO "public"."sys_city" VALUES (131, '360500', '新余市', '360000');
INSERT INTO "public"."sys_city" VALUES (132, '360600', '鹰潭市', '360000');
INSERT INTO "public"."sys_city" VALUES (133, '360700', '赣州市', '360000');
INSERT INTO "public"."sys_city" VALUES (134, '360800', '吉安市', '360000');
INSERT INTO "public"."sys_city" VALUES (135, '360900', '宜春市', '360000');
INSERT INTO "public"."sys_city" VALUES (136, '361000', '抚州市', '360000');
INSERT INTO "public"."sys_city" VALUES (137, '361100', '上饶市', '360000');
INSERT INTO "public"."sys_city" VALUES (138, '370100', '济南市', '370000');
INSERT INTO "public"."sys_city" VALUES (139, '370200', '青岛市', '370000');
INSERT INTO "public"."sys_city" VALUES (140, '370300', '淄博市', '370000');
INSERT INTO "public"."sys_city" VALUES (141, '370400', '枣庄市', '370000');
INSERT INTO "public"."sys_city" VALUES (142, '370500', '东营市', '370000');
INSERT INTO "public"."sys_city" VALUES (143, '370600', '烟台市', '370000');
INSERT INTO "public"."sys_city" VALUES (144, '370700', '潍坊市', '370000');
INSERT INTO "public"."sys_city" VALUES (145, '370800', '济宁市', '370000');
INSERT INTO "public"."sys_city" VALUES (146, '370900', '泰安市', '370000');
INSERT INTO "public"."sys_city" VALUES (147, '371000', '威海市', '370000');
INSERT INTO "public"."sys_city" VALUES (148, '371100', '日照市', '370000');
INSERT INTO "public"."sys_city" VALUES (149, '371200', '莱芜市', '370000');
INSERT INTO "public"."sys_city" VALUES (150, '371300', '临沂市', '370000');
INSERT INTO "public"."sys_city" VALUES (151, '371400', '德州市', '370000');
INSERT INTO "public"."sys_city" VALUES (152, '371500', '聊城市', '370000');
INSERT INTO "public"."sys_city" VALUES (153, '371600', '滨州市', '370000');
INSERT INTO "public"."sys_city" VALUES (154, '371700', '荷泽市', '370000');
INSERT INTO "public"."sys_city" VALUES (155, '410100', '郑州市', '410000');
INSERT INTO "public"."sys_city" VALUES (156, '410200', '开封市', '410000');
INSERT INTO "public"."sys_city" VALUES (157, '410300', '洛阳市', '410000');
INSERT INTO "public"."sys_city" VALUES (158, '410400', '平顶山市', '410000');
INSERT INTO "public"."sys_city" VALUES (159, '410500', '安阳市', '410000');
INSERT INTO "public"."sys_city" VALUES (160, '410600', '鹤壁市', '410000');
INSERT INTO "public"."sys_city" VALUES (161, '410700', '新乡市', '410000');
INSERT INTO "public"."sys_city" VALUES (162, '410800', '焦作市', '410000');
INSERT INTO "public"."sys_city" VALUES (163, '410900', '濮阳市', '410000');
INSERT INTO "public"."sys_city" VALUES (164, '411000', '许昌市', '410000');
INSERT INTO "public"."sys_city" VALUES (165, '411100', '漯河市', '410000');
INSERT INTO "public"."sys_city" VALUES (166, '411200', '三门峡市', '410000');
INSERT INTO "public"."sys_city" VALUES (167, '411300', '南阳市', '410000');
INSERT INTO "public"."sys_city" VALUES (168, '411400', '商丘市', '410000');
INSERT INTO "public"."sys_city" VALUES (169, '411500', '信阳市', '410000');
INSERT INTO "public"."sys_city" VALUES (170, '411600', '周口市', '410000');
INSERT INTO "public"."sys_city" VALUES (171, '411700', '驻马店市', '410000');
INSERT INTO "public"."sys_city" VALUES (172, '420100', '武汉市', '420000');
INSERT INTO "public"."sys_city" VALUES (173, '420200', '黄石市', '420000');
INSERT INTO "public"."sys_city" VALUES (174, '420300', '十堰市', '420000');
INSERT INTO "public"."sys_city" VALUES (175, '420500', '宜昌市', '420000');
INSERT INTO "public"."sys_city" VALUES (176, '420600', '襄樊市', '420000');
INSERT INTO "public"."sys_city" VALUES (177, '420700', '鄂州市', '420000');
INSERT INTO "public"."sys_city" VALUES (178, '420800', '荆门市', '420000');
INSERT INTO "public"."sys_city" VALUES (179, '420900', '孝感市', '420000');
INSERT INTO "public"."sys_city" VALUES (180, '421000', '荆州市', '420000');
INSERT INTO "public"."sys_city" VALUES (181, '421100', '黄冈市', '420000');
INSERT INTO "public"."sys_city" VALUES (182, '421200', '咸宁市', '420000');
INSERT INTO "public"."sys_city" VALUES (183, '421300', '随州市', '420000');
INSERT INTO "public"."sys_city" VALUES (184, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO "public"."sys_city" VALUES (185, '429000', '省直辖行政单位', '420000');
INSERT INTO "public"."sys_city" VALUES (186, '430100', '长沙市', '430000');
INSERT INTO "public"."sys_city" VALUES (187, '430200', '株洲市', '430000');
INSERT INTO "public"."sys_city" VALUES (188, '430300', '湘潭市', '430000');
INSERT INTO "public"."sys_city" VALUES (189, '430400', '衡阳市', '430000');
INSERT INTO "public"."sys_city" VALUES (190, '430500', '邵阳市', '430000');
INSERT INTO "public"."sys_city" VALUES (191, '430600', '岳阳市', '430000');
INSERT INTO "public"."sys_city" VALUES (192, '430700', '常德市', '430000');
INSERT INTO "public"."sys_city" VALUES (193, '430800', '张家界市', '430000');
INSERT INTO "public"."sys_city" VALUES (194, '430900', '益阳市', '430000');
INSERT INTO "public"."sys_city" VALUES (195, '431000', '郴州市', '430000');
INSERT INTO "public"."sys_city" VALUES (196, '431100', '永州市', '430000');
INSERT INTO "public"."sys_city" VALUES (197, '431200', '怀化市', '430000');
INSERT INTO "public"."sys_city" VALUES (198, '431300', '娄底市', '430000');
INSERT INTO "public"."sys_city" VALUES (199, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO "public"."sys_city" VALUES (200, '440100', '广州市', '440000');
INSERT INTO "public"."sys_city" VALUES (201, '440200', '韶关市', '440000');
INSERT INTO "public"."sys_city" VALUES (202, '440300', '深圳市', '440000');
INSERT INTO "public"."sys_city" VALUES (203, '440400', '珠海市', '440000');
INSERT INTO "public"."sys_city" VALUES (204, '440500', '汕头市', '440000');
INSERT INTO "public"."sys_city" VALUES (205, '440600', '佛山市', '440000');
INSERT INTO "public"."sys_city" VALUES (206, '440700', '江门市', '440000');
INSERT INTO "public"."sys_city" VALUES (207, '440800', '湛江市', '440000');
INSERT INTO "public"."sys_city" VALUES (208, '440900', '茂名市', '440000');
INSERT INTO "public"."sys_city" VALUES (209, '441200', '肇庆市', '440000');
INSERT INTO "public"."sys_city" VALUES (210, '441300', '惠州市', '440000');
INSERT INTO "public"."sys_city" VALUES (211, '441400', '梅州市', '440000');
INSERT INTO "public"."sys_city" VALUES (212, '441500', '汕尾市', '440000');
INSERT INTO "public"."sys_city" VALUES (213, '441600', '河源市', '440000');
INSERT INTO "public"."sys_city" VALUES (214, '441700', '阳江市', '440000');
INSERT INTO "public"."sys_city" VALUES (215, '441800', '清远市', '440000');
INSERT INTO "public"."sys_city" VALUES (216, '441900', '东莞市', '440000');
INSERT INTO "public"."sys_city" VALUES (217, '442000', '中山市', '440000');
INSERT INTO "public"."sys_city" VALUES (218, '445100', '潮州市', '440000');
INSERT INTO "public"."sys_city" VALUES (219, '445200', '揭阳市', '440000');
INSERT INTO "public"."sys_city" VALUES (220, '445300', '云浮市', '440000');
INSERT INTO "public"."sys_city" VALUES (221, '450100', '南宁市', '450000');
INSERT INTO "public"."sys_city" VALUES (222, '450200', '柳州市', '450000');
INSERT INTO "public"."sys_city" VALUES (223, '450300', '桂林市', '450000');
INSERT INTO "public"."sys_city" VALUES (224, '450400', '梧州市', '450000');
INSERT INTO "public"."sys_city" VALUES (225, '450500', '北海市', '450000');
INSERT INTO "public"."sys_city" VALUES (226, '450600', '防城港市', '450000');
INSERT INTO "public"."sys_city" VALUES (227, '450700', '钦州市', '450000');
INSERT INTO "public"."sys_city" VALUES (228, '450800', '贵港市', '450000');
INSERT INTO "public"."sys_city" VALUES (229, '450900', '玉林市', '450000');
INSERT INTO "public"."sys_city" VALUES (230, '451000', '百色市', '450000');
INSERT INTO "public"."sys_city" VALUES (231, '451100', '贺州市', '450000');
INSERT INTO "public"."sys_city" VALUES (232, '451200', '河池市', '450000');
INSERT INTO "public"."sys_city" VALUES (233, '451300', '来宾市', '450000');
INSERT INTO "public"."sys_city" VALUES (234, '451400', '崇左市', '450000');
INSERT INTO "public"."sys_city" VALUES (235, '460100', '海口市', '460000');
INSERT INTO "public"."sys_city" VALUES (236, '460200', '三亚市', '460000');
INSERT INTO "public"."sys_city" VALUES (237, '469000', '省直辖县级行政单位', '460000');
INSERT INTO "public"."sys_city" VALUES (238, '500100', '市辖区', '500000');
INSERT INTO "public"."sys_city" VALUES (239, '500200', '县', '500000');
INSERT INTO "public"."sys_city" VALUES (240, '500300', '市', '500000');
INSERT INTO "public"."sys_city" VALUES (241, '510100', '成都市', '510000');
INSERT INTO "public"."sys_city" VALUES (242, '510300', '自贡市', '510000');
INSERT INTO "public"."sys_city" VALUES (243, '510400', '攀枝花市', '510000');
INSERT INTO "public"."sys_city" VALUES (244, '510500', '泸州市', '510000');
INSERT INTO "public"."sys_city" VALUES (245, '510600', '德阳市', '510000');
INSERT INTO "public"."sys_city" VALUES (246, '510700', '绵阳市', '510000');
INSERT INTO "public"."sys_city" VALUES (247, '510800', '广元市', '510000');
INSERT INTO "public"."sys_city" VALUES (248, '510900', '遂宁市', '510000');
INSERT INTO "public"."sys_city" VALUES (249, '511000', '内江市', '510000');
INSERT INTO "public"."sys_city" VALUES (250, '511100', '乐山市', '510000');
INSERT INTO "public"."sys_city" VALUES (251, '511300', '南充市', '510000');
INSERT INTO "public"."sys_city" VALUES (252, '511400', '眉山市', '510000');
INSERT INTO "public"."sys_city" VALUES (253, '511500', '宜宾市', '510000');
INSERT INTO "public"."sys_city" VALUES (254, '511600', '广安市', '510000');
INSERT INTO "public"."sys_city" VALUES (255, '511700', '达州市', '510000');
INSERT INTO "public"."sys_city" VALUES (256, '511800', '雅安市', '510000');
INSERT INTO "public"."sys_city" VALUES (257, '511900', '巴中市', '510000');
INSERT INTO "public"."sys_city" VALUES (258, '512000', '资阳市', '510000');
INSERT INTO "public"."sys_city" VALUES (259, '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO "public"."sys_city" VALUES (260, '513300', '甘孜藏族自治州', '510000');
INSERT INTO "public"."sys_city" VALUES (261, '513400', '凉山彝族自治州', '510000');
INSERT INTO "public"."sys_city" VALUES (262, '520100', '贵阳市', '520000');
INSERT INTO "public"."sys_city" VALUES (263, '520200', '六盘水市', '520000');
INSERT INTO "public"."sys_city" VALUES (264, '520300', '遵义市', '520000');
INSERT INTO "public"."sys_city" VALUES (265, '520400', '安顺市', '520000');
INSERT INTO "public"."sys_city" VALUES (266, '522200', '铜仁地区', '520000');
INSERT INTO "public"."sys_city" VALUES (267, '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO "public"."sys_city" VALUES (268, '522400', '毕节地区', '520000');
INSERT INTO "public"."sys_city" VALUES (269, '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO "public"."sys_city" VALUES (270, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO "public"."sys_city" VALUES (271, '530100', '昆明市', '530000');
INSERT INTO "public"."sys_city" VALUES (272, '530300', '曲靖市', '530000');
INSERT INTO "public"."sys_city" VALUES (273, '530400', '玉溪市', '530000');
INSERT INTO "public"."sys_city" VALUES (274, '530500', '保山市', '530000');
INSERT INTO "public"."sys_city" VALUES (275, '530600', '昭通市', '530000');
INSERT INTO "public"."sys_city" VALUES (276, '530700', '丽江市', '530000');
INSERT INTO "public"."sys_city" VALUES (277, '530800', '思茅市', '530000');
INSERT INTO "public"."sys_city" VALUES (278, '530900', '临沧市', '530000');
INSERT INTO "public"."sys_city" VALUES (279, '532300', '楚雄彝族自治州', '530000');
INSERT INTO "public"."sys_city" VALUES (280, '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO "public"."sys_city" VALUES (281, '532600', '文山壮族苗族自治州', '530000');
INSERT INTO "public"."sys_city" VALUES (282, '532800', '西双版纳傣族自治州', '530000');
INSERT INTO "public"."sys_city" VALUES (283, '532900', '大理白族自治州', '530000');
INSERT INTO "public"."sys_city" VALUES (284, '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO "public"."sys_city" VALUES (285, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO "public"."sys_city" VALUES (286, '533400', '迪庆藏族自治州', '530000');
INSERT INTO "public"."sys_city" VALUES (287, '540100', '拉萨市', '540000');
INSERT INTO "public"."sys_city" VALUES (288, '542100', '昌都地区', '540000');
INSERT INTO "public"."sys_city" VALUES (289, '542200', '山南地区', '540000');
INSERT INTO "public"."sys_city" VALUES (290, '542300', '日喀则地区', '540000');
INSERT INTO "public"."sys_city" VALUES (291, '542400', '那曲地区', '540000');
INSERT INTO "public"."sys_city" VALUES (292, '542500', '阿里地区', '540000');
INSERT INTO "public"."sys_city" VALUES (293, '542600', '林芝地区', '540000');
INSERT INTO "public"."sys_city" VALUES (294, '610100', '西安市', '610000');
INSERT INTO "public"."sys_city" VALUES (295, '610200', '铜川市', '610000');
INSERT INTO "public"."sys_city" VALUES (296, '610300', '宝鸡市', '610000');
INSERT INTO "public"."sys_city" VALUES (297, '610400', '咸阳市', '610000');
INSERT INTO "public"."sys_city" VALUES (298, '610500', '渭南市', '610000');
INSERT INTO "public"."sys_city" VALUES (299, '610600', '延安市', '610000');
INSERT INTO "public"."sys_city" VALUES (300, '610700', '汉中市', '610000');
INSERT INTO "public"."sys_city" VALUES (301, '610800', '榆林市', '610000');
INSERT INTO "public"."sys_city" VALUES (302, '610900', '安康市', '610000');
INSERT INTO "public"."sys_city" VALUES (303, '611000', '商洛市', '610000');
INSERT INTO "public"."sys_city" VALUES (304, '620100', '兰州市', '620000');
INSERT INTO "public"."sys_city" VALUES (305, '620200', '嘉峪关市', '620000');
INSERT INTO "public"."sys_city" VALUES (306, '620300', '金昌市', '620000');
INSERT INTO "public"."sys_city" VALUES (307, '620400', '白银市', '620000');
INSERT INTO "public"."sys_city" VALUES (308, '620500', '天水市', '620000');
INSERT INTO "public"."sys_city" VALUES (309, '620600', '武威市', '620000');
INSERT INTO "public"."sys_city" VALUES (310, '620700', '张掖市', '620000');
INSERT INTO "public"."sys_city" VALUES (311, '620800', '平凉市', '620000');
INSERT INTO "public"."sys_city" VALUES (312, '620900', '酒泉市', '620000');
INSERT INTO "public"."sys_city" VALUES (313, '621000', '庆阳市', '620000');
INSERT INTO "public"."sys_city" VALUES (314, '621100', '定西市', '620000');
INSERT INTO "public"."sys_city" VALUES (315, '621200', '陇南市', '620000');
INSERT INTO "public"."sys_city" VALUES (316, '622900', '临夏回族自治州', '620000');
INSERT INTO "public"."sys_city" VALUES (317, '623000', '甘南藏族自治州', '620000');
INSERT INTO "public"."sys_city" VALUES (318, '630100', '西宁市', '630000');
INSERT INTO "public"."sys_city" VALUES (319, '632100', '海东地区', '630000');
INSERT INTO "public"."sys_city" VALUES (320, '632200', '海北藏族自治州', '630000');
INSERT INTO "public"."sys_city" VALUES (321, '632300', '黄南藏族自治州', '630000');
INSERT INTO "public"."sys_city" VALUES (322, '632500', '海南藏族自治州', '630000');
INSERT INTO "public"."sys_city" VALUES (323, '632600', '果洛藏族自治州', '630000');
INSERT INTO "public"."sys_city" VALUES (324, '632700', '玉树藏族自治州', '630000');
INSERT INTO "public"."sys_city" VALUES (325, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO "public"."sys_city" VALUES (326, '640100', '银川市', '640000');
INSERT INTO "public"."sys_city" VALUES (327, '640200', '石嘴山市', '640000');
INSERT INTO "public"."sys_city" VALUES (328, '640300', '吴忠市', '640000');
INSERT INTO "public"."sys_city" VALUES (329, '640400', '固原市', '640000');
INSERT INTO "public"."sys_city" VALUES (330, '640500', '中卫市', '640000');
INSERT INTO "public"."sys_city" VALUES (331, '650100', '乌鲁木齐市', '650000');
INSERT INTO "public"."sys_city" VALUES (332, '650200', '克拉玛依市', '650000');
INSERT INTO "public"."sys_city" VALUES (333, '652100', '吐鲁番地区', '650000');
INSERT INTO "public"."sys_city" VALUES (334, '652200', '哈密地区', '650000');
INSERT INTO "public"."sys_city" VALUES (335, '652300', '昌吉回族自治州', '650000');
INSERT INTO "public"."sys_city" VALUES (336, '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO "public"."sys_city" VALUES (337, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO "public"."sys_city" VALUES (338, '652900', '阿克苏地区', '650000');
INSERT INTO "public"."sys_city" VALUES (339, '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO "public"."sys_city" VALUES (340, '653100', '喀什地区', '650000');
INSERT INTO "public"."sys_city" VALUES (341, '653200', '和田地区', '650000');
INSERT INTO "public"."sys_city" VALUES (342, '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO "public"."sys_city" VALUES (343, '654200', '塔城地区', '650000');
INSERT INTO "public"."sys_city" VALUES (344, '654300', '阿勒泰地区', '650000');
INSERT INTO "public"."sys_city" VALUES (345, '659000', '省直辖行政单位', '650000');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_log";
CREATE TABLE "public"."sys_log" (
  "Id" int4 NOT NULL,
  "BeginDate" timestamp(6),
  "BrowserType" varchar(200) COLLATE "pg_catalog"."default",
  "ElapsedTime" int4,
  "EndDate" timestamp(6),
  "ExceptionInfo" text COLLATE "pg_catalog"."default",
  "LogType" varchar(50) COLLATE "pg_catalog"."default",
  "RequestParameter" text COLLATE "pg_catalog"."default",
  "ResponseParameter" text COLLATE "pg_catalog"."default",
  "Role_Id" int4,
  "ServiceIP" varchar(100) COLLATE "pg_catalog"."default",
  "Success" int4,
  "Url" varchar(4000) COLLATE "pg_catalog"."default",
  "UserIP" varchar(100) COLLATE "pg_catalog"."default",
  "UserName" varchar(4000) COLLATE "pg_catalog"."default",
  "User_Id" int4
)
;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "Menu_Id" int4 NOT NULL,
  "MenuName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "Auth" varchar(4000) COLLATE "pg_catalog"."default",
  "Icon" varchar(50) COLLATE "pg_catalog"."default",
  "Description" varchar(200) COLLATE "pg_catalog"."default",
  "Enable" int2,
  "OrderNo" int4,
  "TableName" varchar(200) COLLATE "pg_catalog"."default",
  "ParentId" int4 NOT NULL,
  "Url" varchar(4000) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "Creator" varchar(50) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "Modifier" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "public"."sys_menu" VALUES (2, '用户基础信息', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-contact', NULL, 1, 1600, '.', 0, NULL, '2017-08-28 12:21:13', '2017-08-28 11:12:45', '2019-10-11 14:33:29', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (3, '角色管理', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 900, 'Sys_Role', 2, '/Sys_Role/Manager', '2017-09-12 16:20:02', '2017-08-28 14:19:13', '2019-08-15 10:27:41', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (5, '日志管理', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-create', NULL, 1, 1300, 'xxx', 0, '/', '2017-09-22 17:59:37', '2017-09-22 17:59:37', '2019-10-11 14:34:00', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (6, '系统日志', '[{"text":"查询","value":"Search"},{"text":"删除","value":"Delete"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 0, 'Sys_Log', 5, '/Sys_Log/Manager', '2017-09-22 18:00:25', '2017-09-22 18:0:25', '2019-08-14 16:20:35', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (7, '角色权限分配', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 0, 10, 'Sys_Role', 2, '/Sys_Role/TreeManager', NULL, NULL, '2019-09-19 15:15:54', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (9, '用户管理', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 11110, 'Sys_User', 2, '/Sys_User/Manager', NULL, NULL, '2019-08-14 14:28:43', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (10, '表单与上传下载', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 0, '/', 28, '/formUpload', NULL, NULL, '2019-12-07 11:16:47', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (11, 'api加载table数据', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 600, 'table2', 12, '/table2', NULL, NULL, '2019-11-14 00:11:17', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (12, 'tables', '[{"text":"查询","value":"Search"}]', 'ios-grid', NULL, 1, 1710, '/', 0, NULL, '2017-08-28 14:22:10', 'null', '2019-11-15 14:32:32', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (16, '首页轮播图片', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 0, 2000, 'App_HomeHeadImages', 15, '/App_HomeHeadImages/Manager', NULL, NULL, '2019-08-12 16:26:44', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (17, '用户注册信息', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 0, 10, 'Sys_UserRegisterRecord', 2, '/Sys_UserRegisterRecord/Manager', NULL, NULL, '2019-09-18 15:31:24', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (24, '后台加载table数据', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 750, '/', 56, '/table', NULL, NULL, '2019-09-20 14:59:25', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (25, '其他组件', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 1100, '/', 29, '/form6', NULL, NULL, '2019-09-22 23:27:37', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (26, '文件上传', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 1050, 'volUploadExample', 28, '/volUploadExample', NULL, NULL, '2019-12-17 18:29:50', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (27, '基础可编辑table', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 1050, 'vtable', 12, '/table1', NULL, NULL, '2019-11-14 00:08:51', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (28, '文件上传与载', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', 'ios-folder-open', NULL, 1, 1690, '/', 0, NULL, NULL, NULL, '2020-02-24 12:11:24', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (29, '其他组件', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-hammer', NULL, 1, 1670, '其他组件', 0, NULL, NULL, NULL, '2019-12-22 00:39:08', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (30, '图表', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 100000, 'App_PriceTendency', 34, '/chart', NULL, NULL, '2019-11-14 00:07:26', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (31, '图表+表单', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 950, 'App_Comment', 34, '/formChart', NULL, NULL, '2019-11-14 00:07:51', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (32, '表单一对多', '[{"text":"查询","value":"Search"}]', 'ios-podium', NULL, 1, 1740, '/', 0, NULL, NULL, NULL, '2019-11-15 14:33:07', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (33, '完整table+forms', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 800, 'tableForms', 12, '/tableForms', NULL, NULL, '2020-04-03 22:58:27', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (34, '图表+表单', '[{"text":"查询","value":"Search"}]', 'ios-pie', NULL, 1, 1720, '/', 0, NULL, NULL, NULL, '2019-11-15 14:32:56', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (35, '可编辑的table', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 730, 'editTable', 56, '/editTable', NULL, NULL, '2019-09-20 15:50:21', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (36, '表单一对多table', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 950, 'App_TransactionAvgPrice1', 32, '/multi1', NULL, NULL, '2019-11-14 00:03:19', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (37, '表单+图表', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 800, 'App_Transaction', 32, '/multi3', NULL, NULL, '2019-11-14 00:04:17', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (38, '省市列表', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 1000, 'vProvinceCity', 15, '/vProvinceCity', NULL, NULL, '2019-08-20 09:30:04', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (39, '用户Token生成记录', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 0, 10, 'x', 2, '/Sys_UserTokenLog/Manager', NULL, NULL, '2019-09-18 15:31:19', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (41, '可复用后台校验', '[{"text":"查询","value":"Search"}]', 'ios-switch', NULL, 1, 1700, '/', 0, NULL, NULL, NULL, '2020-02-02 20:01:16', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (42, '主从表单明细一对多', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 0, 'SellOrder1', 32, '/multi4', NULL, NULL, '2020-04-03 22:54:52', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (45, '不用节点放此处', NULL, NULL, NULL, 0, 0, '/', 0, NULL, NULL, NULL, '2020-05-05 12:02:07', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (46, '产业联盟', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 10, 'App_Alliance', 15, '/App_Alliance/Manager', NULL, NULL, '2019-08-13 13:12:42', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (47, 'test2019', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 0, 'test2019', 15, '/test2019', '2019-04-30 15:16:23', '超级管理员', '2019-08-13 13:12:50', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (48, 'Table+单表数据', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-grid', NULL, 1, 2000, 'Table+表单数据', 0, '/', '2019-07-12 13:26:32', '超级管理员', '2019-10-11 14:29:14', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (49, '基础表单+编辑只读', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"}]', NULL, NULL, 1, 1000, 'App_Appointment', 48, '/App_Appointment', '2019-07-12 13:28:17', '超级管理员', '2020-04-24 13:43:27', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (50, '自动绑定下拉框', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"}]', NULL, NULL, 1, 900, 'App_TransactionAvgPrice', 48, '/App_TransactionAvgPrice', '2019-07-12 13:53:32', '超级管理员', '2020-03-03 10:25:29', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (51, '自定义扩展一对多', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 800, 'App_ReportPrice', 74, '/App_ReportPrice', '2019-07-12 13:55:21', '超级管理员', '2020-04-03 22:56:32', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (52, '导入导出表单', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 600, 'App_Transaction', 48, '/App_Transaction', '2019-07-12 13:56:15', '超级管理员', '2019-10-31 13:23:37', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (53, '主从基础表单', NULL, NULL, NULL, 1, 10, '/', 55, '/coding', '2019-07-12 13:57:05', '超级管理员', '2019-07-12 13:59:08', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (54, '可新增修改主从表单', NULL, NULL, NULL, 1, 10, '/', 55, '/coding', '2019-07-12 13:57:56', '超级管理员', '2019-07-12 13:59:12', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (55, 'Table+主从表单', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-grid', NULL, 0, 1800, '/', 0, NULL, '2019-07-12 13:58:34', '超级管理员', '2019-10-11 14:31:11', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (56, '表单布局', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-color-filter', NULL, 1, 1750, '/', 0, NULL, '2019-07-12 14:00:19', '超级管理员', '2020-01-08 13:54:41', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (57, '单列表单', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 1000, '.', 56, '/form1', '2019-07-12 14:01:12', '超级管理员', '2019-09-20 13:59:00', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (58, '两列表单', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 900, '两列表单', 56, '/form2', '2019-07-12 14:01:43', '超级管理员', '2019-09-20 13:59:03', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (59, '多列表单自动数据源', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 800, '多列表单', 56, '/form3', '2019-07-12 14:02:17', '超级管理员', '2019-12-17 11:08:06', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (60, 'Table+表单', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 700, 'Table+表单', 56, '/form4', '2019-07-12 14:03:14', '超级管理员', '2019-09-20 13:59:09', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (61, '系统', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-settings', NULL, 1, 1350, '系统', 0, '/', '2019-07-12 14:04:04', '超级管理员', '2019-11-27 13:30:08', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (62, '菜单设置', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"编辑","value":"Update"}]', NULL, NULL, 1, 10, 'Sys_Menu', 61, '/sysmenu', '2019-07-12 14:04:35', '超级管理员', '2019-10-31 13:23:09', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (63, '下拉框绑定设置', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 10, 'Sys_Dictionary', 61, '/Sys_Dictionary', '2019-07-12 14:05:58', '超级管理员', '2019-08-16 17:41:15', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (64, '代码在线生成器', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-construct', NULL, 1, 1500, '代码在线生成器', 0, '/coding', '2019-07-12 14:07:55', '超级管理员', '2020-01-08 13:54:50', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (65, 'Vue+后台代码生成', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"}]', NULL, NULL, 1, 10, '/', 64, '/coder', '2019-07-12 14:08:58', '超级管理员', '2019-09-22 23:27:54', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (66, '编辑器与HTML', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-compass', NULL, 1, 1680, '静态页面发布', 0, '/coding', '2019-07-12 14:12:38', '超级管理员', '2019-12-22 00:40:19', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (67, '静态页面发布', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"}]', NULL, NULL, 1, 10, 'App_News', 66, '/App_News', '2019-07-12 14:14:16', '超级管理员', '2019-12-22 00:40:46', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (68, '文件上传与图片显示', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 700, 'App_Expert', 48, '/App_Expert', '2019-07-12 14:24:15', '超级管理员', '2019-11-27 14:00:57', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (69, '前端自定义扩展', NULL, NULL, NULL, 0, 500, '前端自定义扩展', 48, '/coding', '2019-07-12 14:26:25', '超级管理员', '2019-09-25 17:22:22', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (70, '后台自定义扩展', NULL, NULL, NULL, 0, 400, '后台自定义扩展', 48, '/coding', '2019-07-12 14:28:45', '超级管理员', '2019-09-25 17:22:26', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (71, 'vue权限管理', '[{"text":"查询","value":"Search"},{"text":"编辑","value":"Update"}]', 'ivu-icon ivu-icon-ios-boat', NULL, 1, 1000, 'Sys_Role', 2, '/permission', '2019-08-10 10:25:36', '超级管理员', NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (72, '移动H5开发', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-logo-android', NULL, 1, 1650, '/', 0, NULL, '2019-08-14 13:16:06', '超级管理员', '2019-10-11 14:32:41', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (73, '移动H5开发打包介绍', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, NULL, '/', 72, '/app/guide', '2019-08-14 13:16:55', '超级管理员', NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (74, '一对一与一对多', '[{"text":"查询","value":"Search"}]', 'md-film', NULL, 1, 1770, '/', 0, '/', '2019-08-22 17:43:58', '超级管理员', '2020-04-07 23:57:06', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (75, '主从一对一', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 1000, 'SellOrder', 74, '/SellOrder', '2019-08-22 18:12:43', '超级管理员', '2020-04-03 22:55:15', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (76, 'api加载table数据', '[{"text":"查询","value":"Search"}]', NULL, NULL, 0, 950, 'table2', 2, '/table2', '2019-08-26 11:57:51', '超级管理员', '2019-11-19 17:30:17', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (77, '表单只读', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 600, '表单只读', 56, '/form7', '2019-08-26 11:58:55', '超级管理员', '2019-09-20 13:59:13', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (78, '混合表单一对多', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 900, '32', 32, '/multi2', '2019-10-12 09:18:41', '超级管理员', '2019-11-14 00:03:51', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (79, 'KindEditor编辑器', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 100, 'KindEditor编辑器', 66, '/kindEditor', '2019-12-22 00:36:10', '超级管理员', '2019-12-22 00:40:43', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (80, '静态页面列表', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 0, 'htmlList', 66, '/htmlList', '2019-12-22 00:36:54', '超级管理员', '2019-12-21 22:50:41', NULL);
INSERT INTO "public"."sys_menu" VALUES (81, '后台参数校验', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 0, '/', 41, '/validator', '2020-02-02 20:01:59', '超级管理员', '2020-02-02 20:01:16', NULL);
INSERT INTO "public"."sys_menu" VALUES (82, '数字排版', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 0, 'flex', 34, '/flex', '2020-04-07 23:55:33', '超级管理员', '2019-11-15 14:32:56', NULL);
INSERT INTO "public"."sys_menu" VALUES (83, '从表图片上传', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 0, 'vSellorderImg', 74, '/vSellorderImg', '2020-04-07 23:56:22', '超级管理员', '2020-04-07 23:56:28', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (84, '树形菜单与table', '[{"text":"查询","value":"Search"}]', 'md-analytics', NULL, 1, 1705, '树形菜单与table', 0, NULL, '2020-04-26 20:19:42', '超级管理员', '2020-04-26 20:19:55', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (85, 'tree与代码生成页面', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"}]', NULL, NULL, 1, 100, 'treetable1', 84, '/treetable1', '2020-04-26 20:20:28', '超级管理员', '2019-11-15 14:32:32', NULL);
INSERT INTO "public"."sys_menu" VALUES (86, 'tree自定义table数据', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 10, 'treetable2', 84, '/treetable2', '2020-04-26 20:20:57', '超级管理员', '2020-04-26 20:21:34', '超级管理员');
INSERT INTO "public"."sys_menu" VALUES (87, '不用节点父级id45', NULL, NULL, NULL, 1, 0, '/', 45, NULL, '2020-05-05 12:01:42', '超级管理员', '2020-05-05 12:01:59', '超级管理员');

-- ----------------------------
-- Table structure for sys_menu_copy1
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu_copy1";
CREATE TABLE "public"."sys_menu_copy1" (
  "Menu_Id" int4 NOT NULL,
  "MenuName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "Auth" varchar(4000) COLLATE "pg_catalog"."default",
  "Icon" varchar(50) COLLATE "pg_catalog"."default",
  "Description" varchar(200) COLLATE "pg_catalog"."default",
  "Enable" int2,
  "OrderNo" int4,
  "TableName" varchar(200) COLLATE "pg_catalog"."default",
  "ParentId" int4 NOT NULL,
  "Url" varchar(4000) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "Creator" varchar(50) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "Modifier" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sys_menu_copy1
-- ----------------------------
INSERT INTO "public"."sys_menu_copy1" VALUES (1, '系统设置', '[{"text":"查询","value":"Search"}]', NULL, NULL, 0, 140, '.', 45, NULL, '2017-08-15 18:01:52', '2017-08-15 17:58:6', '2019-09-22 23:27:20', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (2, '用户基础信息', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-contact', NULL, 1, 160, '.', 0, NULL, '2017-08-28 12:21:13', '2017-08-28 11:12:45', '2019-10-11 14:33:29', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (3, '角色管理', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 90, 'Sys_Role', 2, '/Sys_Role/Manager', '2017-09-12 16:20:02', '2017-08-28 14:19:13', '2019-08-15 10:27:41', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (4, '配置管理', 'Search,Save,Add,Update,Delete,Export,Imort', 'md-radio-button-on icon-plus-sign-alt', NULL, 1, 90, '.', 1, NULL, '2017-08-28 14:22:54', '2017-08-28 14:21:48', '2019-07-04 10:46:50', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (5, '日志管理', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-create', NULL, 1, 130, 'xxx', 0, '/', '2017-09-22 17:59:37', '2017-09-22 17:59:37', '2019-10-11 14:34:00', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (6, '系统日志', '[{"text":"查询","value":"Search"},{"text":"删除","value":"Delete"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 0, 'Sys_Log', 5, '/Sys_Log/Manager', '2017-09-22 18:00:25', '2017-09-22 18:0:25', '2019-08-14 16:20:35', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (7, '角色权限分配', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 0, 1, 'Sys_Role', 2, '/Sys_Role/TreeManager', NULL, NULL, '2019-09-19 15:15:54', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (8, '字典数据', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 1000, 'Sys_Dictionary', 14, '/Sys_Dictionary', NULL, NULL, '2019-08-16 17:26:51', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (9, '用户管理', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 1111, 'Sys_User', 2, '/Sys_User/Manager', NULL, NULL, '2019-08-14 14:28:43', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (10, '短信验证码发送记录', NULL, NULL, NULL, 1, 0, 'Sys_PinRecord', 45, '/Sys_PinRecord/Manager', NULL, NULL, '2019-11-14 00:12:25', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (11, 'api加载table数据', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 60, 'table2', 12, '/table2', NULL, NULL, '2019-11-14 00:11:17', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (12, 'tables', '[{"text":"查询","value":"Search"}]', 'ios-grid', NULL, 1, 171, '/', 0, NULL, '2017-08-28 14:22:10', 'null', '2019-11-15 14:32:32', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (13, '菜单设置', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 0, 'Sys_Menu', 1, '/sysmenu', '2017-08-28 14:22:08', 'null', '2019-08-08 16:55:39', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (14, '系统字典', 'Search,Save,Add,Update,Delete,Export,Imort', 'md-radio-button-on icon-plus-sign-alt', NULL, 1, 11, '.', 1, '/', NULL, NULL, '2019-07-04 10:46:54', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (16, '首页轮播图片', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 0, 200, 'App_HomeHeadImages', 15, '/App_HomeHeadImages/Manager', NULL, NULL, '2019-08-12 16:26:44', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (17, '用户注册信息', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 0, 1, 'Sys_UserRegisterRecord', 2, '/Sys_UserRegisterRecord/Manager', NULL, NULL, '2019-09-18 15:31:24', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (18, '成交均价', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', 'ivu-icon ivu-icon-md-alarm', NULL, 1, 120, 'App_TransactionAvgPrice', 15, '/App_TransactionAvgPrice', NULL, NULL, '2019-08-13 13:11:32', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (23, '问答信息', '[{"text":"查询","value":"Search"}]', NULL, NULL, 0, 110, '/', 45, '/', NULL, NULL, '2019-09-18 15:27:12', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (24, '后台加载table数据', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 75, '/', 56, '/table', NULL, NULL, '2019-09-20 14:59:25', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (25, '其他组件', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 110, '/', 29, '/form6', NULL, NULL, '2019-09-22 23:27:37', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (26, '静态页面', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-bookmark', NULL, 0, 105, '/', 45, '/', NULL, NULL, '2019-09-18 15:27:07', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (27, '基础可编辑table', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 105, 'vtable', 12, '/table1', NULL, NULL, '2019-11-14 00:08:51', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (28, '资讯', '[{"text":"查询","value":"Search"}]', NULL, NULL, 0, 95, '/', 45, NULL, NULL, NULL, '2019-09-18 15:26:29', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (29, '其他组件', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-hammer', NULL, 1, 167, 'App_News', 0, '/App_News/Manager', NULL, NULL, '2019-11-14 00:13:08', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (30, '图表', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 10000, 'App_PriceTendency', 34, '/chart', NULL, NULL, '2019-11-14 00:07:26', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (31, '图表+表单', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 95, 'App_Comment', 34, '/formChart', NULL, NULL, '2019-11-14 00:07:51', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (32, '表单一对多', '[{"text":"查询","value":"Search"}]', 'ios-podium', NULL, 1, 174, '/', 0, NULL, NULL, NULL, '2019-11-15 14:33:07', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (33, 'table+forms', NULL, NULL, NULL, 1, 80, 'tableForms', 12, '/tableForms', NULL, NULL, '2019-11-14 00:10:24', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (34, '图表+表单', '[{"text":"查询","value":"Search"}]', 'ios-pie', NULL, 1, 172, '/', 0, NULL, NULL, NULL, '2019-11-15 14:32:56', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (35, '可编辑的table', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 73, 'editTable', 56, '/editTable', NULL, NULL, '2019-09-20 15:50:21', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (36, '表单一对多table', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 95, 'App_TransactionAvgPrice1', 32, '/multi1', NULL, NULL, '2019-11-14 00:03:19', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (37, '表单+图表', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 80, 'App_Transaction', 32, '/multi3', NULL, NULL, '2019-11-14 00:04:17', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (38, '省市列表', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 100, 'vProvinceCity', 15, '/vProvinceCity', NULL, NULL, '2019-08-20 09:30:04', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (39, '用户Token生成记录', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 0, 1, 'x', 2, '/Sys_UserTokenLog/Manager', NULL, NULL, '2019-09-18 15:31:19', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (40, '提问记录', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', 'ivu-icon ivu-icon-ios-add-circle', NULL, 1, 111, 'App_Question', 23, '/App_Question/Manager', NULL, NULL, '2019-09-18 14:40:53', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (41, '图片上传记录', NULL, NULL, NULL, 1, 1, 'Sys_ImageLibrary', 45, '/Sys_ImageLibrary/Manager', NULL, NULL, '2019-11-14 00:12:23', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (42, '主从表单明细一对多', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 0, 'SellOrder', 32, '/multi4', NULL, NULL, '2019-11-14 00:04:55', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (43, '静态页访问记录', NULL, NULL, NULL, 1, 0, 'vApp_StaticBrowserLog', 45, '/vApp_StaticBrowserLog/Manager', NULL, NULL, '2019-11-14 00:12:34', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (44, '提问回复记录', NULL, NULL, NULL, 0, 1, 'App_QuestionReply', 23, NULL, NULL, NULL, '2018-08-29 18:12:07', '测试超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (45, '其他不用节点', NULL, NULL, NULL, 0, 0, '/', 0, NULL, NULL, NULL, '2019-09-20 09:54:26', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (46, '产业联盟', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 1, 'App_Alliance', 15, '/App_Alliance/Manager', NULL, NULL, '2019-08-13 13:12:42', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (47, 'test2019', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 0, 'test2019', 15, '/test2019', '2019-04-30 15:16:23', '超级管理员', '2019-08-13 13:12:50', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (48, 'Table+单表数据', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-grid', NULL, 1, 200, 'Table+表单数据', 0, '/', '2019-07-12 13:26:32', '超级管理员', '2019-10-11 14:29:14', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (49, '基础表单+编辑只读', '[{"text":"查询","value":"Search"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 100, 'App_Appointment', 48, '/App_Appointment', '2019-07-12 13:28:17', '超级管理员', '2019-09-18 16:30:13', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (50, '自动绑定下拉框', NULL, NULL, NULL, 1, 90, 'App_TransactionAvgPrice', 48, '/App_TransactionAvgPrice', '2019-07-12 13:53:32', '超级管理员', '2019-09-18 16:35:40', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (51, '新增编辑删除表单', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 80, 'App_ReportPrice', 48, '/App_ReportPrice', '2019-07-12 13:55:21', '超级管理员', '2019-09-18 18:38:46', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (52, '导入导出表单', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 60, 'App_Transaction', 48, '/App_Transaction', '2019-07-12 13:56:15', '超级管理员', '2019-10-31 13:23:37', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (53, '主从基础表单', NULL, NULL, NULL, 1, 1, '/', 55, '/coding', '2019-07-12 13:57:05', '超级管理员', '2019-07-12 13:59:08', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (54, '可新增修改主从表单', NULL, NULL, NULL, 1, 1, '/', 55, '/coding', '2019-07-12 13:57:56', '超级管理员', '2019-07-12 13:59:12', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (55, 'Table+主从表单', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-grid', NULL, 0, 180, '/', 0, NULL, '2019-07-12 13:58:34', '超级管理员', '2019-10-11 14:31:11', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (56, '表单布局', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-color-filter', NULL, 1, 175, '/', 0, NULL, '2019-07-12 14:00:19', '超级管理员', '2019-10-11 14:30:49', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (57, '单列表单', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 100, '.', 56, '/form1', '2019-07-12 14:01:12', '超级管理员', '2019-09-20 13:59:00', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (58, '两列表单', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 90, '两列表单', 56, '/form2', '2019-07-12 14:01:43', '超级管理员', '2019-09-20 13:59:03', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (59, '多列表单自动数据源', NULL, NULL, NULL, 1, 80, '多列表单', 56, '/form3', '2019-07-12 14:02:17', '超级管理员', '2019-09-23 14:10:33', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (60, 'Table+表单', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 70, 'Table+表单', 56, '/form4', '2019-07-12 14:03:14', '超级管理员', '2019-09-20 13:59:09', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (61, '系统', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-settings', NULL, 1, 100, '系统', 0, '/', '2019-07-12 14:04:04', '超级管理员', '2019-10-11 14:34:32', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (62, '菜单设置', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"编辑","value":"Update"}]', NULL, NULL, 1, 1, 'Sys_Menu', 61, '/sysmenu', '2019-07-12 14:04:35', '超级管理员', '2019-10-31 13:23:09', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (63, '下拉框绑定设置', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"}]', NULL, NULL, 1, 1, 'Sys_Dictionary', 61, '/Sys_Dictionary', '2019-07-12 14:05:58', '超级管理员', '2019-08-16 17:41:15', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (64, '代码在线生成器', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-ios-construct', NULL, 1, 150, '代码在线生成器', 0, '/coding', '2019-07-12 14:07:55', '超级管理员', '2019-10-11 14:33:48', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (65, 'Vue+后台代码生成', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"}]', NULL, NULL, 1, 1, '/', 64, '/coder', '2019-07-12 14:08:58', '超级管理员', '2019-09-22 23:27:54', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (66, '静态页面发布', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-compass', NULL, 1, 152, '静态页面发布', 0, '/coding', '2019-07-12 14:12:38', '超级管理员', '2019-10-11 14:33:40', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (67, '生成静态页面', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 0, '生成静态页面', 66, '/coding', '2019-07-12 14:14:16', '超级管理员', '2019-09-22 23:27:48', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (68, '审核、启用图片支持', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"编辑","value":"Update"},{"text":"导出","value":"Export"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 70, 'App_Expert', 48, '/App_Expert', '2019-07-12 14:24:15', '超级管理员', '2019-09-18 18:26:25', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (69, '前端自定义扩展', NULL, NULL, NULL, 0, 50, '前端自定义扩展', 48, '/coding', '2019-07-12 14:26:25', '超级管理员', '2019-09-25 17:22:22', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (70, '后台自定义扩展', NULL, NULL, NULL, 0, 40, '后台自定义扩展', 48, '/coding', '2019-07-12 14:28:45', '超级管理员', '2019-09-25 17:22:26', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (71, 'vue权限管理', '[{"text":"查询","value":"Search"},{"text":"编辑","value":"Update"}]', 'ivu-icon ivu-icon-ios-boat', NULL, 1, 100, 'Sys_Role', 2, '/permission', '2019-08-10 10:25:36', '超级管理员', NULL, NULL);
INSERT INTO "public"."sys_menu_copy1" VALUES (72, '移动H5开发', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-logo-android', NULL, 1, 165, '/', 0, NULL, '2019-08-14 13:16:06', '超级管理员', '2019-10-11 14:32:41', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (73, '移动H5开发打包介绍', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, NULL, '/', 72, '/app/guide', '2019-08-14 13:16:55', '超级管理员', NULL, NULL);
INSERT INTO "public"."sys_menu_copy1" VALUES (74, '可扩展完整示例', '[{"text":"查询","value":"Search"}]', 'ivu-icon ivu-icon-md-ribbon', NULL, 1, 177, '/', 0, '/', '2019-08-22 17:43:58', '超级管理员', '2019-10-11 14:30:12', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (75, '前后台主从扩展用例', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, NULL, 'SellOrder', 74, '/SellOrder', '2019-08-22 18:12:43', '超级管理员', '2019-09-18 19:16:47', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (76, 'api加载table数据', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 95, 'table2', 2, '/table2', '2019-08-26 11:57:51', '超级管理员', '2019-11-14 00:10:07', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (77, '表单只读', '[{"text":"查询","value":"Search"}]', NULL, NULL, 1, 60, '表单只读', 56, '/form7', '2019-08-26 11:58:55', '超级管理员', '2019-09-20 13:59:13', '超级管理员');
INSERT INTO "public"."sys_menu_copy1" VALUES (78, '混合表单一对多', '[{"text":"查询","value":"Search"},{"text":"新建","value":"Add"},{"text":"删除","value":"Delete"},{"text":"编辑","value":"Update"},{"text":"导入","value":"Import"},{"text":"导出","value":"Export"},{"text":"上传","value":"Upload"},{"text":"审核","value":"Audit"}]', NULL, NULL, 1, 90, '32', 32, '/multi2', '2019-10-12 09:18:41', '超级管理员', '2019-11-14 00:03:51', '超级管理员');

-- ----------------------------
-- Table structure for sys_province
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_province";
CREATE TABLE "public"."sys_province" (
  "ProvinceId" int4 NOT NULL,
  "ProvinceCode" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "ProvinceName" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "RegionCode" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sys_province
-- ----------------------------
INSERT INTO "public"."sys_province" VALUES (1, '110000', '北京市', '华北');
INSERT INTO "public"."sys_province" VALUES (2, '120000', '天津市', '华北');
INSERT INTO "public"."sys_province" VALUES (3, '130000', '河北省', '华北');
INSERT INTO "public"."sys_province" VALUES (4, '140000', '山西省', '华北');
INSERT INTO "public"."sys_province" VALUES (5, '150000', '内蒙古自治区', '华北');
INSERT INTO "public"."sys_province" VALUES (6, '210000', '辽宁省', '东北');
INSERT INTO "public"."sys_province" VALUES (7, '220000', '吉林省', '东北');
INSERT INTO "public"."sys_province" VALUES (8, '230000', '黑龙江省', '东北');
INSERT INTO "public"."sys_province" VALUES (9, '310000', '上海市', '华东');
INSERT INTO "public"."sys_province" VALUES (10, '320000', '江苏省', '华东');
INSERT INTO "public"."sys_province" VALUES (11, '330000', '浙江省', '华东');
INSERT INTO "public"."sys_province" VALUES (12, '340000', '安徽省', '华东');
INSERT INTO "public"."sys_province" VALUES (13, '350000', '福建省', '华东');
INSERT INTO "public"."sys_province" VALUES (14, '360000', '江西省', '华东');
INSERT INTO "public"."sys_province" VALUES (15, '370000', '山东省', '华东');
INSERT INTO "public"."sys_province" VALUES (16, '410000', '河南省', '华中');
INSERT INTO "public"."sys_province" VALUES (17, '420000', '湖北省', '华中');
INSERT INTO "public"."sys_province" VALUES (18, '430000', '湖南省', '华中');
INSERT INTO "public"."sys_province" VALUES (19, '440000', '广东省', '华南');
INSERT INTO "public"."sys_province" VALUES (20, '450000', '广西壮族自治区', '华南');
INSERT INTO "public"."sys_province" VALUES (21, '460000', '海南省', '华南');
INSERT INTO "public"."sys_province" VALUES (22, '500000', '重庆市', '西南');
INSERT INTO "public"."sys_province" VALUES (23, '510000', '四川省', '西南');
INSERT INTO "public"."sys_province" VALUES (24, '520000', '贵州省', '西南');
INSERT INTO "public"."sys_province" VALUES (25, '530000', '云南省', '西南');
INSERT INTO "public"."sys_province" VALUES (26, '540000', '西藏自治区', '西南');
INSERT INTO "public"."sys_province" VALUES (27, '610000', '陕西省', '西北');
INSERT INTO "public"."sys_province" VALUES (28, '620000', '甘肃省', '西北');
INSERT INTO "public"."sys_province" VALUES (29, '630000', '青海省', '西北');
INSERT INTO "public"."sys_province" VALUES (30, '640000', '宁夏回族自治区', '西北');
INSERT INTO "public"."sys_province" VALUES (31, '650000', '新疆维吾尔自治区', '西北');
INSERT INTO "public"."sys_province" VALUES (32, '710000', '台湾省', '港澳台');
INSERT INTO "public"."sys_province" VALUES (33, '810000', '香港特别行政区', '港澳台');
INSERT INTO "public"."sys_province" VALUES (34, '820000', '澳门特别行政区', '港澳台');
INSERT INTO "public"."sys_province" VALUES (35, 'thd', '桃花岛', '东北');
INSERT INTO "public"."sys_province" VALUES (43, '测试1', '测试1', '港澳台');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "Role_Id" int4 NOT NULL,
  "CreateDate" timestamp(6),
  "Creator" varchar(50) COLLATE "pg_catalog"."default",
  "DeleteBy" varchar(50) COLLATE "pg_catalog"."default",
  "DeptName" varchar(50) COLLATE "pg_catalog"."default",
  "Dept_Id" int4,
  "Enable" int2,
  "Modifier" varchar(50) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "OrderNo" int4,
  "ParentId" int4 NOT NULL,
  "RoleName" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_roleauth
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_roleauth";
CREATE TABLE "public"."sys_roleauth" (
  "Auth_Id" int4 NOT NULL,
  "AuthValue" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "CreateDate" timestamp(6),
  "Creator" varchar(1000) COLLATE "pg_catalog"."default",
  "Menu_Id" int4 NOT NULL,
  "Modifier" varchar(1000) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "Role_Id" int4,
  "User_Id" int4
)
;

-- ----------------------------
-- Records of sys_roleauth
-- ----------------------------
INSERT INTO "public"."sys_roleauth" VALUES (151, 'Search', '2020-05-05 12:05:34', '超级管理员', 30, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (152, 'Search,Add,Delete,Update,Export', '2020-05-05 12:05:34', '超级管理员', 3, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (153, 'Search,Add,Delete,Update,Export,Audit', '2020-05-05 12:05:34', '超级管理员', 51, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (154, 'Search', '2020-05-05 12:05:34', '超级管理员', 59, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (155, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 12:05:34', '超级管理员', 37, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (156, 'Search', '2020-05-05 12:05:34', '超级管理员', 33, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (157, 'Search', '2020-05-05 12:05:34', '超级管理员', 24, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (158, 'Search', '2020-05-05 12:05:34', '超级管理员', 35, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (159, 'Search', '2020-05-05 12:05:34', '超级管理员', 60, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (160, 'Search,Add,Update,Export,Audit', '2020-05-05 12:05:34', '超级管理员', 68, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (161, 'Search', '2020-05-05 12:05:34', '超级管理员', 77, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (162, 'Search,Add,Delete,Update,Import,Export', '2020-05-05 12:05:34', '超级管理员', 52, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (163, 'Search', '2020-05-05 12:05:34', '超级管理员', 11, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (164, 'Search,Add,Delete,Update', '2020-05-05 12:05:34', '超级管理员', 85, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (165, 'Search', '2020-05-05 12:05:34', '超级管理员', 79, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (166, 'Search', '2020-05-05 12:05:34', '超级管理员', 86, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (167, 'Search,Add,Delete,Update,Export,Upload', '2020-05-05 12:05:34', '超级管理员', 67, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (168, 'Search,Add,Delete,Update', '2020-05-05 12:05:34', '超级管理员', 65, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (169, 'Search,Add,Update', '2020-05-05 12:05:34', '超级管理员', 62, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (170, 'Search,Add,Delete,Update,Export', '2020-05-05 12:05:34', '超级管理员', 63, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (171, 'Search,Add,Delete,Update,Export', '2020-05-05 12:05:34', '超级管理员', 83, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (172, 'Search', '2020-05-05 12:05:34', '超级管理员', 80, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (173, 'Search', '2020-05-05 12:05:34', '超级管理员', 81, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (174, 'Search', '2020-05-05 12:05:34', '超级管理员', 82, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (175, 'Search,Add,Delete,Update,Export', '2020-05-05 12:05:34', '超级管理员', 42, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (176, 'Search', '2020-05-05 12:05:34', '超级管理员', 10, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (177, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 12:05:34', '超级管理员', 78, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (178, 'Search,Delete,Export', '2020-05-05 12:05:34', '超级管理员', 6, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (179, 'Search,Add,Delete,Update', '2020-05-05 12:05:34', '超级管理员', 50, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (180, 'Search,Add,Delete,Update,Import,Export', '2020-05-05 12:05:34', '超级管理员', 36, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (181, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 12:05:34', '超级管理员', 9, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (182, 'Search', '2020-05-05 12:05:34', '超级管理员', 48, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (183, 'Search', '2020-05-05 12:05:34', '超级管理员', 74, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (184, 'Search', '2020-05-05 12:05:34', '超级管理员', 56, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (185, 'Search', '2020-05-05 12:05:34', '超级管理员', 32, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (186, 'Search', '2020-05-05 12:05:34', '超级管理员', 34, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (187, 'Search', '2020-05-05 12:05:34', '超级管理员', 12, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (188, 'Search', '2020-05-05 12:05:34', '超级管理员', 84, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (189, 'Search', '2020-05-05 12:05:34', '超级管理员', 41, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (190, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 12:05:34', '超级管理员', 28, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (191, 'Search', '2020-05-05 12:05:34', '超级管理员', 66, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (192, 'Search', '2020-05-05 12:05:34', '超级管理员', 29, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (193, 'Search', '2020-05-05 12:05:34', '超级管理员', 72, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (194, 'Search', '2020-05-05 12:05:34', '超级管理员', 2, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (195, 'Search', '2020-05-05 12:05:34', '超级管理员', 64, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (196, 'Search', '2020-05-05 12:05:34', '超级管理员', 61, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (197, 'Search', '2020-05-05 12:05:34', '超级管理员', 5, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (198, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 12:05:34', '超级管理员', 25, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (199, 'Search', '2020-05-05 12:05:34', '超级管理员', 26, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (200, 'Search', '2020-05-05 12:05:34', '超级管理员', 27, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (201, 'Search,Add,Delete,Update,Import,Export,Upload,Audit', '2020-05-05 12:05:34', '超级管理员', 75, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (202, 'Search', '2020-05-05 12:05:34', '超级管理员', 57, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (203, 'Search,Import,Export,Upload', '2020-05-05 12:05:34', '超级管理员', 49, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (204, 'Search,Update', '2020-05-05 12:05:34', '超级管理员', 71, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (205, 'Search', '2020-05-05 12:05:34', '超级管理员', 31, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (206, 'Search', '2020-05-05 12:05:34', '超级管理员', 58, '超级管理员', '2020-05-05 12:05:34', 2, NULL);
INSERT INTO "public"."sys_roleauth" VALUES (207, 'Search', '2020-05-05 12:05:34', '超级管理员', 73, '超级管理员', '2020-05-05 12:05:34', 2, NULL);

-- ----------------------------
-- Table structure for sys_roleauthdata
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_roleauthdata";
CREATE TABLE "public"."sys_roleauthdata" (
  "Auth_Id" int4 NOT NULL,
  "DataType_Id" int4,
  "Role_Id" int4,
  "User_Id" int4,
  "Node_Id" varchar(50) COLLATE "pg_catalog"."default",
  "LevelID" int4,
  "AuthValue" varchar(4000) COLLATE "pg_catalog"."default",
  "Creator" varchar(50) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "Modifier" varchar(50) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6)
)
;

-- ----------------------------
-- Records of sys_roleauthdata
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tablecolumn
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_tablecolumn";
CREATE TABLE "public"."sys_tablecolumn" (
  "ColumnId" int4 NOT NULL,
  "ApiInPut" int4,
  "ApiIsNull" int4,
  "ApiOutPut" int4,
  "ColSize" int4,
  "ColumnCNName" varchar(100) COLLATE "pg_catalog"."default",
  "ColumnName" varchar(100) COLLATE "pg_catalog"."default",
  "ColumnType" text COLLATE "pg_catalog"."default",
  "ColumnWidth" int4,
  "Columnformat" text COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(200) COLLATE "pg_catalog"."default",
  "DropNo" varchar(50) COLLATE "pg_catalog"."default",
  "EditColNo" int4,
  "EditRowNo" int4,
  "EditType" varchar(200) COLLATE "pg_catalog"."default",
  "Enable" int4,
  "IsColumnData" int4,
  "IsDisplay" int4,
  "IsImage" int4,
  "IsKey" int4,
  "IsNull" int4,
  "IsReadDataset" int4,
  "Maxlength" int4,
  "Modifier" text COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "OrderNo" int4,
  "Script" text COLLATE "pg_catalog"."default",
  "SearchColNo" int4,
  "SearchRowNo" int4,
  "SearchType" varchar(200) COLLATE "pg_catalog"."default",
  "Sortable" int4,
  "TableName" varchar(200) COLLATE "pg_catalog"."default",
  "Table_Id" int4
)
;

-- ----------------------------
-- Records of sys_tablecolumn
-- ----------------------------
INSERT INTO "public"."sys_tablecolumn" VALUES (20, NULL, NULL, NULL, NULL, '角色ID', 'Role_Id', 'int', 70, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 1, NULL, '超级管理员', '2019-08-15 10:49:04', 1, 1420, NULL, NULL, NULL, NULL, NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (21, NULL, NULL, NULL, NULL, '父级ID', 'ParentId', 'int', 70, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-08-15 10:49:04', 1, 1410, NULL, NULL, NULL, NULL, NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (22, NULL, NULL, NULL, NULL, '角色名称', 'RoleName', 'string', 90, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超级管理员', '2019-08-15 10:49:04', 1, 1400, NULL, NULL, 1, 'text', NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (23, NULL, NULL, NULL, NULL, '部门ID', 'Dept_Id', 'int', 90, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-15 10:49:04', 1, 1390, NULL, NULL, NULL, NULL, NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (24, NULL, NULL, NULL, NULL, '部门名称', 'DeptName', 'string', 90, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超级管理员', '2019-08-15 10:49:04', 1, 1380, NULL, NULL, 1, 'text', NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (25, NULL, NULL, NULL, NULL, '排序', 'OrderNo', 'int', 90, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-15 10:49:04', 1, 1370, NULL, NULL, NULL, NULL, NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (26, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 130, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, 50, '超级管理员', '2019-08-15 10:49:04', 1, 1360, NULL, NULL, NULL, NULL, NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (27, NULL, NULL, NULL, NULL, '创建时间', 'CreateDate', 'DateTime', 90, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, 4, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-15 10:49:04', 1, 1350, NULL, NULL, 2, 'datetime', NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (28, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 1, NULL, 0, 1, 1, 50, '超级管理员', '2019-08-15 10:49:04', 1, 1340, NULL, NULL, NULL, NULL, NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (29, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 90, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-15 10:49:04', 1, 1330, NULL, NULL, 2, 'datetime', NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (30, NULL, NULL, NULL, NULL, NULL, 'DeleteBy', 'string', 90, NULL, '2018-06-04 10:14:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1, 0, 50, '超级管理员', '2019-08-15 10:49:04', 1, 1320, NULL, NULL, NULL, NULL, NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (31, NULL, NULL, NULL, NULL, '是否启用', 'Enable', 'sbyte', 90, NULL, '2018-06-04 10:14:21', NULL, NULL, 'enable', NULL, 2, 'switch', NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-15 10:49:04', 1, 1375, NULL, NULL, 1, 'select', NULL, 'Sys_Role', 2);
INSERT INTO "public"."sys_tablecolumn" VALUES (32, NULL, NULL, NULL, NULL, '字典ID', 'Dic_ID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2019-08-23 10:17:27', 1, 1300, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (33, NULL, NULL, NULL, NULL, '字典名称', 'DicName', 'string', 140, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超级管理员', '2019-08-23 10:17:27', 1, 1290, NULL, NULL, 1, 'textarea', NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (34, NULL, NULL, NULL, NULL, '父级ID', 'ParentId', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-08-23 10:17:27', 1, 1280, NULL, NULL, 1, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (35, NULL, NULL, NULL, NULL, '配置项', 'Config', 'string', 300, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4000, '超级管理员', '2019-08-23 10:17:27', 1, 1270, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (36, NULL, NULL, NULL, 8, 'sql语句', 'DbSql', 'string', 200, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 6, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 4000, '超级管理员', '2019-08-23 10:17:27', 1, 1260, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (37, NULL, NULL, NULL, NULL, 'DBServer', 'DBServer', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4000, '超级管理员', '2019-08-23 10:17:27', 1, 1250, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (38, NULL, NULL, NULL, NULL, '排序号', 'OrderNo', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-23 10:17:27', 1, 1240, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (39, NULL, NULL, NULL, NULL, '字典编号', 'DicNo', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超级管理员', '2019-08-23 10:17:27', 1, 1295, NULL, NULL, 1, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (40, NULL, NULL, NULL, NULL, '备注', 'Remark', 'string', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 6, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超级管理员', '2019-08-23 10:17:27', 1, 1220, NULL, NULL, NULL, '无', NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (41, NULL, NULL, NULL, NULL, '是否启用', 'Enable', 'byte', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, 'enable', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-08-23 10:17:27', 1, 1210, NULL, NULL, 2, 'drop', NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (42, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-23 10:17:27', 1, 1200, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (43, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 130, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2019-08-23 10:17:27', 1, 1190, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (44, NULL, NULL, NULL, NULL, '创建时间', 'CreateDate', 'DateTime', 150, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, 2, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-23 10:17:27', 1, 1180, NULL, NULL, 2, 'datetime', NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (45, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 90, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-23 10:17:27', 1, 1170, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (46, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2019-08-23 10:17:27', 1, 1160, NULL, NULL, NULL, NULL, NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (47, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 150, NULL, '2018-06-06 14:05:43', NULL, NULL, NULL, NULL, NULL, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-23 10:17:27', 1, 1150, NULL, NULL, 2, 'datetime', NULL, 'Sys_Dictionary', 3);
INSERT INTO "public"."sys_tablecolumn" VALUES (48, NULL, NULL, NULL, NULL, NULL, 'DicList_ID', 'int', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2019-08-20 10:08:56', 1, 1140, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (49, NULL, NULL, NULL, NULL, '数据源ID', 'Dic_ID', 'int', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-20 10:08:56', 1, 1130, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (50, NULL, NULL, NULL, NULL, '数据源Value', 'DicValue', 'string', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, '超级管理员', '2019-08-20 10:08:56', 1, 1120, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (51, NULL, NULL, NULL, NULL, '数据源Text', 'DicName', 'string', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, '超级管理员', '2019-08-20 10:08:56', 1, 1110, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (52, NULL, NULL, NULL, NULL, '排序号', 'OrderNo', 'int', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-20 10:08:56', 1, 1100, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (53, NULL, NULL, NULL, NULL, '备注', 'Remark', 'string', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, 1, 'text', NULL, 1, 1, NULL, 0, 1, 0, 2000, '超级管理员', '2019-08-20 10:08:56', 1, 1090, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (54, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'sbyte', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, 'enable', NULL, 1, 'switch', NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-20 10:08:56', 1, 1080, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (55, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, NULL, '无', NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-20 10:08:56', 1, 1070, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (56, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 130, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2019-08-20 10:08:56', 1, 1060, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (57, NULL, NULL, NULL, NULL, '创建时间', 'CreateDate', 'DateTime', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-20 10:08:56', 1, 1050, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (58, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-20 10:08:56', 1, 1040, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (59, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超级管理员', '2019-08-20 10:08:56', 1, 1030, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (60, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 90, NULL, '2018-06-06 14:12:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-20 10:08:56', 1, 1020, NULL, NULL, NULL, NULL, NULL, 'Sys_DictionaryList', 4);
INSERT INTO "public"."sys_tablecolumn" VALUES (61, NULL, NULL, NULL, NULL, NULL, 'Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2020-03-02 19:22:18', 1, 10000, NULL, NULL, NULL, NULL, NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (62, NULL, NULL, NULL, 12, '日志类型', 'LogType', 'string', 120, NULL, '2018-06-11 18:22:16', NULL, NULL, 'log', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超级管理员', '2020-03-02 19:22:18', 1, 8888, NULL, NULL, 3, 'checkbox', NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (63, NULL, NULL, NULL, NULL, '请求参数', 'RequestParameter', 'string', 300, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, '超级管理员', '2020-03-02 19:22:18', 1, 7990, NULL, NULL, NULL, NULL, NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (64, NULL, NULL, NULL, NULL, '响应参数', 'ResponseParameter', 'string', 250, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, '超级管理员', '2020-03-02 19:22:18', 1, 7980, NULL, NULL, NULL, NULL, NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (65, NULL, NULL, NULL, NULL, '异常信息', 'ExceptionInfo', 'string', 280, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, '超级管理员', '2020-03-02 19:22:18', 1, 7970, NULL, NULL, NULL, NULL, NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (66, NULL, NULL, NULL, NULL, '响应状态', 'Success', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, 'restatus', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2020-03-02 19:22:18', 1, 8700, NULL, NULL, 2, 'dropList', NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (67, NULL, NULL, NULL, NULL, '开始时间', 'BeginDate', 'DateTime', 150, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2020-03-02 19:22:18', 1, 9999, NULL, NULL, 2, 'datetime', NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (68, NULL, NULL, NULL, NULL, '结束时间', 'EndDate', 'DateTime', 150, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2020-03-02 19:22:18', 1, 880, NULL, NULL, NULL, NULL, NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (69, NULL, NULL, NULL, NULL, '时长(毫秒)', 'ElapsedTime', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2020-03-02 19:22:18', 1, 8600, NULL, NULL, NULL, NULL, NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (70, NULL, NULL, NULL, NULL, '用户IP', 'UserIP', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超级管理员', '2020-03-02 19:22:18', 1, 7920, NULL, NULL, 1, 'text', NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (71, NULL, NULL, NULL, NULL, '服务器IP', 'ServiceIP', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, '超级管理员', '2020-03-02 19:22:18', 1, 7910, NULL, NULL, 1, 'text', NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (72, NULL, NULL, NULL, NULL, '浏览器类型', 'BrowserType', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超级管理员', '2020-03-02 19:22:18', 1, 7900, NULL, NULL, NULL, NULL, NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (73, NULL, NULL, NULL, NULL, '请求地址', 'Url', 'string', 300, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4000, '超级管理员', '2020-03-02 19:22:18', 1, 9000, NULL, NULL, 1, 'text', NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (74, NULL, NULL, NULL, NULL, '用户ID', 'User_Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2020-03-02 19:22:18', 1, 7880, NULL, NULL, NULL, '无', NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (75, NULL, NULL, NULL, NULL, '用户名称', 'UserName', 'string', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4000, '超级管理员', '2020-03-02 19:22:18', 1, 7870, NULL, NULL, NULL, NULL, NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (76, NULL, NULL, NULL, NULL, '角色ID', 'Role_Id', 'int', 90, NULL, '2018-06-11 18:22:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2020-03-02 19:22:18', 1, 7860, NULL, NULL, 2, 'text', NULL, 'Sys_Log', 5);
INSERT INTO "public"."sys_tablecolumn" VALUES (77, NULL, NULL, NULL, NULL, NULL, 'User_Id', 'int', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7850, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (78, NULL, NULL, NULL, NULL, NULL, 'Dept_Id', 'int', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7840, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (79, 0, NULL, 1, NULL, '部门', 'DeptName', 'string', 150, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 0, 'text', NULL, 1, 0, NULL, 0, 1, 0, 150, '超级管理员', '2019-12-08 22:22:13', 1, 7830, NULL, NULL, 2, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (80, 0, 0, 1, NULL, '角色', 'Role_Id', 'int', 150, NULL, '2018-06-14 16:44:15', NULL, NULL, 'roles', NULL, 2, 'drop', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7820, NULL, NULL, 2, 'drop', NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (81, NULL, NULL, NULL, NULL, NULL, 'RoleName', 'string', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 0, 0, 150, '超级管理员', '2019-12-08 22:22:13', 1, 7810, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (82, 1, 0, 1, NULL, '用户名', 'UserName', 'string', 120, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 100, '超级管理员', '2019-12-08 22:22:13', 1, 7945, NULL, NULL, 1, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (83, 1, 0, NULL, NULL, '密码', 'UserPwd', 'string', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1, 0, 200, '超级管理员', '2019-12-08 22:22:13', 1, 7790, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (84, NULL, NULL, NULL, NULL, '用户真实姓名', 'UserTrueName', 'string', 150, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 1, 'text', NULL, 1, 1, NULL, 0, 0, 0, 20, '超级管理员', '2019-12-08 22:22:13', 1, 7792, NULL, NULL, 1, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (85, NULL, NULL, NULL, NULL, '地址', 'Address', 'string', 190, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 3, 'text', NULL, 1, 1, NULL, 0, 1, 0, 200, '超级管理员', '2019-12-08 22:22:13', 1, 7270, NULL, NULL, 4, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (86, NULL, NULL, NULL, NULL, '电话', 'Mobile', 'string', 140, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 3, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, '超级管理员', '2019-12-08 22:22:13', 1, 7260, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (87, NULL, NULL, NULL, NULL, 'Email', 'Email', 'string', 140, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 5, 'text', NULL, 1, 1, NULL, 0, 1, 0, 100, '超级管理员', '2019-12-08 22:22:13', 1, 7250, NULL, NULL, 4, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (88, NULL, NULL, NULL, NULL, NULL, 'Tel', 'string', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 20, '超级管理员', '2019-12-08 22:22:13', 1, 7740, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (89, NULL, NULL, NULL, 12, '备注', 'Remark', 'string', 180, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 7, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 200, '超级管理员', '2019-12-08 22:22:13', 1, 7230, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (90, NULL, NULL, NULL, NULL, '排序号', 'OrderNo', 'int', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 0, 'text', NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7220, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (91, NULL, NULL, NULL, NULL, '是否可用', 'Enable', 'sbyte', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, 'enable', NULL, 5, 'drop', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7670, NULL, NULL, 4, 'drop', NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (92, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7700, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (93, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 130, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 200, '超级管理员', '2019-12-08 22:22:13', 1, 7690, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (94, NULL, NULL, NULL, NULL, '注册时间', 'CreateDate', 'DateTime', 150, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7780, NULL, NULL, 5, 'datetime', NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (95, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7670, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (96, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, 200, '超级管理员', '2019-12-08 22:22:13', 1, 7660, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (97, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7650, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (98, NULL, NULL, NULL, NULL, '审核状态', 'AuditStatus', 'int', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, 'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7640, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (99, NULL, NULL, NULL, NULL, '审核人', 'Auditor', 'string', 90, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超级管理员', '2019-12-08 22:22:13', 1, 7630, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (100, NULL, NULL, NULL, NULL, '审核时间', 'AuditDate', 'DateTime', 150, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7620, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (101, NULL, NULL, NULL, NULL, '最后登陆时间', 'LastLoginDate', 'DateTime', 150, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7610, NULL, NULL, 5, 'datetime', NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (102, NULL, NULL, NULL, NULL, '最后密码修改时间', 'LastModifyPwdDate', 'DateTime', 150, NULL, '2018-06-14 16:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7600, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (114, NULL, NULL, NULL, NULL, '头像', 'HeadImageUrl', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'img', NULL, 1, 1, 1, NULL, 1, 0, 200, '超级管理员', '2019-12-08 22:22:13', 1, 7842, NULL, NULL, NULL, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (142, NULL, NULL, NULL, NULL, '主键ID', 'Id', 'int', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8570, NULL, NULL, NULL, NULL, NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (143, NULL, NULL, NULL, 12, '品种', 'Variety', 'string', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, 'pz', NULL, 1, 'checkbox', NULL, 1, 1, NULL, 0, 0, 0, 20, '超级管理员', '2020-05-03 01:07:54', 1, 8560, NULL, NULL, 1, 'select', NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (144, NULL, NULL, NULL, 12, '月龄', 'AgeRange', 'string', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, 'age', NULL, 10, 'select', NULL, 1, 1, NULL, 0, 0, 0, 50, '超级管理员', '2020-05-03 01:07:54', 1, 8550, NULL, NULL, 1, 'select', NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (145, NULL, NULL, NULL, 12, '城市', 'City', 'string', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, 'city', NULL, 15, 'select', NULL, 1, 1, NULL, 0, 0, 0, 15, '超级管理员', '2020-05-03 01:07:54', 1, 8540, NULL, NULL, 1, 'select', NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (146, NULL, NULL, NULL, 12, '成交均价', 'AvgPrice', 'decimal', 80, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 20, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8530, NULL, NULL, NULL, NULL, NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (147, NULL, NULL, NULL, 12, '成交日期', 'Date', 'DateTime', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 25, 'date', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8520, NULL, NULL, 2, 'datetime', NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (148, NULL, NULL, NULL, NULL, '是否启用', 'Enable', 'sbyte', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, 'enable', NULL, NULL, 'select', NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8510, NULL, NULL, 2, 'select', NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (149, NULL, NULL, NULL, NULL, '创建人Id', 'CreateID', 'int', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8500, NULL, NULL, NULL, NULL, NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (150, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 130, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2020-05-03 01:07:54', 1, 8490, NULL, NULL, NULL, NULL, NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (151, NULL, NULL, NULL, NULL, '创建时间', 'CreateDate', 'DateTime', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8480, NULL, NULL, NULL, 'datetime', NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (152, NULL, NULL, NULL, NULL, '修改人ID', 'ModifyID', 'int', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8470, NULL, NULL, NULL, NULL, NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (153, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2020-05-03 01:07:54', 1, 8460, NULL, NULL, NULL, NULL, NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (154, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 90, NULL, '2018-07-10 13:57:15', NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8450, NULL, NULL, NULL, NULL, NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (155, NULL, NULL, NULL, NULL, '主键ID', 'Id', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8440, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (156, NULL, NULL, NULL, NULL, '品种', 'Variety', 'string', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, 'pz', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 20, '超级管理员', '2019-09-18 18:36:03', 1, 8430, NULL, NULL, 1, 'drop', NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (157, NULL, NULL, NULL, NULL, '月龄', 'Age', 'string', 100, NULL, '2018-07-10 15:02:46', NULL, NULL, 'age', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 50, '超级管理员', '2019-09-18 18:36:03', 1, 8420, NULL, NULL, 1, 'drop', NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (158, NULL, NULL, NULL, NULL, '报价城市', 'City', 'string', 120, NULL, '2018-07-10 15:02:46', NULL, NULL, 'city', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 15, '超级管理员', '2019-09-18 18:36:03', 1, 8410, NULL, NULL, 1, 'dropList', NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (159, NULL, NULL, NULL, NULL, '上报价格', 'Price', 'decimal', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8400, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (160, 0, NULL, NULL, NULL, '审核状态', 'AuditStatus', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, 'audit', NULL, NULL, 'select', NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8382, NULL, NULL, 2, 'select', NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (161, NULL, NULL, NULL, NULL, '审核人Id', 'AuditId', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8380, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (162, NULL, NULL, NULL, NULL, '审核人', 'Auditor', 'string', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20, '超级管理员', '2019-09-18 18:36:03', 1, 8370, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (163, NULL, NULL, NULL, NULL, '是否启用', 'Enable', 'sbyte', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, 'enable', NULL, 2, 'switch', NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8360, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (164, NULL, NULL, NULL, NULL, '创建人Id', 'CreateID', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8350, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (165, NULL, NULL, NULL, NULL, '上报人', 'Creator', 'string', 100, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2019-09-18 18:36:03', 1, 8388, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (166, NULL, 0, NULL, NULL, '上报时间', 'CreateDate', 'DateTime', 150, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 5, 'datetime', NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8387, NULL, NULL, 2, 'datetime', NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (167, NULL, NULL, NULL, NULL, '修改人ID', 'ModifyID', 'int', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8320, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (168, NULL, NULL, NULL, 12, '测试', 'Modifier', 'string', 100, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 8, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超级管理员', '2019-09-18 18:36:03', 1, 8310, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (169, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 90, NULL, '2018-07-10 15:02:46', NULL, NULL, NULL, NULL, 5, '无', NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8300, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (170, NULL, NULL, NULL, NULL, '审核时间', 'AuditDate', 'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '超级管理员', '2019-09-18 18:36:03', 1, 8381, NULL, NULL, NULL, NULL, NULL, 'App_ReportPrice', 16);
INSERT INTO "public"."sys_tablecolumn" VALUES (193, NULL, NULL, NULL, NULL, '主键ID', 'Id', 'int', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2019-09-18 17:40:42', 1, 8060, NULL, NULL, NULL, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (194, NULL, NULL, NULL, NULL, '姓名', 'Name', 'string', 120, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, '超级管理员', '2019-09-18 17:40:42', 1, 8050, NULL, NULL, 1, 'text', NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (195, NULL, NULL, NULL, NULL, '电话', 'PhoneNo', 'string', 150, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 15, '超级管理员', '2019-09-18 17:40:42', 1, 8040, NULL, NULL, 1, 'text', NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (196, NULL, NULL, NULL, NULL, '数量', 'Quantity', 'int', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-09-18 17:40:42', 1, 8030, NULL, NULL, NULL, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (197, NULL, NULL, NULL, NULL, '购买类型', 'CowType', 'string', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, 'nav', NULL, 2, 'select', NULL, 1, 1, NULL, 0, 1, 0, 100, '超级管理员', '2019-09-18 17:40:42', 1, 8020, NULL, NULL, 2, 'dropList', NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (198, NULL, NULL, NULL, NULL, '描述', 'Describe', 'string', 190, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 500, '超级管理员', '2019-09-18 17:40:42', 1, 8010, NULL, NULL, NULL, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (199, NULL, NULL, NULL, NULL, '是否启用', 'Enable', 'sbyte', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 17:40:42', 1, 8000, NULL, NULL, NULL, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (200, NULL, NULL, NULL, NULL, '创建人Id', 'CreateID', 'int', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 17:40:42', 1, 7990, NULL, NULL, NULL, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (201, NULL, NULL, NULL, NULL, '提交人', 'Creator', 'string', 130, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超级管理员', '2019-09-18 17:40:42', 1, 7980, NULL, NULL, 2, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (202, NULL, NULL, NULL, NULL, '提交时间', 'CreateDate', 'DateTime', 150, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 17:40:42', 1, 7970, NULL, NULL, 2, 'datetime', NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (203, NULL, NULL, NULL, NULL, '修改人ID', 'ModifyID', 'int', 90, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 17:40:42', 1, 7960, NULL, NULL, NULL, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (204, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超级管理员', '2019-09-18 17:40:42', 1, 7950, NULL, NULL, NULL, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (205, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 150, NULL, '2018-07-10 15:12:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 17:40:42', 1, 7940, NULL, NULL, NULL, NULL, NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (206, 1, 1, 0, NULL, '主键ID', 'ExpertId', 'int', 80, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7930, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (207, NULL, NULL, NULL, NULL, '专家名称', 'ExpertName', 'string', 150, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20, '超级管理员', '2019-09-18 16:46:51', 1, 7920, NULL, NULL, 1, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (208, NULL, NULL, NULL, NULL, '真实姓名', 'ReallyName', 'string', 150, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20, '超级管理员', '2019-09-18 16:46:51', 1, 7910, NULL, NULL, 1, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (209, NULL, NULL, NULL, NULL, '身份证号', 'IDNumber', 'string', 200, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 18, '超级管理员', '2019-09-18 16:46:51', 1, 7900, NULL, NULL, 1, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (210, NULL, NULL, NULL, NULL, '专家头像', 'HeadImageUrl', 'string', 220, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 10, NULL, NULL, 1, 1, 1, 0, 1, 0, 500, '超级管理员', '2019-09-18 16:46:51', 1, 7920, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (211, NULL, NULL, NULL, NULL, '学历', 'Education', 'string', 120, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超级管理员', '2019-09-18 16:46:51', 1, 7880, NULL, NULL, 2, 'text', NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (212, NULL, NULL, NULL, NULL, '职业', 'Professional', 'string', 120, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超级管理员', '2019-09-18 16:46:51', 1, 7870, NULL, NULL, 2, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (213, NULL, NULL, NULL, NULL, '所在公司', 'Company', 'string', 150, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, '超级管理员', '2019-09-18 16:46:51', 1, 7860, NULL, NULL, 2, '无', NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (214, NULL, NULL, NULL, NULL, '服务地区', 'City', 'string', 120, NULL, '2018-07-10 15:29:01', NULL, NULL, 'city', NULL, 3, 'drop', NULL, 1, 1, NULL, 0, 1, 0, 50, '超级管理员', '2019-09-18 16:46:51', 1, 7850, NULL, NULL, 3, 'dropList', NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (215, NULL, NULL, NULL, NULL, '擅长领域', 'SpecialField', 'string', 120, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 9, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 800, '超级管理员', '2019-09-18 16:46:51', 1, 7840, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (216, NULL, NULL, NULL, NULL, '个人简介', 'Resume', 'string', 220, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 9, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, '超级管理员', '2019-09-18 16:46:51', 1, 7830, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (217, NULL, NULL, NULL, NULL, '审核状态', 'AuditStatus', 'int', 120, NULL, '2018-07-10 15:29:01', NULL, NULL, 'audit', NULL, 0, 'drop', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7919, NULL, NULL, 3, 'dropList', NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (218, NULL, NULL, NULL, NULL, '审核人Id', 'AuditId', 'int', 80, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7810, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (219, NULL, NULL, NULL, NULL, '审核人', 'Auditor', 'string', 150, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20, '超级管理员', '2019-09-18 16:46:51', 1, 7919, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (220, NULL, NULL, NULL, NULL, '审核时间', 'AuditDate', 'DateTime', 150, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 0, 'datetime', NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7790, NULL, NULL, 3, 'datetime', NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (221, NULL, NULL, NULL, NULL, '是否启用', 'Enable', 'sbyte', 90, NULL, '2018-07-10 15:29:01', NULL, NULL, 'enable', NULL, 7, 'drop', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7919, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (222, NULL, NULL, NULL, NULL, '创建人Id', 'CreateID', 'int', 80, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7770, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (223, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 130, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, '超级管理员', '2019-09-18 16:46:51', 1, 7760, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (224, NULL, NULL, NULL, NULL, '申请时间', 'CreateDate', 'DateTime', 150, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7750, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (225, NULL, NULL, NULL, NULL, '修改人ID', 'ModifyID', 'int', 80, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7740, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (226, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超级管理员', '2019-09-18 16:46:51', 1, 7730, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (227, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 150, NULL, '2018-07-10 15:29:01', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7720, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (308, NULL, NULL, NULL, NULL, '主键ID', 'Id', 'int', 80, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6910, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (309, NULL, NULL, NULL, 12, '标题', 'Title', 'string', 250, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, '超级管理员', '2019-08-16 09:31:10', 1, 6900, NULL, NULL, 1, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (310, NULL, NULL, NULL, NULL, '发布人', 'Author', 'string', 120, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 50, '超级管理员', '2019-08-16 09:31:10', 1, 6890, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (311, 0, NULL, NULL, NULL, '发布时间', 'ReleaseDate', 'DateTime', 150, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6880, NULL, NULL, 3, 'datetime', NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (312, NULL, NULL, NULL, 12, '封面图片', 'ImageUrl', 'string', 220, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, 1, 0, 1, 0, 500, '超级管理员', '2019-08-16 09:31:10', 1, 6870, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (313, NULL, NULL, NULL, NULL, '图片(大图)', 'BigImageUrls', 'string', 220, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 500, '超级管理员', '2019-08-16 09:31:10', 1, 6860, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (314, NULL, NULL, NULL, 12, '新闻地址', 'DetailUrl', 'string', 90, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 8, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, '超级管理员', '2019-08-16 09:31:10', 1, 6850, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (315, NULL, NULL, NULL, NULL, '浏览次数', 'ViewCount', 'int', 110, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6840, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (316, NULL, NULL, NULL, NULL, '新闻类型', 'NewsType', 'int', 110, NULL, '2018-07-10 16:11:59', NULL, NULL, 'news', 1, 3, 'drop', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6830, NULL, NULL, 1, 'drop', NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (317, NULL, NULL, NULL, NULL, '是否启用', 'Enable', 'sbyte', 90, NULL, '2018-07-10 16:11:59', NULL, NULL, 'enable', NULL, 7, 'drop', NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6820, NULL, NULL, 3, 'drop', NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (318, NULL, NULL, NULL, NULL, '创建人Id', 'CreateID', 'int', 80, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6810, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (319, NULL, NULL, NULL, NULL, '发布人', 'Creator', 'string', 130, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2019-08-16 09:31:10', 1, 6800, NULL, NULL, 3, '无', NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (320, NULL, NULL, NULL, NULL, '发布时间', 'CreateDate', 'DateTime', 150, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6790, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (321, NULL, NULL, NULL, NULL, '修改人ID', 'ModifyID', 'int', 80, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6780, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (322, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, '超级管理员', '2019-08-16 09:31:10', 1, 6770, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (323, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 150, NULL, '2018-07-10 16:11:59', NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6760, NULL, NULL, NULL, 'datetime', NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (324, NULL, NULL, NULL, 12, '新闻内容', 'Content', 'string', 300, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, '超级管理员', '2019-08-16 09:31:10', 1, 6896, NULL, NULL, NULL, NULL, NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (429, 1, 0, NULL, NULL, '手机号', 'PhoneNo', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 11, '超级管理员', '2019-12-08 22:22:13', 1, 7760, NULL, NULL, 3, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (431, NULL, NULL, NULL, NULL, 'Token', 'Token', 'string', 180, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 500, '超级管理员', '2019-12-08 22:22:13', 1, 7810, NULL, NULL, 2, NULL, NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (446, NULL, NULL, NULL, 12, '是否推荐价格', 'IsTop', 'int', 90, NULL, NULL, NULL, NULL, 'top', NULL, 30, 'select', NULL, 1, 1, NULL, NULL, 0, 0, NULL, '超级管理员', '2020-05-03 01:07:54', 1, 8515, NULL, NULL, 2, 'select', NULL, 'App_TransactionAvgPrice', 15);
INSERT INTO "public"."sys_tablecolumn" VALUES (457, NULL, NULL, NULL, NULL, '是否买入', 'TransactionType', 'int', 120, NULL, NULL, NULL, NULL, 'cq', NULL, 2, 'select', NULL, 1, 1, NULL, NULL, NULL, 0, NULL, '超级管理员', '2019-09-18 17:40:42', 1, 8021, NULL, NULL, 1, 'select', NULL, 'App_Transaction', 19);
INSERT INTO "public"."sys_tablecolumn" VALUES (506, NULL, NULL, NULL, NULL, '性别', 'Gender', 'int', 100, NULL, NULL, NULL, NULL, 'gender', NULL, 4, 'drop', NULL, 1, 1, NULL, NULL, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7843, NULL, NULL, 1, 'drop', NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (523, NULL, NULL, NULL, NULL, '电话', 'PhoneNo', 'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 11, '超级管理员', '2019-09-18 16:46:51', 1, 7900, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (550, NULL, NULL, NULL, NULL, '申请人帐号Id', 'User_Id', 'int', 90, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, '超级管理员', '2019-09-18 16:46:51', 1, 7921, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (551, NULL, NULL, NULL, NULL, '申请人帐号', 'UserName', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 30, '超级管理员', '2019-09-18 16:46:51', 1, 7920, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (552, NULL, NULL, NULL, NULL, '申请人', 'UserTrueName', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 50, '超级管理员', '2019-09-18 16:46:51', 1, 7920, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);
INSERT INTO "public"."sys_tablecolumn" VALUES (654, NULL, NULL, NULL, NULL, '登陆设备类型', 'AppType', 'int', 150, NULL, NULL, NULL, NULL, 'ut', NULL, 0, NULL, NULL, 1, 1, NULL, NULL, 1, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7809, NULL, NULL, 3, 'dropList', NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (659, NULL, NULL, NULL, NULL, '是否手机用户', 'IsRegregisterPhone', 'int', 120, NULL, NULL, NULL, NULL, 'isphone', NULL, 2, 'drop', NULL, 1, 0, NULL, NULL, 0, 0, NULL, '超级管理员', '2019-12-08 22:22:13', 1, 7771, NULL, NULL, 3, 'drop', NULL, 'Sys_User', 6);
INSERT INTO "public"."sys_tablecolumn" VALUES (663, NULL, NULL, NULL, NULL, '是否今日推荐', 'DailyRecommend', 'sbyte', 120, NULL, NULL, NULL, NULL, 'dr', NULL, 5, 'drop', NULL, 1, 1, NULL, NULL, 0, 0, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6825, NULL, NULL, 1, 'drop', NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (664, NULL, NULL, NULL, NULL, '推荐排序', 'OrderNo', 'int', 120, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 1, NULL, NULL, 1, 0, NULL, '超级管理员', '2019-08-16 09:31:10', 1, 6822, NULL, NULL, NULL, '无', NULL, 'App_News', 28);
INSERT INTO "public"."sys_tablecolumn" VALUES (714, NULL, NULL, NULL, NULL, 'Id', 'Order_Id', 'string', 90, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, '超级管理员', '2019-09-19 14:55:02', 1, 2850, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (715, NULL, NULL, NULL, NULL, '订单类型', 'OrderType', 'int', 90, NULL, '2019-08-22 17:26:55', 1, '超级管理员', 'ordertype', 1, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2840, NULL, 1, 1, 'select', NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (716, NULL, NULL, NULL, NULL, '运单号', 'TranNo', 'string', 150, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, 1, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, '超级管理员', '2019-09-19 14:55:02', 1, 2830, NULL, NULL, 1, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (717, NULL, NULL, NULL, NULL, '销售订单号', 'SellNo', 'string', 200, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, 2, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, '超级管理员', '2019-09-19 14:55:02', 1, 2820, NULL, NULL, 1, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (718, NULL, NULL, NULL, NULL, '销售数量', 'Qty', 'int', 90, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, 2, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2810, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (719, NULL, NULL, NULL, 8, '备注', 'Remark', 'string', 100, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, NULL, 2, 'textarea', NULL, 1, 1, NULL, 0, 1, 0, 1000, '超级管理员', '2019-09-19 14:55:02', 1, 2800, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (720, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 80, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2790, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (721, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 100, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 255, '超级管理员', '2019-09-19 14:55:02', 1, 2780, NULL, NULL, 3, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (722, NULL, NULL, NULL, NULL, '创建时间', 'CreateDate', 'DateTime', 90, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2770, NULL, NULL, 3, 'datetime', NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (723, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 80, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2760, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (724, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 100, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, 4, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 255, '超级管理员', '2019-09-19 14:55:02', 1, 2750, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (725, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 90, NULL, '2019-08-22 17:26:55', 1, '超级管理员', NULL, 4, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2740, NULL, NULL, 3, 'datetime', NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (726, NULL, NULL, NULL, NULL, NULL, 'OrderList_Id', 'string', 90, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 0, 36, '超级管理员', '2019-09-19 14:54:58', 1, 2730, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (727, NULL, NULL, NULL, NULL, '订单Id', 'Order_Id', 'string', 90, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, 1, 36, '超级管理员', '2019-09-19 14:54:58', 1, 2720, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (728, NULL, NULL, NULL, NULL, '商品名称', 'ProductName', 'string', 150, NULL, '2019-08-28 09:17:39', 1, '超级管理员', 'pn', NULL, 1, 'select', NULL, 1, 1, NULL, 0, 0, 0, 200, '超级管理员', '2019-09-19 14:54:58', 1, 2710, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (729, NULL, NULL, NULL, NULL, '批次', 'MO', 'string', 100, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, '超级管理员', '2019-09-19 14:54:58', 1, 2700, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (730, NULL, NULL, NULL, NULL, '数量', 'Qty', 'int', 90, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, 1, 'drop', NULL, 1, 1, NULL, 0, 0, 0, NULL, '超级管理员', '2019-09-19 14:54:58', 1, 2690, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (731, NULL, NULL, NULL, NULL, '重量', 'Weight', 'decimal', 90, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-19 14:54:58', 1, 2680, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (732, NULL, NULL, NULL, NULL, '备注', 'Remark', 'string', 120, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, '超级管理员', '2019-09-19 14:54:58', 1, 2670, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (733, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 80, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-19 14:54:58', 1, 2660, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (734, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 130, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超级管理员', '2019-09-19 14:54:58', 1, 2650, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (735, NULL, NULL, NULL, NULL, '创建时间', 'CreateDate', 'DateTime', 90, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-19 14:54:58', 1, 2640, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (736, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 80, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-19 14:54:58', 1, 2630, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (737, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 100, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, '超级管理员', '2019-09-19 14:54:58', 1, 2620, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (738, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 90, NULL, '2019-08-28 09:17:39', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, '超级管理员', '2019-09-19 14:54:58', 1, 2610, NULL, NULL, NULL, NULL, NULL, 'SellOrderList', 78);
INSERT INTO "public"."sys_tablecolumn" VALUES (739, NULL, NULL, NULL, NULL, '审核时间', 'AuditDate', 'DateTime', 120, NULL, '2019-08-28 09:32:29', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2805, NULL, NULL, 2, 'datetime', NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (740, NULL, NULL, NULL, NULL, '审核人', 'Auditor', 'string', NULL, NULL, '2019-08-28 09:32:29', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 100, '超级管理员', '2019-09-19 14:55:02', 1, 2803, NULL, NULL, 2, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (741, NULL, NULL, NULL, NULL, '审核人Id', 'AuditId', 'int', NULL, NULL, '2019-08-28 09:32:29', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2801, NULL, NULL, NULL, NULL, NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (742, NULL, NULL, NULL, NULL, '审核状态', 'AuditStatus', 'int', NULL, NULL, '2019-08-28 09:32:29', 1, '超级管理员', 'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, NULL, '超级管理员', '2019-09-19 14:55:02', 1, 2808, NULL, NULL, 2, 'select', NULL, 'SellOrder', 77);
INSERT INTO "public"."sys_tablecolumn" VALUES (743, NULL, NULL, NULL, NULL, NULL, 'Id', 'string', 90, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, 5, 1, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, '超级管理员', '2020-04-24 13:47:36', 1, 2560, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (744, NULL, NULL, NULL, NULL, '创建时间', 'CreateDate', 'DateTime', 120, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, 1, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2020-04-24 13:47:36', 1, 2550, NULL, NULL, 1, 'datetime', NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (745, NULL, NULL, NULL, NULL, NULL, 'CreateID', 'int', 80, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2020-04-24 13:47:36', 1, 2540, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (746, NULL, NULL, NULL, NULL, '创建人', 'Creator', 'string', 130, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2020-04-24 13:47:36', 1, 2530, NULL, NULL, 1, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (747, NULL, NULL, NULL, NULL, '描述', 'Describe', 'string', 180, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 250, '超级管理员', '2020-04-24 13:47:36', 1, 3490, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (748, NULL, NULL, NULL, NULL, '修改人', 'Modifier', 'string', 130, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, '超级管理员', '2020-04-24 13:47:36', 1, 2510, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (749, NULL, NULL, NULL, NULL, '修改时间', 'ModifyDate', 'DateTime', 90, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, 1, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, '超级管理员', '2020-04-24 13:47:36', 1, 2500, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (750, NULL, NULL, NULL, NULL, NULL, 'ModifyID', 'int', 80, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, '超级管理员', '2020-04-24 13:47:36', 1, 2490, NULL, NULL, NULL, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (751, NULL, NULL, NULL, NULL, '姓名', 'Name', 'string', 100, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 50, '超级管理员', '2020-04-24 13:47:36', 1, 3500, NULL, NULL, 1, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (752, NULL, NULL, NULL, NULL, '电话', 'PhoneNo', 'string', 130, NULL, '2019-09-18 15:46:43', 1, '超级管理员', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 15, '超级管理员', '2020-04-24 13:47:36', 1, 3470, NULL, NULL, 1, NULL, NULL, 'App_Appointment', 80);
INSERT INTO "public"."sys_tablecolumn" VALUES (763, NULL, NULL, NULL, NULL, NULL, 'Certificate', 'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2500, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'App_Expert', 20);

-- ----------------------------
-- Table structure for sys_tableinfo
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_tableinfo";
CREATE TABLE "public"."sys_tableinfo" (
  "Table_Id" int4 NOT NULL,
  "CnName" varchar(50) COLLATE "pg_catalog"."default",
  "ColumnCNName" varchar(100) COLLATE "pg_catalog"."default",
  "DBServer" varchar(2000) COLLATE "pg_catalog"."default",
  "DataTableType" varchar(200) COLLATE "pg_catalog"."default",
  "DetailCnName" varchar(200) COLLATE "pg_catalog"."default",
  "DetailName" varchar(200) COLLATE "pg_catalog"."default",
  "EditorType" varchar(100) COLLATE "pg_catalog"."default",
  "Enable" int4,
  "ExpressField" varchar(200) COLLATE "pg_catalog"."default",
  "FolderName" varchar(200) COLLATE "pg_catalog"."default",
  "Namespace" varchar(200) COLLATE "pg_catalog"."default",
  "OrderNo" int4,
  "ParentId" int4,
  "RichText" varchar(100) COLLATE "pg_catalog"."default",
  "SortName" varchar(50) COLLATE "pg_catalog"."default",
  "TableName" varchar(50) COLLATE "pg_catalog"."default",
  "TableTrueName" varchar(100) COLLATE "pg_catalog"."default",
  "UploadField" varchar(100) COLLATE "pg_catalog"."default",
  "UploadMaxCount" int4
)
;

-- ----------------------------
-- Records of sys_tableinfo
-- ----------------------------
INSERT INTO "public"."sys_tableinfo" VALUES (2, '角色管理', '角色管理', NULL, NULL, NULL, NULL, NULL, 1, 'RoleName', 'System', 'VOL.System', NULL, 8, NULL, NULL, 'Sys_Role', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (3, '字典数据', '字典数据', NULL, NULL, '字典明细', 'Sys_DictionaryList', NULL, 1, 'DicName', 'System', 'VOL.System', NULL, 11, NULL, NULL, 'Sys_Dictionary', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (4, '字典明细', '字典明细', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'System', 'VOL.System', NULL, 11, NULL, NULL, 'Sys_DictionaryList', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (5, '系统日志', '系统日志', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'System', 'VOL.System', NULL, 10, NULL, NULL, 'Sys_Log', 'Sys_Log', NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (6, NULL, '用户管理', NULL, NULL, NULL, NULL, NULL, 1, 'UserName', 'System', 'VOL.System', NULL, 8, NULL, NULL, 'Sys_User', 'Sys_User', 'HeadImageUrl', 1);
INSERT INTO "public"."sys_tableinfo" VALUES (8, '用户基础信息', '用户基础信息', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'System', 'VOL.System', 200, 0, NULL, NULL, '无', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (10, '日志管理', '日志管理', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'System', 'VOL.System', NULL, 0, NULL, '170', '日志管理', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (11, '配置管理', '配置管理', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'System', 'VOL.System', NULL, 0, NULL, '250', '配置管理', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (15, '成交均价', '自动绑定下拉框', NULL, NULL, NULL, NULL, NULL, 1, 'AvgPrice', 'App', 'VOL.AppManager', NULL, 79, NULL, NULL, 'App_TransactionAvgPrice', 'App_TransactionAvgPrice', NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (16, NULL, '新增编辑表单', NULL, NULL, NULL, NULL, NULL, 1, 'Price', 'App', 'VOL.AppManager', NULL, 79, NULL, NULL, 'App_ReportPrice', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (19, NULL, '导入导出', NULL, NULL, NULL, NULL, NULL, 1, '姓名', 'App', 'VOL.AppManager', NULL, 79, NULL, NULL, 'App_Transaction', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (20, NULL, '启用图片支持', NULL, NULL, NULL, NULL, NULL, 1, 'UserName', 'App', 'VOL.AppManager', NULL, 79, NULL, NULL, 'App_Expert', NULL, 'HeadImageUrl', 1);
INSERT INTO "public"."sys_tableinfo" VALUES (27, '侩牛资讯', '静态页面发布', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'News', 'VOL.AppManager', NULL, 0, NULL, NULL, '侩牛资讯', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (28, NULL, '新闻列表', NULL, NULL, NULL, NULL, NULL, 1, 'Title', 'News', 'VOL.AppManager', NULL, 27, 'Content', 'CreateDate', 'App_News', NULL, 'ImageUrl', 3);
INSERT INTO "public"."sys_tableinfo" VALUES (76, '订单管理', '测试完整示例', NULL, NULL, NULL, NULL, NULL, 1, NULL, '订单管理', 'VOL.Order', NULL, 0, NULL, NULL, '订单管理', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (77, '销售订单', '销售订单', NULL, NULL, '订单明细', 'SellOrderList', NULL, 1, 'TranNo', 'Sell', 'VOL.Order', NULL, 76, NULL, 'CreateDate', 'SellOrder', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (78, '订单明细', '订单明细', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Order', 'VOL.Order', NULL, 76, NULL, 'CreateDate', 'SellOrderList', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (79, 'Table 单表数据', 'Table+单表数据', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Order', 'VOL.Order', NULL, 0, NULL, NULL, 'Table+单表数据', NULL, NULL, NULL);
INSERT INTO "public"."sys_tableinfo" VALUES (80, '基础表单查询', '基础表单+编辑只读', NULL, NULL, NULL, NULL, NULL, 1, 'Name', 'Appointment', 'VOL.Order', NULL, 79, NULL, 'CreateDate', 'App_Appointment', 'App_Appointment', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "User_Id" int4 NOT NULL,
  "Address" varchar(200) COLLATE "pg_catalog"."default",
  "AppType" int4,
  "AuditDate" timestamp(6),
  "AuditStatus" int4,
  "Auditor" varchar(200) COLLATE "pg_catalog"."default",
  "CreateDate" timestamp(6),
  "CreateID" int4,
  "Creator" varchar(200) COLLATE "pg_catalog"."default",
  "DeptName" varchar(150) COLLATE "pg_catalog"."default",
  "Dept_Id" int4,
  "Email" varchar(100) COLLATE "pg_catalog"."default",
  "Enable" int2 NOT NULL,
  "Gender" int4,
  "HeadImageUrl" varchar(200) COLLATE "pg_catalog"."default",
  "IsRegregisterPhone" int4 NOT NULL,
  "LastLoginDate" timestamp(6),
  "LastModifyPwdDate" timestamp(6),
  "Mobile" varchar(100) COLLATE "pg_catalog"."default",
  "Modifier" varchar(200) COLLATE "pg_catalog"."default",
  "ModifyDate" timestamp(6),
  "ModifyID" int4,
  "OrderNo" int4,
  "Role_Id" int4 NOT NULL,
  "RoleName" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "PhoneNo" varchar(11) COLLATE "pg_catalog"."default",
  "Remark" varchar(200) COLLATE "pg_catalog"."default",
  "Tel" varchar(20) COLLATE "pg_catalog"."default",
  "UserName" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "UserPwd" varchar(200) COLLATE "pg_catalog"."default",
  "UserTrueName" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "Token" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (1, '北京市西城区', 0, '2019-08-18 00:54:06', 1, '超级管理员', '2012-06-10 11:10:03', NULL, NULL, NULL, 0, '283591387@qq.com', 1, 1, 'https://imgs-1256993465.cos.ap-chengdu.myqcloud.com/head.png', 0, '2017-08-28 09:58:55', '2019-12-14 15:13:49', NULL, '超级管理员', '2019-05-30 11:37:41', 1, 0, 1, '超级管理员', '13888888888', '~还没想好...', NULL, 'admin', 'j79rYYvCz4vdhcboB1Ausg==', '超级管理员', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIxIiwiaWF0IjoiMTU4ODY1MTk1MCIsIm5iZiI6IjE1ODg2NTE5NTAiLCJleHAiOiIxNTg4NjU5MTUwIiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.7tK6vx4hCHejJBx5IF5nw-5-ZXeLw4U8yyJQSeA-0J8');
INSERT INTO "public"."sys_user" VALUES (3364, '北京市西城区', NULL, NULL, NULL, NULL, '2019-10-10 17:29:14', 1, '超级管理员', NULL, NULL, '123@qq.com', 1, 0, 'Upload/Tables/Sys_User/202004270952013790/06.jpg', 0, NULL, NULL, '139999999999', '超级管理员', '2020-04-27 09:52:01', 1, NULL, 2, '测试管理员', NULL, NULL, NULL, 'admin777', 'E2J_2bOfPPSTYWeMKksiaw==', '你猜？', NULL);
INSERT INTO "public"."sys_user" VALUES (3365, '北京市还没注册', NULL, NULL, NULL, NULL, '2019-10-24 11:39:22', 1, '超级管理员', NULL, NULL, NULL, 1, NULL, 'Upload/Tables/Sys_User/202004270952176882/111.jpg', 0, NULL, NULL, '01012345678', '超级管理员', '2020-04-27 09:52:18', 1, NULL, 4, '信息员', NULL, NULL, NULL, 'test123', 'CfpTfV6KXdeC5TVoy5WL~w==', 'zs j', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzY1IiwiaWF0IjoiMTU3MTg4ODc5MyIsIm5iZiI6IjE1NzE4ODg3OTMiLCJleHAiOiIxNTcxODk1OTkzIiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.ZXzbz9ckdsTPOb2eDf3xTrHEFZv5MqDMiBglGJ9o-rI');
INSERT INTO "public"."sys_user" VALUES (3367, NULL, NULL, NULL, NULL, NULL, '2020-03-25 11:24:59', 1, '超级管理员', NULL, NULL, NULL, 1, 0, 'Upload/Tables/Sys_User/202004270952259380/1111.jpg', 0, NULL, NULL, NULL, '超级管理员', '2020-04-27 09:52:25', 1, NULL, 4, '信息员', NULL, NULL, NULL, 'admin111', 'tr8aEOCW6YdvgRfzgxf4mg==', '11', NULL);
INSERT INTO "public"."sys_user" VALUES (3362, '北京市还没注册', NULL, '2019-08-18 00:54:06', 1, '超级管理员', '2019-08-13 14:24:27', NULL, NULL, NULL, NULL, NULL, 1, 0, 'Upload/Tables/Sys_User/202004241341311851/04.jpg', 0, NULL, '2019-09-22 23:12:33', '01012345678', '超级管理员', '2020-04-27 09:48:53', 1, NULL, 2, '测试管理员', NULL, NULL, NULL, 'admin666', 'j79rYYvCz4vdhcboB1Ausg==', '演示帐号', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzYyIiwiaWF0IjoiMTU4OTkxNTcyMCIsIm5iZiI6IjE1ODk5MTU3MjAiLCJleHAiOiIxNTg5OTIyOTIwIiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.cuGjlinizCkOxI92G9XQQxhiIJKbjUJwnva3HeYqVL4');
INSERT INTO "public"."sys_user" VALUES (3371, NULL, NULL, NULL, NULL, NULL, '2020-04-29 15:44:15', 1, '超级管理员', NULL, NULL, NULL, 1, 0, 'Upload/Tables/Sys_User/202004291544153171/1111s.jpg', 0, NULL, NULL, NULL, '演示帐号', '2020-05-20 03:16:29', 3362, NULL, 6, '测试003', NULL, NULL, NULL, 'treetest1', 'kba29e~WKmea~Dis3YNQKg==', 'tree00', NULL);

-- ----------------------------
-- Primary Key structure for table Sys_Dictionary
-- ----------------------------
ALTER TABLE "public"."Sys_Dictionary" ADD CONSTRAINT "Sys_Dictionary_pkey" PRIMARY KEY ("Dic_ID");

-- ----------------------------
-- Primary Key structure for table Sys_DictionaryList
-- ----------------------------
ALTER TABLE "public"."Sys_DictionaryList" ADD CONSTRAINT "_copy_19" PRIMARY KEY ("DicList_ID");

-- ----------------------------
-- Primary Key structure for table app_appointment
-- ----------------------------
ALTER TABLE "public"."app_appointment" ADD CONSTRAINT "_copy_18" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table app_news
-- ----------------------------
ALTER TABLE "public"."app_news" ADD CONSTRAINT "_copy_17" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table app_reportprice
-- ----------------------------
ALTER TABLE "public"."app_reportprice" ADD CONSTRAINT "_copy_16" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table app_transaction
-- ----------------------------
ALTER TABLE "public"."app_transaction" ADD CONSTRAINT "_copy_15" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table app_transactionavgprice
-- ----------------------------
ALTER TABLE "public"."app_transactionavgprice" ADD CONSTRAINT "_copy_14" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table news_article
-- ----------------------------
ALTER TABLE "public"."news_article" ADD CONSTRAINT "_copy_13" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table sellorder
-- ----------------------------
ALTER TABLE "public"."sellorder" ADD CONSTRAINT "_copy_12" PRIMARY KEY ("Order_Id");

-- ----------------------------
-- Primary Key structure for table sellorderlist
-- ----------------------------
ALTER TABLE "public"."sellorderlist" ADD CONSTRAINT "_copy_11" PRIMARY KEY ("OrderList_Id");

-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE "public"."sys_log" ADD CONSTRAINT "_copy_10" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "_copy_9" PRIMARY KEY ("Menu_Id");

-- ----------------------------
-- Primary Key structure for table sys_menu_copy1
-- ----------------------------
ALTER TABLE "public"."sys_menu_copy1" ADD CONSTRAINT "_copy_8" PRIMARY KEY ("Menu_Id");

-- ----------------------------
-- Primary Key structure for table sys_province
-- ----------------------------
ALTER TABLE "public"."sys_province" ADD CONSTRAINT "_copy_7" PRIMARY KEY ("ProvinceId");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "_copy_6" PRIMARY KEY ("Role_Id");

-- ----------------------------
-- Primary Key structure for table sys_roleauth
-- ----------------------------
ALTER TABLE "public"."sys_roleauth" ADD CONSTRAINT "_copy_5" PRIMARY KEY ("Auth_Id");

-- ----------------------------
-- Primary Key structure for table sys_roleauthdata
-- ----------------------------
ALTER TABLE "public"."sys_roleauthdata" ADD CONSTRAINT "_copy_4" PRIMARY KEY ("Auth_Id");

-- ----------------------------
-- Primary Key structure for table sys_tablecolumn
-- ----------------------------
ALTER TABLE "public"."sys_tablecolumn" ADD CONSTRAINT "_copy_3" PRIMARY KEY ("ColumnId");

-- ----------------------------
-- Primary Key structure for table sys_tableinfo
-- ----------------------------
ALTER TABLE "public"."sys_tableinfo" ADD CONSTRAINT "_copy_2" PRIMARY KEY ("Table_Id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "_copy_1" PRIMARY KEY ("User_Id");
