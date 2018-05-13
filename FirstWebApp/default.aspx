<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FirstWebApp._default" 

    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />


            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Фамилия:</td>
                    <td>
                        <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLName" runat="server" ControlToValidate="TextBoxLastName" EnableClientScript="False" ErrorMessage="Укажите фамилию" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Имя:</td>
                    <td>
                        <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server" ControlToValidate="TextBoxFirstName" EnableClientScript="False" ErrorMessage="Укажите имя" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">EMail:</td>
                    <td>
                        <asp:TextBox ID="TextBoxEMail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEMail" runat="server" ControlToValidate="TextBoxEMail" EnableClientScript="False" ErrorMessage="Укажите адрес электронной почты" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEMail" EnableClientScript="False" ErrorMessage="Email введен не корректно" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBoxEMail" EnableClientScript="False" ErrorMessage="Такой EMail уже существует" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" Width="122px" />
                        <br />
                        <asp:Label ID="LabelOutPut" runat="server" Text="LabelOutPut"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="HeroesID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="HeroesID" HeaderText="HeroesID" ReadOnly="True" SortExpression="HeroesID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                <asp:BoundField DataField="Money" HeaderText="Money" SortExpression="Money" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Race" HeaderText="Race" SortExpression="Race" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeDBConnectionString1 %>" DeleteCommand="DELETE FROM [Heroes] WHERE [HeroesID] = @HeroesID" InsertCommand="INSERT INTO [Heroes] ([Name], [BirthDate], [Money], [Class], [Race]) VALUES (@Name, @BirthDate, @Money, @Class, @Race)" ProviderName="<%$ ConnectionStrings:SomeDBConnectionString1.ProviderName %>" SelectCommand="SELECT [HeroesID], [Name], [BirthDate], [Money], [Class], [Race] FROM [Heroes]" UpdateCommand="UPDATE [Heroes] SET [Name] = @Name, [BirthDate] = @BirthDate, [Money] = @Money, [Class] = @Class, [Race] = @Race WHERE [HeroesID] = @HeroesID">
            <DeleteParameters>
                <asp:Parameter Name="HeroesID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="BirthDate" Type="String" />
                <asp:Parameter Name="Money" Type="Int32" />
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
    </form>
</body>
</html>
