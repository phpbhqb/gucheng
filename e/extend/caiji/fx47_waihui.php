<?php

/**
 * @Author: weibo.yao
 * @Date:   2019-05-28 16:50:43
 * @Last Modified time: 2019-06-25 10:18:19
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
$editor=1;
include(ECMS_PATH."e/class/gd.php");

$logpath=$path.'/log/fx47/'.date('Ymd');
if(!is_dir($logpath)){
    mkdir($logpath,0777,true);
}
$link=db_connect();
$empire=new mysqlquery();
$listurl='http://fx47.com/e/extend/rolling/list.php?classid=27&page=1';
$host=getHost($listurl);
$classid=13;
//$classid=1;
for($k=18;$k>=1;$k--){
    $listurl_caiji=str_replace('page=1','page='.$k,$listurl);
    file_put_contents($logpath.'/./caiji_'.$classid.'.log',"\t".'开始采集第'.$k.'页'."{$listurl_caiji}\t".
        date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
    $listcon=getcon($listurl_caiji);
    preg_match_all('/<div class="viewimg"><a href="([^"]+)"><img src="([^"]+)"/',$listcon,$titlepic_match);
    preg_match_all('/<h3><a href="[^"]+">([^<]+)/', $listcon, $title_match);
    preg_match_all('/<p>([^<]+)/',$listcon,$smalltext_match);
    preg_match_all('/<span class="timeago">([^<]+)/',$listcon,$newstime_match);



    foreach($title_match[1] as $key=>$title){
        
        $titlepicurl=$titlepic_match[2][$key];
        $title=addslashes($title);
        $titleurl_copy=$host.$titlepic_match[1][$key];
        
        $newstime=$lastdotime=strtotime($newstime_match[1][$key]);
        $truetime=time();
        $day=date('Ymd',$newstime);
        $caijipath=ECMS_PATH.'d/file/fx47/'.$day.'/';
        if(!is_dir($caijipath)){
            mkdir($caijipath,0777,true);
        }
        if(!empty($titlepicurl)){
            $titlepicname=getUrlEnd($titlepicurl);
            $picsize=getdownload($titlepicurl,$listurl,$caijipath.$titlepicname);
            if(empty($picsize)){
                file_put_contents($logpath.'/./caiji_'.$classid.'.error.log',$titleurl_copy.
                    'titlepic size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
                continue;
            }else{
                GetMyMarkImg($caijipath.$titlepicname);
                $titlepic=$public_r['fileurl'].'fx47/'.$day.'/'.$titlepicname;
            }
            
        }else{
            file_put_contents($logpath.'/./caiji_'.$classid.'.error.log',$conurl.'titlepic url未获取到'."\t".
                date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
            continue;
        }

        $smalltext=str_replace('...','',$smalltext_match[1][$key]);
        $titleexistquery=$empire->query("select 1 from {$dbtbpre}ecms_news where title='{$title}' 
            and classid=$classid");
        $titleexist=$empire->fetch($titleexistquery);

        if($titleexist){
            file_put_contents($logpath.'/./caiji_'.$classid.'.error.log',"\t".'采集第'.$k.'页'.$titleurl_copy.'时
                标题出现重复'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
            continue;
        }

        $con=getcon($titleurl_copy);
        //echo $con;
        preg_match('/<div class="article-content">(.*?)<\/div>\s*<div class="vote">/is',$con,$newstext_match);
        $newstext=$newstext_match[1];
        preg_match_all('/<img[^>]*?src="([^"]+)"[^>]*>/is',
            $newstext,$img_match);
        foreach($img_match[1] as $img_key => $img){
            if(strstr($img,'https://')!==false || strstr($img,'http://')!==false){
                $img_url=$img;
            }else{
                $img_url=$host.$img;
            }
            $img_name=getUrlEnd($img);
            
            $picsize=getdownload($img_url,getHost($img_url),$caijipath.$img_name);
            if(empty($picsize)){
                file_put_contents($logpath.'/./caiji_'.$classid.'.error.log',$img_url.
                ' pic size未获取到'."\t".$titleurl_copy."\t".date( 'Y-m-d H:i:s')."\n",
                FILE_APPEND);
                $newstext=str_replace($img_match[0][$img_key],'',$newstext);
            }else{
                GetMyMarkImg($caijipath.$img_name);
                $caiji_img_url=$public_r['fileurl'].'fx47/'.$day.'/'.$img_name;
                $newstext=str_replace($img,$caiji_img_url,$newstext);
            }
            
        }
        $newstext=addslashes($newstext);
        //$newstext=addslashes($newstext_match[1]);

        $empire->query("insert into {$dbtbpre}ecms_news(classid,userid,username,newstime,truetime,
            lastdotime,stb,
        fstb,restb,title,ftitle,titlepic,havehtml,smalltext,keyboard,titlepic_alt,caijiurl) values
        ($classid,1,'admin',$newstime,$truetime,$lastdotime,1,1,1,'{$title}','{$title}','{$titlepic}'
        ,1,'{$smalltext}','','{$title}','{$titleurl_copy}')");
        $newsid=$empire->lastid();
        $titleurl=$public_r['newsurl'].$class_r[$classid]['classpath'].'/'.$newsid.'.html';
        $filename=$newsid;
        $empire->query("update {$dbtbpre}ecms_news set titleurl='{$titleurl}',filename='{$filename}' 
            where id=$newsid");
        $empire->query("insert into {$dbtbpre}ecms_news_index(id,classid,checked,newstime,truetime
            ,lastdotime,havehtml) values(
        $newsid,$classid,1,$newstime,$truetime,$lastdotime,1)");
        $empire->query("insert into {$dbtbpre}ecms_news_data_1(id,classid,infotags,befrom,newstext) 
            values($newsid,$classid,'','分享财经','{$newstext}')");
        //GetHtml($classid,$newsid,'',0);

        file_put_contents($logpath.'/./caiji_'.$classid.'.log',"\t".$titleurl_copy."的内容采集完毕" ."\t".
            date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
        sleep(randtime());
    }
}