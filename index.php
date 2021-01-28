<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="main.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jmlink</title>
</head>
<body>
	<h1 id="tips">正在生成短链接……</h1>
	<textarea id="result" cols="30" rows="1" readonly></textarea>
	<br />
	<button onclick="copy()">点击复制并回到主页</button>
	<script>
		function copy(){
			var a=document.getElementById("result");
			a.select();
			document.execCommand("copy");
			location.href="index.html";
		}
	</script>
	<?php
	$your_domain = "jml.ink";
	$url = $_GET['url'];
	$method = $_GET['method'];
	$rangoal = array(
		 "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
		 "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
		 "0","1","2","3","4","5","6","7","8","9");
	while(true){
		$a = $rangoal[mt_rand(0,count($rangoal))];
		sleep(0.05);
		$b = $rangoal[mt_rand(0,count($rangoal))];
		sleep(0.05);
		$c = $rangoal[mt_rand(0,count($rangoal))];
		if(!file_exists("./".$a.$b.$c)){
			break;
		}
	}
	mkdir($a.$b.$c);
    $file = fopen("./".$a.$b.$c."/index.html","w");
	$content = "<title>jmlink</title><meta charset=\"utf-8\" /><p style=\"text-align:center;\">正在重定向至短链接指向的网址...<br /><a href=\"".$url."\">如没有成功重定向，请点击此处重试</a><hr /></p><small>2019-2021 jmlink</small><script>location.href=\"".$url."\";</script>";
	fwrite($file,$content);
	echo "<script>document.getElementById(\"result\").innerHTML = \"".$your_domain."/".$a.$b.$c."\"</script>";
	?>
</body>
</html>