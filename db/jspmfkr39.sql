/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : jspmfkr39

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-12-28 17:49:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bangongshebei
-- ----------------------------
DROP TABLE IF EXISTS `bangongshebei`;
CREATE TABLE `bangongshebei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='办公设备';

-- ----------------------------
-- Records of bangongshebei
-- ----------------------------
INSERT INTO `bangongshebei` VALUES ('1', '2020-12-28 17:11:13', '设备编号1', '设备名称1', '分类1', 'http://localhost:8080/jspmfkr39/upload/bangongshebei_tupian1.jpg', '规格1', '品牌1', '1', '详情1');
INSERT INTO `bangongshebei` VALUES ('2', '2020-12-28 17:11:13', '设备编号2', '设备名称2', '分类2', 'http://localhost:8080/jspmfkr39/upload/bangongshebei_tupian2.jpg', '规格2', '品牌2', '2', '详情2');
INSERT INTO `bangongshebei` VALUES ('3', '2020-12-28 17:11:13', '设备编号3', '设备名称3', '分类3', 'http://localhost:8080/jspmfkr39/upload/bangongshebei_tupian3.jpg', '规格3', '品牌3', '3', '详情3');
INSERT INTO `bangongshebei` VALUES ('5', '2020-12-28 17:11:13', '设备编号5', '设备名称5', '分类5', 'http://localhost:8080/jspmfkr39/upload/bangongshebei_tupian5.jpg', '规格5', '品牌5', '5', '详情5');
INSERT INTO `bangongshebei` VALUES ('6', '2020-12-28 17:11:13', '设备编号6', '设备名称6', '分类6', 'http://localhost:8080/jspmfkr39/upload/bangongshebei_tupian6.jpg', '规格6', '品牌6', '6', '详情6');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/jspmfkr39/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/jspmfkr39/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/jspmfkr39/upload/picture3.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/jspmfkr39/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/jspmfkr39/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for gongsigonggao
-- ----------------------------
DROP TABLE IF EXISTS `gongsigonggao`;
CREATE TABLE `gongsigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公司公告';

-- ----------------------------
-- Records of gongsigonggao
-- ----------------------------
INSERT INTO `gongsigonggao` VALUES ('1', '2020-12-28 17:11:13', '公告标题1', '公告类型1', 'http://localhost:8080/jspmfkr39/upload/gongsigonggao_tupian1.jpg', '内容1', '2020-12-28');
INSERT INTO `gongsigonggao` VALUES ('2', '2020-12-28 17:11:13', '公告标题2', '公告类型2', 'http://localhost:8080/jspmfkr39/upload/gongsigonggao_tupian2.jpg', '内容2', '2020-12-28');
INSERT INTO `gongsigonggao` VALUES ('3', '2020-12-28 17:11:13', '公告标题3', '公告类型3', 'http://localhost:8080/jspmfkr39/upload/gongsigonggao_tupian3.jpg', '内容3', '2020-12-28');
INSERT INTO `gongsigonggao` VALUES ('4', '2020-12-28 17:11:13', '公告标题4', '公告类型4', 'http://localhost:8080/jspmfkr39/upload/gongsigonggao_tupian4.jpg', '内容4', '2020-12-28');
INSERT INTO `gongsigonggao` VALUES ('5', '2020-12-28 17:11:13', '公告标题5', '公告类型5', 'http://localhost:8080/jspmfkr39/upload/gongsigonggao_tupian5.jpg', '内容5', '2020-12-28');
INSERT INTO `gongsigonggao` VALUES ('6', '2020-12-28 17:11:13', '公告标题6', '公告类型6', 'http://localhost:8080/jspmfkr39/upload/gongsigonggao_tupian6.jpg', '内容6', '2020-12-28');

