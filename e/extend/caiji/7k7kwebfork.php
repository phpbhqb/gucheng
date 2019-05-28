<?php
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
$logpath=$path.'/log/7k7k/'.date('Ymd');
if(!is_dir($logpath)){
	mkdir($logpath,0777,true);
}
set_time_limit(0);
ini_set('memory_limit','-1');
$link=db_connect();
$empire=new mysqlquery();
$classsql="select * from {$dbtbpre}enewsclass a join {$dbtbpre}enewsclassadd b on a.classid=b.classid  and a.islast=1";
$classquery=$empire->query($classsql);
$maxchild=50;
$child=0;
while($classres=$empire->fetch($classquery)){
	$pageoneurl=$classres['caijiurl_7k7k'];
	if(empty($pageoneurl)) {
		continue;
	}
	$classid=$classres['classid'];
	$pageonecon=getcon($pageoneurl);
	$host=getHost($pageoneurl);
	preg_match('/(\d+)<\/a><a\s*[^>]+>下一页/is',$pageonecon,$pagenummatch);
	$pagenum=intval($pagenummatch[1]);
	$pagenum=20;
	for($i=$pagenum;$i>=1;$i--){
		$listurl=preg_replace('/_[^\/]+\./','_'.$i.'.',$pageoneurl);
		$listcon=getcon($listurl);
		file_put_contents($logpath.'/./'.$classid.'.log','开始采集第'.$i.'页，地址为'.$listurl."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
		preg_match_all('/<li><a href="([^"]+)"><img lz_src="([^"]+)"\s*\/>[^<]+<\/a><p class="gray">[^<]+<\/p><div/isU',$listcon,$conurlsmatch);
		$conurls=$conurlsmatch[1];
		$titlepics=$conurlsmatch[2];
		$urlnum=count($conurls);
		for($j=$urlnum-1;$j>=0;$j--){
			$conurl=$host.$conurls[$j];
			$con=getcon($conurl);
			file_put_contents($logpath.'/./'.$classid.'.log',"\t".'开始采集'.$conurl."的内容" ."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
			preg_match('/ <div class="h1">([^<]+)<\/div>\s*<div class="gamepic">\s*<img src="([^"]+)"\s*\/>\s*<a href="([^"]+)"/isU',$con,$titlematch);
			$title=addslashes($titlematch[1]);
			if(!mysql_ping($link)){
				db_close();				
				$link=db_connect();
				$empire=new mysqlquery();
			}
			$titleexistquery=$empire->query("select 1 from {$dbtbpre}ecms_game where title='{$title}'");
			$titleexist=$empire->fetch($titleexistquery);
			if($titleexist){
				file_put_contents($logpath.'/./'.$classid.'.log',"\t".'采集第'.$i.'页'.$conurl.'时标题出现重复'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				continue;
			}
			
			$pid = pcntl_fork();// 产生子进程，而且从当前行之下开试运行代码，而且不继承父进程的数据信息
			if($pid == -1) {
				exit ("couldn't fork". "\n");
			}else if($pid){
				$child++;
				if($child>$maxchild){
					pcntl_wait($status);
					$child--;
				}
			}else{
			
				$titlepic=$coverpic=$flashurl=$playflashurl=$englishname=$language=$filesize='';
				preg_match('/日期：([^<]+)<\/li>/is',$con,$daymatch);
				$updateday=$daymatch[1];
				$newstime=$lastdotime=strtotime($updateday.date('H:i:s'));
				$truetime=time();
				$day=date('Ymd',$newstime);
				$caijipath=ECMS_PATH.'d/file/'.$class_r[$classid]['classpath'].'/'.$day.'/';
				if(!is_dir($caijipath)){
					mkdir($caijipath,0777,true);
				}
				if(strstr($con,'<label class="ellipsis">')){
					preg_match('/<h2 class="info">(.*)<label class="ellipsis">/is',$con,$gameintromatch);
					preg_match('/<span class="desc-fold" style="display:none;">([^<]+)/is',$con,$gameintromatch2);
					$gameintro=$gameintromatch[1].$gameintromatch2[1].'</span>';
				}else{
					preg_match('/<h2 class="info">(.*)<div class="info bg_bor">\s*<strong>游戏目标：<\/strong>/is',$con,$gameintromatch);
					$gameintro=addslashes(str_replace('</h2>','',trim($gameintromatch[1])));
				}

				if(strstr($con,'<div class="info lazyload-part">')){
					preg_match('/<strong>操作指南：<\/strong>(.*)<\/div>\s*<div class="info lazyload-part">/is',$con,$gameguidematch);
				}else{
					preg_match('/<strong>操作指南：<\/strong>(.*)<\/div>\s*<div class="info">\s*<strong>如何开始：<\/strong>/is',$con,$gameguidematch);
				}
				preg_match('/<strong>游戏目标：<\/strong><br \/>(.*)<\/div>\s*<p class="info">/is',$con,$gametargetmatch);
				preg_match('/<strong>如何开始：<\/strong><br \/>(.*)<\/div>\s*<div class="btn_play">/is',$con,$gamestartmatch);
				
				preg_match('/<li class="tag">.*<h2 class="info">/is',$con,$tagconmatch);
				$tagcon=$tagconmatch[0];
				preg_match_all('/<a href="[^"]+">([^<]+)/',$tagcon,$tagsmatch);
				$tags=$tagsmatch[1];
				$tagstr=implode(',',$tags);
				
				//$gameintro=addslashes(str_replace('</h2>','',trim($gameintromatch[1])));
				$gametarget=addslashes(trim($gametargetmatch[1]));
				$gameguide=addslashes(trim($gameguidematch[1]));
				$gamestart=addslashes(trim($gamestartmatch[1]));
				
				$playurl=$host.$titlematch[3];
				$playurlcon=getcon($playurl);
				preg_match('/_gamepath\s*=\s*"([^"]+)"/',$playurlcon,$playflashurlmatch);
				preg_match('/_gamewidth\s*=\s*(\d+)/',$playurlcon,$flashwidthmatch);
				preg_match('/_gameheight\s*=\s*(\d+)/',$playurlcon,$flashheightmatch);
				preg_match('/_gamestar\s*=\s*(\d+)/',$playurlcon,$scorematch);
				$playflashurl=trim($playflashurlmatch[1]);
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
						file_put_contents($logpath.'/./'.$classid.'.error.log',$conurl.'titlepic size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
						exit();
					}else{
						$titlepic=$public_r['fileurl'].$class_r[$classid]['classpath'].'/'.$day.'/'.$titlepicname;
					}
					
				}else{
					file_put_contents($logpath.'/./'.$classid.'.error.log',$conurl.'titlepic url未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
					exit();
				}
				if(!empty($coverpicurl)){
					$coverpicname=getUrlEnd($coverpicurl);
					$picsize=getdownload($coverpicurl,$conurl,$caijipath.$coverpicname);
					if(empty($picsize)){
						file_put_contents($logpath.'/./'.$classid.'.error.log',$conurl.'coverpic size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
						exit();
					}else{
						$coverpic=$public_r['fileurl'].$class_r[$classid]['classpath'].'/'.$day.'/'.$coverpicname;
					}
				}else{
					file_put_contents($logpath.'/./'.$classid.'.error.log',$conurl.'coverpic url未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
					exit();
				}
				
				if(!empty($playflashurl) && strstr($playflashurl,'.swf')){
					$playflashname=getUrlEnd($playflashurl);
					$flashsize=getdownload($playflashurl,$playurl,$caijipath.$playflashname);
					if(empty($flashsize)){
						file_put_contents($logpath.'/./'.$classid.'.error.log',$playurl.'flashurl size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
						exit();
					}else{
						$flashurl=$public_r['fileurl'].$class_r[$classid]['classpath'].'/'.$day.'/'.$playflashname;
						$filesize=intval($flashsize/1024).'K';
					}
				}else{
					file_put_contents($logpath.'/./'.$classid.'.error.log',$playurl.'flashurl url 未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
					exit();
				}
				
				if(!mysql_ping($link)){
					db_close();				
					$link=db_connect();
					$empire=new mysqlquery();
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
				
				file_put_contents($logpath.'/./'.$classid.'.log',"\t".$conurl."的内容采集完毕" ."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				if(function_exists('posix_kill')){
					posix_kill(getmypid(),SIGTERM);
				}else{
					system('kill -9 '.getmypid());
				}
				exit();

			}
			
			
		}
	}

}