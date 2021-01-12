<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Explorer.aspx.cs" Inherits="NARCATERING.Explorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt" Text="Welcome to the Nar Catering Database System"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="14pt" Text="Please select a table."></asp:Label>
            <br />
            <br />
        
        <asp:Button ID="Button1" runat="server" Text="Employees" OnClick="Button1_Click" Height="30px" Width="250px" />
            <br />
        <p>
            <asp:Button ID="Button2" runat="server" Text="Order" OnClick="Button2_Click" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="Company" OnClick="Button3_Click" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" Text="Goods" OnClick="Button4_Click" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" Text="Delivery" OnClick="Button5_Click" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Wholesaler" Height="30px" Width="250px" />
        </p>
        <p>
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Menu" Height="30px" Width="250px" />
        </p>
            </div>
    </form>
</body>
</html>
