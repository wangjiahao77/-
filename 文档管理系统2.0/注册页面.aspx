<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="注册页面.aspx.cs" Inherits="文档管理系统2._0.注册页面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="登陆页面样式表.css" rel="stylesheet"/>
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
    <style type="text/css">
        .auto-style1 {
            height: 308px;
            width: 574px;
            margin-left: 681px;
            margin-top: 182px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            margin-left: 3px;
        }
        .auto-style6 {
            margin-top: 33px;
        }
        .auto-style7 {
            width: 59px;
            height: 18px;
        }
    </style>
</head>
<body style="height: 576px; width: 1266px" >
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
&nbsp;&nbsp; <strong><span class="auto-style4">欢迎来到大作文档管理系统请注册</span></strong><br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp; 用户名：&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
            (由字母和数字组成)<br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp; 密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="确认密码"></asp:Label>
            :<asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp; 验证码： 
            <asp:TextBox ID="TextBox6" runat="server" Width="152px"></asp:TextBox>
            <img ID="img_code"alt="点击刷新" class="auto-style7" src="验证码.aspx"onclick="change()" /><br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="29px" OnClick="Button2_Click" Text="注册" Width="270px" CssClass="auto-style6" />
            <br />
&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
