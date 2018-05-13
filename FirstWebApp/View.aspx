<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="FirstWebApp.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat ="server">

                    <asp:Button ID="Button1" runat="server" Text="Button" />

                </asp:View>
                <asp:View ID="View2" runat="server">

                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>

                </asp:View>
                <asp:View ID="View3" runat="server">

                    <asp:CheckBox ID="CheckBox1" runat="server" />

                </asp:View>
            </asp:MultiView>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Вкладка 1</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Вкладка 2</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Вкладка 3</asp:LinkButton>
    </form>
</body>
</html>
