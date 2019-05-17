<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="文档查看.aspx.cs" Inherits="文档管理系统2._0.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
        .auto-style8 {
            height: 622px;
            float:left;
            width: 200px;
           
        }
            
        .auto-style11 {
            margin-left: 56px;
            margin-top: 51px;
        }
            
        .auto-style12 {
            width: 749px;
            height: 48px;
            margin-left: 204px;
            margin-top: 2px;
        }
        .auto-style13 {
            height: 622px;
        }
            
        .auto-style14 {
            margin-left: 0px;
            margin-top: 0px;
        }
                    
        .auto-style15 {
            margin-left: 56px;
            margin-top: 51px;
        }
        .auto-style16 {
            width: 995px;
            height: 56px;
            margin-left: 204px;
            margin-top: 0px;
        }
                    
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="auto-style8" style="border: 1px inset #000000">


      


        <asp:TreeView ID="TreeView1" runat="server" CssClass="auto-style15" Font-Bold="True" ForeColor="Black" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" Height="198px" Width="127px">
        </asp:TreeView>


      


    </div>
    <div class="auto-style13" style="border: 1px inset #000000">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    <div class="auto-style16">
                   <br />
                   <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style14" Height="26px" Width="231px" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" />
            
            <asp:Literal ID="literal" runat="server"></asp:Literal>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="完成" />
         
        </div>
    
        
</asp:Content>
