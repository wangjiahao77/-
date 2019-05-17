<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="文档检索.aspx.cs" Inherits="文档管理系统2._0.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        height: 690px;
        width: 962px;
        margin-top: 0px;
    }
    .auto-style9 {
        font-size: x-large;
    }
        .auto-style14 {
            width: 169px;
            height: 24px;
            list-style:none;
        }
        .auto-style15 {
            width: 162px;
            height: 24px;
            list-style:none;
        }
        .auto-style16 {
            width: 175px;
            float:left;
            height: 26px;
            margin-top: 19px;
        }
        .auto-style18 {
            width: 244px;
            height: 25px;
            float: left;
            margin-left: 0px;
        margin-top: 17px;
    }
    </style>
<%--    <script>
        var a = document.getElementById("ul");
        var s = a.document.getElementsByTagName("li");[]
            
        function i(){
            if (s[0]==null) {
                alert("未找到");
        }
        }
        i();

</script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style8">
        <strong>&nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="文档检索："></asp:Label>
        </strong>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="按文件名" OnClick="Button1_Click1"  />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="按后缀" />
        <br />
&nbsp; <ul class="auto-style16" >
            <%
                                    foreach (string filename in namelist1)

                                    {  %>
              
            <li  class="auto-style14" style="border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: #000000"><span></span>&nbsp;&nbsp;&nbsp;&nbsp;<%=filename %></li>
            <%}
             
                        %>
                </ul>
        <ul class="auto-style18" >
              <%foreach(string filefullname in namelist3){ %>
            <li  class="auto-style15" style="border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=filefullname %>">下载</a></li>
            <%}
             
                        %>
                </ul>
        <br />
        <br />
        </div>
</asp:Content>
