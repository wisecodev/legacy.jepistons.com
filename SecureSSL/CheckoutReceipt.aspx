<%@ Page Title="Checkout Receipt - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.CheckoutReceipt" Codebehind="CheckoutReceipt.aspx.vb" %>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">Order <%If Request("OrderReview")="1" then%>
			Detail<%Else%>
			Receipt<%End If%> For Confirmation Number #:&nbsp;&nbsp;<%=Request("OrderID")%></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">


		
		
		<div align="center"><asp:label id="MyError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false"></asp:label></div>
		<form id="CheckoutReceiptForm" runat="server" autocomplete="off">
			<asp:Panel HorizontalAlign="left" ID="pnlThanks" Runat="server" Visible="True">
			<table class="echdnm" width="100%" cellpadding="0" cellspacing="0" style="padding-left:20px;padding-right:20px;">
			    <tr>
			        <td>Thank you for ordering from JruEPistons.com, 
                        your order will be sent to our warehouse for processing as soon as possible.<br />Most in stock orders ship the same business day Monday-Friday if placed before 4PM.  
                        <br /><br />You should receive an email confirming your order shortly or you can click the print button for a printable copy of your order for your records.<br><br></td>
			        <td width="50" valign="top"><a target="_blank" href="/SecureSSL/CheckoutReceiptPrintable.aspx?OrderID=<%=Request("OrderID")%>"><img style="border:none;" src="/Images/Printable.jpg" /></a></td>
			    </tr>
			</table>
			</asp:Panel>
		<div>	
			<table class="echdnm" width="100%" cellpadding="0" cellspacing="0" style="padding-left:20px;padding-right:20px;">
				<tr>
				    <td>
                        <table cellpadding="0" cellspacing="0" align="left" width="100%">
			                <tr>
			                    <td valign="top">
			                        <table width="100%" cellpadding='0' border="0" style="padding-left:20px;padding-right:20px;" cellspacing='0'>
			                            <tr>
			                                <td valign="top" width="49%" style="border:solid 1px #CCCCCC; padding:5px;">
			                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                    <tr>
                                                        <td>
                                                            <div class="echd">Billing Information</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                         <td valign="top" >
                                                            <table style="margin-top:5px;border-top:solid 1px #CCCCCC;" class="echdnm" cellSpacing="0" cellPadding="2" width="100%">
										                        <tr>
											                        <td width="90" valign="top"><b>Address:</b></td>
											                        <td>
												                        <asp:Label Runat="server" ID="lblBillFirstLastName" /><br>
												                        <asp:Label Runat="server" ID="lblBillAddressLine1And2" /><br>
												                        <asp:Label Runat="server" ID="lblBillCityState" />&nbsp;&nbsp;
												                        <asp:Label Runat="server" ID="lblBillPostalCode" />
											                        </td>
										                        </tr>
										                        <tr>
											                        <td width="90"><b>Country:</b></td>
											                        <td><asp:Label Runat="server" ID="lblBillCountryAbbr" /></td>
										                        </tr>
										                        <tr>
											                        <td width="90"><b>Phone:</b></td>
											                        <td><asp:Label Runat="server" ID="lblBillPhone" /></td>
										                        </tr>
										                        <tr>
											                        <td width="90"><b>Email:</b></td>
											                        <td><asp:Label Runat="server" ID="lblBillEmail" /></td>
										                        </tr>
										                        <tr>
											                        <td width="90"><b>Payment Type:</b></td>
											                        <td><asp:Label Runat="server" ID="lblBillPaymentType" /></td>
										                        </tr>
									                        </table>
                                                         </td>
                                                    </tr>
                                                </table>
			                                </td>
			                                <td width="30"></td>
			                                <td valign="top" width="49%" style="border:solid 1px #CCCCCC;padding:5px;">
			                                    <table cellpadding="0" cellspacing="0" align="center" width="100%">
                                                    <tr>
                                                        <td>
                                                            <div class="echd">Shipping Information</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                         <td valign="top" height="126px">
                                                            <table style="margin-top:5px;border-top:solid 1px #CCCCCC;" class="echdnm" cellSpacing="0" cellPadding="2" width="100%">
										                        <tr>
											                        <td width="60" valign="top"><b>Address:</b></td>
											                        <td>
												                        <asp:Label Runat="server" ID="lblShipFirstLastName" /><br>
												                        <asp:Label Runat="server" ID="lblShipAddressLine1And2" /><br>
												                        <asp:Label Runat="server" ID="lblShipCityState" />&nbsp;&nbsp;
												                        <asp:Label Runat="server" ID="lblShipPostalCode" />
											                        </td>
										                        </tr>
										                        <tr>
											                        <td width="60"><b>Country:</b></td>
											                        <td><asp:Label Runat="server" ID="lblShipCountryAbbr" /></td>
										                        </tr>
										                        <tr>
											                        <td width="60"><b>Phone:</b></td>
											                        <td><asp:Label Runat="server" ID="lblShipPhone" /></td>
										                        </tr>
										                        <tr>
											                        <td width="60"><b>Email:</b></td>
											                        <td><asp:Label Runat="server" ID="lblShipEmail" /></td>
										                        </tr>
										                        <tr>
											                        <td width="60" valign="top"><b>Shipping:</b></td>
											                        <td><asp:Label Runat="server" ID="lblShipMethodDesc" /></td>
										                        </tr>
									                        </table>   
                                                         </td>
                                                    </tr>
                                                </table>			        
			                                </td>
			                            </tr>
			                        </table>
			                    </td>
			                </tr>
			            </table>        	
				    </td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td align="center">
						 <asp:DataGrid id="MyList" runat="server" Width="800" AutoGenerateColumns="false" DataKeyField="Quantity"
								        ShowFooter="false" Font-Size="8pt" Font-Name="Verdana" cellspacing="1" cellpadding="3" GridLines="None" 
								        BorderColor="#FFFFFF" AlternatingItemStyle-CssClass="CartListItemAlt" FooterStyle-Height="33" ItemStyle-CssClass="CartListItem"
								        HeaderStyle-CssClass="CartListHead">
							<Columns>
								<asp:TemplateColumn Visible="False" HeaderText="Product ID">
									<ItemTemplate>
										<asp:Label id="ItemID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ItemID") %>' />
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Product Description">
									<HeaderStyle HorizontalAlign="Center" CssClass="CartListHeadText"></HeaderStyle>
									<ItemStyle HorizontalAlign="Left" CssClass="CartListItemText"></ItemStyle>
									<ItemTemplate>
										<asp:Label runat="server" width="410px" ID="ProductLabel">
											<%# DataBinder.Eval(Container.DataItem, "ProdDesc")%>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="QTY">
									<HeaderStyle HorizontalAlign="Center" Width="80px" CssClass="CartListHeadText"></HeaderStyle>
									<ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
									<ItemTemplate>
										<asp:Label id="Quantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "QTYOptionDesc") %>' width="80px" />
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:BoundColumn DataField="Price" HeaderText="Price" DataFormatString="{0:c}">
									<HeaderStyle HorizontalAlign="Center" Width="90px" CssClass="CartListHeadText"></HeaderStyle>
									<ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="ExtendedAmount" HeaderText="Subtotal" DataFormatString="{0:c}">
									<HeaderStyle HorizontalAlign="Center" Width="90px" CssClass="CartListHeadText"></HeaderStyle>
									<ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
								</asp:BoundColumn>
							</Columns>
						</asp:DataGrid>
					</td>
				</tr>
				<tr>
					<td align="center">
						<table cellpadding="2" cellspacing="1" width="800" class="ecnmtbl" style="padding-bottom:50px;">
			                    <tr>
				                    <td width="90%" align="right">Item Total:</td>
				                    <td bgcolor="#E6E6E6" align="right"><asp:Label Runat="server" ID="lblSubTotal" /></td>
			                    </tr>
			                    <tr>
				                    <td width="90%" align="right">Shipping and Handling:</td>
				                    <td bgcolor="#E6E6E6" align="right"><asp:Label Runat="server" ID="lblShipCost" /></td>
			                    </tr>
			                    <tr>
				                    <td width="90%" align="right">Discounts:</td>
				                    <td bgcolor="#E6E6E6" align="right"><asp:Label Runat="server" ID="lblDiscount" /></td>
			                    </tr>
			                    <tr>
				                    <td width="90%" align="right" valign="top">Taxes:</td>
				                    <td bgcolor="#E6E6E6" align="right">
					                    <asp:Label id="lblTaxAmount" Runat="server" Visible="False" />
					                    <asp:Label id="lblPSTTaxAmount" Runat="server" Visible="False" />
					                    <asp:Label id="lblGSTTaxAmount" Runat="server" Visible="False" />
					                    <asp:Label id="lblHSTTaxAmount" Runat="server" Visible="False" />
				                    </td>
			                    </tr>
			                    <tr>
				                    <td width="90%" align="right">Grand Total:</td>
				                    <td align="right" bgcolor="#def4fc"><b><asp:Label Runat="server" ID="lblGrandTotal" /></b></td>
			                    </tr>
		                    </table>
					</td>
				</tr>
			</table>
         </div>
                        
			<asp:TextBox ID="CheckoutCode" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
					
		</form>

 <script type="text/javascript">
     dataLayer = [{
         'grandTotal': document.getElementById("ctl00_ContentPlaceHolder_lblGrandTotal").innerHTML
}];
    </script>

			        		         <!-- Google Tag Manager -->
<script>    (function(w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({ 'gtm.start':
new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-5NJ27J7');</script>
<!-- End Google Tag Manager -->
               <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5NJ27J7"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

		
</asp:Content>
