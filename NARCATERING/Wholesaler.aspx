<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wholesaler.aspx.cs" Inherits="NARCATERING.Wholesaler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="WholeSalerName" DataSourceID="Wholesalers" HorizontalAlign="Right">
            <Columns>
                <asp:BoundField DataField="WholeSalerName" HeaderText="WholeSalerName" ReadOnly="True" SortExpression="WholeSalerName" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="Debt" HeaderText="Debt" SortExpression="Debt" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Wholesalers" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [WholeSaler]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
    </form>
</body>
</html>
