<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FirstWebApp._default" %>

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
    </form>
</body>
</html>
