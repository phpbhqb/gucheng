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
for($k=100;$k>=1;$k--){
    $listurl_caiji=str_replace('page=0','page='.$k,$listurl);
    file_put_contents($logpath.'/./caiji.log',"\t".'开始采集第'.$k.'页'."{$listurl_caiji}\t".
        date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
    $listcon=getcon($listurl_caiji);
    preg_match_all('/<img class="lazy" src="([^"]+)"/is',$listcon,$titlepic_match);
    preg_match_all('/<a class="h3-ellipsis" href="([^"]+)" target="_blank">([^<]+)/is',
        $listcon,$titleurl_match);
    preg_match_all('/<span class="line22 gray9">([^<]+)/is',$listcon,$smalltext_match);
    preg_match_all('/<li class="left tags-list">(.*?)<li class="right">/is',$listcon,$tagcon_match);
    preg_match_all('/<li class="left newleft m-news-timer"><i><\/i>([^<]+)/is',$listcon,$newstime_match);
    foreach($tagcon_match[1] as $key=>$tagcon){
        preg_match_all("/<a href='[^']+' target='_blank'>([^<]+)/is",$tagcon,$tag_match);
        $tag_arr=$tag_match[1];
        $tagstr=implode(',',$tag_arr);
        $titlepicurl=$host.$titlepic_match[1][$key];
        $title=addslashes($titleurl_match[2][$key]);
        $titleurl_copy=$host.$titleurl_match[1][$key];
        // 获取文章时间
        $newstime_date=$newstime_match[1][$key];
        $newstime_date_arr=explode('-',$newstime_date);
        if($newstime_date_arr[0]<5 && $k<5){
            $date='2019-'.$newstime_date;
        }else{
            $date='2018-'.$newstime_date;
        }

        /*preg_match('/\/uploads\/allimg\/([^\/]+)/is',$titlepicurl,$pictime_match);
        if($pictime_match[1]){
            $newstime=$lastdotime=strtotime('20'.$pictime_match[1].' '.date('H:i:s'));
        }else{
            $newstime=$lastdotime=time();
        }*/
        $newstime=$lastdotime=strtotime($date.' '.date('H:i:s'));
        $truetime=time();
        $day=date('Ymd',$newstime);
        $caijipath=ECMS_PATH.'d/file/niujin/'.$day.'/';
        if(!is_dir($caijipath)){
            mkdir($caijipath,0777,true);
        }
        if(!empty($titlepicurl)){
            $titlepicname=getUrlEnd($titlepicurl);
            $picsize=getdownload($titlepicurl,$listurl,$caijipath.$titlepicname);
            if(empty($picsize)){
                file_put_contents($logpath.'/./caiji.error.log',$titleurl_copy.
                    'titlepic size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
                continue;
            }else{
                $titlepic=$public_r['fileurl'].'niujin/'.$day.'/'.$titlepicname;
            }
            
        }else{
            file_put_contents($logpath.'/./caiji.error.log',$conurl.'titlepic url未获取到'."\t".
                date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
            continue;
        }

        $smalltext=$smalltext_match[1][$key];
        $titleexistquery=$empire->query("select 1 from {$dbtbpre}ecms_news where title='{$title}' 
            and classid=$classid");
        $titleexist=$empire->fetch($titleexistquery);

        if($titleexist){
            file_put_contents($logpath.'/./caiji.log',"\t".'采集第'.$k.'页'.$titleurl_copy.'时
                标题出现重复'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
            continue;
        }

        $con=getcon($titleurl_copy);
        preg_match('/<div class="con line30 font18">(.*?)\s*<\/div>\s*<div class="source">/is',
            $con,$newstext_match);
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
            if($img_name=='18-1P50F94435S1.png'){
                $newstext=str_replace($img_match[0][$img_key],'',$newstext);
            }else{
                $picsize=getdownload($img_url,getHost($img_url),$caijipath.$img_name);
                if(empty($picsize)){
                    file_put_contents($logpath.'/./caiji.error.log',$img_url.
                    ' pic size未获取到'."\t".$titleurl_copy."\t".date( 'Y-m-d H:i:s')."\n",
                    FILE_APPEND);
                    $newstext=str_replace($img_match[0][$img_key],'',$newstext);
                }else{
                    $caiji_img_url=$public_r['fileurl'].'niujin/'.$day.'/'.$img_name;
                    $newstext=str_replace($img,$caiji_img_url,$newstext);
                }
            }
        }
        $newstext=addslashes($newstext);
        //$newstext=addslashes($newstext_match[1]);

        $empire->query("insert into {$dbtbpre}ecms_news(classid,userid,username,newstime,truetime,
            lastdotime,stb,
        fstb,restb,title,ftitle,titlepic,havehtml,smalltext,keyboard,titlepic_alt,caijiurl) values
        ($classid,1,'admin',$newstime,$truetime,$lastdotime,1,1,1,'{$title}','{$title}','{$titlepic}'
        ,1,'{$smalltext}','{$tagstr}','{$title}','{$titleurl_copy}')");
        $newsid=$empire->lastid();
        $titleurl=$public_r['newsurl'].$class_r[$classid]['classpath'].'/'.$newsid.'.html';
        $filename=$newsid;
        $empire->query("update {$dbtbpre}ecms_news set titleurl='{$titleurl}',filename='{$filename}' 
            where id=$newsid");
        $empire->query("insert into {$dbtbpre}ecms_news_index(id,classid,checked,newstime,truetime
            ,lastdotime,havehtml) values(
        $newsid,$classid,1,$newstime,$truetime,$lastdotime,1)");
        $empire->query("insert into {$dbtbpre}ecms_news_data_1(id,classid,infotags,befrom,newstext) 
            values($newsid,$classid,'{$tagstr}','牛金财经 ','{$newstext}')");
        GetHtml($classid,$newsid,'',0);

        file_put_contents($logpath.'/./caiji.log',"\t".$titleurl_copy."的内容采集完毕" ."\t".
            date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
        sleep(randtime());
    }
}