<%@ Page Title="My Account Details - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.MyAccountDetail" Codebehind="MyAccountDetail.aspx.vb" %>

<asp:Content ID="PageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">My Account Details&nbsp;<a href="/SecureSSL/MyAccount.aspx" Class="echd">(Return To Account Summary)</a><br /></div><div style="padding-left:15px;padding-right:20px;" class="echdsm">Retail customers may update account details by making changes below and clicking "Save Account Details".<br />JE Pistons dealers and distributors cannot make address changes and must submit a "Dealer Address Change Request".</div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
	<form id="MyAccountDetail" runat="server">
		<div align="center"><asp:label id="MyError" runat="Server" CssClass="attention" EnableViewState="false"></asp:label></div>
        <table cellpadding="0" cellspacing="0" style="padding-left:50px;padding-bottom:100px;" border="0" width="100%">
	        <tr>	
		        <td width="100%" align="left">
			        <table cellpadding="0" cellspacing="2" border="0" width="100%">
				        <tr>
					        <td colspan="2">
						        <table>
							        <tr>
								        <td><img src="/Images/icon_req.gif" width="32" height="32" border="0" alt=""></td>
								        <td class="echdnm">Items shaded light blue are required.</td>
							        </tr>
						        </table>
						    </td>
				        </tr>
				        <tr>
					        <td colspan="2">&nbsp;</td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>First Name</b>:&nbsp;</td>
					        <td><asp:textbox id="txtBillFirstName" MaxLength="35" BackColor="#def4fc" runat="server" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillFirstName" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							            ControlToValidate="txtBillFirstName"></asp:requiredfieldvalidator></td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>Last Name</b>:&nbsp;</td>
					        <td><asp:textbox id="txtBillLastName" MaxLength="50" BackColor="#def4fc" runat="server" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillLastName" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							            ControlToValidate="txtBillLastName"></asp:requiredfieldvalidator></td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>Street Address</b>:&nbsp;</td>
					        <td><asp:textbox id="txtBillAddr1" MaxLength="75" BackColor="#def4fc" runat="server" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillAddr1" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							            ControlToValidate="txtBillAddr1"></asp:requiredfieldvalidator></td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>Street Address 2</b>:&nbsp;</td>
					        <td><asp:textbox id="txtBillAddr2" MaxLength="75" runat="server" Width="245px"></asp:textbox></td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>City</b>:&nbsp;</td>
					        <td><asp:textbox id="txtBillCity" MaxLength="25" BackColor="#def4fc" runat="server" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillCity" runat="server" Font-Size="Smaller" ErrorMessage="** Required" ControlToValidate="txtBillCity"></asp:requiredfieldvalidator></td>
				        </tr>
				        
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>Country</b>:&nbsp;</td>
					        <td><asp:dropdownlist id="ddlBillCountryID" runat="server" BackColor="#def4fc" AutoPostBack="True" Width="245px"></asp:dropdownlist></td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>State</b>:&nbsp;</td>
					        <td>
					            <asp:dropdownlist id="cmbBillStateProvince" BackColor="#def4fc" runat="server" Width="245px">
						            <asp:ListItem Value="0">---Select State/Province---</asp:ListItem>
					            </asp:dropdownlist>
					            <asp:regularexpressionvalidator id="rfvBillStateProvince" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
						            ControlToValidate="cmbBillStateProvince" ValidationExpression="^([1-9]|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$"></asp:regularexpressionvalidator>
					        </td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>Postal Code</b>:&nbsp;</td>
					        <td>
					            <asp:textbox id="txtBillPostalCode" BackColor="#def4fc" MaxLength="10" runat="server" Width="75px" size="7"></asp:textbox><asp:requiredfieldvalidator id="rfvBillPostalCode" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							            ControlToValidate="txtBillPostalCode"></asp:requiredfieldvalidator>
					        </td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>Email</b>:&nbsp;</td>
					        <td><asp:textbox id="txtBillEmail" runat="server" Width="245px" BackColor="#def4fc" maxLength="50"></asp:textbox><asp:requiredfieldvalidator id="rfvBillEmail" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							            ControlToValidate="txtBillEmail"></asp:requiredfieldvalidator></td>
				        </tr>
				        <tr>
					        <td class="echdnm" width="12%" align="right"><b>Phone</b>:&nbsp;</td>
					        <td><asp:textbox id="txtBillPhone" MaxLength="15" runat="server" BackColor="#def4fc" Width="120px" size="12"></asp:textbox><asp:requiredfieldvalidator id="rfvBillPhone" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							            ControlToValidate="txtBillPhone"></asp:requiredfieldvalidator></td>
				        </tr>
				        <!-- Additional Items for Dealers ? -->
			        <asp:PlaceHolder runat="server" ID="plcHiddenCustomerInfo" Visible="False">
			            <tr>
				            <td class="attention" width="12%" align="right"><b>Company ID</b>:&nbsp;</td>
				            <td>
				                <asp:DropDownList id="ddlCompanyID" Runat="server">
				                    <asp:ListItem Value="JEP" Selected="True">JEP</asp:ListItem>
			                    </asp:DropDownList>
				            </td>
			            </tr>
			            <tr>
				            <td class="attention" width="12%" align="right"><b>Old ERP CustID</b>:&nbsp;</td>
				            <td>
				                <asp:textbox id="txtERPCustID" runat="server" Width="120px" size="12"></asp:textbox>
			                    <asp:button id="btnImportERP" Visible="false" Runat="server" Text="Import" CssClass="button"></asp:button>
				            </td>
			            </tr>
			            
			            <tr>
				            <td class="attention" width="12%" align="right"><b>MAS ERP CustID</b>:&nbsp;</td>
				            <td>
				                <asp:textbox id="txtMASCustID" runat="server" Width="120px" size="12"></asp:textbox>
				            </td>
			            </tr>
			            
			            
			            
			            
			            <tr>
				            <td class="attention" width="12%" align="right"><b>Approved Dealer</b>:&nbsp;</td>
				            <td><asp:checkbox id="chkApprovedDealer" Runat="server"></asp:checkbox></td>
			            </tr>
			        </asp:PlaceHolder>
			            <tr>
				            <td coslpan="2">&nbsp;</td>
			            </tr>
				        <tr>
					        <td></td>
					        <td><asp:ImageButton id="btnSaveDetails" Runat="server" ImageUrl="/Images/Buttons/btn-save.jpg"></asp:ImageButton></td>
				        </tr>
			        </table>
			     </td>
	        </tr>
        </table>
	</form>
</asp:Content>
