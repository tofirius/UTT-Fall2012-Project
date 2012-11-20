<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="SmallERP.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta charset="utf-8" >
	<title>SmERP</title>
	<link rel="stylesheet" href="css/themes/dark-hive/jquery.ui.all.css">
	<script src="js/jquery-1.8.2.js"></script>
	<script src="js/ui/jquery.ui.core.js"></script>
	<script src="js/ui/jquery.ui.widget.js"></script>
	<script src="js/ui/jquery.ui.tabs.js"></script>
	<link rel="stylesheet" href="css/demos.css">
	<script>
	    $(function () {
	        $("#tabs").tabs();
	    });
	</script>
</head>

<body>
    <form id="form1" runat="server">


        <div id="tabs">
	        <ul>
		        <li><a href="#tabs-1">Accounting</a></li>
		        <li><a href="#tabs-2">Customers</a></li>
		        <li><a href="#tabs-3">Employees</a></li>
                <li><a href="#tabs-4">Inventory</a></li>
                <li><a href="#tabs-5">Orders</a></li>
                <li><a href="#tabs-6">Payroll</a></li>
                <li><a href="#tabs-7">Reports</a></li>
            </ul>
	    <div id="tabs-1">
                
    
            <h2>Accounting</h2>
    
            <asp:GridView ID="GridView1" runat="server" CellPadding="3" 
                GridLines="Vertical" Height="184px" style="margin-left: 0px" 
            Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" 
            BorderWidth="1px" AllowPaging="True" AutoGenerateColumns="False" 
                DataKeyNames="entryNum" DataSourceID="AccountingDS">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="entryNum" HeaderText="entryNum" 
                        InsertVisible="False" ReadOnly="True" SortExpression="entryNum" />
                    <asp:BoundField DataField="acctID" HeaderText="acctID" 
                        SortExpression="acctID" />
                    <asp:BoundField DataField="debit" HeaderText="debit" SortExpression="debit" />
                    <asp:BoundField DataField="credit" HeaderText="credit" 
                        SortExpression="credit" />
                    <asp:BoundField DataField="transactionDesc" HeaderText="transactionDesc" 
                        SortExpression="transactionDesc" />
                    <asp:BoundField DataField="entryDate" HeaderText="entryDate" 
                        SortExpression="entryDate" />
                    <asp:CommandField />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#0972A5" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="AccountingDS" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [GeneralLedger] ORDER BY [entryDate]"></asp:SqlDataSource>
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
            <asp:Button ID="btnAddRecord" runat="server" Text="Add New Entry" 
                onclick="btnAddRecord_Click" />

	    </div>
	    <div id="tabs-2">

	    </div>

	    <div id="tabs-3">

	    </div>

	    <div id="tabs-4">

	    </div>

	    <div id="tabs-5">

 	    </div>

        <div id="tabs-6">

 	    </div>

        <div id="tabs-7">

 	    </div>
        </div>


    </form>
</body>
</html>
