<?php
require("../e/class/connect.php");
require("../e/class/db_sql.php");
require("../e/data/dbcache/class.php");
require("../e/class/functions.php");
require('../e/class/t_functions.php');
require "../e/class/".LoadLang("pub/fun.php");
$link=db_connect();
$empire=new mysqlquery();

//搜索结果

function SearchDoKeyboardVar($keyboard){
	$keyboard=str_replace('  ','',$keyboard);
	$keyboard=RepPostVar2(trim($keyboard));
	return $keyboard;
}

$keyboard=SearchDoKeyboardVar($_GET['key']);

//取得模板
$tempr=$empire->fetch1("select temptext,subnews,listvar,rownum,showdate,modid,subtitle,docode from ".GetTemptb("enewssearchtemp")." where isdefault=1 limit 1");
//替换公共模板变量
$listtemp=$tempr[temptext];
if($public_r['searchtempvar'])
{
	$listtemp=DtNewsBq('search_'.$keyboard,$listtemp,0);
}
$search_r[keyboard]=ehtmlspecialchars($keyboard);
$listtemp=str_replace("[!--keyboard--]",$keyboard,$listtemp);
$url="<a href='".ReturnSiteIndexUrl()."'>".$fun_r['index']."</a>&nbsp;>&nbsp;".$fun_r['adsearch'];
$pagetitle=$fun_r['adsearch']." ".$search_r[keyboard];
$listtemp=ReplaceSvars($listtemp,$url,0,$pagetitle,$pagetitle,$pagetitle,$addr,0);
$listtemp=str_replace('[!--news.url--]',$public_r[newsurl],$listtemp);

echo stripSlashes($listtemp);
?>