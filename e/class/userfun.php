<?php
//---------------------------用户自定义标签函数文件
//返回内容分页
function sys_ShowTextPage_stock($totalpage,$page,$dolink,$add,$type,$search=""){
    global $fun_r,$public_r;
    if($totalpage==1)
    {
        return '';
    }
    $page_line=$public_r['textpagelistnum'];
    $snum=2;
    //$totalpage=ceil($num/$line);//取得总页数
    $firststr='';
    //上一页
    if($page<>1)
    {
        $toppage='<a href="'.$dolink.$add[filename].$type.'" class="a1">'.$fun_r['startpage'].'</a>&nbsp;';
        $pagepr=$page-1;
        if($pagepr==1)
        {
            $prido=$add[filename].$type;
        }
        else
        {
            $prido=$add[filename].'_'.$pagepr.$type;
        }
        $prepage='<a href="'.$dolink.$prido.'" class="a1">'.$fun_r['pripage'].'</a>';
    }
    //下一页
    if($page!=$totalpage)
    {
        $pagenex=$page+1;
        $nextpage='&nbsp;<a href="'.$dolink.$add[filename].'_'.$pagenex.$type.'" class="a1">'.$fun_r['nextpage'].'</a>';
        $lastpage='&nbsp;<a href="'.$dolink.$add[filename].'_'.$totalpage.$type.'" class="a1">'.$fun_r['lastpage'].'</a>';
    }
    $starti=$page-$snum<1?1:$page-$snum;
    $no=0;
    for($i=$starti;$i<=$totalpage&&$no<$page_line;$i++)
    {
        $no++;
        if($page==$i)
        {
            $is_1="<span>";
            $is_2="</span>";
        }
        elseif($i==1)
        {
            $is_1='<a href="'.$dolink.$add[filename].$type.'">';
            $is_2="</a>";
        }
        else
        {
            $is_1='<a href="'.$dolink.$add[filename].'_'.$i.$type.'">';
            $is_2="</a>";
        }
        $returnstr.='&nbsp;'.$is_1.$i.$is_2;
    }
    $returnstr=$firststr.$toppage.$prepage.$returnstr.$nextpage.$lastpage;
    return $returnstr;
}
?>