<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="SmallERP.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 48%;
        }
        .style2
        {
            width: 120px;
        }
        .style3
        {
            width: 259px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="990px">
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
    </p>
    <p>
        <strong>ADD NEW CUSTOMER</strong></p>
    <table class="style1">
        <tr>
            <td class="style2">
                Name:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="238px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Width="279px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                State:
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                ZIP:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Phone:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Email:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Confirm Email:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Confirm Password:
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
        <asp:Button ID="btnAddNewCust" runat="server" Text="Add New Customer" />
    </p>
</asp:Content>
