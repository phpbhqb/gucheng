<?php
//ini_set('default_socket_timeout',120);
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
$logpath=$path.'/log/3366/'.date('Ymd');
if(!is_dir($logpath)){
	mkdir($logpath,0777,true);
}
set_time_limit(0);
ini_set('memory_limit','-1');
$link=db_connect();
$empire=new mysqlquery();
$classsql="select * from {$dbtbpre}enewsclass a join {$dbtbpre}enewsclassadd b on a.classid=b.classid  and a.islast=1";
$classquery=$empire->query($classsql);
//declare(ticks=1);
//pcntl_signal(SIGCHLD,"garbage");
while($classres=$empire->fetch($classquery)){
	$pageoneurl=$classres['caijiurl_3366'];
	if(empty($pageoneurl)) {
		continue;
	}
	$classid=$classres['classid'];
	$pageonecon=getcon($pageoneurl);
	$host=getHost($pageoneurl);
	preg_match('/(\d+)<\/a><a href=\'[^\']+\' class=\'page_next\'>/is',$pageonecon,$pagenummatch);
	$pagenum=intval($pagenummatch[1]);
	for($i=1;$i<=$pagenum;$i++){
		if($i==1){
			$listurl=$pageoneurl;
		}else{
			$listurl=str_replace('.shtml','_'.$i.'.shtml',$pageoneurl);
		}
		$listcon=getcon($listurl);
		file_put_contents($logpath.'/./'.$classid.'.log','开始采集第'.$i.'页，地址为'.$listurl."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
		preg_match_all('/<a href="([^"]+)" target="_blank" title="([^"]+)">\s*<img (lz_)*src="([^"]+)"/isU',$listcon,$conurlsmatch);
		preg_match_all('/<p class="date">([^<]+)/is',$listcon,$datesmatch);
		$conurls=$conurlsmatch[1];
		$titles=$conurlsmatch[2];
		$titlepics=$conurlsmatch[4];
		$dates=$datesmatch[1];
		$datetime=strtotime($dates[0]);
		$comparetime=strtotime(date('Ymd',strtotime('-1 day')));
		if($datetime<$comparetime){
			file_put_contents($logpath.'/./'.$classid.'.log','采集完毕'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
			break;
		}
		$urlnum=count($conurls);
		for($j=0;$j<=$urlnum-1;$j++){
			$conurl=$host.$conurls[$j];
			$title=addslashes($titles[$j]);
			if(!mysql_ping($link)){
				db_close();				
				$link=db_connect();
				$empire=new mysqlquery();
			}	
			
			
			$titleexistquery=$empire->query("select 1 from {$dbtbpre}ecms_game where title='{$title}' and classid=$classid");
			$titleexist=$empire->fetch($titleexistquery);
			if($titleexist){
				file_put_contents($logpath.'/./'.$classid.'.log',"\t".'采集第'.$i.'页'.$conurl.'时标题出现重复'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				continue;
			}
			
			
			$pid = pcntl_fork();// 产生子进程，而且从当前行之下开试运行代码，而且不继承父进程的数据信息
			if($pid == -1) {
				exit ("couldn't fork". "\n");
			}else if($pid){
				pcntl_wait($status);
				//sleep(5);
			}else{
				$titlepic=$coverpic=$flashurl=$playflashurl='';
				
				$titlepicurl=$titlepics[$j];
				$con=getcon($conurl);
				
				
				$updateday=$dates[$j];
				if(strtotime($updateday)<$comparetime){
					file_put_contents($logpath.'/./'.$classid.'.log',"\t".'采集第'.$i.'页'.$conurl.'时时间小于采集时间'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
					exit();
				}
				//$newstime=$lastdotime=strtotime($updateday.date('H:i:s'));
				$newstime=$lastdotime=time();
				$truetime=time();
				$day=date('Ymd',$newstime);
				$caijipath=ECMS_PATH.'d/file/'.$class_r[$classid]['classpath'].'/'.$day.'/';
				if(!is_dir($caijipath)){
					mkdir($caijipath,0777,true);
				}
				
				preg_match('/<\/em>大小：<span>([^<]+)/i',$con,$filesizematch);
				preg_match('/<\/em>语言：<span>([^<]+)/i',$con,$languagematch);
				preg_match('/<h3>小游戏简介：<\/h3>(.*)<div class="gm_desc">\s*<h3>小游戏目标：<\/h3>/is',$con,$gameintromatch);
				preg_match('/<h3>小游戏目标：<\/h3>(.*)<div class="gm_desc">\s*<h3>如何开始：<\/h3>/isU',$con,$gametargetmatch);
				preg_match('/<h3>如何开始：<\/h3>(.*)<div class="gm_desc gm_highlight">\s*<h3>操作指南：<\/h3>/is',$con,$gamestartmatch);
				if(strstr($con,'gm_desc gm_series')){
					preg_match('/<h3>操作指南：<\/h3>(.*)<\/div>\s*<div class="gm_desc gm_series">\s*<h3>同系列小游戏：<\/h3>/isU',$con,$gameguidematch);
				}else{
					preg_match('/<h3>操作指南：<\/h3>(.*)<\/div>\s*<div class="gm_desc gm_copyright">/isU',$con,$gameguidematch);
				}
				
				
				preg_match('/<img src="([^"]+)"\s*[^>]+\s*\/><\/a><\/p>\s*<a class="bt_gm_play j_playgame" href="([^"]+)"/isU',$con,$coverpicmatch);
				preg_match('/<div class="gm_desc gm_title">\s*<h1>[^<]+<\/h1><span>\(英文名：([^<]+)\)/isU',$con,$englishnamematch);
			
				preg_match('/<p class="r_score"><strong>([^<]+)/is',$con,$scorematch);
				$scorenum=1;
				$scorearr=array(0,0,0,0,0);
				$scorepos=intval(ceil($scorematch[1])/2);
				$scorearr[$scorepos-1]=1;
				$score=$scorepos;
				$scoredetail=implode('-',$scorearr);
				preg_match_all('/<a\s*[^>]+\s*class="t_tag"\s*[^>]+\s*>([^<]+)/is',$con,$tagsmatch);
				
				
				$tags=$tagsmatch[1];
				$tagstr=implode(',',$tags);
				
				$filesize=trim($filesizematch[1]);
				$language=trim($languagematch[1]);
				$gameintro=str_replace('</div>','',trim($gameintromatch[1]));
				$gameintro=addslashes(strip_tags($gameintro,'<p>'));
				$gametarget=addslashes(str_replace('</div>','',trim($gametargetmatch[1])));
				$gamestart=addslashes(str_replace('</div>','',trim($gamestartmatch[1])));
				$gameguide=addslashes(trim($gameguidematch[1]));
				$coverpicurl=$coverpicmatch[1];
				$playurl=$host.$coverpicmatch[2];
				$playurlcon=getcon($playurl);
				preg_match('/"GameId"\s*:\s*"([^"]+)"/',$playurlcon,$gameidmatch);
				preg_match('/"GameType"\s*:\s*"([^"]+)"/',$playurlcon,$gametypematch);
				preg_match('/"OpenGameId"\s*:\s*"([^"]+)"/',$playurlcon,$opengameidmatch);
				preg_match('/"NeedFrame"\s*:\s*"([^"]+)"/',$playurlcon,$needframematch);
				$needframe=intval($needframematch[1]);
				$opengameid=intval($opengameidmatch[1]);
				if(!empty($needframe) || !empty($opengameid)){
					file_put_contents($logpath.'/./'.$classid.'.error.log',$playurl.'flash有needframe或opengameid'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
					exit();
				}
				$gametype=intval($gametypematch[1]);
				$gameid=intval($gameidmatch[1]);
				if($gametype==2){
					$playflashurl='http://img.3366.com';
				}else{
					$playflashurl='http://img.3366img.com';
				}
				$playflashurl.='/fileupload/flash/'.($gameid%100).'/'.$gameid.'.swf';
				$englishname=addslashes(trim($englishnamematch[1]));
				
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
				
				if(!empty($playflashurl)){
					$playflashname=getUrlEnd($playflashurl);
					$flashsize=getdownload($playflashurl,$playurl,$caijipath.$playflashname);
					if(empty($flashsize)){
						file_put_contents($logpath.'/./'.$classid.'.error.log',$playurl.'flashurl size未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
						exit();
					}else{
						$flashurl=$public_r['fileurl'].$class_r[$classid]['classpath'].'/'.$day.'/'.$playflashname;
					}
				}else{
					file_put_contents($logpath.'/./'.$classid.'.error.log',$playurl.'flashurl url未获取到'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
					exit();
				}
				$flashres=getimagesize($caijipath.$playflashname);
				$flashwidth=$flashres[0];
				$flashheight=$flashres[1];
				if($flashwidth && $flashheight){
					
				}else{
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
							$empire->query("update {$dbtbpre}enewstags set num=num+1 where tagid=$tagid");
						}
						$empire->query("insert into {$dbtbpre}enewstagsdata(tagid,classid,id,newstime,mid) values($tagid,$classid,$gameid,$newstime,10)");
					}
				}
				GetHtml($classid,$gameid,'',0);
				
				file_put_contents($logpath.'/./'.$classid.'.log',"\t".$conurl."的内容采集完毕" ."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				sleep(randtime());
				
				exit();
			
			}
			
			
			
			
		}
		
	}
	
	
	
}