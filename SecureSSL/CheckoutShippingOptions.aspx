<%@ Page Title="Shipping Options - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.CheckoutShippingOptions" Codebehind="CheckoutShippingOptions.aspx.vb" %>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead"><a class="breadcrumbheadlink" href="/ShoppingCart.aspx">Shopping Cart</a> > <a class="breadcrumbheadlink" href="/SecureSSL/CheckoutBillingShipping.aspx">Billing / Shipping</a> > Shipping Options</div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
		<div align="center"><asp:label id="MyError" runat="Server" EnableViewState="false" Font-Bold="true" ForeColor="Red"></asp:label></div>
		<form id="CheckoutBillShipForm" runat="server">
		    <div>&nbsp;</div>
			<table cellpadding="0" style="padding-left:20px;padding-right:20px;padding-bottom:20px;" cellspacing="0" align="center" width="100%">
                <tr>
                    <td style="padding-bottom:10px;border-bottom: solid 1px #CCCCCC;" class="echd">
                        Please Select A Shipping Option
                    </td>
                </tr>
                <tr>
                     <td>
			            <table bgcolor="#ffffff" class="echdnm" cellSpacing="0" cellPadding="0" width="100%">
				            <tr>
					            <td colspan="2" style="PADDING-TOP: 10px; PADDING-LEFT: 15px">
						            <asp:RadioButtonList CssClass="echdnm" Runat="server" ID="rblShippingOptions">
						            </asp:RadioButtonList>
						            <asp:RequiredFieldValidator ID="rfvShippingOptions" Runat="server" ControlToValidate="rblShippingOptions" ErrorMessage="**Please Select A Shipping Option."></asp:RequiredFieldValidator>
					            </td>
				            </tr>
				            <tr>
					            <td colspan="2" style="PADDING-LEFT: 15px">
						            <asp:RadioButtonList RepeatDirection="Horizontal" Runat="server" ID="chkPreferredCarrier" Visible="False">
							            <asp:ListItem Selected="True" Value="UPS">UPS</asp:ListItem>
							            <asp:ListItem Value="FEDEX">FedEx</asp:ListItem>
						            </asp:RadioButtonList>
						            <asp:CheckBox Runat="server" ID="chkCollectAccount" Visible="False" Text="Use My Collect Shipping Account<br>"></asp:CheckBox>
						            <!--<asp:CheckBox Runat="server" ID="chkOvernightSat" Text="Saturday Service (Overnight Only)<font style='COLOR: #cc3333'>**</font>"></asp:CheckBox><br>
						            <asp:CheckBox Runat="server" ID="chkOvernightAM" Text="Early AM Service (Overnight Only)<font style='COLOR: #cc3333'>**</font>"></asp:CheckBox><br>
						            <font style="COLOR: #cc3333">&nbsp;** Additional fees shown at checkout.</font>-->
						            &nbsp;<asp:CheckBox Runat="server" ID="chkShipComplete" Visible="True" Text="Hold my order until all items are in stock and process as one shipment."></asp:CheckBox>
					            </td>
				            </tr>
				            <tr>
					            <td colspan="2" align="center">
						            <asp:Panel Visible="False" Runat="server" ID="pnlIntlShipping">
							            <TABLE width="95%" class="echdnm">
								            <TR>
									            <TD style="COLOR: #cc3333">Because we cannot accurately estimate shipping costs for 
										            international orders, your shipping amount in the shopping cart will appear as 
										            zero dollars until we can obtain the actual cost to ship this order. If you 
										            would like to be contacted with the actual shipping charges before your order 
										            ships, please indicated so in the comments on the next screen. <B>Otherwise, your 
											            order will ship and the final total will be billed to your account.</B>
										            <BR>
										            <BR>
										            Your preferred shipping method was chosen when your account was set up and 
										            cannot be changed online at this time. Please contact our sales office directly 
										            if you would like to modify your shipping preference for all future orders.
										            <BR>
										            <BR>
										            Air Parcel Post customers please be aware that we have replaced this service 
										            with our Express Mail Service effective 6/19/2007.
										            <BR>
										            <BR>
										            Thank you,<BR>
										            JE Pistons Inc.
									            </TD>
								            </TR>
							            </TABLE>
						            </asp:Panel>
						            <asp:DataGrid id="MyList" runat="server" Width="95%" AutoGenerateColumns="false" DataKeyField="ShipChargeID"
							            ShowFooter="false"  cellspacing="0" cellpadding="3">
							            <Columns>
								            <asp:BoundColumn Visible="False" DataField="HighlightRow" HeaderText="HighlightRow">
									            <HeaderStyle HorizontalAlign="Center" CssClass="CartListHeadText"></HeaderStyle>
									            <ItemStyle HorizontalAlign="Center" CssClass="bodytext"></ItemStyle>
								            </asp:BoundColumn>
								            <asp:BoundColumn DataField="OrderAmtRange" HeaderText="Order Amount<br>($USD)">
									            <HeaderStyle HorizontalAlign="Center" CssClass="CartListHeadText"></HeaderStyle>
									            <ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
								            </asp:BoundColumn>
								            <asp:BoundColumn DataField="ShipCostGnd" HeaderText="Ground<br>Service" DataFormatString="{0:c}">
									            <HeaderStyle HorizontalAlign="Center" Width="85" CssClass="CartListHeadText"></HeaderStyle>
									            <ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
								            </asp:BoundColumn>
								            <asp:BoundColumn DataField="ShipCost3Day" HeaderText="3-Day<br>Service" DataFormatString="{0:c}">
									            <HeaderStyle HorizontalAlign="Center" Width="85" CssClass="CartListHeadText"></HeaderStyle>
									            <ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
								            </asp:BoundColumn>
								            <asp:BoundColumn DataField="ShipCost2Day" HeaderText="2-Day<br>Service" DataFormatString="{0:c}">
									            <HeaderStyle HorizontalAlign="Center" Width="85" CssClass="CartListHeadText"></HeaderStyle>
									            <ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
								            </asp:BoundColumn>
								            <asp:BoundColumn DataField="ShipCost1Day" HeaderText="Overnight<br>Service" DataFormatString="{0:c}">
									            <HeaderStyle HorizontalAlign="Center" Width="85" CssClass="CartListHeadText"></HeaderStyle>
									            <ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
								            </asp:BoundColumn>
							            </Columns>
						            </asp:DataGrid>
					            </td>
				            </tr>
				            <tr>
					            <td>&nbsp;</td>
				            </tr>
			            </table>
			         </td>
			     </tr>
			 </table>   
			<table style="padding-bottom:50px;" cellSpacing="0" cellPadding="0" class="echdnm" width="100%">
				<tr>
					<td style="COLOR: #cc3333">
						<asp:Label Runat="server" Visible="false" ID="lblEstShipDate" CssClass="attention"></asp:Label></td>
					<td height="40" align="center"><asp:ImageButton  Runat="server" ID="btnContinueCheckout" ImageUrl="/Images/Buttons/btn-continuecheckout.jpg"></asp:ImageButton>
					</td>
				</tr>
			</table>
			<asp:TextBox ID="CheckoutCode" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
		</form>
</asp:Content>
