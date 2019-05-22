CREATE TABLE IF NOT EXISTS `gc_enewsfocus` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `picurl` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ftime` int(11) DEFAULT NULL,
  `target` varchar(10) DEFAULT NULL,
  `classid` smallint(5) DEFAULT NULL,
  `fsort` smallint(6) DEFAULT NULL COMMENT '排序',
  `smallpicurl` varchar(200) NOT NULL DEFAULT '' COMMENT '图片url',
  `comment` varchar(500) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

CREATE TABLE IF NOT EXISTS `gc_enewsfocusclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='轮播图分类';