-- ----------------------------
-- Table structure for shebeifenlei
-- ----------------------------
DROP TABLE IF EXISTS `shebeifenlei`;
CREATE TABLE `shebeifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1609148271950 DEFAULT CHARSET=utf8 COMMENT='设备分类';

-- ----------------------------
-- Records of shebeifenlei
-- ----------------------------
INSERT INTO `shebeifenlei` VALUES ('1', '2020-12-28 17:11:13', '分类1');
INSERT INTO `shebeifenlei` VALUES ('2', '2020-12-28 17:11:13', '分类2');
INSERT INTO `shebeifenlei` VALUES ('3', '2020-12-28 17:11:13', '分类3');
INSERT INTO `shebeifenlei` VALUES ('4', '2020-12-28 17:11:13', '分类4');
INSERT INTO `shebeifenlei` VALUES ('5', '2020-12-28 17:11:13', '分类5');
INSERT INTO `shebeifenlei` VALUES ('6', '2020-12-28 17:11:13', '分类6');

-- ----------------------------
-- Table structure for shebeishenqing
-- ----------------------------
DROP TABLE IF EXISTS `shebeishenqing`;
CREATE TABLE `shebeishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shenqingbiaoti` varchar(200) DEFAULT NULL COMMENT '申请标题',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shenqingshuliang` int(11) NOT NULL COMMENT '申请数量',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `shenqingfujian` varchar(200) DEFAULT NULL COMMENT '申请附件',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609148579617 DEFAULT CHARSET=utf8 COMMENT='设备申请';

-- ----------------------------
-- Records of shebeishenqing
-- ----------------------------
INSERT INTO `shebeishenqing` VALUES ('1', '2020-12-28 17:11:13', '设备编号1', '申请标题1', '设备名称1', '1', '1', '申请内容1', '2020-12-28', '2020-12-28', '备注1', '', '员工工号1', '员工姓名1', '部门1', '职位1', '否', '');
INSERT INTO `shebeishenqing` VALUES ('2', '2020-12-28 17:11:13', '设备编号2', '申请标题2', '设备名称2', '2', '2', '申请内容2', '2020-12-28', '2020-12-28', '备注2', '', '员工工号2', '员工姓名2', '部门2', '职位2', '否', '');
INSERT INTO `shebeishenqing` VALUES ('3', '2020-12-28 17:11:13', '设备编号3', '申请标题3', '设备名称3', '3', '3', '申请内容3', '2020-12-28', '2020-12-28', '备注3', '', '员工工号3', '员工姓名3', '部门3', '职位3', '否', '');
INSERT INTO `shebeishenqing` VALUES ('4', '2020-12-28 17:11:13', '设备编号4', '申请标题4', '设备名称4', '4', '4', '申请内容4', '2020-12-28', '2020-12-28', '备注4', '', '员工工号4', '员工姓名4', '部门4', '职位4', '否', '');
INSERT INTO `shebeishenqing` VALUES ('5', '2020-12-28 17:11:13', '设备编号5', '申请标题5', '设备名称5', '5', '5', '申请内容5', '2020-12-28', '2020-12-28', '备注5', '', '员工工号5', '员工姓名5', '部门5', '职位5', '否', '');
INSERT INTO `shebeishenqing` VALUES ('6', '2020-12-28 17:11:13', '设备编号6', '申请标题6', '设备名称6', '6', '6', '申请内容6', '2020-12-28', '2020-12-28', '备注6', '', '员工工号6', '员工姓名6', '部门6', '职位6', '否', '');
INSERT INTO `shebeishenqing` VALUES ('1609147147773', '2020-12-28 17:19:07', '设备编号1', '22222222', '设备名称1', '1', '0', '2222', '2020-12-31', '2021-01-01', '', '', '001', '小吴', '人事部', '专员', '否', null);
INSERT INTO `shebeishenqing` VALUES ('1609148007067', '2020-12-28 17:33:26', '设备编号1', '', '设备名称1', '1', '1', '', '2020-12-31', null, '', '', '001', '小吴', '人事部', '专员', '是', '这里确认回复员工的设备使用申请');
INSERT INTO `shebeishenqing` VALUES ('1609148579616', '2020-12-28 17:42:59', '设备编号2', '222222', '设备名称2', '2', '1', '33333', '2020-12-31', '2021-01-02', '', '', '001', '小吴', '人事部', '专员', '否', null);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', '6vax7zezcdzl8zhqh1g74vozlv8taww7', '2020-12-28 17:14:01', '2020-12-28 18:37:07');
INSERT INTO `token` VALUES ('2', '1', '001', 'yuangong', '员工', 'lm2g8ds7awl6urclgh9ismbyk1q8cvpw', '2020-12-28 17:17:40', '2020-12-28 18:45:26');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-12-28 17:11:13');

