<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="用户信息.aspx.cs" Inherits="文档管理系统2._0.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 764px;
          
        }
        .auto-style9 {
            margin-top: 0px;
        }
        .auto-style10 {
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="auto-style8">

    <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>

    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9"></asp:TextBox>

    <br />

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="原密码："></asp:Label>

    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>

    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />

    </div>
</asp:Content>
