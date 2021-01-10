<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="NARCATERING.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MenuID" DataSourceID="Menus">
            <Columns>
                <asp:BoundField DataField="MenuID" HeaderText="MenuID" ReadOnly="True" SortExpression="MenuID" />
                <asp:BoundField DataField="Meal1" HeaderText="Meal1" SortExpression="Meal1" />
                <asp:BoundField DataField="Meal2" HeaderText="Meal2" SortExpression="Meal2" />
                <asp:BoundField DataField="Meal3" HeaderText="Meal3" SortExpression="Meal3" />
                <asp:BoundField DataField="Meal4" HeaderText="Meal4" SortExpression="Meal4" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Menus" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [Menu_Course]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Menu ID"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Cost"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Menu Type"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update Menu" />
        <br />
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Menu ID"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Meal 1"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Meal 2"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="Meal 3"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="Meal 4"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Add Course" />
    </form>
</body>
</html>