-- ----------------------------
-- Table structure for yuangong
-- ----------------------------
DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='员工';

-- ----------------------------
-- Records of yuangong
-- ----------------------------
INSERT INTO `yuangong` VALUES ('1', '2020-12-28 17:11:13', '001', '001', '小吴', '男', 'http://localhost:8080/jspmfkr39/upload/yuangong_touxiang1.jpg', '人事部', '专员', '13823888881', '环市北路156号');
INSERT INTO `yuangong` VALUES ('2', '2020-12-28 17:11:13', '002', '002', '小邹', '男', 'http://localhost:8080/jspmfkr39/upload/yuangong_touxiang2.jpg', '外勤部', '专员', '13823888882', '环市南路165号');
INSERT INTO `yuangong` VALUES ('3', '2020-12-28 17:11:13', '员工3', '123456', '员工姓名3', '男', 'http://localhost:8080/jspmfkr39/upload/yuangong_touxiang3.jpg', '部门3', '职位3', '13823888883', '家庭住址3');
INSERT INTO `yuangong` VALUES ('4', '2020-12-28 17:11:13', '员工4', '123456', '员工姓名4', '男', 'http://localhost:8080/jspmfkr39/upload/yuangong_touxiang4.jpg', '部门4', '职位4', '13823888884', '家庭住址4');
INSERT INTO `yuangong` VALUES ('5', '2020-12-28 17:11:13', '员工5', '123456', '员工姓名5', '男', 'http://localhost:8080/jspmfkr39/upload/yuangong_touxiang5.jpg', '部门5', '职位5', '13823888885', '家庭住址5');
INSERT INTO `yuangong` VALUES ('6', '2020-12-28 17:11:13', '员工6', '123456', '员工姓名6', '男', 'http://localhost:8080/jspmfkr39/upload/yuangong_touxiang6.jpg', '部门6', '职位6', '13823888886', '家庭住址6');

-- ----------------------------
-- Table structure for yuangonggongzi
-- ----------------------------
DROP TABLE IF EXISTS `yuangonggongzi`;
CREATE TABLE `yuangonggongzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongzidanhao` varchar(200) DEFAULT NULL COMMENT '工资单号',
  `gongzimingcheng` varchar(200) DEFAULT NULL COMMENT '工资名称',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `nianfen` int(11) DEFAULT NULL COMMENT '年份',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `dixin` int(11) NOT NULL COMMENT '底薪',
  `jixiao` int(11) NOT NULL COMMENT '绩效',
  `butie` int(11) NOT NULL COMMENT '补贴',
  `jiangli` int(11) NOT NULL COMMENT '奖励',
  `jiabangongzi` int(11) NOT NULL COMMENT '加班工资',
  `gonglinggongzi` int(11) NOT NULL COMMENT '工龄工资',
  `wuxianyijin` int(11) NOT NULL COMMENT '五险一金',
  `kaoqinkoukuan` int(11) NOT NULL COMMENT '考勤扣款',
  `qitakoukuan` int(11) NOT NULL COMMENT '其他扣款',
  `shifagongzi` int(11) DEFAULT NULL COMMENT '实发工资',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongzidanhao` (`gongzidanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609148344853 DEFAULT CHARSET=utf8 COMMENT='员工工资';

