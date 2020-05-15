<%@ Page Title="Custom Pistons - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.OrderCustoms" Codebehind="Order-Custom.aspx.vb" %>
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
		<td class="desc2a"><b>"SHELF CHANGE" OR "REFERENCE" CUSTOM PISTON ORDER FORM</b><br>
		If you have a JE Pistons account established and would like to place an order for custom pistons that are similar to an existing off-the-shelf JE piston OR PREVIOUS CUSTOM ORDER, please use the form below to place your order.ONLY THE CHANGES LISTED IN THE FORM BELOW WILL BE MADE, ALL OTHER DESIGN FEATURES AND COMPONENTS WILL REMAIN THE SAME.</td>
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
                                <table cellpadding="0" cellspacing="2" border="0" width="500" class="fm">
	                                <tr>
		                                <td colspan="2" class="fmsm" align="left"><span class="fmhd">Account Info</span><br>
		                                If you have a JE Pistons account and know your required part number, please use the form below to place your shelf order. <br /><br />** To verify an online dealer account you must call our customer service line and let them know your login name.</td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <tr>
		                                <td width="40%" align="right" valign="top"><b>Verified Customer #</b>:</td>
		                                <td width="60%" align="left"><asp:TextBox Runat="server" Enabled="false" cssclass="fm2" style="background-color:#CDCDCD;" ID="txtDealerAcctNo" size="35"></asp:TextBox>**<br />
		                                <div class="fmsm">"Unverified Account" in the box above means<br />you WILL be contacted to process this order.</div></td>
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
		                                <td align="right"><b>JE Salesperson</b>:</td>
		                                <td align="left">
		                                    <asp:DropDownList BackColor="#def4fc" runat="server" ID="ddlSalesPerson">
		                                        <asp:ListItem Value="">--Select Salesperson--</asp:ListItem>
		                                        <asp:ListItem Value="sales@pmi-brands.com">General Sales Department</asp:ListItem>
		                                        <asp:ListItem Value="arussell@pmi-brands.com">Alex Russell</asp:ListItem>
		                                        <asp:ListItem Value="bweaver@pmi-brands.com">Brian Weaver</asp:ListItem>
		                                        <asp:ListItem Value="gsuyenaga@pmi-brands.com">Gregg Suyenaga</asp:ListItem>
		                                        <asp:ListItem Value="jroche@pmi-brands.com">Jerry Roche</asp:ListItem>
		                                        <asp:ListItem Value="ndiblasi@pmi-brands.com">Nick Diblasi</asp:ListItem>
		                                        <asp:ListItem Value="pcarvounas@pmi-brands.com">Paul Carvounas</asp:ListItem>
		                                        <asp:ListItem Value="rgillis@pmi-brands.com">Randy Gillis</asp:ListItem>
		                                        <asp:ListItem Value="sstone@pmi-brands.com">Stacey Stone</asp:ListItem>
		                                    </asp:DropDownList>
		                                    <asp:RequiredFieldValidator runat="server" ID="rfvSalesPerson" ErrorMessage="**Required" Font-Size="Smaller" ControlToValidate="ddlSalesPerson"></asp:RequiredFieldValidator>
		                                </td>                 
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <tr>
		                                <td align="left" colspan="2" class="fmsm"><span class="fmhd">What would you like to order?</span><br>
		                                Please enter the JE shelf part number you would like to reference, then enter your desired bore size and compression distance.</td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <!-- Begin Order Info -->
	                                <tr>
		                                <td colspan="2" align="center">
			                                <table cellpadding="2" cellspacing="1" bgcolor="#252525" class="fmsm" width="700">
				                                <tr bgcolor="#F2F2F2">
					                                <td align="center" width="22%">JE Shelf Part or Reference #</td>
					                                <td align="center" width="14%">Bore</td>
					                                <td align="center" width="14%">Comp. Dist.</td>
					                                <td align="center" width="25%">Order Rings?</td>
					                                <td align="center" width="25%">Order Wrist Pins?</td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td align="center" style="padding-top:15px;"><asp:TextBox Runat="server" cssclass="fm2" style="background-color: #def4fc;" ID="txtPartNo" size="10"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="rfvPartNo" ErrorMessage="<br>**Required"  ControlToValidate="txtPartNo"></asp:RequiredFieldValidator></td>
					                                <td align="center" style="padding-top:15px;"><asp:TextBox Runat="server" cssclass="fm2" style="background-color: #def4fc;" ID="txtBoreSize" size="10"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="rfvBoreSize" ErrorMessage="<br>**Required" ControlToValidate="txtBoreSize"></asp:RequiredFieldValidator></td>
					                                <td align="center" style="padding-top:15px;"><asp:TextBox Runat="server" cssclass="fm2" style="background-color: #def4fc;" ID="txtCompDistance" size="10"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="rfvCompDistance" ErrorMessage="<br>**Required" ControlToValidate="txtCompDistance"></asp:RequiredFieldValidator></td>
					                                <td align="center">
						                                <table cellpadding="0" cellspacing="0" border="0" class="fmsm">
							                                <tr>
							                                    <td>
							                                        <asp:RadioButton runat="server" ID="radRingsYes" GroupName="Rings" Text="Yes" />
							                                        <asp:RadioButton runat="server" ID="radRingsNo" GroupName="Rings" Text="No" />
							                                    </td>
								                                <td>&nbsp;&nbsp;&nbsp;</td>
								                                <td><asp:TextBox Runat="server" cssclass="fmsm" Text="Ring Part #" ID="txtRingPartNo" size="10"></asp:TextBox></td>
							                                </tr>
						                                </table>
						                             </td>
					                                <td align="center">
						                                <table cellpadding="0" cellspacing="0" border="0" class="fmsm">
							                                <tr>
							                                    <td>
							                                        <asp:RadioButton runat="server" ID="radWristPinsYes" GroupName="WristPins" Text="Yes" />
							                                        <asp:RadioButton runat="server" ID="radWristPinsNo" GroupName="WristPins" Text="No" />
							                                    </td>
								                                <td>&nbsp;&nbsp;&nbsp;</td>
								                                <td><asp:TextBox Runat="server" cssclass="fmsm" Text="Pin Part #" ID="txtWristPinPartNo" size="10"></asp:TextBox></td>
							                                </tr>
						                                </table>
						                            </td>
				                                </tr>
			                                </table>
			                             </td>
	                                </tr>
	                                <!-- End Order Info -->
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <tr>
		                                <td colspan="2" align="left" class="fmsm"><span class="fmhd">What changes are being made?</span><br>
		                                Please list any other changes you would like to make to the JE shelf part (ring package, pin diameter/length, valve relief diameter/depth, etc.</td>
	                                </tr>
	                                <tr>
		                                <td colspan="2">&nbsp;</td>
	                                </tr>
	                                <!-- Changes Being Made -->
	                                <tr>
		                                <td colspan="2" align="center">
			                                <table cellpadding="2" cellspacing="1" bgcolor="#252525" class="fmsm" width="400">
				                                <tr bgcolor="#F2F2F2">
					                                <td align="right">Change #1:</td>
					                                <td><asp:TextBox Runat="server" cssclass="fm2" ID="txtChange1" size="50"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td align="right">Change #2:</td>
					                                <td><asp:TextBox Runat="server" cssclass="fm2" ID="txtChange2" size="50"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td align="right">Change #3:</td>
					                                <td><asp:TextBox Runat="server" cssclass="fm2" ID="txtChange3" size="50"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td align="right">Change #4:</td>
					                                <td><asp:TextBox Runat="server" cssclass="fm2" ID="txtChange4" size="50"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td align="right">Change #5:</td>
					                                <td><asp:TextBox Runat="server" cssclass="fm2" ID="txtChange5" size="50"></asp:TextBox></td>
				                                </tr>
				                                <tr bgcolor="#F2F2F2">
					                                <td align="right">Other Instructions:</td>
					                                <td><asp:TextBox Runat="server" cssclass="fm2" ID="txtInstructions" size="50"></asp:TextBox></td>
				                                </tr>
			                                </table>
			                             </td>
	                                </tr>
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
		                                    <asp:Button runat="server" ID="btnSubmit" Text="Submit Custom Order" />
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


