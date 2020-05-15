<%@ Page Title="Checkout Billing/Shipping - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.CheckoutBillingShipping" Codebehind="CheckoutBillingShipping.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" runat="Server">
<script language="javascript" type="text/javascript">
				
<!--
function updateRegion(theCountry, theRegion) {
var iCount = theRegion.options.length;
while(iCount > 0) {
iCount--;
theRegion.options[iCount] = null;
}
var SelectedCountry = '';
SelectedCountry = theCountry.options[theCountry.selectedIndex].value;

if (SelectedCountry != null) {
SelectedCountry = SelectedCountry.toUpperCase();
}
     
if (SelectedCountry == "2") {
theRegion.options[0] = new Option("---Select Province---", "");
theRegion.options[1] = new Option("Alberta", "52");
theRegion.options[2] = new Option("British Columbia", "53");
theRegion.options[3] = new Option("Manitoba", "54");
theRegion.options[4] = new Option("New Brunswick", "55");
theRegion.options[5] = new Option("Newfoundland", "56");
theRegion.options[6] = new Option("Northwest Territories", "57");
theRegion.options[7] = new Option("Nova Scotia", "58");
theRegion.options[8] = new Option("Nunavut", "59");
theRegion.options[9] = new Option("Ontario", "60");
theRegion.options[10] = new Option("Prince Edward Island", "61");
theRegion.options[11] = new Option("Québec", "62");
theRegion.options[12] = new Option("Saskatchewan", "63");
theRegion.options[13] = new Option("Yukon", "64");
} else
if (SelectedCountry == "1") {
theRegion.options[0] = new Option("---Select State---", "");
theRegion.options[1] = new Option("Alabama", "1");
theRegion.options[2] = new Option("Alaska", "2");
theRegion.options[3] = new Option("Arizona", "3");
theRegion.options[4] = new Option("Arkansas", "4");
theRegion.options[5] = new Option("California", "5");
theRegion.options[6] = new Option("Colorado", "6");
theRegion.options[7] = new Option("Connecticut", "7");
theRegion.options[8] = new Option("Delaware", "8");
theRegion.options[9] = new Option("District of Columbia", "51");
theRegion.options[10] = new Option("Florida", "9");
theRegion.options[11] = new Option("Georgia", "10");
theRegion.options[12] = new Option("Guam", "65");
theRegion.options[13] = new Option("Hawaii", "11");
theRegion.options[14] = new Option("Idaho", "12");
theRegion.options[15] = new Option("Illinois", "13");
theRegion.options[16] = new Option("Indiana", "14");
theRegion.options[17] = new Option("Iowa", "15");
theRegion.options[18] = new Option("Kansas", "16");
theRegion.options[19] = new Option("Kentucky", "17");
theRegion.options[20] = new Option("Louisiana", "18");
theRegion.options[21] = new Option("Maine", "19");
theRegion.options[22] = new Option("Maryland", "20");
theRegion.options[23] = new Option("Massachusetts", "21");
theRegion.options[24] = new Option("Michigan", "22");
theRegion.options[25] = new Option("Minnesota", "23");
theRegion.options[26] = new Option("Mississippi", "24");
theRegion.options[27] = new Option("Missouri", "25");
theRegion.options[28] = new Option("Montana", "26");
theRegion.options[29] = new Option("Nebraska", "27");
theRegion.options[30] = new Option("Nevada", "28");
theRegion.options[31] = new Option("New Hampshire", "29");
theRegion.options[32] = new Option("New Jersey", "30");
theRegion.options[33] = new Option("New Mexico", "31");
theRegion.options[34] = new Option("New York", "32");
theRegion.options[35] = new Option("North Carolina", "33");
theRegion.options[36] = new Option("North Dakota", "34");
theRegion.options[37] = new Option("Ohio", "35");
theRegion.options[38] = new Option("Oklahoma", "36");
theRegion.options[39] = new Option("Oregon", "37");
theRegion.options[40] = new Option("Pennsylvania", "38");
theRegion.options[41] = new Option("Puerto Rico", "66");
theRegion.options[42] = new Option("Rhode Island", "39");
theRegion.options[43] = new Option("South Carolina", "40");
theRegion.options[44] = new Option("South Dakota", "41");
theRegion.options[45] = new Option("Tennessee", "42");
theRegion.options[46] = new Option("Texas", "43");
theRegion.options[47] = new Option("Utah", "44");
theRegion.options[48] = new Option("Vermont", "45");
theRegion.options[49] = new Option("Virginia", "46");
theRegion.options[50] = new Option("Virgin Islands", "67");
theRegion.options[51] = new Option("Washington", "47");
theRegion.options[52] = new Option("West Virginia", "48");
theRegion.options[53] = new Option("Wisconsin", "49");
theRegion.options[54] = new Option("Wyoming", "50");
} else {
theRegion.options[0] = new Option("---Not Applicable---", "69");
}
}
//-->
		</script>
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead"><a class="breadcrumbheadlink" href="/ShoppingCart.aspx">Shopping Cart</a> > Billing / Shipping</div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
	<div align="center"><asp:label id="MyError" runat="Server" CssClass="attention" EnableViewState="false"></asp:label></div>
	<table cellpadding="0" cellspacing="0" style="padding-left:20px;padding-right:20px;padding-bottom:50px;" border="0" width="100%">	
        <tr>
            <td class="echdnm">
            In order to protect our customers from credit card fraud, ALL orders placed by a NEW account must be billed and shipped to the billing address of the credit card used for payment. 
            The “Billing Address” is considered the address in which they mail your credit card statement to. If you are unsure what this address is, please check your credit card statement before placing your order.
            Please understand that this is an internet credit card processing regulation to help ensure that the person making charges to a credit card is the actual cardholder.  All new accounts with invalid addresses will be declined and the customer will be contacted via email.
            <br /><br />
            Established accounts with JE Pistons need to be approved by a JE sales representative before shipping to an address other than the billing location.  Please contact a sales representative today should you wish to utilize this feature.  Your online account will then be modified to allow a different shipping address for future orders.
            </td>
        </tr>
	    <tr>
		    <td>
		        <form id="CheckoutBillShipForm" runat="server">
		           <br />
			        <asp:Panel Runat="server" Visible="False" ID="pnlCustomPO">
			            <table cellpadding="0" cellspacing="0" align="center" width="100%">
                            <tr>
                                <td style="padding-bottom:10px;border-bottom: solid 1px #CCCCCC;" class="echd">
                                    Purchase Order Number
                                </td>
                            </tr>
                            <tr>
                                 <td class="echdnm">
                                    <br />
                                    If you would like to assign a Purchase Order Number to this order, please enter it here:&nbsp;&nbsp;<asp:TextBox id="txtPONumber" Runat="server" MaxLength="13"></asp:TextBox><br /><br /><br />
				                 </td>
				             </tr>
		                </table>
			        </asp:Panel>
			         <table cellpadding="0" cellspacing="0" align="center" width="100%">
                        <tr>
                            <td style="padding-bottom:8px;border-bottom: solid 1px #CCCCCC;" class="echd">
                                
                                <table cellpadding="0" cellspacing="0">
	                                <tr>
		                                <td class="echd" valign="middle">Billing Information</td>
		                                <td style="padding-left:15px;"><img src="/Images/icon_req.gif" width="32" height="32" border="0" alt=""></td>
		                                <td class="echdnm" valign="middle">Items shaded light blue are required.</td>
	                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                             <td><br />
			                    <table bgcolor="#ffffff" class="echdnm" cellSpacing="2" cellPadding="0" width="100%">
				                    <tr>
					                    <td colspan="2">
						                    <asp:Panel Runat="server" ID="pnlBillFavAddr">
							                    <TABLE cellSpacing="0" cellPadding="0" class="bodytext" width="100%">
								                    <TR>
									                    <TD noWrap align="right" width="15%">
										                    <DIV align="right" style="color:#CC3333;"><B>Select A Favorite Address&nbsp;</B></DIV>
									                    </TD>
									                    <TD>
										                    <asp:DropDownList id="ddlBillFavAddr" Runat="server" Width="245px" DataTextField="AddressText" DataValueField="AddressValue"
											                    AutoPostBack="True">
											                    <asp:ListItem Value="">--Optional Billing Addresses--</asp:ListItem>
										                    </asp:DropDownList></TD>
								                    </TR>
							                    </TABLE>
						                    </asp:Panel>
					                    </td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>First Name:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtBillFirstName" BackColor="#def4fc" runat="server" maxLength="30" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillFirstName" runat="server" ControlToValidate="txtBillFirstName" ErrorMessage="** Required"
							                    Font-Size="Smaller"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Last Name:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtBillLastName" BackColor="#def4fc" runat="server" maxLength="30" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillLastName" runat="server" ControlToValidate="txtBillLastName" ErrorMessage="** Required"
							                    Font-Size="Smaller"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Street Address:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtBillAddr1" BackColor="#def4fc" runat="server" maxLength="30" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillAddr1" runat="server" ControlToValidate="txtBillAddr1" ErrorMessage="** Required"
							                    Font-Size="Smaller"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Street Address 2:</b>&nbsp;</div>
					                    </td>
					                    <td><asp:textbox id="txtBillAddr2" runat="server" maxLength="30" Width="245px"></asp:textbox></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>City:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtBillCity" BackColor="#def4fc" runat="server" maxLength="20" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillCity" runat="server" ControlToValidate="txtBillCity" ErrorMessage="** Required"
							                    Font-Size="Smaller"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Country:&nbsp;</b></div>
					                    </td>
					                    <td>
						                    <asp:dropdownlist id="ddlBillCountryID" BackColor="#def4fc" runat="server" AutoPostBack="True" Width="245px"></asp:dropdownlist>
					                    </td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>State/Province:&nbsp;</b>
						                    </div>
					                    </td>
					                    <td>
						                    <asp:dropdownlist id="cmbBillStateProvince" BackColor="#def4fc" runat="server" Width="245px">
							                    <asp:ListItem Value="0">---Select State/Province---</asp:ListItem>
						                    </asp:dropdownlist>
						                    <asp:regularexpressionvalidator id="rfvBillStateProvince" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							                    ControlToValidate="cmbBillStateProvince" ValidationExpression="^([1-9]|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$"></asp:regularexpressionvalidator>
					                    </td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Postal Code:</b>&nbsp;</div>
					                    </td>
					                    <td><asp:textbox id="txtBillPostalCode" runat="server" maxLength="10" Width="75px" size="7"></asp:textbox><asp:requiredfieldvalidator id="rfvBillPostalCode" runat="server" ControlToValidate="txtBillPostalCode" ErrorMessage="** Required"
							                    Font-Size="Smaller"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>E-Mail Address:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtBillEmail" BackColor="#def4fc" runat="server" maxLength="50" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillEmail" runat="server" ControlToValidate="txtBillEmail" ErrorMessage="** Required"
							                    Font-Size="Smaller"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Phone Number:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtBillPhone" BackColor="#def4fc" runat="server" Width="120px" size="12"></asp:textbox><asp:requiredfieldvalidator id="rfvBillPhone" runat="server" ControlToValidate="txtBillPhone" ErrorMessage="** Required"
							                    Font-Size="Smaller"></asp:requiredfieldvalidator></td>
				                    </tr>
			                    </table>
			                 </td>
			              </tr>
			          </table>
        		    <br /><br />
			        <table cellpadding="0" cellspacing="0" align="center" width="100%">
                        <tr>
                            <td style="padding-bottom:10px; padding-right:10px; border-bottom: solid 1px #CCCCCC;" class="echd">
                                Shipping Information&nbsp;&nbsp;
                                <span class="echdnm"><input type="checkbox" id="chkShipToBilling" onclick="PopulateShipping();" runat="server" NAME="chkShipToBilling">Shipping your order to the billing address?&nbsp;&nbsp;Check the checkbox to the left to automatically fill in the address below. </span>
                            </td>
                        </tr>
                        <tr>
                             <td><br />
			                    <table bgcolor="#ffffff" class="echdnm" cellSpacing="2" cellPadding="0" width="100%">
				                    <tr>
					                    <td colspan="2">
						                    <asp:Panel Runat="server" ID="pnlShipFavAddr">
							                    <TABLE cellSpacing="0" class="echdnm" cellPadding="0" width="100%">
								                    <TR>
									                    <TD noWrap align="right" width="15%">
										                   <DIV align="right" style="color:#CC3333;"><B>Dropship Location&nbsp;</B></DIV>
									                    </TD>
									                    <TD style="padding-left:2px;">
										                    <asp:DropDownList id="ddlShipFavAddr" Runat="server" Width="250px" DataTextField="AddressText" DataValueField="AddressValue" AutoPostBack="True">
										                    </asp:DropDownList>
										                </TD>
								                    </TR>
							                    </TABLE>
						                    </asp:Panel>
					                    </td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>First Name:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtShipFirstName" BackColor="#def4fc" runat="server" Width="245px" maxLength="30"></asp:textbox><asp:requiredfieldvalidator id="rfvShipFirstName" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							                    ControlToValidate="txtShipFirstName"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Last Name:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtShipLastName" BackColor="#def4fc" runat="server" Width="245px" maxLength="30"></asp:textbox><asp:requiredfieldvalidator id="rfvShipLastName" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							                    ControlToValidate="txtShipLastName"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Street Address:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtShipAddr1" BackColor="#def4fc" runat="server" Width="245px" maxLength="30"></asp:textbox><asp:requiredfieldvalidator id="rfvShipAddr1" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							                    ControlToValidate="txtShipAddr1"></asp:requiredfieldvalidator><br /><span style="COLOR: #ff0000; FONT-FAMILY: verdana; font-size:10px;">Unfortunately We Cannot Ship To PO Boxes</span></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Street Address 2:</b>&nbsp;</div>
					                    </td>
					                    <td><asp:textbox id="txtShipAddr2" runat="server" Width="245px" maxLength="30"></asp:textbox></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>City:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtShipCity" BackColor="#def4fc" runat="server" Width="245px" maxLength="20"></asp:textbox><asp:requiredfieldvalidator id="rfvShipCity" runat="server" Font-Size="Smaller" ErrorMessage="** Required" ControlToValidate="txtShipCity"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Country:&nbsp;</b></div>
					                    </td>
					                    <td>
						                    <asp:dropdownlist id="ddlShipCountryID" BackColor="#def4fc" runat="server" AutoPostBack="True" Width="245px"></asp:dropdownlist>
					                    </td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>State/Province:&nbsp;</b>
						                    </div>
					                    </td>
					                    <td><asp:dropdownlist id="cmbShipStateProvince" BackColor="#def4fc" runat="server" Width="245px">
							                    <asp:ListItem Value="0">---Select State/Province---</asp:ListItem>
						                    </asp:dropdownlist>
						                    <asp:regularexpressionvalidator id="rfvShipStateProvince" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							                    ControlToValidate="cmbShipStateProvince" ValidationExpression="^([1-9]|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$"></asp:regularexpressionvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Postal Code:</b>&nbsp;</div>
					                    </td>
					                    <td><asp:textbox id="txtShipPostalCode" runat="server" Width="75px" maxLength="10" size="7"></asp:textbox><asp:requiredfieldvalidator id="rfvShipPostalCode" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							                    ControlToValidate="txtShipPostalCode"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>E-Mail Address:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtShipEmail" BackColor="#def4fc" runat="server" Width="245px" maxLength="50"></asp:textbox><asp:requiredfieldvalidator id="rfvShipEmail" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							                    ControlToValidate="txtShipEmail"></asp:requiredfieldvalidator></td>
				                    </tr>
				                    <tr>
					                    <td noWrap align="right" width="15%">
						                    <div><b>Phone Number:&nbsp;</b></div>
					                    </td>
					                    <td><asp:textbox id="txtShipPhone" BackColor="#def4fc" runat="server" Width="120px" size="12"></asp:textbox>
						                    <asp:requiredfieldvalidator id="rfvShipPhone" runat="server" Font-Size="Smaller" ErrorMessage="** Required"
							                    ControlToValidate="txtShipPhone"></asp:requiredfieldvalidator>
					                    </td>
				                    </tr>
			                    </table>
			                 </td>
			              </tr>
			          </table><br />
			        <table cellspacing="0" cellpadding="0" width="100%">
				        <tr>
					        <td height="40" align="center"><asp:ImageButton Runat="server" ID="btnContinueCheckout" ImageUrl="/Images/Buttons/btn-continuecheckout.jpg"></asp:ImageButton></td>
				        </tr>
			        </table>
			        <asp:TextBox ID="CheckoutCode" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			        <asp:TextBox ID="DealerCheckout" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			        <asp:TextBox ID="MASCustID" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			        <asp:TextBox ID="MASCreditLimitUsed" Runat="server" ReadOnly="True" Visible="False" Width="1"
				        Height="1" />
			        <asp:TextBox ID="MASShipMethKey" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			        <asp:TextBox ID="MASPmtTermsKey" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			        <asp:TextBox ID="TaxExempt" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			        <asp:TextBox ID="FreeUpgradeShipping" Runat="server" ReadOnly="True" Visible="False" Width="1"
				        Height="1" />
		        </form>
		    </td>    
        </tr>
	</table>	
</asp:Content>