-- ----------------------------
-- Records of yuangonggongzi
-- ----------------------------
INSERT INTO `yuangonggongzi` VALUES ('1609146968123', '2020-12-28 17:16:07', '1609146942', 'A工资', '十一月份', '2020', '001', '小吴', '人事部', '专员', '2200', '1900', '800', '600', '800', '200', '600', '100', '0', '5800', '');
INSERT INTO `yuangonggongzi` VALUES ('1609147036780', '2020-12-28 17:17:16', '1609146979', 'B工资', '十一月份', '2020', '002', '小邹', '外勤部', '专员', '2500', '1600', '800', '1200', '600', '100', '600', '100', '0', '6100', '');
INSERT INTO `yuangonggongzi` VALUES ('1609148344852', '2020-12-28 17:39:04', '1609148320', 'AA工资', '十一月份', '2020', '员工3', '员工姓名3', '部门3', '职位3', '2200', '1600', '500', '1000', '600', '100', '600', '0', '0', '5400', '');

-- ----------------------------
-- Table structure for yuangongjiankang
-- ----------------------------
DROP TABLE IF EXISTS `yuangongjiankang`;
CREATE TABLE `yuangongjiankang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaotimingcheng` varchar(200) DEFAULT NULL COMMENT '标题名称',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `shifoubushi` varchar(200) DEFAULT NULL COMMENT '是否不适',
  `shifoujiuyi` varchar(200) DEFAULT NULL COMMENT '是否就医',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609148677325 DEFAULT CHARSET=utf8 COMMENT='员工健康';

-- ----------------------------
-- Records of yuangongjiankang
-- ----------------------------
INSERT INTO `yuangongjiankang` VALUES ('1', '2020-12-28 17:11:13', '标题名称1', '员工工号1', '员工姓名1', '部门1', '职位1', '体温1', '是', '是', '备注1', '2020-12-28', '否', '');
INSERT INTO `yuangongjiankang` VALUES ('2', '2020-12-28 17:11:13', '标题名称2', '员工工号2', '员工姓名2', '部门2', '职位2', '体温2', '是', '是', '备注2', '2020-12-28', '否', '');
INSERT INTO `yuangongjiankang` VALUES ('3', '2020-12-28 17:11:13', '标题名称3', '员工工号3', '员工姓名3', '部门3', '职位3', '体温3', '是', '是', '备注3', '2020-12-28', '否', '');
INSERT INTO `yuangongjiankang` VALUES ('4', '2020-12-28 17:11:13', '标题名称4', '员工工号4', '员工姓名4', '部门4', '职位4', '体温4', '是', '是', '备注4', '2020-12-28', '否', '');
INSERT INTO `yuangongjiankang` VALUES ('5', '2020-12-28 17:11:13', '标题名称5', '员工工号5', '员工姓名5', '部门5', '职位5', '体温5', '是', '是', '备注5', '2020-12-28', '否', '');
INSERT INTO `yuangongjiankang` VALUES ('6', '2020-12-28 17:11:13', '标题名称6', '员工工号6', '员工姓名6', '部门6', '职位6', '体温6', '是', '是', '备注6', '2020-12-28', '是', '这里查看员工的健康管理');
INSERT INTO `yuangongjiankang` VALUES ('1609148677324', '2020-12-28 17:44:37', '这里添加员工自己的健康信息', '001', '小吴', '人事部', '专员', '37.8°', '否', '否', '11', '2021-01-01', '否', null);

-- ----------------------------
-- Table structure for yuangongkaoqin
-- ----------------------------
DROP TABLE IF EXISTS `yuangongkaoqin`;
CREATE TABLE `yuangongkaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoqinbianhao` varchar(200) DEFAULT NULL COMMENT '考勤编号',
  `kaoqinmingcheng` varchar(200) NOT NULL COMMENT '考勤名称',
  `kaoqinleixing` varchar(200) DEFAULT NULL COMMENT '考勤类型',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kaoqinbianhao` (`kaoqinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609147098490 DEFAULT CHARSET=utf8 COMMENT='员工考勤';

