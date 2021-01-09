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
        <asp:Button ID="Button1" runat="server" Text="Employees" />
        <p>
            <asp:Button ID="Button2" runat="server" Text="Order" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="Button" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" Text="Button" />
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" Text="Button" />
        </p>
        <p>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Button" />
        </p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
