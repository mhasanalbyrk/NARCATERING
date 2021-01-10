<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delivery.aspx.cs" Inherits="NARCATERING.Delivery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DeliveryID" DataSourceID="Deliveries">
            <Columns>
                <asp:BoundField DataField="DeliveryID" HeaderText="DeliveryID" ReadOnly="True" SortExpression="DeliveryID" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Deliveries" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [Delivery]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Delivery ID"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Order ID"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add Delivery" OnClick="Button1_Click" />
        <br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Delivery ID"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="TCKN"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Add Employee to Delivery" OnClick="Button2_Click" />
        <br />
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="Delivery ID"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="TCKN"></asp:Label>
        <asp:Button ID="Button3" runat="server" Text="Remove Employee from Delivery" OnClick="Button3_Click" />
    </form>
</body>
</html>
