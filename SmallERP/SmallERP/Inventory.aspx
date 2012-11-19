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
    <asp:GridView ID="gvInventory" runat="server" Width="1010px" 
    CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" 
    BorderStyle="None" BorderWidth="1px">
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
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
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
