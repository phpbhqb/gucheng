<?php
define('EmpireCMSAdmin','1');
require("../../../class/connect.php");
require("../../../class/db_sql.php");
require("../../../class/functions.php");
require "../../".LoadLang("pub/fun.php");
$link=db_connect();
$empire=new mysqlquery();
$editor=2;
//验证用户
$lur=is_login();
$logininid=$lur['userid'];
$loginin=$lur['username'];
$loginrnd=$lur['rnd'];
$loginlevel=$lur['groupid'];
$loginadminstyleid=$lur['adminstyleid'];
$filepass=ReturnTranFilepass();
$operate=$_POST['operate'];

//ehash
$ecms_hashur=hReturnEcmsHashStrAll();

$class=array();
$classsql="select * from {$dbtbpre}enewsfocusclass";
$classquery=$empire->query($classsql);
while($classres=$empire->fetch($classquery)){
	$class[$classres['classid']]=$classres['classname'];
}


if($operate=='AddFocus'){
	$classid=intval($_POST['add']['classid']);
	$fname=trim($_POST['add']['fname']);
	$picurl=trim($_POST['picurl']);
	$url=trim($_POST['add']['url']);
	$target=$_POST['add']['target'];
	$fsort=intval($_POST['add']['fsort']);
	$comment=$_POST['add']['comment'];
	$time=time();
	$insertres=$empire->query("insert into {$dbtbpre}enewsfocus(fname,picurl,url,target,classid,fsort,ftime,comment) values('{$fname}','{$picurl}','{$url}','{$target}',$classid,$fsort,$time,'{$comment}')");
	$fid=$empire->lastid();
	UpdateTheFileOther(8,$fid,$_POST['filepass'],'other');
	if($insertres){
		//操作日志
		insert_dolog("fid=".$fid."<br>title=".$fname);
		printerror("增加内容成功","operate.php".hReturnEcmsHashStrHref2(1).'&enews=AddFocus',0,0,1);
	}
}elseif($operate=='EditFocus'){
	$fname=trim($_POST['add']['fname']);
	$picurl=trim($_POST['picurl']);
	$url=trim($_POST['add']['url']);
	$target=$_POST['add']['target'];
	$fsort=intval($_POST['add']['fsort']);
	$fid=$_POST['add']['fid'];
	$classid=intval($_POST['add']['classid']);
	$comment=$_POST['add']['comment'];
	$updateres=$empire->query("update {$dbtbpre}enewsfocus set fname='{$fname}',picurl='{$picurl}',url='{$url}',target='{$target}',comment='{$comment}',fsort=$fsort,classid=$classid where fid=$fid");
	if($updateres){
		//操作日志
		insert_dolog("updatefid=".$fid."<br>title=".$fname);
		printerror("编辑内容成功","index.php".hReturnEcmsHashStrHref2(1),0,0,1);
	}
}elseif($operate=='AddClass'){
	$add=$_POST['add'];
	$classname=RepPostStr($add['classname']);
	$insertres=$empire->query("insert into {$dbtbpre}enewsfocusclass(classname) values('{$classname}')");
	$classid=$empire->lastid();
	if($insertres){
		insert_dolog("focusclassid=".$classid."<br>classname=".$classname);
		printerror("增加分类成功","listclass.php".hReturnEcmsHashStrHref2(1),0,0,1);
	}
}elseif($operate=='EditClass'){
	$add=$_POST['add'];
	$classid=intval($add['classid']);
	$classname=RepPostStr($add['classname']);
	$updateres=$empire->query("update {$dbtbpre}enewsfocusclass set classname='{$classname}' where classid=$classid");
	if($updateres){
		insert_dolog("updatefocusclassid=".$classid."<br>classname=".$classname);
		printerror("更新分类成功","listclass.php".hReturnEcmsHashStrHref2(1),0,0,1);
	}
}
$enews=$_GET['enews'];
if($enews=='AddFocus'){
	$nav="<a href='index.php".hReturnEcmsHashStrHref2(1)."'>管理内容</a>&nbsp;>&nbsp;增加内容";
}elseif($enews=='EditFocus'){
	$nav="<a href='index.php".hReturnEcmsHashStrHref2(1)."'>管理内容</a>&nbsp;>&nbsp;编辑内容";
	$fid=$_GET['fid'];
	$r=$empire->fetch1("select * from {$dbtbpre}enewsfocus where fid='$fid'");
	if($r[target]=="_blank")
	{$target1=" selected";}
	elseif($r[target]=="_self")
	{$target2=" selected";}
	else
	{$target3=" selected";}
}elseif($enews=='DelFocus'){
	$fid=$_GET['fid'];
	$r=$empire->fetch1("select fname from {$dbtbpre}enewsfocus where fid='$fid'");
	$deleteres=$empire->query("delete from {$dbtbpre}enewsfocus where fid='$fid'");
	//删除附件
	DelFileOtherTable("modtype=8 and id='$fid'");
	if($deleteres){
		//操作日志
		insert_dolog("deletefid=".$fid."<br>title=".$r[fname]);
		printerror("删除内容成功","index.php".hReturnEcmsHashStrHref2(1),0,0,1);
	}
}elseif($enews=='DelClass'){
	$classid=intval($_GET['classid']);
	$deleteres=$empire->query("delete from {$dbtbpre}enewsfocusclass where classid=$classid");
	if($deleteres){
		//操作日志
		insert_dolog("deleteclassid=".$classid);
		printerror("删除分类成功","listclass.php".hReturnEcmsHashStrHref2(1),0,0,1);
	}
}
db_close();
$empire=null;
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>内容管理</title>
<link href="../../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td width="30%" height="25">位置： 
      <?=$nav?>
    </td>
  </tr>
