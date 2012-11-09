<%@ Page Title="" Language="C#" MasterPageFile="~/template.Master" AutoEventWireup="true" CodeBehind="Accounting.aspx.cs" Inherits="SmallERP.Accounting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Height="184px" style="margin-left: 0px" Width="1011px">
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
    <br />
    <strong>ADD NEW JOURNAL ENTRY INTO THE GENERAL LEDGER</strong><br />
    <table class="style1">
        <tr>
            <td>
                Account ID:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="158px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Account Name:</td>
            <td>
                <asp:Label ID="lblAcctName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="rdoDebit" runat="server" GroupName="creditDebit" 
                    Text="Debit" />
                <asp:RadioButton ID="rdoCredit" runat="server" GroupName="creditDebit" 
                    Text="Credit" />
            </td>
            <td>
                <asp:TextBox ID="txtDebitCredit" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Entry Description:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Entry Date:
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnAddRecord" runat="server" Text="Add New Entry" />
</asp:Content>
