<?php
require('../../class/connect.php');
require('../../class/db_sql.php');
require('../../class/functions.php');
require('../../class/t_functions.php');
require('../../data/dbcache/class.php');
require '../'.LoadLang('pub/fun.php');
$link=db_connect();
$empire=new mysqlquery();

$type=isset($_GET['type']) ? RepPostVar2($_GET['type']) : '';
$key=isset($_GET['key']) ? RepPostVar2($_GET['key']) : '';
if($type=='s' && empty($key)){
	echo '';exit();
}
$tbname='news';
$order=(int)$_GET['order'];
if($order==2){
	$addorder='istop desc,newstime desc';
}else{
	$addorder='firsttitle desc,newstime desc';
}
$classid=(int)$_GET['classid'];
//---列表式---
$add='1=1';
//栏目
if($classid)//终极栏目
{
	$add.=" and a.classid='$classid'";
	
}
if($type=='s' && $key){
	$add.=" and title like '%".$key."%'";
}
$start=(int)$_GET['start'];
$start=RepPIntvar($start);
$line=20;//每页显示记录数
$offset=$start;//总偏移量
//优化
$yhadd='';

if($order==2){
	$select_str='title,titleurl,titlepic,newstime,smalltext,istop,titlepic_alt ';
}else{
	$select_str='title,titleurl,titlepic,newstime,smalltext,firsttitle,titlepic_alt ';
}

if($type=='m'){
	$query="select title,titleurl,titlepic,a.id,befrom,titlepic_alt from {$dbtbpre}ecms_".$tbname." a join ${dbtbpre}ecms_".$tbname.'_data_1 b on a.id=b.id where '.$yhadd.$add;
	$query.=" order by ".$addorder." limit $offset,$line";	

}else{
	$query="select {$select_str} from {$dbtbpre}ecms_".$tbname." a where ".$yhadd.$add;
	$query.=" order by ".$addorder." limit $offset,$line";	
}

$sql=$empire->query($query);
$news_list=array();
while($r=$empire->fetch($sql))
{
	if($type=='m'){
		$news_list[]=array(
			'url'=>$r['titleurl'],
			'pImg'=>$r['titlepic'],
			'alt'=>$r['titlepic_alt'],
			'title'=>$r['title'],
			'id'=>$r['id'],
			'befrom'=>$r['befrom']
		);
	}else{
		$news_list[]=array(
			'url'=>$r['titleurl'],
			'pImg'=>$r['titlepic'],
			'alt'=>$r['titlepic_alt'],
			'title'=>$r['title'],
			'timer'=>date('Y-m-d H:i',$r['newstime']),
			'cont'=>esub($r['smalltext'],120),
			'istop'=>$order==2 ? $r['istop'] :$r['firsttitle'],
			'id'=>$r['id']
		);
	}
}
if($news_list){
	echo json_encode($news_list);
}else{
	echo '';
}

