<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Goods.aspx.cs" Inherits="NARCATERING.Goods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BillNo" DataSourceID="Inventory">
            <Columns>
                <asp:BoundField DataField="BillNo" HeaderText="BillNo" ReadOnly="True" SortExpression="BillNo" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" ReadOnly="True" SortExpression="TotalPrice" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Inventory" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [Goods]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Unit"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Good Order" OnClick="Button1_Click" />
    </form>
</body>
</html>
