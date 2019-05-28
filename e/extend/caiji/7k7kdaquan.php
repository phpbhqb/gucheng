<?php
ini_set('default_socket_timeout',120);
date_default_timezone_set('Asia/Shanghai');
set_time_limit(0);
ini_set('memory_limit','-1');
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
$logpath=$path.'/log/daquan/7k7k';
if(!is_dir($logpath)){
	mkdir($logpath,0777,true);
}
$link=db_connect();
$empire=new mysqlquery();
$classid=18;
for($i=1;$i<=2;$i++){
	$listurl="http://www.7k7k.com/top/hot_".$i.".htm";
	$host=getHost($listurl);
	$listcon=getcon($listurl);
	preg_match_all('/<a href="([^"]+)" target="_blank" class="li-bot-div-a"><\/a>\s*<img (lz_)*src="([^"]+)" alt="([^"]+)"/isU',$listcon,$conurlsmatch);
	$conurls=$conurlsmatch[1];
	$titlepics=$conurlsmatch[3];
	$titles=$conurlsmatch[4];
	$urlnum=count($conurls);
	for($j=$urlnum-1;$j>=0;$j--){
		$title=addslashes(trim($titles[$j]));
		$titleexistquery=$empire->query("select 1 from {$dbtbpre}ecms_game where title='{$title}' and classid=$classid");
		$titleexist=$empire->fetch($titleexistquery);
		if($titleexist){
			file_put_contents($logpath.'/./caiji.log',"\t".'采集第'.$i.'页'.$conurl.'时标题出现重复'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
			continue;
		}
	
		$conurl=$host.$conurls[$j];
		$con=getcon($conurl);
		
		
		
		file_put_contents($logpath.'/./caiji.log',"\t".'开始采集'.$conurl."的内容" ."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
		$titlepic=$coverpic=$flashurl=$playflashurl=$englishname=$language=$filesize='';
		
		
		
		
		/*preg_match('/日期：([^<]+)<\/li>/is',$con,$daymatch);
		$updateday=$daymatch[1];
		$newstime=$lastdotime=strtotime($updateday.date('H:i:s'));
		$truetime=time();
		$day=date('Ymd',$newstime);
		$caijipath=ECMS_PATH.'d/file/'.$class_r[$classid]['classpath'].'/'.$day.'/';
		if(!is_dir($caijipath)){
			mkdir($caijipath,0777,true);
		}*/
		
		preg_match('/<p class="game-describe">(.*)<div class="func-area">/is',$con,$gameintromatch);
		$gameintro=addslashes(str_replace('</p>','',trim($gameintromatch[1])));
		
		preg_match('/<h3>1.按键操作<\/h3>(.*)<\/li>\s*<li class="item">\s*<h3>2.如何开始<\/h3>/is',$con,$gameguidematch);
		preg_match('/<h3>2.如何开始<\/h3>(.*)<\/li>\s*<li class="item">\s*<h3>3.游戏目标<\/h3>/is',$con,$gamestartmatch);
		preg_match('/<h3>3.游戏目标<\/h3>(.*)<\/li>\s*<\/ol>\s*<\/div><!-- box-bd -->/is',$con,$gametargetmatch);

		


		preg_match('/<div class="game-tag">.*<div class="box trans-play-step">/is',$con,$tagconmatch);
		$tagcon=$tagconmatch[0];
		preg_match_all('/<a href="[^"]+">([^<]+)/',$tagcon,$tagsmatch);
		$tags=$tagsmatch[1];
		$tagstr=implode(',',$tags);
		
		$gametarget=addslashes(trim($gametargetmatch[1]));
		$gameguide=addslashes(trim($gameguidematch[1]));
		$gamestart=addslashes(trim($gamestartmatch[1]));
		
		preg_match('/<li lazyload="ok" style="">\s*<a href="([^"]+)" target="_self">\s*<img\s*[^>]+\s*src="([^"]+)"/is',$con,$titlematch);
		

		$playurl=$host.$titlematch[1];
		$playurlcon=getcon($playurl);
		preg_match('/_gamepath\s*=\s*"([^"]+)"/',$playurlcon,$playflashurlmatch);
		preg_match('/_gamewidth\s*=\s*(\d+)/',$playurlcon,$flashwidthmatch);
		preg_match('/_gameheight\s*=\s*(\d+)/',$playurlcon,$flashheightmatch);
		preg_match('/_gamestar\s*=\s*(\d+)/',$playurlcon,$scorematch);
		preg_match('/_gameadcompany\s*=\s*(\d+)/',$playurlcon,$admatch);
		$ad=$admatch[1];
		
		$playflashurl=trim($playflashurlmatch[1]);

		if(!strstr($playflashurl,'.swf')){
			file_put_contents($logpath.'/./caiji.error.log',$playurl.'不为swf'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
			continue;
		}

		$flashurlarr=explode('/',$playflashurl);
		$day=intval($flashurlarr[5]);
		if(empty($day) || strlen($day)!=8){
			$day=date('Ymd',strtotime('-1 day'));
		}
		$newstime=$lastdotime=strtotime($day.date('H:i:s'));
		$truetime=time();
		$caijipath=ECMS_PATH.'d/file/'.$class_r[$classid]['classpath'].'/'.$day.'/';
		if(!is_dir($caijipath)){
			mkdir($caijipath,0777,true);
		}

		$flashwidth=$flashwidthmatch[1];
		$flashheight=$flashheightmatch[1];
		$score=$scorematch[1];
		$scorenum=1;
		$scorearr=array(0,0,0,0,0);
		$scorearr[$score-1]=1;
		$scoredetail=implode('-',$scorearr);
		$titlepicurl=$titlepics[$j];
		$coverpicurl=$titlematch[2];
		if(!empty($titlepicurl)){
			$titlepicname=getUrlEnd($titlepicurl);
			$picsize=getdownload($titlepicurl,$listurl,$caijipath.$titlepicname);
			if(empty($picsize)){
				file_put_contents($logpath.'/./caiji.error.log',$conurl.'titlepic size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				continue;
			}else{
				$titlepic=$public_r['fileurl'].$class_r[$classid]['classpath'].'/'.$day.'/'.$titlepicname;
			}
			
		}else{
			file_put_contents($logpath.'/./caiji.error.log',$conurl.'titlepic url未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
			continue;
		}
		if(!empty($coverpicurl)){
			$coverpicname=getUrlEnd($coverpicurl);
			$picsize=getdownload($coverpicurl,$conurl,$caijipath.$coverpicname);
			if(empty($picsize)){
				file_put_contents($logpath.'/./caiji.error.log',$conurl.'coverpic size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				continue;
			}else{
				$coverpic=$public_r['fileurl'].$class_r[$classid]['classpath'].'/'.$day.'/'.$coverpicname;
			}
		}else{
			file_put_contents($logpath.'/./caiji.error.log',$conurl.'coverpic url未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
			continue;
		}
		
		if(!empty($playflashurl)){
			$playflashname=getUrlEnd($playflashurl);
			$flashsize=getdownload($playflashurl,$playurl,$caijipath.$playflashname);
			if(empty($flashsize)){
				file_put_contents($logpath.'/./caiji.error.log',$playurl.'flashurl size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				continue;
			}else{
				$flashurl=$public_r['fileurl'].$class_r[$classid]['classpath'].'/'.$day.'/'.$playflashname;
				$filesize=intval($flashsize/1024).'K';
			}
		}else{
			file_put_contents($logpath.'/./caiji.error.log',$playurl.'flashurl url未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
			continue;
		}
		
		
		
		
		
		$empire->query("insert into {$dbtbpre}ecms_game(classid,userid,username,newstime,truetime,lastdotime,stb,
		fstb,restb,title,titlepic,newspath,havehtml,caijiurl,filesize,englishname,gameguide,gamestart,gameintro,gametarget,coverpic,flashurl,scoredetail,scorenum,language,score,
		flashwidth,flashheight) values($classid,1,'admin',$newstime,$truetime,$lastdotime,1,1,1,'{$title}','{$titlepic}','{$day}',1,'{$conurl}','{$filesize}','{$englishname}','{$gameguide}',
		'{$gamestart}','{$gameintro}','{$gametarget}','{$coverpic}','{$flashurl}','{$scoredetail}',$scorenum,'{$language}',$score,$flashwidth,$flashheight)");
		$gameid=$empire->lastid();
		$titleurl=$public_r['newsurl'].$class_r[$classid]['classpath'].'/'.$day.'/'.$gameid.'.html';
		$filename=$gameid;
		$empire->query("update {$dbtbpre}ecms_game set titleurl='{$titleurl}',filename='{$filename}' where id=$gameid");
		$empire->query("insert into {$dbtbpre}ecms_game_index(id,classid,checked,newstime,truetime,lastdotime,havehtml) values(
		$gameid,$classid,1,$newstime,$truetime,$lastdotime,1)");
		$empire->query("insert into {$dbtbpre}ecms_game_data_1(id,classid,infotags) values($gameid,$classid,'{$tagstr}')");
		
		foreach($tags as $tag){
			if(!empty($tag)){
				$res=$empire->fetch1("select tagid from {$dbtbpre}enewstags where tagname='{$tag}'");
				if(empty($res)){
					$empire->query("insert into {$dbtbpre}enewstags(tagname,num) values('{$tag}',1)");
					$tagid=$empire->lastid();
				}else{
					$tagid=$res['tagid'];
					$empire->query("update {$dbtbpre}enewstags set num=num+1 where tagname='{$tag}'");
				}
				$empire->query("insert into {$dbtbpre}enewstagsdata(tagid,classid,id,newstime,mid) values($tagid,$classid,$gameid,$newstime,10)");
			}
		}
		
		GetHtml($classid,$gameid,'',0);
		
		file_put_contents($logpath.'/./caiji.log',"\t".$conurl."的内容采集完毕" ."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
		
		
		sleep(randtime());

		
		
		
	}
}