<?php

/**
 * @Author: weibo.yao
 * @Date:   2019-05-28 16:50:43
 * @Last Modified time: 2019-05-28 17:23:34
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
require($path.'/./caijifunc.php');

$logpath=$path.'/log/niujin/'.date('Ymd');
if(!is_dir($logpath)){
    mkdir($logpath,0777,true);
}
$link=db_connect();
$empire=new mysqlquery();
$listurl='http://www.niujin.com/plus/ajax.php?action=toutiao&page=0&type=0';
$host=getHost($listurl);
for($k=1;$k<=100;$k++){
    $listurl_caiji=str_replace('page=0','page='.$k,$listurl);
    $listcon=getcon($listurl_caiji);
    preg_match_all('/<img class="lazy" src="([^"]+)"/isU',$listcon,$titlepic_match);
    preg_match_all('/<a class="h3-ellipsis" href="([^"]+)" target="_blank">([^<]+)/isU',
        $listcon,$titleurl_match);
    preg_match_all('/<span class="line22 gray9">([^<]+)/isU',$listcon,$smalltext_match);
    preg_match_all('/<li class="left tags-list">(.*?)<li class="right">/isu',$listcon,$tagcon_match);
    foreach($tagcon_match[1] as $tagcon){
        
    }
    print_r($tagcon_match);exit();
}