<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Goods.aspx.cs" Inherits="NARCATERING.Goods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BillNo" DataSourceID="Inventory" HorizontalAlign="Right">
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
        <asp:Label ID="Label2" runat="server" Text="Description" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Unit" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Quantity" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Unit Price" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Good Order" OnClick="Button1_Click" Width="250px" />
    </form>
</body>
</html>
