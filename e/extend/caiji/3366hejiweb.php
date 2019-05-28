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
$link=db_connect();
$empire=new mysqlquery();
$hejiurl='http://www.3366.com/heji/index.shtml';
$hejicon=getcon($hejiurl);
preg_match("/(\d+)<\/a><a href='[^']+' class='page_next'>/is",$hejicon,$pagenummatch);
$pagenum=intval($pagenummatch[1]);
$caijipath=ECMS_PATH.'d/file/p/tag/';
if(!is_dir($caijipath)){
	mkdir($caijipath,0777,true);
}
for($i=1;$i<=$pagenum;$i++){
	if($i==1){
		$listurl=$hejiurl;
	}else{
		$listurl=str_replace('index','index_'.$i,$hejiurl);
	}
	$listcon=getcon($listurl);
	preg_match_all('/<a target="_blank" href="([^"]+)" title="([^"]+)">\s*<img\s*[^>]+\s*src="([^"]+)"/is',$listcon,$tagmatch);
	
	$titles=$tagmatch[2];
	$tagurls=$tagmatch[1];
	$tagtitlepics=$tagmatch[3];
	foreach($titles as $key=>$title){
		$title=str_replace('合集','',trim($title));
		
		$tagsql="select * from {$dbtbpre}enewstags where tagname ='{$title}' and tagtitlepic is null";
		$tagquery=$empire->query($tagsql);
		while($tagres=$empire->fetch($tagquery)){
			$tagurl=$tagurls[$key];
			$tagcon=getcon($tagurl);
			preg_match('/<a\s*[^>]+\s*id="myfav_picbtn">\s*<img src="([^"]+)"/is',$tagcon,$tagcoverpicmatch);
			preg_match('/<div class="cont">(.*)<\/div>\s*<\/div>\s*<\/div>\s*<\/div>\s*<div class="heji_detail_main">/isU',$tagcon,$tagintromatch);
			$tagtitlepicurl=$tagtitlepics[$key];
			$tagcoverpicurl=$tagcoverpicmatch[1];
			$tagintro=addslashes(str_replace('3366','6676',trim($tagintromatch[1])));
			$tagid=$tagres['tagid'];
			if(!empty($tagtitlepicurl)){
				$titlepicname=getUrlEnd($tagtitlepicurl);
				$picsize=getdownload($tagtitlepicurl,$listurl,$caijipath.$titlepicname);
				if(empty($picsize)){
					file_put_contents('/./tag.error.log',$title.'tagtitlepicurl size not get'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
					continue;
				}else{
					$tagtitlepic=$public_r['fileurl'].'p/tag/'.$titlepicname;
				}
				
			}else{
				file_put_contents('/./tag.error.log',$title.'tagtitlepicurl url not get'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				continue;
			}
			
			if(!empty($tagcoverpicurl)){
				$coverpicname=getUrlEnd($tagcoverpicurl);
				$picsize=getdownload($tagcoverpicurl,$tagurl,$caijipath.$coverpicname);
				if(empty($picsize)){
					file_put_contents('/./tag.error.log',$title.'tagcoverpicurl size not get'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
					continue;
				}else{
					$tagcoverpic=$public_r['fileurl'].'p/tag/'.$coverpicname;
				}
			}else{
				file_put_contents('/./tag.error.log',$title.'tagcoverpicurl url not get'."\t".date( 'Y-m-d H:i:s')."\n",FILE_APPEND);
				continue;
			}
			
			$updateSql="update {$dbtbpre}enewstags set tagtitlepic='{$tagtitlepic}',tagcoverpic='{$tagcoverpic}',tagintro='{$tagintro}' where tagid=$tagid";
			$empire->query($updateSql);
			
		}
	}

}
