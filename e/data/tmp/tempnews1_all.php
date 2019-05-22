<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?=$grpagetitle?></title>
    <meta name="keywords" content="<?=$ecms_gr[keyboard]?>" />
    <meta name="description" content="<?=$grpagetitle?>" />
    <link rel="stylesheet" href="/skin/stock/css/css.css">
    <link rel="stylesheet" href="/skin/stock/css/style.css">
    <link rel="stylesheet" href="/skin/stock/css/zhishu.css">
    <script type="text/javascript">
        var newsurl='/';
    </script>
</head> 

<body>
    <div class="nav">
        <div class="topBar">
            <div class="barCont box">
                <div class="boxL Crumbs"><?=$public_r['sitename']?> > <a href="<?=sys_ReturnBqClassname(array('classid'=>$GLOBALS['navclassid']),9)?>"><?=$class_r[$ecms_gr[classid]][classname]?></a> > <a href="<?=$grtitleurl?>"><?=$ecms_gr[ftitle]?></a></div>
                <div class="bdsharebuttonbox share"><label style="float:left;">分享到：</label><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信" style="margin-top:13px;"></a><a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友" style="margin-top:13px;"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" style="margin-top:13px;"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
            </div>
        </div>
         <div class="navCont">
            <div class="navContBox clearfix">
                <div class="logo"><a href="/"><img src="/skin/stock/images/logo.png"></a></div>
                <div class="menu">
                    <ul>
                        <li>
                            <a href="/">首页</a>
                        </li>
                         <? @sys_ShowClassByTemp('0',12,0,0);?>
                    </ul>
                </div>
                <div class="sec"><input type="text" placeholder="热搜：<?=$public_r['add_search_title']?>" id="search_key" value="<?php if(isset($_GET['key'])) echo ehtmlspecialchars($_GET['key']); ?>"><img src="/skin/stock/images/sec.png"></div>
            </div>
        </div>
    </div>
    <div class="center">
        <div class="centerCont mg1200 clearfix">
            <div class="AdtImg imgAll"><script src="/d/js/acmsd/thea1.js"></script></div>
            <div class="conter">
                <div class="contL">
                    <div class="newFlash box">
                        <span>快讯</span>
                        <div class="newFlashList boxL">
                            <?php
$bqno=0;
$ecms_bq_sql=sys_ReturnEcmsLoopBq("select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort",0,24,0);
if($ecms_bq_sql){
while($bqr=$empire->fetch($ecms_bq_sql)){
$bqsr=sys_ReturnEcmsLoopStext($bqr);
$bqno++;
?>
                                <a href="<?=$bqr['url']?>"><?=$bqr['fname']?></a>
                            <?php
}
}
?>
                        </div>
                    </div>
                     <div class="content">
                        <div class="contentTxt">
                            <h2><?=$ecms_gr[title]?></h2>
                            <p class="time"><?=date('Y-m-d H:i:s',$ecms_gr[newstime])?></p>
                            <?=strstr($ecms_gr[newstext],'[!--empirenews.page--]')?'[!--newstext--]':$ecms_gr[newstext]?>
                            <h3 class="source">此文章来源于<?=$docheckrep[1]?ReplaceBefrom($ecms_gr[befrom]):$ecms_gr[befrom]?></h3>
                        </div>
                        <div class="GraspUserTitle box">
                            <p class="boxL">猜你喜欢</p>
                            <span>更多可能你喜欢的内容</span>
                        </div>
                        <div class="GraspUserCont clearfix">
                            <ul>
                                <?php
$bqno=0;
$ecms_bq_sql=sys_ReturnEcmsLoopBq("select ftitle,titleurl from {$dbtbpre}ecms_news where isgood=3 order by newstime desc limit 8",0,24,0);
if($ecms_bq_sql){
while($bqr=$empire->fetch($ecms_bq_sql)){
$bqsr=sys_ReturnEcmsLoopStext($bqr);
$bqno++;
?>
                                <li><a href="<?=$bqr['titleurl']?>"><?=esub($bqr['ftitle'],20)?></a></li>
                                <?php
}
}
?>
                            </ul>
                        </div>
                        <div class="newList">
                        </div>
                        <div class="more_list_page" start="0" cid="<?=$GLOBALS['navclassid']?>" order="2" style="display:none">
                    </div>
                    
                </div>
                <div class="contR">
                    <!--<div class="echarts box">
                        <ul id="title" class="title boxL">
                            <li class="ho"><img src="./images/echarts.jpg"></li>
                            <li><img src="./images/echarts.jpg"></li>
                            <li><img src="./images/echarts.jpg"></li>
                        </ul>
                        <div id="wrap" class="wrap">
                            <div class="active">上证指数</div>
                            <div>深证指数</div>
                            <div>创业指数</div>
                        </div>
                    </div>-->

                    <div class="hqpic"><div class="hq_data" id="hq_data">
