<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="文档检索.aspx.cs" Inherits="文档管理系统2._0.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        height: 862px;
        width: 962px;
        margin-top: 0px;
    }
    .auto-style9 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style8">
        <strong>&nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="文档检索："></asp:Label>
        </strong>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="开始" />
        <br />
&nbsp;<br />
        <br />
        <br />
        </div>
</asp:Content>
