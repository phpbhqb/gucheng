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
$editor=1;
include(ECMS_PATH."e/class/gd.php");

$filePath  = array();//文件路径数组
function traverse($path = '.') {
    global $filePath;//得到外部定义的数组
    $current_dir = opendir($path);    //opendir()返回一个目录句柄,失败返回false
    while(($file = readdir($current_dir)) !== false) {    //readdir()返回打开目录句柄中的一个条目
        $sub_dir = $path . DIRECTORY_SEPARATOR . $file;    //构建子目录路径
        if($file == '.' || $file == '..') {
            continue;
        }else if(is_dir($sub_dir)) {    //如果是目录,进行递归
            echo 'Directory ' . $file . ':';  //如果是文件夹，输出文件夹名称
            traverse($sub_dir); //嵌套遍历子文件夹
        }else{    //如果是文件,直接输出路径和文件名
            echo 'File in Directory ' . $path . '/' . $file .'<br/>';
            $filePath[$path . '/' . $file] = $path . '/' . $file;//把文件路径赋值给数组
        }
    }
    return $filePath;
}

$a=traverse(ECMS_PATH.'d/file/niujin_bak');
foreach($a as $file){
	if(exif_imagetype($file)!==false){
		GetMyMarkImg($file);
	}
}
//print_r($a);

//GetMyMarkImg(ECMS_PATH.'d/file/niujin/20181227/163-1Q22G05341b0.jpg');