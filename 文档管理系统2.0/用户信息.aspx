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
    .auto-style13 {
        margin-top: 0px;
    }
        .auto-style14 {
            height: 18px;
            width: 435px;
            margin-left: 0px;
            margin-top: 0px;
        }
    .auto-style15 {
        height: 738px;
        color: #000000;
    }
        .auto-style16 {
            height: 148px;
            width: 854px;
            margin-left: 61px;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style15">

    <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
        <strong>修改密码：</strong><br />

    <span class="auto-style10">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>

    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14" Width="155px"></asp:TextBox>

    <br />

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="原密码："></asp:Label>

    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="156px"></asp:TextBox>

    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="155px"></asp:TextBox>

    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />

    <br />
        <div class="auto-style16">
            用户权限：<asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            申请管理员：<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="申请" />
            </div>

    </div>
</asp:Content>
