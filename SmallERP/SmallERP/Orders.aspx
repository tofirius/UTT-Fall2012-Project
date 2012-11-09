<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="SmallERP.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" Width="1008px" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
<br />
<asp:Button ID="btnDeleteOrder" runat="server" Text="Delete Selected Order" />
<br />
<br />
<strong>CREATE NEW ORDER</strong><br />
<br />
Customer Name:
<br />
<br />
Customer Email:
<br />
<br />
Order ID:
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
