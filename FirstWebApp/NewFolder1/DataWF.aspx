<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataWF.aspx.cs" Inherits="FirstWebApp.NewFolder1.DataWF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeDBConnectionString1 %>" DeleteCommand="DELETE FROM [Person] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Person] ([Lname], [Fname], [Email]) VALUES (@Lname, @Fname, @Email)" SelectCommand="SELECT * FROM [Person]" UpdateCommand="UPDATE [Person] SET [Lname] = @Lname, [Fname] = @Fname, [Email] = @Email WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Lname" HeaderText="Имя" SortExpression="Lname" />
                <asp:BoundField DataField="Fname" HeaderText="Фамилия" SortExpression="Fname" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SomeDBConnectionString1 %>" DeleteCommand="DELETE FROM [Person] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Person] ([Lname], [Fname], [Email]) VALUES (@Lname, @Fname, @Email)" SelectCommand="SELECT * FROM [Person] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Person] SET [Lname] = @Lname, [Fname] = @Fname, [Email] = @Email WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="50px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="125px">
            <Fields>
                <asp:BoundField DataField="Lname" HeaderText="Фамилия" SortExpression="Lname" />
                <asp:BoundField DataField="Fname" HeaderText="Имя" SortExpression="Fname" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SomeDBConnectionString1 %>" DeleteCommand="DELETE FROM [Heroes] WHERE [HeroesID] = @HeroesID" InsertCommand="INSERT INTO [Heroes] ([Name], [BirthDate], [Money], [Class], [Race]) VALUES (@Name, @BirthDate, @Money, @Class, @Race)" SelectCommand="SELECT * FROM [Heroes]" UpdateCommand="UPDATE [Heroes] SET [Name] = @Name, [BirthDate] = @BirthDate, [Money] = @Money, [Class] = @Class, [Race] = @Race WHERE [HeroesID] = @HeroesID">
            <DeleteParameters>
                <asp:Parameter Name="HeroesID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="BirthDate" Type="String" />
<asp:Parameter Name="Money" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Class" Type="String" />
                <asp:Parameter Name="Race" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="BirthDate" Type="String" />
                <asp:Parameter Name="Money" Type="Int32" />
                <asp:Parameter Name="Class" Type="String" />
                <asp:Parameter Name="Race" Type="String" />
                <asp:Parameter Name="HeroesID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="HeroesID" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="HeroesID" HeaderText="HeroesID" InsertVisible="False" ReadOnly="True" SortExpression="HeroesID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                <asp:BoundField DataField="Money" HeaderText="Money" SortExpression="Money" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
