<?php
define('EmpireCMSAdmin','1');
require("../../../class/connect.php");
require("../../../class/db_sql.php");
require("../../../class/functions.php");
require "../../".LoadLang("pub/fun.php");
$link=db_connect();
$empire=new mysqlquery();
$editor=1;
//验证用户
$lur=is_login();
$logininid=$lur['userid'];
$loginin=$lur['username'];
$loginrnd=$lur['rnd'];
$loginlevel=$lur['groupid'];
$loginadminstyleid=$lur['adminstyleid'];

//ehash
$ecms_hashur=hReturnEcmsHashStrAll();

$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=20;//每页显示条数
$page_line=12;//每页显示链接数
$offset=$page*$line;//总偏移量
$search='';
$search.=$ecms_hashur['ehref'];
$totalquery="select count(*) as total from {$dbtbpre}enewsfocus";
$query="select * from {$dbtbpre}enewsfocus";
$num=$empire->gettotal($totalquery);//取得总条数
$query=$query." order by fid desc limit $offset,$line";
$sql=$empire->query($query);
$returnpage=page2($num,$line,$page_line,$start,$page,$search);


$class=array();
$classsql="select * from {$dbtbpre}enewsfocusclass";
$classquery=$empire->query($classsql);
while($classres=$empire->fetch($classquery)){
	$class[$classres['classid']]=$classres['classname'];
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
<title>管理内容</title>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td width="20%" height="25">位置：<a href="index.php<?=$ecms_hashur['whehref']?>">管理内容</a></td>
    <td width="80%"><div align="right" class="emenubutton">
        <input type="button" name="Submit5" value="增加内容" onclick="self.location.href='operate.php<?=$ecms_hashur['whehref']?>&enews=AddFocus';">&nbsp;&nbsp;
      </div></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="1" cellpadding="3" class="tableborder">
  <tr class="header"> 
    <td width="4%" height="25"><div align="center">ID</div></td>
    <td width="20%"><div align="center">名称</div></td>
    <td width="11%"><div align="center">类型</div></td>
    <td width="17%"><div align="center">操作</div></td>
  </tr>
  <?
  while($r=$empire->fetch($sql))
  {
  ?>
  <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'"> 
    <td height="25"> <div align="center"> 
        <?=$r[fid]?>
      </div></td>
    <td> <div align="center"> 
        <b><?=$r[fname]?></b>
      </div></td>
    <td> <div align="center"> 
		<?=$class[$r['classid']]?>
        </div></td>
    <td> <div align="center"> <a href="operate.php<?=$ecms_hashur['whehref']?>&enews=EditFocus&fid=<?=$r[fid]?>">修改</a> | <a href="operate.php<?=$ecms_hashur['whehref']?>&enews=DelFocus&fid=<?=$r[fid]?>" onclick="return confirm('确认要删除？');">删除</a></div></td>
  </tr>
  <?
  }
  ?>
  <tr bgcolor="#FFFFFF"> 
    <td height="25" colspan="8"> 
      <?=$returnpage?>
    </td>
  </tr>
</table>
</body>
</html>
<?php
db_close();
$empire=null;
?>