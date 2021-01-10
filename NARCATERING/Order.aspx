<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="NARCATERING.Order" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="Orders" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Right">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="MenuID" HeaderText="MenuID" SortExpression="MenuID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Orders" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [Order] ORDER BY [OrderID]"></asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text="Order ID" Height="25px" Width="150px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Menu ID" Height="25px" Width="150px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Company Name" Height="25px" Width="150px"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Quantity" Height="25px" Width="150px"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Price" Height="25px" Width="150px"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Order" OnClick="Button1_Click" Width="250px" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Order ID" Height="25px" Width="150px"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Cancel Order" OnClick="Button2_Click" Width="250px" />
        <br />
    </form>
</body>
</html>
