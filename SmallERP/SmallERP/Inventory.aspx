<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="SmallERP.Inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 30%;
        }
        .style2
        {
            width: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" Width="1010px" CellPadding="4" 
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
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Button ID="btnDeleteProd" runat="server" Text="Delete Selected Product" />
    </p>
    <p>
        <strong>ADD NEW PRODUCT</strong></p>
    <table class="style1">
        <tr>
            <td class="style2">
                SKU:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="125px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Name:
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Description:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Price:
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="90px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Quantity:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="90px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
&nbsp;&nbsp;
        <asp:Button ID="btnAddProduct" runat="server" Text="Add New Product" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
