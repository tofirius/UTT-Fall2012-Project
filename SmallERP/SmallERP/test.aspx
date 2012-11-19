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
		        <li><a href="#tabs-3">Inventory</a></li>
                <li><a href="#tabs-4">Orders</a></li>
                <li><a href="#tabs-5">Reports</a></li>	        
            </ul>
	        <div id="tabs-1">
                <p>
                    <asp:GridView ID="gvAccounting" runat="server">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </p>
	        </div>
	        <div id="tabs-2">
                    <asp:GridView ID="gvCustomers" runat="server">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </div>
	        </div>
	        <div id="tabs-3">
                    <asp:GridView ID="gvInventory" runat="server">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
	        </div>
	        <div id="tabs-4">
                    <asp:GridView ID="gvOrders" runat="server">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
	        </div>
	        <div id="tabs-5">
                    <asp:GridView ID="gvReports" runat="server">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
 	        </div>
        </div>

        <div class="demo-description">
        <p>Click tabs to swap between content that is broken into logical sections.</p>
        </div>
    </form>
</body>
</html>
