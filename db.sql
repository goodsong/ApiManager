SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '接口编号',
  `aid` int(11) DEFAULT '0' COMMENT '接口分类id',
  `num` varchar(100) DEFAULT NULL COMMENT '接口编号',
  `url` varchar(240) DEFAULT NULL COMMENT '请求地址',
  `name` varchar(100) DEFAULT NULL COMMENT '接口名',
  `des` varchar(300) DEFAULT NULL COMMENT '接口描述',
  `parameter` text COMMENT '请求参数{所有的主求参数,以json格式在此存放}',
  `return_des` text COMMENT '返回值说明',
  `return_example` text COMMENT '返回值样例',
  `lasttime` int(11) unsigned DEFAULT NULL COMMENT '提后操作时间',
  `lastuid` int(11) unsigned DEFAULT NULL COMMENT '最后修改uid',
  `status` int(11) unsigned NOT NULL DEFAULT '1',
  `isdel` tinyint(4) unsigned DEFAULT '0' COMMENT '{0:正常,1:删除}',
  `type` char(11) DEFAULT NULL COMMENT '请求方式',
  `ord` int(11) DEFAULT '0' COMMENT '排序(值越大,越靠前)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='接口明细表';


DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户',
  `aid` int(11) DEFAULT NULL COMMENT '接口分类权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限表 - 若用户为普通管理员时，读此表获取权限';


DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `aid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cname` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `cdesc` varchar(200) NOT NULL DEFAULT '' COMMENT '分类描述',
  `isdel` int(11) DEFAULT '0' COMMENT '是否删除{0:正常,1删除}',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='接口分类表';


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nice_name` char(20) DEFAULT NULL COMMENT '昵称',
  `login_name` char(20) DEFAULT NULL COMMENT '登录名',
  `last_time` int(11) DEFAULT '0' COMMENT '最近登录时间',
  `login_pwd` varchar(32) DEFAULT NULL COMMENT '登录密码',
  `isdel` int(11) DEFAULT '0' COMMENT '{0正常,1:删除}',
  `issuper` int(11) DEFAULT '0' COMMENT '{0:普通管理员,1超级管理员}',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

INSERT INTO `user` (`id`, `nice_name`, `login_name`, `last_time`, `login_pwd`, `isdel`, `issuper`) VALUES
(1,	'admin',	'admin',	1445573696,	'654321',	0,	1),
(2,	'root',	'root',	1435575693,	'123456',	0,	1);

-- 2015-10-24 11:39:28
