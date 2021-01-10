<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="NARCATERING.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="Orders" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="MenuID" HeaderText="MenuID" SortExpression="MenuID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Orders" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [Order] ORDER BY [CompanyName]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Order ID"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Menu ID"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Order" OnClick="Button1_Click" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Cancel Order" OnClick="Button2_Click" />
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Order ID"></asp:Label>
        <br />
    </form>
</body>
</html>