</table>
<form name="form1" method="post" action="operate.php<?=$ecms_hashur['whehref']?>">
	<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
		<tr class="header"> 
            <td height="25" colspan="2">增加内容
            <input name="add[fid]" type="hidden" id="add[fid]" value="<?=$fid?>"> 
            <input name="operate" type="hidden" id="operate" value="<?=$enews?>"> 
            <input name="filepass" type="hidden" id="filepass" value="<?=$filepass?>"></td>
        </tr>
            <tr bgcolor="#FFFFFF"> 
              <td height="25">分类：</td>
              <td height="25"> <select name="add[classid]" id="add[classid]">
                  <option value="0">未分类</option>
				  <?php foreach($class as $key=>$val):?>
				  <option value="<?php echo $key;?>" <?php if($r['classid']==$key):?> selected="selected"<?php endif;?>><?php echo $val;?></option>
				  <?php endforeach;?>
                </select> </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td width="27%" height="25">名称：</td>
              <td width="73%" height="25"> <input name="add[fname]" type="text" id="add[fname]" value="<?=$r[fname]?>">
                </td>
            </tr>
			<tr bgcolor="#FFFFFF"> 
              <td width="27%" height="25">图片地址：</td>
              <td width="73%" height="25"> <input name="picurl" type="text" id="picurl" value="<?=$r[picurl]?>">
			   <a onclick="window.open('../../ecmseditor/FileMain.php?<?=$ecms_hashur['ehref']?>&modtype=8&type=1&classid=&doing=2&field=picurl&filepass=<?=$filepass?>&sinfo=1','','width=700,height=550,scrollbars=yes');" title="选择已上传的图片"><img src="../../../data/images/changeimg.gif" alt="选择/上传图片" width="22" height="22" border="0" align="absbottom"></a> 
                </td>
            </tr>
			<tr bgcolor="#FFFFFF"> 
              <td width="27%" height="25">小图片地址：</td>
              <td width="73%" height="25"> <input name="smallpicurl" type="text" id="smallpicurl" value="<?=$r[smallpicurl]?>">
			   <a onclick="window.open('../../ecmseditor/FileMain.php?<?=$ecms_hashur['ehref']?>&modtype=8&type=1&classid=&doing=2&field=smallpicurl&filepass=<?=$filepass?>&sinfo=1','','width=700,height=550,scrollbars=yes');" title="选择已上传的图片"><img src="../../../data/images/changeimg.gif" alt="选择/上传图片" width="22" height="22" border="0" align="absbottom"></a> 
                </td>
            </tr>
			<tr bgcolor="#FFFFFF"> 
              <td width="27%" height="25">链接地址：</td>
              <td width="73%" height="25"> <input name="add[url]" type="text" id="add[url]" value="<?=$r[url]?>">
                </td>
            </tr>
			<tr bgcolor="#FFFFFF"> 
              <td width="27%" height="25">链接打开方式：</td>
              <td width="73%" height="25"> 
				<select name="add[target]" id="select">
                  <option value="_blank"<?=$target1?>>在新窗口打开</option>
                  <option value="_self"<?=$target2?>>在原窗口打开</option>
                  <option value="_parent"<?=$target3?>>在父窗口打开</option>
                </select>
                </td>
            </tr>
			<tr bgcolor="#FFFFFF"> 
              <td width="27%" height="25">排序：</td>
              <td width="73%" height="25"> <input name="add[fsort]" type="text" id="add[fsort]" value="<?=intval($r[fsort])?>">
                </td>
            </tr>
            <tr bgcolor="#FFFFFF"> 
              <td width="27%" height="25">描述：</td>
              <td width="73%" height="25"> <textarea name="add[comment]" type="text" id="add[comment]"><?=$r[comment]?></textarea>
                </td>
            </tr>
			<tr bgcolor="#FFFFFF"> 
              <td height="25">&nbsp;</td>
              <td height="25"> <input type="submit" name="Submit" value="提交"> 
                <input type="reset" name="Submit2" value="重置"></td>
            </tr>
	</table>
</form>
</body>
</html>