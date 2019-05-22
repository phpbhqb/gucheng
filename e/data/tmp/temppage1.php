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
    <title>[!--pagetitle--]</title>
    <meta name="keywords" content="[!--pagekey--]" />
    <meta name="description" content="[!--pagedes--]" />
    <link rel="stylesheet" href="[!--news.url--]skin/stock/css/css.css">
    <link rel="stylesheet" href="[!--news.url--]skin/stock/css/style.css">
</head> 

<body>
    <div class="nav">
        <div class="topBar">
            <div class="barCont box">
                <div class="boxL Crumbs"><?=$public_r['sitename']?> > 关于我们</div>
                <div class="bdsharebuttonbox share"><label style="float:left;">分享到：</label><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信" style="margin-top:13px;"></a><a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友" style="margin-top:13px;"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" style="margin-top:13px;"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
            </div>
        </div>
         <div class="navCont">
            <div class="navContBox clearfix">
                <div class="logo"><a href="[!--news.url--]"><img src="[!--news.url--]skin/stock/images/logo.png"></a></div>
                <div class="menu">
                    <ul>
                        <li>
                            <a href="[!--news.url--]">首页</a>
                        </li>
                         <? @sys_ShowClassByTemp('0',12,0,0);?>
                    </ul>
                </div>
                <div class="sec"><input type="text" placeholder="热搜：<?=$public_r['add_search_title']?>"><img src="[!--news.url--]skin/stock/images/sec.png"></div>
            </div>
        </div>
    </div>
    <div class="center">
        <div class="centerCont mg1200 clearfix">
            <div class="aboutUs">
                <h2>关于我们</h2>
                <p>全球证券网本着“客户第一，诚信至上”的原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。全球证券网本着“客户第一，诚信至上”的 原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。
                </p>
                <h2>商务合作</h2>
                <p>全球证券网本着“客户第一，诚信至上”的原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。全球证券网本着“客户第一，诚信至上”的 原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。
                </p>
                <h2>法律声明</h2>
                <p>全球证券网本着“客户第一，诚信至上”的原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。全球证券网本着“客户第一，诚信至上”的 原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。
                </p>
            </div>
        </div>
    </div>
</body>

</html>