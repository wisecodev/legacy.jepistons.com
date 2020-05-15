<%@ Page Title="Customer Search Screen - JE Pistons Inc." Language="VB" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.AdminCustomerSearch" Codebehind="AdminCustomerSearch.aspx.vb" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="/App_Themes/main.css" />
	    <script type="text/javascript" language="javascript" src="/inc/Scripts.js"></script>
	</HEAD>
	
	<body style="BACKGROUND-COLOR: #ffffff" MS_POSITIONING="GridLayout">
		<form id="frmCustomerSearch" runat="server">
			<table style="BACKGROUND-COLOR: #ffffff" width="100%">
				<tr>
				    <td valign="top" class="desc2" colspan="2">
				    <div class="breadcrumbhead">Customer Search&nbsp;<br /></div><div style="padding-left:17px;padding-right:20px;" class="echdsm">Enter Criteria below to search for a JEPistons.com Customer Account.</div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div>
				    <div align="center"><asp:label id="MyError" runat="Server" CssClass="attention" Font-Bold="true" EnableViewState="false"></asp:label></div>
				    <br />
				    </td>
				</tr>
				<tr>
					<td valign="top" style="padding-left:17px;">
						<table class="desc2">
							<tr>
								<td style="font-weight:bold;">ERP CustID:</td>
								<td><asp:TextBox Runat="server" ID="txtERPCustID"></asp:TextBox></td>
							</tr>
							<tr>
								<td style="font-weight:bold;">UserID:</td>
								<td><asp:TextBox Runat="server" ID="txtWebUserID"></asp:TextBox></td>
							</tr>
							<tr>
								<td style="font-weight:bold;">First Name:</td>
								<td><asp:TextBox Runat="server" ID="txtFirstName"></asp:TextBox></td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Last Name:</td>
								<td><asp:TextBox Runat="server" ID="txtLastName"></asp:TextBox></td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Phone Number:</td>
								<td><asp:TextBox Runat="server" ID="txtPhoneNo"></asp:TextBox></td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Postal Code:</td>
								<td><asp:TextBox Runat="server" ID="txtPostalCode"></asp:TextBox></td>
							</tr>
							<tr>
								<td style="font-weight:bold;">Email:</td>
								<td><asp:TextBox Runat="server" ID="txtEmail"></asp:TextBox></td>
							</tr>
							<tr>
								<td></td>
								<td><asp:Button runat="server" ID="btnSearch" Text="Search" CssClass="Button"></asp:Button></td>
							</tr>
						</table>
					</td>
					<td valign="top">
							<asp:datagrid id="dgFindUsers" runat="server" Width="310px" AutoGenerateColumns="False" DataKeyField="CustomerID"
								ShowFooter="false" Font-Size="8pt" Font-Name="Verdana" cellspacing="0" cellpadding="3" GridLines="Vertical"
								BorderColor="#CCCCCC" AlternatingItemStyle-CssClass="CartListItemAlt" ItemStyle-CssClass="CartListItem"
								HeaderStyle-CssClass="CartListHead" OnItemCommand="SelectCustomer">
								<Columns>
									<asp:BoundColumn Visible="False" DataField="CustomerID"  HeaderText="CustomerID"/>
									<asp:BoundColumn DataField="CustomerInfo" HeaderStyle-Font-Size="11px" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="True" HeaderText="Search Results"/>
									<asp:ButtonColumn Text="Select" CommandName="Select"/>
								</Columns>
							</asp:datagrid>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>

