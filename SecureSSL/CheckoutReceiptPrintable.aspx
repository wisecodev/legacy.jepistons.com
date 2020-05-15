<%@ Page Title="Checkout Receipt - JE Pistons Inc." Language="VB" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.CheckoutReceiptPrintable" Codebehind="CheckoutReceiptPrintable.aspx.vb" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="/App_Themes/main.css" />
</head>
<body bgcolor="#FFFFFF">
    <div style="font-family:helvetica;font-size: 20px; color: #004a80;padding-top:5px;text-align:left">Order <%If Request("OrderReview")="1" then%>
			Detail<%Else%>
			Receipt<%End If%> For Confirmation Number #:&nbsp;&nbsp;<%=Request("OrderID")%></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div>
		<div align="center"><asp:label id="MyError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false"></asp:label></div>
		<form id="CheckoutReceiptForm" runat="server" autocomplete="off">
			<asp:Panel HorizontalAlign="left" ID="pnlThanks" Runat="server" Visible="True">
			<table style="background-color:White;" class="echdnm" width="100%" cellpadding="0" cellspacing="0">
			    <tr>
			        <td>Thank you for ordering from JEPistons.com, 
                        your order will be sent to our warehouse for processing as soon as possible.<br />Most in stock orders ship the same business day Monday-Friday if placed before 4PM.  You should receive an 
                        email<br />confirming your order shortly or you can click the print button for a printable copy of your order for your records.<br><br>
                    </td>
			    </tr>
			</table>
			</asp:Panel>
		<div align="left" style="background-color:White;">	
			<table border="0" cellSpacing="0" cellPadding="0" width="650">
				<tr>
				    <td>
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
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td align="center">
						<asp:DataGrid id="MyList" runat="server" Width="650" AutoGenerateColumns="false" DataKeyField="Quantity"
	                            ShowFooter="false" Font-Size="8pt" Font-Name="Verdana" cellspacing="0" cellpadding="4" GridLines="Vertical"
	                            BorderColor="black" AlternatingItemStyle-CssClass="CartListItemAlt" ItemStyle-CssClass="CartListItem"
	                            FooterStyle-CssClass="CartListFooter" HeaderStyle-CssClass="CartListHead">
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
									<HeaderStyle HorizontalAlign="Center" Width="70px" CssClass="CartListHeadText"></HeaderStyle>
									<ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
								</asp:BoundColumn>
								<asp:BoundColumn DataField="ExtendedAmount" HeaderText="Subtotal" DataFormatString="{0:c}">
									<HeaderStyle HorizontalAlign="Center" Width="70px" CssClass="CartListHeadText"></HeaderStyle>
									<ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
								</asp:BoundColumn>
							</Columns>
						</asp:DataGrid>
					</td>
				</tr>
				<tr>
					<td align="center">
						<table cellpadding="2" cellspacing="1" width="650" class="ecnmtbl" style="padding-bottom:50px;">
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

    </body>
</html>
