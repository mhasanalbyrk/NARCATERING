<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Explorer.aspx.cs" Inherits="NARCATERING.Explorer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Employees" OnClick="Button1_Click" />
        <p>
            <asp:Button ID="Button2" runat="server" Text="Order" OnClick="Button2_Click" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="Company" OnClick="Button3_Click" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" Text="Goods" OnClick="Button4_Click" />
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" Text="Delivery" OnClick="Button5_Click" />
        </p>
        <p>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Wholesaler" />
        </p>
        <p>
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Menu" BackColor="White" BorderColor="Black" />
        </p>
    </form>
</body>
</html>
