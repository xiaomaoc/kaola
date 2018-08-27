/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : mao

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-08-27 20:02:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pruduct
-- ----------------------------
DROP TABLE IF EXISTS `pruduct`;
CREATE TABLE `pruduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pruduct
-- ----------------------------
INSERT INTO `pruduct` VALUES ('1', 'moony 尤妮佳 L54片/包 纸尿裤/尿不湿', '316.00', 'muying01.jpg', '【4包整箱装】原装进口', '1');
INSERT INTO `pruduct` VALUES ('2', 'Merries 花王妙而舒 L54片/包 纸尿裤/尿不湿', '318.00', 'muying02.jpg', '【新老包装随机发货】日本原装进口', '1');
INSERT INTO `pruduct` VALUES ('3', 'Merries 花王妙而舒 L44片 拉拉裤/学步裤', '79.00', 'muying03.jpg', '【新老包装随机发货】日本原装进口', '1');
INSERT INTO `pruduct` VALUES ('4', 'Merries 花王妙而舒 L44片/包 拉拉裤/学步裤', '231.00', 'muying04.jpg', '【新老包装随机发货】日本原装进口', '1');
INSERT INTO `pruduct` VALUES ('5', '荷兰牛栏 儿童奶粉 6段 400克 3岁以上 3罐装', '264.00', 'muying05.jpg', '【新老包装随机发货】日本原装进口', '1');
INSERT INTO `pruduct` VALUES ('6', '荷兰牛栏 婴儿奶粉5段 2周岁以上 800克/罐 4罐装', '520.00', 'muying06.jpg', '愿用我们的专业，成就宝宝的健康成长', '1');
INSERT INTO `pruduct` VALUES ('7', '诺优能 3段幼儿配方奶粉800克 12-36个月', '145.00', 'muying07.jpg', '品牌直采。', '1');
INSERT INTO `pruduct` VALUES ('8', ' 诺优能 4段幼儿配方奶粉800克 2罐装 3-6岁', '290.00', 'muying08.jpg', '品牌直采。', '1');
INSERT INTO `pruduct` VALUES ('9', ' 悦木之源 一饮而尽睡眠面膜 100毫升', '198.00', 'mz01.jpg', '【新老包装随机发货】', '2');
INSERT INTO `pruduct` VALUES ('10', ' 皇家花蜜 蜂毒面膜 50毫升', '219.00', 'mz02.jpg', null, '2');
INSERT INTO `pruduct` VALUES ('11', '悦诗风吟 绿茶睡眠面膜 80毫升', '68.00', 'mz03.jpg', '小清新的悦诗风吟，亲民好用', '2');
INSERT INTO `pruduct` VALUES ('12', '嘉娜宝 肌美精 超浸透3D抗老化保湿面膜 30毫升*4片 家中常备', '145.00', 'mz04.jpg', '抗老保湿', '2');
INSERT INTO `pruduct` VALUES ('13', '卡曼 红色枸杞平衡复苏面膜套装 子弹头包装', '75.00', 'mz05.jpg', null, '2');
INSERT INTO `pruduct` VALUES ('14', 'WELLNESS BEAUTE Gel Pack 撕拉去黑头毛孔清洁面膜 90克', '88.00', 'mz06.jpg', null, '2');
INSERT INTO `pruduct` VALUES ('15', '清爽啫喱修护睡眠面膜 50ml', '288.00', 'mz07.jpg', null, '2');
INSERT INTO `pruduct` VALUES ('16', 'TOAS Miracle系列 精华修复EGF精华面膜 5片装', '72.00', 'mz08.jpg', null, '2');
INSERT INTO `pruduct` VALUES ('17', '索菲·休姆 女士手提单肩包 深绿/深蓝色', '3899.00', 'xz01.jpg', '索菲·休姆 女士手提单肩包 深绿/深蓝色 ', '3');
INSERT INTO `pruduct` VALUES ('18', 'MCM 女士侧铆钉 小号 双肩背包 MMK6SVE37', '4199.00', 'xz02.jpg', '', '3');
INSERT INTO `pruduct` VALUES ('19', '女士铆钉系列 小号 双肩背包 MMK6SVE37', '4499.00', 'xz03.jpg', null, '3');
INSERT INTO `pruduct` VALUES ('20', 'PRADA 普拉达 Saffiano系列 丝带蝴蝶结 女士按钮开合长款钱包', '3999.00', 'xz04.jpg', null, '3');
INSERT INTO `pruduct` VALUES ('21', 'MCM 女士长款铆钉可肩背钱包', '2999.00', 'xz05.jpg', null, '3');
INSERT INTO `pruduct` VALUES ('22', '圣罗兰 简约羊皮时尚链条钱包 黑色 ', '2199.00', 'xz06.jpg', null, '3');
INSERT INTO `pruduct` VALUES ('23', 'MOSCHINO 莫斯奇诺 女士字母印花涂鸦长款钱包', '2599.00', 'xz07.jpg', '货号：A81208204', '3');
INSERT INTO `pruduct` VALUES ('24', ' 莫斯奇诺 个性潮酷双肩包', '4399.00', 'xz08.jpg', '货号：Z1A76068203', '3');
INSERT INTO `pruduct` VALUES ('25', 'VT° 范特 复古系列牙膏 茉莉薄荷', '35.00', 'xh01.jpg', '紫色金属感包装，彰显复古气质', '4');
INSERT INTO `pruduct` VALUES ('26', 'red seal 红印 无氟加钙蜂胶牙膏 100克 终结牙龈出血', '25.00', 'xh02.jpg', '终结牙龈出血，红印无氟加钙蜂胶牙膏', '4');
INSERT INTO `pruduct` VALUES ('27', '美白牙膏 75毫升/支', '29.00', 'xh03.jpg', null, '4');
INSERT INTO `pruduct` VALUES ('28', '超薄瞬吸护翼日用卫生巾', '29.00', 'xh04.jpg', '轻盈零触感！新到的限定版又换包装啦', '4');
INSERT INTO `pruduct` VALUES ('29', '渗透预防牙周炎口臭牙膏 130克', '35.00', 'xh05.jpg', '终结牙周炎、牙龈敏感', '4');
INSERT INTO `pruduct` VALUES ('30', '水晶莹 超强亮白牙膏 75毫升', '25.00', 'xh06.jpg', '超强亮白牙膏，优质微晶体', '4');
INSERT INTO `pruduct` VALUES ('31', 'Cow 牛牌 牛乳石碱柚子活力沐浴露', '39.00', 'xh07.jpg', '传说中一用就爱上的沐浴乳', '4');
INSERT INTO `pruduct` VALUES ('32', '施巴 止汗香体走珠 无香型 50毫升', '35.00', 'xh08.jpg', '施巴，德国医学皮肤护理品牌', '4');
INSERT INTO `pruduct` VALUES ('33', 'KGC 正官庄 活气力口服液 20ml*10瓶', '229.00', 'bj01.jpg', null, '5');
INSERT INTO `pruduct` VALUES ('34', 'KGC 正官庄 无糖高级高丽参糖(秀) 80克/袋 3件装', '105.00', 'bj02.jpg', '正官庄高丽参糖', '5');
INSERT INTO `pruduct` VALUES ('35', '正官庄 高丽红参[良字] 50支 37.5克', '288.00', 'bj03.jpg', '正官庄百年传统工艺', '5');
INSERT INTO `pruduct` VALUES ('36', '正官庄高丽参元饮品 100ml*30瓶', '187.00', 'bj04.jpg', '滋补选择高丽参', '5');
INSERT INTO `pruduct` VALUES ('37', '高丽参膏 30克（韩国原装进口）', '308.00', 'bj05.jpg', '滋补选择高丽参', '5');
INSERT INTO `pruduct` VALUES ('38', 'KGC 正官庄 高丽参精玉膏 6年根蜂蜜人参 100克/瓶', '249.00', 'bj06.jpg', '正官庄百年传统工艺', '5');
INSERT INTO `pruduct` VALUES ('39', 'KGC 正官庄 活气丹咀嚼食补丸 10粒/盒', '219.00', 'bj07.jpg', '可嚼服的高丽参', '5');
INSERT INTO `pruduct` VALUES ('40', '正官庄 6年根高丽参炖 Mild 50ml*30包', '498.00', 'bj08.jpg', '高丽参炖，方便省力的十全大补汤', '5');
INSERT INTO `pruduct` VALUES ('41', 'SHARP 夏普 智能静音空气净化器器', '1699.00', 'jd01.jpg', '空净新国标认证！国行保修！', '6');
INSERT INTO `pruduct` VALUES ('42', '爱丽思欧雅玛 空气循环扇PCFHD15N W白色', '89.00', 'jd02.jpg', null, '6');
INSERT INTO `pruduct` VALUES ('43', '网易严选 便携手持风扇', '99.00', 'jd03.jpg', '便携小巧，手持清风', '6');
INSERT INTO `pruduct` VALUES ('44', '考拉工厂店 无线护目LED台灯', '149.00', 'jd04.jpg', '简洁外形设计，无可视频闪', '6');
INSERT INTO `pruduct` VALUES ('45', '考拉工厂店 小型超声波香薰机', '149.00', 'jd05.jpg', '香薰机', '6');
INSERT INTO `pruduct` VALUES ('46', '网易智造 N520除螨吸尘器/其他组件', '29.00', 'jd06.jpg', '除螨吸尘 深层清洁 （维修政策：1年质保）', '6');
INSERT INTO `pruduct` VALUES ('47', 'dyson 戴森 除菌加湿器 AM10 白色', '3499.00', 'jd07.jpg', '紫外线杀菌技术', '6');
INSERT INTO `pruduct` VALUES ('48', '爱丽思欧雅玛 被褥干燥机 烘被机', '499.00', 'jd08.jpg', '无需干燥袋，快速便捷。', '6');
INSERT INTO `pruduct` VALUES ('49', 'IKE 耐克 JORDAN J23 LOW 运动休闲篮球鞋905288-010 男鞋', '479.00', 'yd01.jpg', null, '7');
INSERT INTO `pruduct` VALUES ('50', 'adidas 阿迪达斯 FLUIDCLOUD CLIMA 减震透气男子运动跑步鞋 BB0809', '369.00', 'yd02.jpg', null, '7');
INSERT INTO `pruduct` VALUES ('51', 'NIKE 耐克 REVOLUTION 3 透气缓震男子鞋休闲跑步鞋 819300-001', '329.00', 'yd03.jpg', null, '7');
INSERT INTO `pruduct` VALUES ('52', 'asics 亚瑟士 GEL-KAYANO 23 tjg943-0990 男子跑步鞋 橘红色', '1390.00', 'yd04.jpg', '亚瑟士鞋宽度较窄，建议买大半码至一码', '7');
INSERT INTO `pruduct` VALUES ('53', ' 阿迪达斯 AlphaBounce阿尔法男女情侣潮流透气运动跑步鞋', '329.00', 'yd05.jpg', '鞋码偏小半码，购买时请酌情选择尺码', '7');
INSERT INTO `pruduct` VALUES ('54', '耐克 AIR ZOOM WINFLO 4 ZOOM男子飞线气垫运动鞋\r\n售价', '599.00', 'yd06.jpg', null, '7');
INSERT INTO `pruduct` VALUES ('55', '耐克乔丹正代男子Air Jordan 5 AJ5火焰红 819171-101', '1399.00', 'yd07.jpg', null, '7');
INSERT INTO `pruduct` VALUES ('56', 'NIKE ROSHE ONE黑灰透气男子慢跑休闲鞋511881-010', '389.00', 'yd08.jpg', '请酌情买大半码至一码', '7');
INSERT INTO `pruduct` VALUES ('57', 'NARIS UP 娜丽丝 UV防晒喷雾 90克', '469.00', 'c1.jpg', '夏季防晒必备神器，不用涂抹，3秒防晒', '8');
INSERT INTO `pruduct` VALUES ('58', '尤妮佳 Silcot省1/2化妆水化妆棉 40枚 四盒装', '62.00', 'c02.jpg', 'COSME大赏排名靠前的超好用化妆棉！', '8');
INSERT INTO `pruduct` VALUES ('59', '资生堂 安耐晒小金瓶防晒露', '188.00', 'c03.jpg', null, '8');
INSERT INTO `pruduct` VALUES ('60', 'JMsolution jm水光蜂蜜面膜', '105.00', 'c04.jpg', '商品名称中的“蜂蜜”、“蜂胶”差异为翻译不同，请以英文名称为准。\r\n商品名称中的“蜂蜜”、“蜂胶”差异为翻译不同，请以英文名称为准。', '8');
INSERT INTO `pruduct` VALUES ('61', '苓康尔 男性维生素 120粒', '249.00', 'r01.jpg', '每日2次，每次1片，特殊情况请遵医嘱', '9');
INSERT INTO `pruduct` VALUES ('62', 'NIKE 耐克 AS W NK IMP LT JKT HD 运动茄克外套', '519.00', 'r02.jpg', null, '9');
INSERT INTO `pruduct` VALUES ('63', '塑造纤体】Nu-Lax果蔬纤维粉铂金版15×5.5g', '99.00', 'r03.jpg', '成人每天1-3次，每次一袋5.5克，加入水或果汁、奶昔中搅拌饮用', '9');
INSERT INTO `pruduct` VALUES ('64', ' 精梳全棉卡通床单式四件套 兔斯基与小伙伴', '399.00', 'r04.jpg', '开学好礼 精梳全棉 柔软透气 呵护宝宝肌肤', '9');
INSERT INTO `pruduct` VALUES ('65', 'Bear 小熊 打蛋器电动家用大功率手持搅拌机奶油机', '65.00', 'r05.jpg', '五档调速、双棒配置、立体式', '9');
INSERT INTO `pruduct` VALUES ('66', '迈克高仕 女士拼色pvc单肩斜挎包', '2699.00', 'r06.jpg', '此款 Selma 斜挎包的外形硬挺简约，经典设计搭配清晰的几何线条', '9');
INSERT INTO `pruduct` VALUES ('67', 'Beats Solo3 Wireless 头戴式无线蓝牙耳机', '1266.00', 'shi01.jpg', '40小时待机，充电5分钟使用3小时，无线聆听，出行伴侣', '10');
INSERT INTO `pruduct` VALUES ('68', '网易严选 怀抱休闲椅组合（皮款）', '3399.00', 'shi02.jpg', '（温馨提示：大件家具用品，不支持拒收，如若拒收，费用请用户自行承担）', '10');
INSERT INTO `pruduct` VALUES ('69', '博朗 宝宝耳温计 红外线耳温枪 IRT6520', '256.00', 'shi03.jpg', '【更换电池建议使用金霸王】耳温枪属于精密测温仪器，对周围环境温度敏感', '10');
INSERT INTO `pruduct` VALUES ('70', '彪马PUMA 珍珠 丝带 厚底松糕鞋女子板鞋', '639.00', 'shi04.jpg', 'SUEDE Platform Bling 女子厚底休闲鞋自 20 世纪 90 年代的吉拉吉运动', '10');
INSERT INTO `pruduct` VALUES ('71', '潘婷 无硅油去屑洗护套装 洗发水', '154.00', 'r07.jpg', '潘婷第1支黑炭能量水，0%硅油添加', '9');
INSERT INTO `pruduct` VALUES ('72', '3D足膜 60分 1对 M号', '128.00', 'r08.jpg', '无数人安利和拔草，红透网络的Baby Foot 3D足膜', '9');

-- ----------------------------
-- Table structure for zhuce
-- ----------------------------
DROP TABLE IF EXISTS `zhuce`;
CREATE TABLE `zhuce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuce
-- ----------------------------
INSERT INTO `zhuce` VALUES ('1', '', '', '2018-08-04 16:11:50');
INSERT INTO `zhuce` VALUES ('2', '', '', '2018-08-04 16:12:17');
INSERT INTO `zhuce` VALUES ('3', 'xiaowang', '12345', '2018-08-04 16:12:30');
INSERT INTO `zhuce` VALUES ('4', 'xiaoli', '123321', '2018-08-04 16:41:18');
INSERT INTO `zhuce` VALUES ('5', 'xx', '123', '2018-08-04 16:45:17');
INSERT INTO `zhuce` VALUES ('6', 'hh', '111', '2018-08-04 16:49:40');
INSERT INTO `zhuce` VALUES ('7', 'heiheihei', '123456', '2018-08-21 17:42:33');
INSERT INTO `zhuce` VALUES ('8', '', '', '2018-08-21 19:32:26');
INSERT INTO `zhuce` VALUES ('9', '', '', '2018-08-21 19:34:09');
INSERT INTO `zhuce` VALUES ('10', '', '', '2018-08-21 19:37:40');
INSERT INTO `zhuce` VALUES ('11', '', '', '2018-08-21 19:37:41');
INSERT INTO `zhuce` VALUES ('12', '', '', '2018-08-21 19:37:42');
INSERT INTO `zhuce` VALUES ('13', 'aaaaa', '111111', '2018-08-21 20:50:53');
INSERT INTO `zhuce` VALUES ('14', 'qqq', '1111', '2018-08-21 21:41:29');
INSERT INTO `zhuce` VALUES ('15', '4545', '1111', '2018-08-22 09:31:05');
INSERT INTO `zhuce` VALUES ('16', '3333', '1111', '2018-08-22 10:13:02');
INSERT INTO `zhuce` VALUES ('17', 'qqqq', '1234', '2018-08-22 10:15:15');
INSERT INTO `zhuce` VALUES ('18', 'maomao', '1234', '2018-08-22 10:27:51');
INSERT INTO `zhuce` VALUES ('19', '', '', '2018-08-24 15:54:25');
INSERT INTO `zhuce` VALUES ('20', 'qwer', '1234', '2018-08-24 19:13:39');
INSERT INTO `zhuce` VALUES ('21', 'laoxie', '12345', '2018-08-24 19:14:37');
INSERT INTO `zhuce` VALUES ('22', '1111', '12345', '2018-08-24 19:15:10');
INSERT INTO `zhuce` VALUES ('23', 'zzz', '111', '2018-08-24 22:32:54');
INSERT INTO `zhuce` VALUES ('24', 'we', '111', '2018-08-26 13:35:14');
INSERT INTO `zhuce` VALUES ('25', 'll', '11', '2018-08-26 13:48:34');
SET FOREIGN_KEY_CHECKS=1;