-- ----------------------------
-- Records of yuangongkaoqin
-- ----------------------------
INSERT INTO `yuangongkaoqin` VALUES ('1609147081851', '2020-12-28 17:18:01', '1609147068', '考勤', '签到', '2021-01-06 08:00:47', '', '001', '小吴', '人事部', '专员', '13823888881', '否', '这里审核员工考勤');
INSERT INTO `yuangongkaoqin` VALUES ('1609147098489', '2020-12-28 17:18:17', '1609147087', '考勤1', '签离', '2020-12-30 18:00:07', '', '001', '小吴', '人事部', '专员', '13823888881', '否', null);

-- ----------------------------
-- Table structure for yuangongliuyan
-- ----------------------------
DROP TABLE IF EXISTS `yuangongliuyan`;
CREATE TABLE `yuangongliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuyanbiaoti` varchar(200) NOT NULL COMMENT '留言标题',
  `liuyanneirong` longtext COMMENT '留言内容',
  `liuyanriqi` date DEFAULT NULL COMMENT '留言日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='员工留言';

-- ----------------------------
-- Records of yuangongliuyan
-- ----------------------------
INSERT INTO `yuangongliuyan` VALUES ('1', '2020-12-28 17:11:13', '留言标题1', '留言内容1', '2020-12-28', '备注1', '员工工号1', '员工姓名1', '部门1', '职位1', '联系电话1', '否', '');
INSERT INTO `yuangongliuyan` VALUES ('2', '2020-12-28 17:11:13', '留言标题2', '留言内容2', '2020-12-28', '备注2', '员工工号2', '员工姓名2', '部门2', '职位2', '联系电话2', '否', '');
INSERT INTO `yuangongliuyan` VALUES ('3', '2020-12-28 17:11:13', '留言标题3', '留言内容3', '2020-12-28', '备注3', '员工工号3', '员工姓名3', '部门3', '职位3', '联系电话3', '否', '');
INSERT INTO `yuangongliuyan` VALUES ('4', '2020-12-28 17:11:13', '留言标题4', '留言内容4', '2020-12-28', '备注4', '员工工号4', '员工姓名4', '部门4', '职位4', '联系电话4', '否', '');
INSERT INTO `yuangongliuyan` VALUES ('5', '2020-12-28 17:11:13', '留言标题5', '留言内容5', '2020-12-28', '备注5', '员工工号5', '员工姓名5', '部门5', '职位5', '联系电话5', '否', '');
INSERT INTO `yuangongliuyan` VALUES ('6', '2020-12-28 17:11:13', '留言标题6', '留言内容6', '2020-12-28', '备注6', '员工工号6', '员工姓名6', '部门6', '职位6', '联系电话6', '是', '员工留言在这里确认回复');

-- ----------------------------
-- Table structure for yuangongqingjia
-- ----------------------------
DROP TABLE IF EXISTS `yuangongqingjia`;
CREATE TABLE `yuangongqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiabianhao` varchar(200) DEFAULT NULL COMMENT '请假编号',
  `qingjiabiaoti` varchar(200) NOT NULL COMMENT '请假标题',
  `qingjianeirong` longtext COMMENT '请假内容',
  `qingjiashijian` date DEFAULT NULL COMMENT '请假时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `qingjiafujian` varchar(200) DEFAULT NULL COMMENT '请假附件',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingjiabianhao` (`qingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609147115139 DEFAULT CHARSET=utf8 COMMENT='员工请假';

-- ----------------------------
-- Records of yuangongqingjia
-- ----------------------------
INSERT INTO `yuangongqingjia` VALUES ('1609147115138', '2020-12-28 17:18:35', '1609147102', 'XX请假', '11111111\r\n', '2020-12-31', '', 'http://localhost:8080/jspmfkr39/file/download?fileName=1609147112463.docx', '001', '小吴', '人事部', '专员', '13823888881', '是', '这里查看审核员工请假');
