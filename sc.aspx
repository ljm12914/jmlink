<%@ Page language="javascript"%>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JMl.ink - LJM12914�Ķ����ӷ�����վ</title>
    <body style="text-align: center;">
        <h1>���Ķ��������ɳɹ���</h1>
        <p>���Ķ�����Ϊ��</p>
        <textarea id="show" readonly="readonly" style="height: 27px;line-height: 27px;text-align: center;resize: none;"></textarea>
        <br /><br />
        <input type="button" value="������Ʋ��ص���ҳ" onclick="copylink()" />
        <script>function copylink(){var fz=document.getElementById("show");fz.select();document.execCommand("copy");location.href="index.html"}</script>
    </body>
    <%
    //������������
    var fso,fas;
    fso = new ActiveXObject("Scripting.FileSystemObject");
    fas = new ActiveXObject("Adodb.Stream");
    var rd1,rd2,rd3,rdz;
    var wz = Request.QueryString("wzin");
    var sea1,sea2,sea3,sea4;
    while(1 == 1){
        //������ɲ��ϳ�
        rd1 = sj();
        System.Threading.Thread.Sleep(250);
        rd2 = sj();
        System.Threading.Thread.Sleep(250);
        rd3 = sj();
        System.Threading.Thread.Sleep(250);
        rdz = rd1 + rd2 + rd3;
        //��֤Ψһ
        if(!fso.FolderExists("E:\\Sites\\jmlink\\" + rdz)){
            fso.CreateFolder("E:\\Sites\\jmlink\\" + rdz);
            break;
        }
        else{
            Response.Write("<script>alert(\"�������⣬������\")</script>");
            return;
        }
    }
    //������ַ��α���𣨷�ֹ�Ҹ㣩
    sea1 = wz.search(/http:\/\//i);
    sea2 = wz.search(/https:\/\//i);
    sea3 = wz.search(/\./);
    sea4 = wz.length;
    //����λ�ã��������ɸѡ��Ŀ��
    var sea5 = wz.search(/xn--ncxz81f31b/i);
    if(sea5 != -1){
        Response.Write("<script>alert(\"�������дʣ��������ɶ����ӣ���\")</script>");
        fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
        Response.Write("<script>javascript:history.go(-1)</script>");
        return;
    }
    sea5 = wz.search(/�Ӿ���/i);
    if(sea5 != -1){
        Response.Write("<script>alert(\"�������дʣ��������ɶ����ӣ���\")</script>");
        fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
        Response.Write("<script>javascript:history.go(-1)</script>");
        return;
    }
    //��������λ��
    switch(sea1){
        case -1:{
            if(sea2 != -1){
                break;
            }
            else{
                Response.Write("<script>alert(\"�������ַ��Ҫ����http://��https://��\")</script>");
                fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
                Response.Write("<script>javascript:history.go(-1)</script>");
                return;
            }
        }
        case 0:{
            break;
        }
        default:
            Response.Write("<script>alert(\"������ַ�ĸ�ʽ���ԡ��Ƿ�©�˻�����ʲô��\")</script>");
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
            Response.Write("<script>alert(\"������ַ�ĸ�ʽ���ԡ��Ƿ�©�˻�����ʲô��\")</script>");
            fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
            Response.Write("<script>javascript:history.go(-1)</script>");
            return;
    }
    if(sea3 == -1){
        Response.Write("<script>alert(\"������ַ�ĸ�ʽ���ԡ��Ƿ�©�˻�����ʲô��\")</script>");
        fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
        Response.Write("<script>javascript:history.go(-1)</script>");
        return;
    }
    if(sea4 < 20){
        Response.Write("<script>alert(\"�������ַ�Ѿ��㹻�̣�û�б�Ҫʹ�ö�����\")</script>");
        fso.DeleteFolder("E:\\Sites\\jmlink\\" + rdz);
        Response.Write("<script>location.href=\"https://jml.ink/\"</script>");
        return;
    }
    //���Ʋ�д�루�����ļ���ҪȨ�ޣ�ֱ�Ӵ��ļ�Ȼ��д�ļ�����һЩ��
    fas.Charset = "utf-8";
    fas.Open();
    fas.WriteText("<title>�����ض���... - JMl.ink</title><p style=\"text-align:center;\">����Ϊ���ض�����������ָ�����ַ......<br /><a href=\"" + wz + "\">��û�гɹ��ض��������˴�����</a><hr /></p><small>Copyright 2019-2021 JMl.ink ������LJM12914 ��������Ȩ��. All Rights Reserved.</small><script>location.href=\"" + wz + "\";</script>");
    fas.SaveToFile("E:\\Sites\\jmlink\\" + rdz + "\\l.html",2);
    fas.Close();
    //��������û�
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