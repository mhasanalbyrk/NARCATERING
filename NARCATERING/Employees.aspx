﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="NARCATERING.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
        <br />
        <asp:SqlDataSource ID="EmployeeGridView" runat="server" ConnectionString="<%$ ConnectionStrings:NARCATERINGConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="TCKN" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Surname" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="150px" ></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Birthdate" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Age" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="150px" ></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Salary" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Width="150px" ></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Tel no" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Width="150px" ></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Insurance" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Number of Kids" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label10" runat="server" Text="Employee Type" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" Width="150px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="TCKN" Height="25px" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Employee" Width="250px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete Employee" Width="250px" />
        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TCKN" DataSourceID="EmployeeGridView" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="TCKN" HeaderText="TCKN" ReadOnly="True" SortExpression="TCKN" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="TelephoneNumber" HeaderText="TelephoneNumber" SortExpression="TelephoneNumber" />
                <asp:BoundField DataField="Insurence" HeaderText="Insurence" SortExpression="Insurence" />
                <asp:BoundField DataField="NumberOfChildren" HeaderText="NumberOfChildren" SortExpression="NumberOfChildren" />
                <asp:BoundField DataField="EmployeeType" HeaderText="EmployeeType" SortExpression="EmployeeType" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
