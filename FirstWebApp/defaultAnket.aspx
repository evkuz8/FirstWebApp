<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="defaultAnket.aspx.cs" Inherits="FirstWebApp.defaultAnket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 >Опрос студентов колледжа</h1>
    <asp:SqlDataSource ID="choices1Source" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetDBConnectionString %>" SelectCommand="SELECT * FROM [choices1]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="choices2Source" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetDBConnectionString %>" SelectCommand="SELECT * FROM [choices2]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="choices3Source" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetDBConnectionString %>" SelectCommand="SELECT * FROM [choices3]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="choices4Source" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetDBConnectionString %>" SelectCommand="SELECT * FROM [choices4]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="choices5Source" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetDBConnectionString %>" SelectCommand="SELECT * FROM [choices5]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="AnswersSource" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetDBConnectionString %>" DeleteCommand="DELETE FROM [form_answers] WHERE [id] = @id" InsertCommand="INSERT INTO [form_answers] ([choise1], [choise2], [choise3], [choise4], [choise5]) VALUES (@choise1, @choise2, @choise3, @choise4, @choise5)" SelectCommand="SELECT * FROM [form_answers]" UpdateCommand="UPDATE [form_answers] SET [choise1] = @choise1, [choise2] = @choise2, [choise3] = @choise3, [choise4] = @choise4, [choise5] = @choise5 WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="choise1" Type="Byte" />
            <asp:Parameter Name="choise2" Type="Byte" />
            <asp:Parameter Name="choise3" Type="Byte" />
            <asp:Parameter Name="choise4" Type="Byte" />
            <asp:Parameter Name="choise5" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="choise1" Type="Byte" />
            <asp:Parameter Name="choise2" Type="Byte" />
            <asp:Parameter Name="choise3" Type="Byte" />
            <asp:Parameter Name="choise4" Type="Byte" />
            <asp:Parameter Name="choise5" Type="Byte" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="AnswersSource" DefaultMode="Insert" Width="600px" OnItemInserted="DetailsView1_ItemInserted">
        <Fields>
            <asp:TemplateField HeaderText="Удовлетворены ли Вы в целом своей студенческой жизнью?">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="choices1Source" DataTextField="name" DataValueField="id" SelectedValue='<%# Bind("choise1") %>' Width="300px">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Какие из студенческих проблем Вас особенно волнуют? ">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style2" DataSourceID="choices2Source" DataTextField="name" DataValueField="Id" SelectedValue='<%# Bind("choise2") %>' Width="300px">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Интересно ли Вам учиться?">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="choices3Source" DataTextField="name" DataValueField="Id" Height="16px" SelectedValue='<%# Bind("choise3") %>' Width="300px">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Удовлетворены ли Вы в целом обучением в колледже?">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style2" DataSourceID="choices4Source" DataTextField="name" DataValueField="Id" SelectedValue='<%# Bind("choise4") %>' Width="300px">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Чем был обоснован выбор специальности, по которой Вы обучаетесь?">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="choices5Source" DataTextField="name" DataValueField="Id" SelectedValue='<%# Bind("choise5") %>' Width="300px">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" InsertText="Отправить" ShowCancelButton="False" ShowInsertButton="True">
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
</asp:Content>
