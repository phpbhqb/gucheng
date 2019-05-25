<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="viewport" content="width=device-width,user-scalable=no">
    <meta name="viewport" content="target-densitydpi=device-dpi,width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
    <title><?=$pagetitle?></title>
    <meta name="keywords" content="<?=$pagekey?>" />
<meta name="description" content="<?=$pagedes?>" />
    <link rel="stylesheet" href="<?=$public_r['newsurl']?>skin/stock/css/mcss.css">
    
    <script>
        if (!/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
            window.location.href = '<?=$public_r['newsurl']?>';
        }
    </script>
    <script type="text/javascript">
        var newsurl='<?=$public_r['newsurl']?>';
    </script>
    
</head>

<body>
    <div class="menu">
        <ul>
            <li></li>
            <li><a href="<?=$public_r['newsurl']?>e/wap/">首页</a></li>
<?php
            $sql=$empire->query("select classid,classname,islast from {$dbtbpre}enewsclass where bclassid=0 and showclass=0 and wburl='' order by myorder,classid");
while($r=$empire->fetch($sql))
{
    $classurl=$public_r['newsurl']."e/wap/list.php?classid=".$r[classid];
?>

<li><a href="<?=$classurl?>"><?=$r['classname']?></a>
</li>

    <?php 
        }
    ?>
        </ul>
    </div>
    <div class="AdtImg">
        <script src="/d/js/acmsd/thea1.js"></script>
    </div>
    <div class="newsList">
        
    </div>
    <div class="moreNews" start="0" cid="<?=$GLOBALS['navclassid']?>" type="m">点击查看更多</div>
    <div class="footer">版权所有：全球证券网</div>
    <script src="<?=$public_r['newsurl']?>skin/stock/js/jquery-3.4.1.min.js"></script>
    <script src="<?=$public_r['newsurl']?>skin/stock/js/mIndex.js"></script>
</body>

</html>