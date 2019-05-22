<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="viewport" content="width=device-width,user-scalable=no">
    <meta name="viewport" content="target-densitydpi=device-dpi,width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
    <link rel="stylesheet" href="<?=$public_r['newsurl']?>skin/stock/css/mcss.css">
    <title><?=$pagetitle?></title>
    <meta name="keywords" content="<?=$pagekey?>" />
<meta name="description" content="<?=$pagedes?>" />
<script type="text/javascript">
    if (!/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
            window.location.href = '<?=$public_r['newsurl']?>';
        }
        var newsurl='<?=$public_r['newsurl']?>';
    </script>
</head>

<body>
    <div class="navMenu box">
        <div class="ret"><a href="<?=$public_r['newsurl']?>e/wap/list.php?classid=<?=$GLOBALS['navclassid']?>"><img src="<?=$public_r['newsurl']?>skin/stock/images/ret.png"></a></div>
        <div class="contentTitle boxL"><?=$class_r[$GLOBALS['navclassid']]['classname']?></div>
        <div class="mLogoR"><img src="<?=$public_r['newsurl']?>skin/stock/images/mLogoR.png"></div>
    </div>
    <div class="AdtImg">
        <script src="/d/js/acmsd/thea1.js"></script>
    </div>
    <div class="contier">
        <div class="contierTit"><?=stripSlashes($r['title'])?></div>
        <div class="box contierTimer">
            <span class="boxL"><?=date("Y-m-d H:i",$r['newstime'])?></span>
            <span class="boxL">来源：<?=$r['befrom']?></span>
        </div>
        <div class="contierCon">
            <?=stripSlashes($r['newstext'])?>
        </div>
    </div>
    <div class="newsList">
    </div>
    <div class="moreNews" start="0" cid="<?=$GLOBALS['navclassid']?>" order="2" type="m">点击查看更多</div>
    <div class="footer">版权所有：全球证券网</div>
    <script src="<?=$public_r['newsurl']?>skin/stock/js/jquery-3.4.1.min.js"></script>
    <script src="<?=$public_r['newsurl']?>skin/stock/js/mIndex.js"></script>
</body>

</html>
