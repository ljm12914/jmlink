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
	<button id="copy" onclick="copy()">回到主页</button>
	<script>
		function copy(){
			var a=document.getElementById("result");
			a.select();
			document.execCommand("copy");
			location.href="jmlink.html";
		}
	</script>
	<?php
	$your_domain = "localhost";//<<<<<------------------------------------------------CHANGE IT TO YOUR DOMAIN!!!!!
	$url = $_GET['url'];
	$method = $_GET['method'];
	$pattern = "/^https?:\/\/.*\...+$/";
	if(preg_match($pattern,$url)){
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
		if($method == "get"){
			mkdir($a.$b.$c);
    		$file = fopen("./".$a.$b.$c."/jmlink.html","w");
			$content = "<title>jmlink</title><meta charset=\"utf-8\" /><p style=\"text-align:center;\">正在重定向至短链接指向的网址...<br /><a href=\"$url\">如没有成功重定向，请点击此处重试</a><hr /></p><small>2019-2021 jmlink</small><script>location.href=\"$url\";</script>";
			fwrite($file,$content);
			echo "<script>document.getElementById(\"tips\").innerHTML = \"短链接生成成功。\"</script>";
			echo "<script>document.getElementById(\"copy\").innerHTML = \"点击复制并回到主页\"</script>";
			echo "<script>document.getElementById(\"result\").innerHTML = \"".$your_domain."/".$a.$b.$c."\"</script>";
		}
		elseif($method == "post"){
			mkdir($a.$b.$c);
    		$file = fopen("./".$a.$b.$c."/jmlink.html","w");
			$pattern = "/\?.*$/";
			preg_match($pattern,$url,$tempqsarray);
			$tempqs = str_replace("?","",$tempqsarray[0]);
			$query_array = explode("&",$tempqs);
			$host_pattern = "/^.*\?/";
			preg_match($host_pattern,$url,$temphostarray);
			$host = str_replace("?","",$temphostarray[0]);
			$query_key = $query_value = "";
			for($i = 0; $i < count($query_array); $i++){
				if(count(explode("=",$query_array[$i])) != 1){
					$query_key .= "\"";
					$query_key .= explode("=",$query_array[$i])[0];
					$query_key .= "\"";
					$query_value .= "\"";
					$query_value .= explode("=",$query_array[$i])[1];
					$query_value .= "\"";
				}
				else{
					$query_key .= "\"";
					$query_key .= "\"";
					$query_value .= "\"";
					$query_value .= explode("=",$query_array[$i])[0];
					$query_value .= "\"";
				}
				if($i != count($query_array) - 1)
				{
					$query_key .= ",";
					$query_value .= ",";
				}
			}
			$content = "<title>jmlink</title><meta charset=\"utf-8\" /><p style=\"text-align:center;\">正在重定向至短链接指向的网址...<br /><a href=\"#\" onclick=\"post()\">如没有成功重定向，请点击此处重试</a><hr /></p><small>2019-2021 jmlink</small><script>var query_key=new Array($query_key);var query_value=new Array($query_value);var temp=document.createElement(\"form\");temp.action=\"$host\";temp.method=\"post\";temp.style.display=\"none\";for(var i in query_key){var cs=document.createElement(\"textarea\");cs.name=query_key[i];cs.value=query_value[i];temp.appendChild(cs);}document.body.appendChild(temp);temp.submit();</script><script>function post(){var query_key=new Array($query_key);var query_value=new Array($query_value);var temp=document.createElement(\"form\");temp.action=\"$host\";temp.method=\"post\";temp.style.display=\"none\";for(var i in query_key){var cs=document.createElement(\"textarea\");cs.name=query_key[i];cs.value=query_value[i];temp.appendChild(cs);}document.body.appendChild(temp);temp.submit();}</script>";
			fwrite($file,$content);
			echo "<script>document.getElementById(\"tips\").innerHTML = \"短链接生成成功。\"</script>";
			echo "<script>document.getElementById(\"copy\").innerHTML = \"点击复制并回到主页\"</script>";
			echo "<script>document.getElementById(\"result\").innerHTML = \"".$your_domain."/".$a.$b.$c."\"</script>";
		}
		else{
			echo "<script>alert(\"请求方法参数错误！\");window.history.go(-1);</script>";
		}
	}
	else{
		echo "<script>document.getElementById(\"tips\").innerHTML = \"短链接生成失败。\"</script>";
		echo "<script>alert(\"输入的网址格式错误，可能未在开头添加http://或https://。请检查输入！\");window.history.go(-1);</script>";
	}
	?>
</body>
</html>
