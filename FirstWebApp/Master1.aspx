<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Master1.aspx.cs" Inherits="FirstWebApp.Master1" 
    Theme="Blue"
    %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="MyMetaTeg" content="HelloWorld"/>
    <style type="text/css">
        .auto-style1 {
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            </td>
        </tr>   
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" />
            </td>
        </tr>   
        <%--<tr>
            <td>

            </td>
            <td>

            </td>
        </tr>--%>
    </table>
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" SkinID="Skin1" Text="Button" />
    <asp:Button ID="Button5" runat="server" Text="Button"  SkinID="Skin2"/>
</asp:Content>
