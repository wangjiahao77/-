<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hello word.aspx.cs" Inherits="文档管理系统2._0.hello_word" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="JS/jquery-1.8.3.js" type="text/javascript"></script>
    
<script  type="text/javascript">   
        function change(){
            var Image1 = document.getElementById("img_code");
            if (Image1 != null) {
                Image1.src = Image1.src + "?";
            }

        }
</script>

    <link href="helloword.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            height: 406px;
            margin-left: 511px;
            margin-top: 145px;
            width: 951px;
           
           
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            color: #000099;
            margin-left: 72px;
            margin-top: 83px;
        }
        .auto-style4 {
            color: #0000CC;
            margin-left: 70px;
            margin-top: 0px;
        }
        .auto-style5 {
            height: 668px;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style9 {
            margin-top: 0px;
        }
        .auto-style10 {
            width: 63px;
            height: 30px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style5">
        <div class="auto-style1">
            <br />
            <br />
            <strong><span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欢迎来到大作文档管理系统，请登录：</span></strong><br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<span class="auto-style2"><strong aria-grabbed="undefined" aria-haspopup="False">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户名：</span><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <span class="auto-style7">（由英文和数字组成）</span><span class="auto-style2"><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密码：&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style7">验证码</span>:<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9"></asp:TextBox>
            <img id="img_code" alt="点击刷新" class="auto-style10" src="验证码.aspx"onclick="change()" />&nbsp;<span class="auto-style2">&nbsp;&nbsp;&nbsp; </span><span class="auto-style7">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="50px" OnClick="Button1_Click" Text="登陆" Width="151px" BackColor="#CCFF66" BorderColor="#FF6699" />
            &nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style4" Height="53px" OnClick="Button2_Click" Text="注册" Width="153px" BackColor="#CCFFFF" BorderStyle="Groove" />
            </span>
            </strong>
        </div>
    </form>
</body>
</html>
