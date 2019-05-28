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
$classid=12;
for($k=1;$k<=100;$k++){
    $listurl_caiji=str_replace('page=0','page='.$k,$listurl);
    $listcon=getcon($listurl_caiji);
    preg_match_all('/<img class="lazy" src="([^"]+)"/is',$listcon,$titlepic_match);
    preg_match_all('/<a class="h3-ellipsis" href="([^"]+)" target="_blank">([^<]+)/is',
        $listcon,$titleurl_match);
    preg_match_all('/<span class="line22 gray9">([^<]+)/is',$listcon,$smalltext_match);
    preg_match_all('/<li class="left tags-list">(.*?)<li class="right">/is',$listcon,$tagcon_match);
    foreach($tagcon_match[1] as $key=>$tagcon){
        preg_match_all("/<a href='[^']+' target='_blank'>([^<]+)/is",$tagcon,$tag_match);
        $tag_arr=$tag_match[1];
        $tagstr=implode(',',$tag_arr);
        $titlepic=$host.$titlepic_match[1][$key];
        $title=addslashes($titleurl_match[2][$key]);
        $titleurl_copy=$host.$titleurl_match[1][$key];

        $smalltext=$smalltext_match[1][$key];
        $titleexistquery=$empire->query("select 1 from {$dbtbpre}ecms_news where title='{$title}' and classid=$classid");
        $titleexist=$empire->fetch($titleexistquery);
        if($titleexist){
            file_put_contents($logpath.'/./caiji.log',"\t".'采集第'.$k.'页'.$titleurl_copy.'时标题出现重复'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
            continue;
        }
        preg_match('/\/uploads\/allimg\/([^\/]+)/is',$titlepic,$pictime_match);
        if($pictime_match[1]){
            $newstime=$lastdotime=strtotime('20'.$pictime_match[1].' '.date('H:i:s'));
        }else{
            $newstime=$lastdotime=time();
        }
        
        $truetime=time();
        $con=getcon($titleurl_copy);
        preg_match('/<div class="con line30 font18">(.*?)\s*<\/div>\s*<div class="source">/is',$con,$newstext_match);
        $newstext=addslashes($newstext_match[1]);

        $empire->query("insert into {$dbtbpre}ecms_news(classid,userid,username,newstime,truetime,lastdotime,stb,
        fstb,restb,title,ftitle,titlepic,havehtml,smalltext,keyboard) values($classid,1,'admin',$newstime,$truetime,$lastdotime,1,1,1,'{$title}','{$title}','{$titlepic}',1,'{$smalltext}','{$tagstr}')");
        $newsid=$empire->lastid();
        $titleurl=$public_r['newsurl'].$class_r[$classid]['classpath'].'/'.$newsid.'.html';
        $filename=$newsid;
        $empire->query("update {$dbtbpre}ecms_news set titleurl='{$titleurl}',filename='{$filename}' where id=$newsid");
        $empire->query("insert into {$dbtbpre}ecms_news_index(id,classid,checked,newstime,truetime,lastdotime,havehtml) values(
        $newsid,$classid,1,$newstime,$truetime,$lastdotime,1)");
        $empire->query("insert into {$dbtbpre}ecms_news_data_1(id,classid,infotags,befrom,newstext) values($newsid,$classid,'{$tagstr}','牛金财经 ','{$newstext}')");

        file_put_contents($logpath.'/./caiji.log',"\t".$titleurl_copy."的内容采集完毕" ."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
        sleep(randtime());
    }
}