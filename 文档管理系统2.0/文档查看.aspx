<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="文档查看.aspx.cs" Inherits="文档管理系统2._0.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .ul{
            list-style: none;
        }
        .auto-style13 {
            color: white;
            width: 162px;
            height: 509px;
            float:left;
        }
        .auto-style14 {
            margin-left: 3px;
            float:left;
            width: 1121px;
            height: 521px;
            margin-top: 0px;
        }
    .auto-style16 {
        width: 1366px;
        height: 55px;
            margin-top: 4px;
        }
    .auto-style17 {
        margin-left: 6px;
        margin-top: 34px;
    }
    .auto-style18 {
        margin-left: 5px;
        float: left;
        width: 1017px;
        height: 546px;
    }
        .auto-style19 {
            color: white;
            width: 256px;
            height: 546px;
            float: left;
            margin-left: 2px;
        }
        .auto-style20 {
            list-style: none;
            margin-top: 42px;
            float:left;
            width: 189px;
        }
        .auto-style21 {
            height: 14px;
            margin-left: 42px;
            margin-top: 18px;
            width: 1118px;
        }
        .auto-style22 {
            margin-left: 2px;
            margin-top: 0px;
            width: 185px;
             
        }
        .auto-style23 {
            margin-left: 0px;
            margin-top: 0px;
            width: 156px;
            
        }
        .auto-style24{
          list-style: none;
            margin-top: 46px;
            float:left;
            width: 153px;
            margin-left: 0px;
        }
        .auto-style25 {
            list-style: none;
            margin-top: 46px;
            float: left;
            width: 189px;
            margin-left: 0px;
        }
        .auto-style26 {
            margin-top: 0px;
        }
        .auto-style27 {
            list-style: none;
            margin-top: 46px;
            float: left;
            width: 159px;
            margin-left: 0px;
            height: 23px;
        }
        .auto-style29 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="auto-style19" style="border-style: inset; border-width: 1px; ">
          <span class="auto-style8">组织工作区：</span>：<asp:TreeView ID="TreeView1" runat="server" CssClass="auto-style17" Height="211px" ImageSet="Arrows" Width="148px" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
          <span class="auto-style8">新建名字：</span><br />
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <br />
          <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="新建硬件分区" />
          <br />
          <asp:Button ID="Button4" runat="server" Text="新建软件分区" OnClick="Button4_Click" />
          <br />
          <span class="auto-style8">删除分区：<br />
          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          <br />
          <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="确定" Width="150px" />
          <br />
          删除文件：<br />
          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
          <br />
          <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="确定" Width="152px" />
          </span>
    </div>
    <div class="auto-style18">
        <div class="auto-style21">
            &nbsp;文件名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大小&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改日期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作</div>
        <ul class="auto-style20">
            <%if (item == 0)
                {
                    foreach (string filename in namelist1 )

                    {  %>
              
            <li class="auto-style22" style="border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: #000000"><span></span>&nbsp;&nbsp;&nbsp;&nbsp;<%=filename %></li>
            <%}
                        }
                    %>
                </ul>
         <ul class="auto-style24">
            <%if (item == 0)
                {
                    foreach (string filesize in namelist2 )

                    {  %>
              
            <li class="auto-style23" style="border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: #000000"><span></span>&nbsp;&nbsp;&nbsp;&nbsp;<%=filesize %></li>
            <%}
                        }
                    %>
                </ul>
         <ul class="auto-style27">
            <%if (item == 0)
                {
                    foreach (string filetime in namelist3 )

                    {  %>
              
            <li class="auto-style23" style="border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: #000000"><span></span>&nbsp;&nbsp;&nbsp;&nbsp;<%=filetime %></li>
            <%}
                        }
                    %>
                </ul>
        <ul class="auto-style25">
            <%if (item == 0)
                {
                    foreach (string filefullname in namelist5 )

                    {  %>
              
            <li class="auto-style23" style="border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: #000000"><span></span>&nbsp;&nbsp;&nbsp;<span class="auto-style29">&nbsp;</span><a href="<%=filefullname %>"><span class="auto-style29">下载</span></a><span class="auto-style29"></li></span> <span class="auto-style29">
            <%}
                        }
                    %>
                </span>
                </ul>
        
        </div>
    <div class="auto-style16">
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style14" Height="26px" Width="231px" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" CssClass="auto-style26" Height="27px" Width="112px" />
        &nbsp;
        <asp:Label ID="Label1" runat="server" Text="所传文档属于哪个分类（例如：硬件/CPU）"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
        <asp:Literal ID="literal" runat="server"></asp:Literal>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="完成" />
        </div>
</asp:Content>
