<?php

/**
 * @Author: weibo.yao
 * @Date:   2019-05-28 16:50:43
 * @Last Modified time: 2019-05-29 16:06:02
 */
set_time_limit(0);
ini_set('memory_limit','-1');
date_default_timezone_set('Asia/Shanghai');
$path=dirname(__FILE__);
require($path.'/../../class/connect.php');
require($path.'/../../class/db_sql.php');
require($path.'/../../class/functions.php');
require $path.'/../'.LoadLang("pub/fun.php");
require($path."/../../class/t_functions.php");
require($path.'/../../data/dbcache/class.php');
require($path."/../../class/hinfofun.php");
require($path."/../../class/chtmlfun.php");
include(ECMS_PATH."e/class/gd.php");
GetMyMarkImg(ECMS_PATH.'d/file/niujin/20181227/163-1Q22G05341b0.jpg');