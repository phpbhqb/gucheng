<?php
function getcon($url){
	$ch=curl_init();
	curl_setopt($ch,CURLOPT_URL,$url);
	$host=getHost($url);
	curl_setopt($ch,CURLOPT_REFERER,$host);
	curl_setopt($ch,CURLOPT_TIMEOUT,30);
	curl_setopt($ch,CURLOPT_HEADER,0);
	curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
	$listcon=curl_exec($ch);
	$encode=mb_detect_encoding($listcon,array("ASCII","UTF-8","GB2312","GBK","BIG5"));
	if($encode!='UTF-8'){
		$listcon=iconv($encode,'utf-8',$listcon);
	}
	curl_close($ch);
	return $listcon;
	
}
function getHost($url){
	$urlArr=explode('/',$url);
	return implode('/',array_slice($urlArr,0,3));
}
function getUrlEnd($url){
	$urlArr=explode('/',$url);
	return str_replace('4399_','6676_',$urlArr[count($urlArr)-1]);
}
function randtime(){
	return rand(1,10);
}
//php获取中文字符拼音首字母
function getFirstCharter($str){
	if(empty($str)){return '';}
	$fchar=ord($str{0});
	if($fchar>=ord('A')&&$fchar<=ord('z')) return strtoupper($str{0});
	$s1=iconv('UTF-8','gb2312',$str);
	$s2=iconv('gb2312','UTF-8',$s1);
	$s=$s2==$str?$s1:$str;
	$asc=ord($s{0})*256+ord($s{1})-65536;
	if($asc>=-20319&&$asc<=-20284) return 'A';
	if($asc>=-20283&&$asc<=-19776) return 'B';
	if($asc>=-19775&&$asc<=-19219) return 'C';
	if($asc>=-19218&&$asc<=-18711) return 'D';
	if($asc>=-18710&&$asc<=-18527) return 'E';
	if($asc>=-18526&&$asc<=-18240) return 'F';
	if($asc>=-18239&&$asc<=-17923) return 'G';
	if($asc>=-17922&&$asc<=-17418) return 'H';
	if($asc>=-17417&&$asc<=-16475) return 'J';
	if($asc>=-16474&&$asc<=-16213) return 'K';
	if($asc>=-16212&&$asc<=-15641) return 'L';
	if($asc>=-15640&&$asc<=-15166) return 'M';
	if($asc>=-15165&&$asc<=-14923) return 'N';
	if($asc>=-14922&&$asc<=-14915) return 'O';
	if($asc>=-14914&&$asc<=-14631) return 'P';
	if($asc>=-14630&&$asc<=-14150) return 'Q';
	if($asc>=-14149&&$asc<=-14091) return 'R';
	if($asc>=-14090&&$asc<=-13319) return 'S';
	if($asc>=-13318&&$asc<=-12839) return 'T';
	if($asc>=-12838&&$asc<=-12557) return 'W';
	if($asc>=-12556&&$asc<=-11848) return 'X';
	if($asc>=-11847&&$asc<=-11056) return 'Y';
	if($asc>=-11055&&$asc<=-10247) return 'Z';
	return null;
}
function garbage($signal){
	echo "signel $signal received\n" ;
	while(($pid = pcntl_waitpid(-1, $status, WNOHANG))> 0){
		echo "\t child end pid $pid , status $status\n" ;
    }
}

function getdownload($url,$referurl,$filename,$count=3){
	if($count==0){
		return 0;
	}
	$filesize=0;
	$ch=curl_init();
	curl_setopt($ch,CURLOPT_URL,$url);
	curl_setopt($ch,CURLOPT_REFERER,$referurl);
	curl_setopt($ch, CURLOPT_HEADER, 0);    //取得返回头信息
	curl_setopt($ch,CURLOPT_TIMEOUT,300);
	//curl_setopt($ch,CURLOPT_FOLLOWLOCATION,1);//递归的抓取http头中Location中指明的url
	//curl_setopt($ch,CURLOPT_MAXREDIRS,5);//指定最多的HTTP重定向的数量
	curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
	$res=curl_exec($ch);
	$fp = fopen($filename,"w");
	if($fp){
		fwrite($fp,$res);
		fclose($fp);
		curl_close($ch);
		$filesize=filesize($filename);
		if(empty($filesize)){
			getdownload($url,$referurl,$filename,$count-1);
		}
	}else{
		curl_close($ch);
		getdownload($url,$referurl,$filename,$count-1);
	}
	
	return $filesize;
}
function getdownload2($url,$filename){
	$ch=curl_init($url);
	$fp=fopen($filename,'w');
	curl_setopt($ch,CURLOPT_FILE,$fp);
	curl_setopt($ch,CURLOPT_HEADER,0);
	curl_exec($ch);
	curl_close($ch);
	fclose($fp);
	return filesize($filename);
}