<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="NARCATERING.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MenuID" DataSourceID="Menus" HorizontalAlign="Right">
            <Columns>
                <asp:BoundField DataField="MenuID" HeaderText="MenuID" ReadOnly="True" SortExpression="MenuID" />
                <asp:BoundField DataField="Meal1" HeaderText="Meal1" SortExpression="Meal1" />
                <asp:BoundField DataField="Meal2" HeaderText="Meal2" SortExpression="Meal2" />
                <asp:BoundField DataField="Meal3" HeaderText="Meal3" SortExpression="Meal3" />
                <asp:BoundField DataField="Meal4" HeaderText="Meal4" SortExpression="Meal4" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Menus" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [Menu_Course]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Menu ID" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Cost" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Menu Type" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update Menu" Height="25px" Width="250px" OnClick="Button1_Click" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add Menu" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Menu ID" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Meal 1" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Meal 2" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Meal 3" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Meal 4" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox14" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Update Course" Height="25px" Width="250px" OnClick="Button2_Click" />
    </form>
</body>
</html>
