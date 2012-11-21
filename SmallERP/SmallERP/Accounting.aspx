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
    
    <h2>Accounting</h2>
    
    <asp:GridView ID="GridView1" runat="server" CellPadding="3" 
        GridLines="Vertical" Height="184px" style="margin-left: 0px" 
    Width="1011px" BackColor="White" BorderColor="#999999" BorderStyle="None" 
    BorderWidth="1px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
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
    <asp:Button ID="Button1" runat="server" Text="Button" />
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