<b>2882.3<em>-73.41&nbsp;&nbsp;-2.48%</em></b>
<a href="http://hq.gucheng.com/SH000001/" id="hqCanvas" target="_blank"></a>
</div>
<ul id="stockUl"><li><a href="http://hq.gucheng.com/SH000001/" target="_blank" class="on">上证指数</a></li><li><a href="http://hq.gucheng.com/SZ399001/" target="_blank">深证成指</a></li><li><a href="http://hq.gucheng.com/SZ399006/" target="_blank">创业板指</a></li></ul>
</div>



                    <div class="recommend">
                        <div class="recommendTitle">推荐阅读</div>
                        <?php
$bqno=0;
$ecms_bq_sql=sys_ReturnEcmsLoopBq("select title,titleurl,smalltext from {$dbtbpre}ecms_news where isgood=1 order by newstime desc limit 6",0,24,0);
if($ecms_bq_sql){
while($bqr=$empire->fetch($ecms_bq_sql)){
$bqsr=sys_ReturnEcmsLoopStext($bqr);
$bqno++;
?>
                            <div class="reListItem">
                                <div class="reListItmeTitle"><a href="<?=$bqr['titleurl']?>"><?=$bqr['title']?></a></div>
                                <div class="reListCont">
                                    <?=esub($bqr['smalltext'],80)?>
                                </div>
                            </div>
                        <?php
}
}
?>
                    </div>
                    <div class="focusing">
                        <div class="bigImg imgAll"><script src="/d/js/acmsd/thea2.js"></script></div>

                        <?php
$bqno=0;
$ecms_bq_sql=sys_ReturnEcmsLoopBq("select title,titleurl,titlepic,newstime,titlepic_alt from {$dbtbpre}ecms_news where isgood=2 order by newstime desc limit 3",0,24,0);
if($ecms_bq_sql){
while($bqr=$empire->fetch($ecms_bq_sql)){
$bqsr=sys_ReturnEcmsLoopStext($bqr);
$bqno++;
?>
                             <div class="focusingItem box">
                            <div class="focusingImg imgAll"><a href="<?=$bqr['titleurl']?>"><img src="<?=$bqr['titlepic']?>" width="135px" height="75px" alt="<?=$bqr['titlepic_alt']?>"></a></div>
                            <div class="focusingCont boxL">
                                <p><a href="<?=$bqr['titleurl']?>"><?=$bqr['title']?></a></p>
                                <span><?=date('Y-m-d H:i',$bqr['newstime'])?></span>
                            </div>
                        </div>
                        <?php
}
}
?>
                    </div>
                    <div class="emailUrl box">
                        <p class="boxL emailImg"><?=$public_r['add_law_email']?></p>
                        <span><a href="javascript:;">法律声明</a></span>
                    </div>
                    <div class="recommend">
                        <div class="recommendTitle">友情链接</div>
                        <div class="fdsLink clearfix">
                            <ul>
                                <?php
$bqno=0;
$ecms_bq_sql=sys_ReturnEcmsLoopBq("select lname,lurl from {$dbtbpre}enewslink order by myorder",0,24,0);
if($ecms_bq_sql){
while($bqr=$empire->fetch($ecms_bq_sql)){
$bqsr=sys_ReturnEcmsLoopStext($bqr);
$bqno++;
?>
                                    <li><a href="<?=$bqr['lurl']?>"><?=$bqr['lname']?></a></li>
                                <?php
}
}
?>
                            </ul>
                        </div>
                    </div>


                </div>

            </div>
        </div>
    </div>
    <script src="/skin/stock/js/jquery-3.4.1.min.js"></script>
    <script src="/skin/stock/js/pIndex.js"></script>
</body>

</html>