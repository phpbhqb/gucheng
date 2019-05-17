<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><tr bgcolor='#ffffff' height=25><td><input type=text name=myorder[] value=0 size=2><input type=hidden name=classid[] value=1></td><td><a href='#e' onclick=addi(1)><img src='../data/images/txt.gif' border=0></a></td><td align=center>1</td><td><input type=checkbox name=reclassid[] value=1> <a href='/gucheng/caijing/' target=_blank>财经</a></td><td align=center>0</td><td><a href='#e' onclick=editc(1)>修改</a> <a href='#e' onclick=copyc(1)>复制</a> <a href='#e' onclick=delc(1)>删除</a></td><td><a href='#e' onclick=relist(1)>刷新</a> <a href='#e' onclick=renews(1,'news')>信息</a> <a href='#e' onclick=rejs(1)>JS</a> <a href='#e' onclick=tvurl(1)>调用</a> <a href='#e' onclick=ttc(1)>分类</a> <a href='#e' onclick=docinfo(1)>归档</a></td></tr>