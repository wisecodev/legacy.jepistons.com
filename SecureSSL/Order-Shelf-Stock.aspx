<%@ Page Title="Custom Pistons - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.OrderShelfStock" Codebehind="Order-Shelf-Stock.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <meta name="Description" content="JE Pistons can manufacture just about any piston given the correct specs and application information.  Fast turnaround time can get you back on the track with minimal downtime." />
		<meta name="Keywords" content="JE Pistons, Custom Made, Pistons, Custom Piston, Change modification, compression changes, custom pins, custom rings, coatings, finishing" />
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td class="desc2a"><b>SHELF PISTON ORDER FORM</b><br>
		If you have a JE Pistons account established, would like to place an order for any catalog JE or SRP items, and you know your required part number(s), please use the form below to place your order. Enter your account number, contact information, part numbers, and required shipping information and we'll confirm your order via email within one business day. Otherwise if you would like to fax the information to us, please use the form <a href="/PDFs/OrderInfo/shelf_order_form.pdf">here</a>.</td>
	</tr>
	<tr bgcolor="#CCCCCC">
		<td><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
	</tr>
	<tr>
		<td class="desc2" align="center"><br>
		    <br>       
		    <div align="center">
			    <font color="red">
				    <asp:label id="MyError" runat="Server" EnableViewState="false" Font-Bold="true" ForeColor="Red"></asp:label>
			    </font>
		    </div>
		    <asp:Panel runat="server" Visible="true" ID="pnlSubmit">
    		    <table align="center">
	                <tr>
		                <td>
                            <form id="frmOrderCustomPistons" method="post" runat="server">
                                <table cellpadding="0" cellspacing="2" border="0" width="700" class="fm">
	                                <tr>
		                                <td colspan="2" class="fmsm" align="left"><span class="fmhd">Account Info</span><br>
		                                If you have a JE Pistons account and know your required part number, please use the form below to place your shelf order.
		                                <br /><br />** To verify an online dealer account you must call our customer service line and let them know your login name.
		                                </td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <tr>
		                                <td width="40%" align="right" valign="top"><b>Verified Customer #</b>:</td>
		                                <td width="60%" align="left"><asp:TextBox Runat="server" Enabled="false" cssclass="fm2" style="background-color:#CDCDCD;" ID="txtDealerAcctNo" size="35"></asp:TextBox>**<br />
		                                <div class="fmsm">"Unverified Account" in the box above means<br />you WILL be contacted to process this order.</div>
		                                </td>
	                                </tr>
	                                <tr>
		                                <td width="40%" align="right"><b>Billing Account #</b>:</td>
		                                <td width="60%" align="left"><asp:TextBox Runat="server" cssclass="fm2" style="background-color: #def4fc;" ID="txtBillAcctNo" size="35"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="rfvBillAcctNo" ErrorMessage="**Required" Font-Size="Smaller" ControlToValidate="txtBillAcctNo"></asp:RequiredFieldValidator></td>
	                                </tr>
	                                <tr>
		                                <td width="40%" align="right"><b>Shipping Account #</b>:</td>
		                                <td width="60%" align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtShipAcctNo" size="35"></asp:TextBox></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Company</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" style="background-color: #def4fc;" ID="txtCompanyName" size="35"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="rfvCompanyName" ErrorMessage="**Required" Font-Size="Smaller" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Contact Name</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" style="background-color: #def4fc;" ID="txtContactName" size="35"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="rfvContactName" ErrorMessage="**Required" Font-Size="Smaller" ControlToValidate="txtContactName"></asp:RequiredFieldValidator></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>PO #</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtPONumber" size="35"></asp:TextBox></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Phone #</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" style="background-color: #def4fc;" ID="txtPhoneNo" size="35"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="rfvPhoneNo" ErrorMessage="**Required" Font-Size="Smaller" ControlToValidate="txtPhoneNo"></asp:RequiredFieldValidator></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Fax #</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtFaxNo" size="35"></asp:TextBox></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Email</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" style="background-color: #def4fc;" ID="txtEmail" size="35"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="rfvEmail" ErrorMessage="**Required" Font-Size="Smaller" ControlToValidate="txtEmail"></asp:RequiredFieldValidator></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Billing Terms</b>:</td>
		                                <td align="left">
		                                    <asp:DropDownList BackColor="#def4fc" runat="server" ID="ddlBillTerms">
		                                        <asp:ListItem Value="">--Select Billing Terms--</asp:ListItem>
		                                        <asp:ListItem Value="Default">Default Account</asp:ListItem>
		                                        <asp:ListItem Value="COD">COD</asp:ListItem>
		                                        <asp:ListItem Value="CC">Call For Credit Card</asp:ListItem>
		                                    </asp:DropDownList>
		                                    <asp:RequiredFieldValidator runat="server" ID="rfvBillTerms" ErrorMessage="**Required" Font-Size="Smaller" ControlToValidate="ddlBillTerms"></asp:RequiredFieldValidator>
		                                </td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <tr>
		                                <td align="left" colspan="2" class="fmsm"><span class="fmhd">What would you like to order?</span><br>
		                                Please enter the JE/SRP shelf part numbers you would like to order. When completing the quantity (qty) field, please specify whether you require a complete "set" or an "individual" piston. For example, one (1) "set" will provide all the pistons required for that particular engine (i.e. 8 pistons for a small-block V8), while one (1) "individual" will provide a single piston.</td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <!-- Begin Order Info -->
	                                <tr>
		                                <td colspan="2" align="center">
			                                <table cellpadding="2" cellspacing="1" bgcolor="#252525" class="fmsm">
				                                <tr bgcolor="#F2F2F2">
					                                <td align="center">Qty</td>
					                                <td width="10%" align="center">Indiv</td>
					                                <td width="10%" align="center">Set</td>
					                                <td>Part #</td>
					                                <td>Comments</td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty1" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv1" GroupName="PartUnit1" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet1" GroupName="PartUnit1" /></td>
					                                <td><asp:TextBox ID="txtPartNo1" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment1" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty2" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv2" GroupName="PartUnit2" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet2" GroupName="PartUnit2" /></td>
					                                <td><asp:TextBox ID="txtPartNo2" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment2" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty3" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv3" GroupName="PartUnit3" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet3" GroupName="PartUnit3" /></td>
					                                <td><asp:TextBox ID="txtPartNo3" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment3" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty4" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv4" GroupName="PartUnit4" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet4" GroupName="PartUnit4" /></td>
					                                <td><asp:TextBox ID="txtPartNo4" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment4" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty5" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv5" GroupName="PartUnit5" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet5" GroupName="PartUnit5" /></td>
					                                <td><asp:TextBox ID="txtPartNo5" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment5" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty6" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv6" GroupName="PartUnit6" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet6" GroupName="PartUnit6" /></td>
					                                <td><asp:TextBox ID="txtPartNo6" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment6" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty7" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv7" GroupName="PartUnit7" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet7" GroupName="PartUnit7" /></td>
					                                <td><asp:TextBox ID="txtPartNo7" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment7" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty8" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv8" GroupName="PartUnit8" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet8" GroupName="PartUnit8" /></td>
					                                <td><asp:TextBox ID="txtPartNo8" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment8" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty9" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv9" GroupName="PartUnit9" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet9" GroupName="PartUnit9" /></td>
					                                <td><asp:TextBox ID="txtPartNo9" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment9" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td><asp:TextBox ID="txtQty10" runat="server" Width="35"></asp:TextBox></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radIndiv10" GroupName="PartUnit10" /></td>
					                                <td bgcolor="#fcf8c2" align="center"><asp:RadioButton runat="server" ID="radSet10" GroupName="PartUnit10" /></td>
					                                <td><asp:TextBox ID="txtPartNo10" runat="server" Width="100"></asp:TextBox></td>
					                                <td><asp:TextBox ID="txtComment10" runat="server" Width="250"></asp:TextBox></td>
				                                </tr>
			                                </table>

			                             </td>
	                                </tr>
	                                <!-- End Order Info -->
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <!-- Begin Drop Ship -->
	                                <tr>
		                                <td colspan="2" align="left" class="fmsm"><SPAN CLASS="fmhd">Shipping Info</span><br>
		                                Please enter the drop ship address below. If the order is being shipped to 
		                                the address in your account profile, select "ship to the address listed on my 
		                                account".</td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <tr>
		                                <td>&nbsp;</td>
		                                <td align="left">
			                                <table cellpadding="10" cellspacing="1" class="fm" bgcolor="#CCCCCC">
				                                <tr bgcolor="#FFFFFF">
					                                <td>
					                                    <asp:RadioButton runat="server" ID="radShipDropShip" GroupName="ShipType" Text="Drop Ship" /><br />
				                                        <asp:RadioButton runat="server" ID="radShipAccountAddress" GroupName="ShipType" Text="Ship to the address listed on my account" />
						                            </td>
				                                </tr>
			                                </table>
			                            </td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Name</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtShipName" size="15"></asp:TextBox></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Address</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtShipAddress" size="30"></asp:TextBox></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>City</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtShipCity" size="15"></asp:TextBox></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>State</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtShipState" size="2"></asp:TextBox></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Zip</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtShipZip" size="15"></asp:TextBox></td>
	                                </tr>
	                                <!-- End Drop Ship -->
                                	
	                                <tr>
		                                <td align="right"><b>Ship Via</b>:</td>
		                                <td align="left">
		                                    <asp:DropDownList runat="server" ID="ddlShipMethod">
		                                        <asp:ListItem Value="">-----Select Ship Method-----</asp:ListItem>
		                                        <asp:ListItem Value="UPSGROUND">UPS Ground</asp:ListItem>
		                                        <asp:ListItem Value="UPS1">UPS 1 Day</asp:ListItem>
		                                        <asp:ListItem Value="UPS2">UPS 2 Day</asp:ListItem>
		                                        <asp:ListItem Value="UPS3">UPS 3 Day</asp:ListItem>
		                                        <asp:ListItem Value="UPSINTEXPRESS">UPS International Express</asp:ListItem>
		                                        <asp:ListItem Value="UPSINTEXPDITE">UPS International Expedite</asp:ListItem>
		                                        <asp:ListItem Value="UPSCA">UPS Canada Ground</asp:ListItem>
		                                        <asp:ListItem Value="UPSBEST">UPS Bestway</asp:ListItem>
		                                        <asp:ListItem Value="SONIC">Sonic Air</asp:ListItem>
		                                        <asp:ListItem Value="FEDEX1">FEDEX 1 Day</asp:ListItem>
		                                        <asp:ListItem Value="FEDEX2">FEDEX 2 Day</asp:ListItem>
		                                        <asp:ListItem Value="FEDEX3">FEDEX 3 Day</asp:ListItem>
		                                        <asp:ListItem Value="DHL">DHL</asp:ListItem>
		                                        <asp:ListItem Value="WILLCALL">Will Call</asp:ListItem>
		                                        <asp:ListItem Value="OTHER">Other</asp:ListItem>
		                                    </asp:DropDownList>
		                                </td> 
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Special Instructions</b>:</td>
		                                <td align="left"><asp:TextBox Runat="server" cssclass="fm2" ID="txtShipInstructions" size="15"></asp:TextBox></td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>Confirmation required?</b>:</td>
		                                <td align="left">
			                                <table cellpadding="0" cellspacing="0" class="fm" style="background-color: #def4fc;">
				                                <tr>
					                                <td> 
					                                    <asp:RadioButton runat="server" ID="radShipConfirmYes" GroupName="ShipConfirm" Text="Yes" />&nbsp;&nbsp;
				                                        <asp:RadioButton runat="server" ID="radShipConfirmNo" GroupName="ShipConfirm" Text="No" />
				                                    </td>
				                                </tr>
			                                </table>
			                            </td>
	                                </tr>
	                                <tr>
		                                <td align="right"><b>If yes,</b></td>
		                                <td align="left">
		                                    <asp:DropDownList runat="server" ID="ddlShipConfirmType">
		                                            <asp:ListItem Value="">---Select Contact Method---</asp:ListItem>
		                                            <asp:ListItem Value="Email">Email</asp:ListItem>
		                                            <asp:ListItem Value="Fax">Fax</asp:ListItem>
		                                            <asp:ListItem Value="Phone">Phone Call</asp:ListItem>
		                                    </asp:DropDownList>        
		                                </td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <tr>
		                                <td colspan="2" align="center">
		                                    <asp:Button runat="server" ID="btnSubmit" Text="Submit Shelf Stock Order" />
		                                </td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
                                </table>
                            </form>
					    </td>
				    </tr>
			    </table>    
		    </asp:Panel>
            <asp:Panel runat="server" Visible="false" ID="pnlThankYou">
                <p class="nm" style="text-align:center;">
                    Thank you for your order. A JE Pistons sales person will contact you shortly.<br /><br />
					If you need assistance, please call (714) 898-9763.
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
                </p>
            </asp:Panel>
		</td>
	</tr>
</table>

</asp:Content>


