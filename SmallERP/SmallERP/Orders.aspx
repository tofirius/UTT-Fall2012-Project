<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="SmallERP.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2>Orders</h2>
    
    <asp:GridView ID="GridView1" runat="server" Width="1008px" CellPadding="3" 
    GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" 
    BorderWidth="1px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
    </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
<br />
<br />
<strong>CREATE NEW ORDER</strong><br />
<br />
Customer Name:
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br />
Customer Email:
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
Order Items:<br />
<asp:ListBox ID="ListBox1" runat="server" Height="101px" Width="386px">
</asp:ListBox>
<br />
<br />
<asp:Label ID="lblRevenueAcctID" runat="server"></asp:Label>
<br />
<br />
<asp:Button ID="btnNewOrder" runat="server" Text="Enter New Order" />
<br />
<br />
</asp:Content>
