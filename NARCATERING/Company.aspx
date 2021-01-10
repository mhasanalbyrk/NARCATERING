<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="NARCATERING.Company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyName" DataSourceID="Companies" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" ReadOnly="True" SortExpression="CompanyName" />
                <asp:BoundField DataField="TelephoneNumber" HeaderText="TelephoneNumber" SortExpression="TelephoneNumber" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Debt" HeaderText="Debt" SortExpression="Debt" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Companies" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [Company]"></asp:SqlDataSource>
    </form>
</body>
</html>
