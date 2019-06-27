<?php

/**
 * @Author: weibo.yao
 * @Date:   2019-05-28 16:50:43
 * @Last Modified time: 2019-06-27 10:34:26
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

$logpath=$path.'/log/zhicheng/'.date('Ymd');
if(!is_dir($logpath)){
    mkdir($logpath,0777,true);
}
$link=db_connect();
$empire=new mysqlquery();
$listurl='http://www.zhicheng.com/index.php?m=seahot&c=index&a=get_more_list&callback=jsonpshowdata&catid=15&page=1&pagesize=10&_=1561467903720';
$host=getHost($listurl);
$classid=1;
//$classid=1;
for($k=200;$k>=1;$k--){
    $listurl_caiji=str_replace('page=1','page='.$k,$listurl);
    file_put_contents($logpath.'/./caiji_'.$classid.'.log',"\t".'开始采集第'.$k.'页'."{$listurl_caiji}\t".
        date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
    $listcon=getcon($listurl_caiji);
    //echo $listcon;
    preg_match('/jsonpshowdata\((.*)\)/',$listcon,$jsonstr_match);
    $jsonstr=$jsonstr_match[1];
    $json_arr=json_decode($jsonstr,true);

    //print_r($json_arr);exit();
    /*preg_match_all('/<div class="viewimg"><a href="([^"]+)"><img src="([^"]+)"/',$listcon,$titlepic_match);
    preg_match_all('/<h3><a href="[^"]+">([^<]+)/', $listcon, $title_match);
    preg_match_all('/<p>([^<]+)/',$listcon,$smalltext_match);
    preg_match_all('/<span class="timeago">([^<]+)/',$listcon,$newstime_match);*/



    foreach($json_arr['data'] as $json_one){
        
        $titlepicurl=str_replace('//','',$json_one['thumb']);
        $title=addslashes($json_one['title']);
        $titleurl_copy=str_replace('//','',$json_one['url']);
        
        $con=getcon($titleurl_copy);
        preg_match('/<p class="main_center_bianqin_fl">(.*?)<\/p>/',$con,$tag_con_match);
        preg_match_all('/<a href="[^"]+"\s*[^>]*><span>([^<]+)/',$tag_con_match[1],$tag_str_match);
        $tag_str=implode(',',$tag_str_match[1]);
        preg_match('/<span>([^<]+)<\/span>\s*<div class="bdsharebuttonbox">/',$con,$newstime_match);
        $newstime=$lastdotime=strtotime($newstime_match[1]);
        $truetime=time();
        $day=date('Ymd',$newstime);
        $caijipath=ECMS_PATH.'d/file/zhicheng/'.$day.'/';
        if(!is_dir($caijipath)){
            mkdir($caijipath,0777,true);
        }
        //echo $titleurl_copy;
        //echo $titlepicurl;exit();
        if(!empty($titlepicurl)){
            $titlepicname=getUrlEnd($titlepicurl);
            $picsize=getdownload($titlepicurl,$titleurl_copy,$caijipath.$titlepicname);
            if(empty($picsize)){
                file_put_contents($logpath.'/./caiji_'.$classid.'.error.log',$titleurl_copy.
                    'titlepic size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
                continue;
            }else{
                GetMyMarkImg($caijipath.$titlepicname);
                $titlepic=$public_r['fileurl'].'zhicheng/'.$day.'/'.$titlepicname;
            }
            
        }else{
            file_put_contents($logpath.'/./caiji_'.$classid.'.error.log',$conurl.'titlepic url未获取到'."\t".
                date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
            continue;
        }
        //exit();
        $smalltext=$json_one['description'];
        $titleexistquery=$empire->query("select 1 from {$dbtbpre}ecms_news where title='{$title}' 
            and classid=$classid");
        $titleexist=$empire->fetch($titleexistquery);

        if($titleexist){
            file_put_contents($logpath.'/./caiji_'.$classid.'.error.log',"\t".'采集第'.$k.'页'.$titleurl_copy.'时
                标题出现重复'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
            continue;
        }
        //echo $con;
        preg_match('/<div class="wen_article">(.*)<div class="sf_1">/is',$con,$newstext_match);
        //print_r($newstext_match);exit();
        $newstext=$newstext_match[1];
        preg_match('/<span style="font-size:14px;"><span style="font-family:微软雅黑;">.*?<\/span><\/span>/',$con,$remove_match);
        $newstext=str_replace($remove_match[0],'',$newstext);
        preg_match('/<div class="page">(.*?)<\/div>/',$con,$con_page_match);
        preg_match_all('/<a href="([^"]+)"/',$con_page_match[1],$page_a_match);
        $newstext_arr=array($newstext);
        foreach($page_a_match[1] as $key=>$page_url){
            $con=getcon(str_replace('//','',$page_url));
            preg_match('/<div class="wen_article">(.*)<div class="sf_1">/is',$con,$newstext_match);
            $newstext_arr[]=$newstext_match[1];

        }
        $newstext_con=implode('[!--empirenews.page--]',$newstext_arr);
        preg_match_all('/<a href="[^"]+"\s*[^>]*>([^<]+)<\/a>/',$newstext_con,$a_match);
        foreach($a_match[0] as $a_key=>$a_val){
            $newstext_con=str_replace($a_val,$a_match[1][$a_key],$newstext_con);
        }
        preg_match_all('/<img[^>]*?src="([^"]+)"[^>]*>/is',
            $newstext_con,$img_match);
        foreach($img_match[1] as $img_key => $img){
            if(strstr($img,'//')!==false){
                $img_url=str_replace('//','',$img);
            }else{
                $img_url=$host.$img;
            }
            $img_name=getUrlEnd($img);
            if($img_url==$titlepicurl){
                $caiji_img_url=$public_r['fileurl'].'zhicheng/'.$day.'/'.$img_name;
                $newstext_con=str_replace($img,$caiji_img_url,$newstext_con);
                continue;
            }
            
            
            $picsize=getdownload($img_url,$titleurl_copy,$caijipath.$img_name);
            if(empty($picsize)){
                file_put_contents($logpath.'/./caiji_'.$classid.'.error.log',$img_url.
                ' pic size未获取到'."\t".$titleurl_copy."\t".date( 'Y-m-d H:i:s')."\n",
                FILE_APPEND);
                $newstext_con=str_replace($img_match[0][$img_key],'',$newstext_con);
            }else{
                GetMyMarkImg($caijipath.$img_name);
                $caiji_img_url=$public_r['fileurl'].'zhicheng/'.$day.'/'.$img_name;
                $newstext_con=str_replace($img,$caiji_img_url,$newstext_con);
            }
            
        }
        $newstext_con=addslashes($newstext_con);
        //$newstext=addslashes($newstext_match[1]);

        $empire->query("insert into {$dbtbpre}ecms_news(classid,userid,username,newstime,truetime,
            lastdotime,stb,
        fstb,restb,title,ftitle,titlepic,havehtml,smalltext,keyboard,titlepic_alt,caijiurl) values
        ($classid,1,'admin',$newstime,$truetime,$lastdotime,1,1,1,'{$title}','{$title}','{$titlepic}'
        ,1,'{$smalltext}','{$tag_str}','{$title}','{$titleurl_copy}')");
        $newsid=$empire->lastid();
        $titleurl=$public_r['newsurl'].$class_r[$classid]['classpath'].'/'.$newsid.'.html';
        $filename=$newsid;
        $empire->query("update {$dbtbpre}ecms_news set titleurl='{$titleurl}',filename='{$filename}' 
            where id=$newsid");
        $empire->query("insert into {$dbtbpre}ecms_news_index(id,classid,checked,newstime,truetime
            ,lastdotime,havehtml) values(
        $newsid,$classid,1,$newstime,$truetime,$lastdotime,1)");
        $empire->query("insert into {$dbtbpre}ecms_news_data_1(id,classid,infotags,befrom,newstext) 
            values($newsid,$classid,'{$tag_str}','至诚财经','{$newstext_con}')");
        //GetHtml($classid,$newsid,'',0);

        file_put_contents($logpath.'/./caiji_'.$classid.'.log',"\t".$titleurl_copy."的内容采集完毕" ."\t".
            date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
        sleep(randtime());
    }
}