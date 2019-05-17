<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guanli.aspx.cs" Inherits="文档管理系统2._0.guanli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 438px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;申请名单： 
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            加入到管理员名单:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
        </div>
    </form>
</body>
</html>
