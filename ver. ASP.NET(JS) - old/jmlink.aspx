<%@ Page language="javascript"%>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jmlink</title>
    <body style="text-align: center;">
        <h1>您的短链接生成成功。</h1>
        <p>您的短链接为：</p>
        <textarea id="show" readonly="readonly" style="height: 27px;line-height: 27px;text-align: center;resize: none;"></textarea>
        <br /><br />
        <input type="button" value="点击复制并回到主页" onclick="copylink()" />
        <script>function copylink(){var fz=document.getElementById("show");fz.select();document.execCommand("copy");location.href="index.html"}</script>
    </body>
    <%
    var fso,fas;
    fso = new ActiveXObject("Scripting.FileSystemObject");
    fas = new ActiveXObject("Adodb.Stream");
    var rd1,rd2,rd3,rdz;
    var wz = Request.QueryString("wzin");
    var sea1,sea2,sea3,sea4;
    while(1 == 1){
        rd1 = sj();
        System.Threading.Thread.Sleep(250);
        rd2 = sj();
        System.Threading.Thread.Sleep(250);
        rd3 = sj();
        System.Threading.Thread.Sleep(250);
        rdz = rd1 + rd2 + rd3;
        if(!fso.FolderExists("E:\\Sites\\jmlink\\" + rdz)){
            fso.CreateFolder("E:\\Sites\\jmlink\\" + rdz);
            break;
        }
        else{
            Response.Write("<script>alert(\"出现问题，请重试\")</script>");
            return;
        }
    }
    sea1 = wz.search(/http:\/\//i);
    sea2 = wz.search(/https:\/\//i);
    sea3 = wz.search(/\./);
    sea4 = wz.length;
    switch(sea1){
        case -1:{
            if(sea2 != -1){
                break;
            }
            else{
                Response.Write("<script>alert(\"输入的网址需要包含http://或https://！\")</script>");
                fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
                Response.Write("<script>javascript:history.go(-1)</script>");
                return;
            }
        }
        case 0:{
            break;
        }
        default:
            Response.Write("<script>alert(\"输入网址的格式不对。是否漏了或多加了什么？\")</script>");
            fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
            Response.Write("<script>javascript:history.go(-1)</script>");
            return;
    }
    switch(sea2){
        case -1:{
            break;
        }
        case 0:{
            break;
        }
        default:
            Response.Write("<script>alert(\"输入网址的格式不对。是否漏了或多加了什么？\")</script>");
            fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
            Response.Write("<script>javascript:history.go(-1)</script>");
            return;
    }
    if(sea3 == -1){
        Response.Write("<script>alert(\"输入网址的格式不对。是否漏了或多加了什么？\")</script>");
        fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
        Response.Write("<script>javascript:history.go(-1)</script>");
        return;
    }
    if(sea4 < 20){
        Response.Write("<script>alert(\"输入的网址已经足够短，没有必要使用短链接\")</script>");
        fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
        Response.Write("<script>location.href=\"https://jml.ink/\"</script>");
        return;
    }
    fas.Charset = "utf-8";
    fas.Open();
    fas.WriteText("<title>正在重定向... - JMl.ink</title><p style=\"text-align:center;\">正在为您重定向至短链接指向的网址......<br /><a href=\"" + wz + "\">如没有成功重定向，请点击此处重试</a><hr /></p><small>Copyright 2019-2021 JMl.ink 制作者LJM12914 保留所有权利. All Rights Reserved.</small><script>location.href=\"" + wz + "\";</script>");
    fas.SaveToFile("E:\\Sites\\jmlink\\" + rdz + "\\l.html",2);
    fas.Close();
    Response.Write("<script>document.getElementById(\"show\").innerHTML = \"https://jml.ink/" + rdz + "\"</script>");
    function sj() {
        var input = Math.floor(Math.random() * 61) + 1;
        switch (input) {
        case 1:
            return "0";
        case 2:
            return "1";
        case 3:
            return "2";
        case 4:
            return "3";
        case 5:
            return "4";
        case 6:
            return "5";
        case 7:
            return "6";
        case 8:
            return "7";
        case 9:
            return "8";
        case 10:
            return "9";
        case 11:
            return "a";
        case 12:
            return "b";
        case 13:
            return "c";
        case 14:
            return "d";
        case 15:
            return "e";
        case 16:
            return "f";
        case 17:
            return "g";
        case 18:
            return "h";
        case 19:
            return "i";
        case 20:
            return "j";
        case 21:
            return "k";
        case 22:
            return "l";
        case 23:
            return "m";
        case 24:
            return "n";
        case 25:
            return "o";
        case 26:
            return "p";
        case 27:
            return "q";
        case 28:
            return "r";
        case 29:
            return "s";
        case 30:
            return "t";
        case 31:
            return "u";
        case 32:
            return "v";
        case 33:
            return "w";
        case 34:
            return "x";
        case 35:
            return "y";
        case 36:
            return "z";
        case 37:
            return "A";
        case 38:
            return "B";
        case 39:
            return "C";
        case 40:
            return "D";
        case 41:
            return "E";
        case 42:
            return "F";
        case 43:
            return "G";
        case 44:
            return "H";
        case 45:
            return "I";
        case 46:
            return "J";
        case 47:
            return "K";
        case 48:
            return "L";
        case 49:
            return "M";
        case 50:
            return "N";
        case 51:
            return "O";
        case 52:
            return "P";
        case 53:
            return "Q";
        case 54:
            return "R";
        case 55:
            return "S";
        case 56:
            return "T";
        case 57:
            return "U";
        case 58:
            return "V";
        case 59:
            return "W";
        case 60:
            return "X";
        case 61:
            return "Y";
        case 62:
            return "Z";
        }
    }
    %>
</html>
