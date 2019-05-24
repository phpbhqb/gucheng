<?php

/**
 * @Author: weibo.yao
 * @Date:   2019-05-23 15:19:35
 * @Last Modified time: 2019-05-24 11:25:52
 */
require('../../class/connect.php');
require('../../class/db_sql.php');
require('../../class/functions.php');
require('../../class/t_functions.php');
require('../../data/dbcache/class.php');
require '../'.LoadLang('pub/fun.php');
$link=db_connect();
$empire=new mysqlquery();

$tbname='news';
$addorder='newstime desc';
//---列表式---
$add="reposition like '%,3,%'";

$totalquery="select count(*) as total from {$dbtbpre}ecms_".$tbname." where ".$add;
$num=$empire->gettotal($totalquery);
if($num<=8){
    exit('');
}
$limit_arr=$limits=array();
for($i=0;$i<$num;$i++){
    $limit_arr[]=$i;
}
$limits = array_rand($limit_arr,8);
foreach($limits as $limit_key){
    $limits[]=$limit_arr[$limit_key];
}
foreach($limits as $limit ){
    $query="select ftitle,titleurl from {$dbtbpre}ecms_".$tbname." where ".$add;
    $query.=" order by ".$addorder." limit {$limit},1";
    $sql=$empire->query($query);
    $news_list=array();
    while($r=$empire->fetch($sql))
    {
        $news_list[]=array(
            'titleurl'=>$r['titleurl'],
            'ftitle'=>$r['ftitle']
        );
    } 

}
if($news_list){
    echo json_encode($news_list);
}else{
    echo '';
}