<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="登陆页面.aspx.cs" Inherits="文档管理系统2._0.登陆页面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="登陆页面样式表.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 308px;
            width: 471px;
            margin-left: 681px;
            margin-top: 182px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 30px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            margin-left: 3px;
        }
    </style>
</head>
<body style="height: 576px; width: 1266px" >
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
&nbsp;&nbsp; <strong><span class="auto-style4">欢迎来到大作文档管理系统请登陆</span></strong><br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp; 用户名：<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp; 密码：&nbsp; 
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="登陆" Width="256px" />
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
