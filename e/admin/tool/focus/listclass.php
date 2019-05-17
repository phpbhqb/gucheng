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
//验证权限
$sql=$empire->query("select classid,classname from {$dbtbpre}enewsfocusclass order by classid desc");


?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="../../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr>
    <td>位置：<a href="listclass.php">管理类别</a></td>
  </tr>
</table>
<form name="form1" method="post" action="operate.php<?=$ecms_hashur['whehref']?>">
  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
    <tr class="header">
      <td height="25">增加类别:
        <input type=hidden name=operate value=AddClass>
        </td>
    </tr>
    <tr> 
      <td height="25" bgcolor="#FFFFFF"> 类别名称: 
        <input name="add[classname]" type="text" id="add[classname]">
        <input type="submit" name="Submit" value="增加">
        <input type="reset" name="Submit2" value="重置"></td>
    </tr>
  </table>
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header">
    <td width="10%"><div align="center">ID</div></td>
    <td width="59%" height="25"><div align="center">类别名称</div></td>
    <td width="31%" height="25"><div align="center">操作</div></td>
  </tr>
  <?
  while($r=$empire->fetch($sql))
  {
  ?>
  <form name=form2 method=post action="operate.php<?=$ecms_hashur['whehref']?>">
    <input type=hidden name=operate value=EditClass>
    <input type=hidden name=add[classid] value=<?=$r[classid]?>>
    <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'">
      <td><div align="center"><?=$r[classid]?></div></td>
      <td height="25"> <div align="center">
          <input name="add[classname]" type="text" id="add[classname]" value="<?=$r[classname]?>">
        </div></td>
      <td height="25"><div align="center"> 
          <input type="submit" name="Submit3" value="修改">
          &nbsp; 
          <input type="button" name="Submit4" value="删除" onclick="self.location.href='operate.php<?=$ecms_hashur['whehref']?>&enews=DelClass&classid=<?=$r[classid]?>';">
        </div></td>
    </tr>
  </form>
  <?
  }
  db_close();
  $empire=null;
  ?>
</table>
</body>
</html>
