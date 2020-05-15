<%@ Page Title="Checkout Review/Payment - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.CheckoutReviewPayment" Codebehind="CheckoutReviewPayment.aspx.vb" %>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead"><a class="breadcrumbheadlink" href="/ShoppingCart.aspx">Shopping Cart</a> > <a class="breadcrumbheadlink" href="/SecureSSL/CheckoutBillingShipping.aspx">Billing / Shipping</a> > <a class="breadcrumbheadlink" href="/SecureSSL/CheckoutShippingOptions.aspx">Shipping Options</a> > Review / Payment</div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
        <div class="attention" align="center">&nbsp;</div>
		<div align="center"><asp:label id="MyError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false"></asp:label></div>
		<form id="CheckoutReviewPayForm" runat="server" autocomplete="off">
            <div align="center">
                <table bgcolor="#ffffff" class="desc" style="padding-left:20px;padding-right:20px;" cellSpacing="0" cellPadding="0" width="100%">
                    <tr>
	                    <td align="center">
	                                <asp:DataGrid id="MyList" runat="server" Width="100%" AutoGenerateColumns="false" DataKeyField="Quantity"
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
					                                <HeaderStyle HorizontalAlign="Center" Width="100px" CssClass="CartListHeadText"></HeaderStyle>
					                                <ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
					                                <ItemTemplate>
						                                <asp:Label id="Quantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "QTYOptionDesc") %>' width="100px" />
					                                </ItemTemplate>
				                                </asp:TemplateColumn>
				                                <asp:BoundColumn DataField="Price" HeaderText="Price" DataFormatString="{0:c}">
					                                <HeaderStyle HorizontalAlign="Center" Width="88px" CssClass="CartListHeadText"></HeaderStyle>
					                                <ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
				                                </asp:BoundColumn>
				                                <asp:TemplateColumn HeaderText="Subtotal">
					                                <HeaderStyle HorizontalAlign="Center" Width="88px" CssClass="CartListHeadText"></HeaderStyle>
					                                <ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
					                                <ItemTemplate>
						                                <asp:Label Runat="server" ID="ExtendedAmount" Text='<%# DataBinder.Eval(Container.DataItem, "ExtendedAmount")%>' />
					                                </ItemTemplate>
				                                </asp:TemplateColumn>
				                                <asp:BoundColumn DataField="ItemDiscount" Visible="False">
					                                <HeaderStyle HorizontalAlign="Center" Width="90px" CssClass="CartListHeadText"></HeaderStyle>
					                                <ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
				                                </asp:BoundColumn>	
			                                </Columns>
		                                </asp:DataGrid>
    						        
	                    </td>
                    </tr>
                    <tr>
	                    <td align="center">
		                    <table cellpadding="2" cellspacing="1" width="100%" class="ecnmtbl">
			                    <tr>
				                    <td width="90%" align="right">Item Total:</td>
				                    <td bgcolor="#E6E6E6" align="right"><asp:Label Runat="server" ID="lblSubTotal" /></td>
			                    </tr>
			                    <tr>
				                    <td width="90%" align="right"><a href="CheckoutShippingOptions.aspx" runat="server" class="echd">(Change)</a> Shipping and Handling:</td>
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
                    <tr>
	                    <td align="right" style="COLOR: #cc3333"><asp:Label ID="lblCurrency" Visible="False" Runat="server">Note: Dollar amounts are shown in ($USD) and will be converted to&nbsp;<br>Canadian at the current exchange rate and billed to your credit card.&nbsp;<br /><br />***All shipments are Delivery and Duty Unpaid.***</asp:Label></td>
                    </tr>
                </table>
		    </div>	          
	        <br />
			<table width="100%" cellpadding='0' border="0" style="padding-left:20px;padding-right:20px;" cellspacing='0'>
			    <tr>
			        <td valign="top" width="49%" style="border:solid 1px #CCCCCC; padding:5px;">
			            <table cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td>
                                    <div class="echd">Billing Information <a href="CheckoutBillingShipping.aspx" runat="server" class="echd">&nbsp;&nbsp;(Change)</a></div>
                                </td>
                            </tr>
                            <tr>
                                 <td valign="top" >
                                    <table style="margin-top:5px;border-top:solid 1px #CCCCCC;" class="echdnm" cellSpacing="0" cellPadding="2" width="100%">
										<tr>
											<td width="60" valign="top"><b>Address:</b></td>
											<td>
												<asp:Label Runat="server" ID="lblBillFirstLastName" /><br>
												<asp:Label Runat="server" ID="lblBillAddressLine1And2" /><br>
												<asp:Label Runat="server" ID="lblBillCityState" />&nbsp;&nbsp;
												<asp:Label Runat="server" ID="lblBillPostalCode" />
											</td>
										</tr>
										<tr>
											<td width="60"><b>Country:</b></td>
											<td><asp:Label Runat="server" ID="lblBillCountryAbbr" /></td>
										</tr>
										<tr>
											<td width="60"><b>Phone:</b></td>
											<td><asp:Label Runat="server" ID="lblBillPhone" /></td>
										</tr>
										<tr>
											<td width="60"><b>Email:</b></td>
											<td><asp:Label Runat="server" ID="lblBillEmail" /></td>
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
                                    <div class="echd">Shipping Information <a href="CheckoutBillingShipping.aspx" runat="server" class="echd">&nbsp;&nbsp;(Change)</a></div>
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
			
			<br />
			
			<asp:Panel Runat="server" Visible="False" ID="pnlDealerPayments">
			<table width="100%" cellpadding='0' border="0" style="padding-left:20px;padding-right:20px;" cellspacing='0'>
			    <tr>
			        <td valign="top" width="100%" style="border:solid 1px #CCCCCC; padding:5px;">
			            <table cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td>
                                    <div class="echd">Alternate Payment Methods</div>
                                </td>
                            </tr>
                            <tr>
                                 <td>
                                    <table style="margin-top:5px;padding-top:5px;border-top:solid 1px #CCCCCC;" class="echdnm" cellSpacing="0" cellPadding="2" width="100%">
			                            <TR>
				                            <TD align="left">
				                                <asp:CheckBox id="chkOpenAccount" Runat="server" Visible="False" Text="&nbsp;I Wish To Pay For This Order Using My JE Pistons Account.<br />"></asp:CheckBox>
					                            <asp:CheckBox id="chkCompanyCheck" Runat="server" Visible="False" Text="&nbsp;I Wish To Pay For This Order Using A Company Check. (Shipping Fee + $9.50)."></asp:CheckBox>        
				                            </TD>
				                        </TR>
					                </table>
                                 </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
			<br />
			</asp:Panel>
			
			<table width="100%" cellpadding='0' border="0" style="padding-left:20px;padding-right:20px;" cellspacing='0'>
			    <tr>
			        <td valign="top" width="100%" style="border:solid 1px #CCCCCC; padding:5px;">
			            <table cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td>
                                    <div class="echd">Credit Card Information</div>
                                </td>
                            </tr>
                            <tr>
                                 <td>
			                        <table style="margin-top:5px;padding-top:5px;border-top:solid 1px #CCCCCC;" class="echdnm" cellSpacing="0" cellPadding="2" width="100%">
				                            <TR>
					                            <TD width="140" align="right"><b>Card Type:&nbsp;</b></TD>
					                            <TD width="300"><asp:dropdownlist id="CCType" runat="server">
							                            <asp:ListItem Value="0" Selected="True">--Select--</asp:ListItem>
							                            <asp:ListItem Value="5">Visa</asp:ListItem>
							                            <asp:ListItem Value="3">MasterCard</asp:ListItem>
							                            <asp:ListItem Value="4">MasterCard Diners</asp:ListItem>
							                            <asp:ListItem Value="2">Discover</asp:ListItem>
							                            <asp:ListItem Value="1">American Express</asp:ListItem>
						                            </asp:dropdownlist>
						                            <asp:regularexpressionvalidator id="rfvCCType" runat="server" ControlToValidate="CCType" ValidationExpression="^([1-9]|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$"
							                            ErrorMessage="** Required" Font-Size="Smaller"></asp:regularexpressionvalidator></TD>
							                    <TD rowspan="5" align="center" valign="middle"> <script language="JavaScript" type="text/javascript"> SiteSeal("https://seal.networksolutions.com/images/netsolsiteseal.png", "NETSP", "none");</script></TD>
				                            </TR>
				                            <TR>
					                            <TD width="140" align="right"><b>Card Exp Date:&nbsp;</b></TD>
					                            <td><asp:dropdownlist id="CCMonth" runat="server">
							                            <asp:ListItem Value="0" Selected="True">--</asp:ListItem>
							                            <asp:ListItem Value="01">01</asp:ListItem>
							                            <asp:ListItem Value="02">02</asp:ListItem>
							                            <asp:ListItem Value="03">03</asp:ListItem>
							                            <asp:ListItem Value="04">04</asp:ListItem>
							                            <asp:ListItem Value="05">05</asp:ListItem>
							                            <asp:ListItem Value="06">06</asp:ListItem>
							                            <asp:ListItem Value="07">07</asp:ListItem>
							                            <asp:ListItem Value="08">08</asp:ListItem>
							                            <asp:ListItem Value="09">09</asp:ListItem>
							                            <asp:ListItem Value="10">10</asp:ListItem>
							                            <asp:ListItem Value="11">11</asp:ListItem>
							                            <asp:ListItem Value="12">12</asp:ListItem>
						                            </asp:dropdownlist>&nbsp;
						                            <asp:dropdownlist id="CCYear" runat="server">
							                            <asp:ListItem Value="0" Selected="True">----</asp:ListItem>
							                            <asp:ListItem Value="13">2013</asp:ListItem>
							                            <asp:ListItem Value="14">2014</asp:ListItem>
							                            <asp:ListItem Value="15">2015</asp:ListItem>
							                            <asp:ListItem Value="16">2016</asp:ListItem>
							                            <asp:ListItem Value="17">2017</asp:ListItem>
							                            <asp:ListItem Value="18">2018</asp:ListItem>
							                            <asp:ListItem Value="19">2019</asp:ListItem>
							                            <asp:ListItem Value="20">2020</asp:ListItem>
							                            <asp:ListItem Value="21">2021</asp:ListItem>
							                            <asp:ListItem Value="22">2022</asp:ListItem>
							                            <asp:ListItem Value="23">2023</asp:ListItem>
							                            <asp:ListItem Value="24">2024</asp:ListItem>
							                            
							                            
						                            </asp:dropdownlist>
						                            <asp:regularexpressionvalidator id="rfvCCMonth" runat="server" ControlToValidate="CCMonth" ValidationExpression="\d{2}"
							                            ErrorMessage="** Required" Font-Size="Smaller"></asp:regularexpressionvalidator>
						                            <asp:regularexpressionvalidator id="rflCCYear" runat="server" ControlToValidate="CCYear" ValidationExpression="\d{2}"
							                            ErrorMessage="** Required" Font-Size="Smaller"></asp:regularexpressionvalidator></td>
							                            <td></td>
				                            </TR>
				                            <TR>
					                            <TD width="140" align="right"><b>Cardholder Name:&nbsp;</b></TD>
					                            <td><asp:textbox id="CCName" runat="server" MaxLength="30" Width="231px"></asp:textbox>
						                            <asp:requiredfieldvalidator id="rfvCCName" runat="server" ControlToValidate="CCName" ErrorMessage="** Required"
							                            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
							                            <td></td>
				                            </TR>
				                            <tr>
					                            <td width="140" align="right"><b>Card Number:&nbsp;</b></td>
					                            <td><asp:textbox size="16" id="CCNumber" runat="server" MaxLength="16" Width="140px"></asp:textbox>&nbsp;(numbers 
						                            only)
						                            <asp:requiredfieldvalidator id="rfvCCNumber" runat="server" ControlToValidate="CCNumber" ErrorMessage="** Required"
							                            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
							                            <td></td>
				                            </tr>
				                            <tr>
					                            <td width="140" align="right"><b>3-4 Digit Security Code:&nbsp;</b></td>
					                            <td><asp:textbox size="4" id="CCCSCNumber" runat="server" MaxLength="4" Width="47px"></asp:textbox>&nbsp;
						                            <a class="echd" href="javascript:newWindow('../Images/CSC.gif', 500, 300);">Where 
							                            is my security code?</A>&nbsp;<asp:requiredfieldvalidator id="rfvCCCSCNumber" runat="server" ControlToValidate="CCCSCNumber" ErrorMessage="** Required"
							                            Font-Size="Smaller"></asp:requiredfieldvalidator>
					                            </td>
					                            <td></td>
				                            </tr>
			                            </table>
		                             </td>
	                            </tr>
                            </table>
			        </td>
			    </tr>
			</table>    
			<br>
			<table width="100%" cellpadding='0' border="0" style="padding-left:20px;padding-right:20px;" cellspacing='0'>
			    <tr>
			        <td valign="top" width="100%" style="border:solid 1px #CCCCCC; padding:5px;">
			            <table cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td>
                                    <div class="echd">Additional Comments</div>
                                </td>
                                <td align="right">
                        			<asp:DropDownList Visible="False" Runat="server" ID="ddlSalesPerson">
                                        <asp:ListItem Value='Internet'>--Salesperson--</asp:ListItem>
                                        <asp:ListItem Value='RAhlin'>Ahlin, Robin</asp:ListItem>
                                        <asp:ListItem Value='JClarkin'>Clarkin, Jeff</asp:ListItem>
                                        <asp:ListItem Value='TDavis'>Davis, Tom</asp:ListItem>
                                        <asp:ListItem Value='VEllinger'>Ellinger, Vic</asp:ListItem> 
                                        <asp:ListItem Value='Dgoebelbecke'>Goebelbecker, David</asp:ListItem>
                                        <asp:ListItem Value='RGryzmala'>Gryzmala, Ron</asp:ListItem>
                                        <asp:ListItem Value='HCaine'>Heston, Heather</asp:ListItem>
                                        <asp:ListItem Value='RHeston'>Heston, Robin</asp:ListItem>
                                        <asp:ListItem Value='MJarvi'>Jarvi, Margaret</asp:ListItem>
                                        <asp:ListItem Value='LJohnson'>Johnson, Laura</asp:ListItem>
                                        <asp:ListItem Value='JLevis'>Levis, John</asp:ListItem>
                                        <asp:ListItem Value='SMclaughlin'>McLaughlin, Sean</asp:ListItem>
                                        <asp:ListItem Value='SNash'>Nash, Sue</asp:ListItem>
                                        <asp:ListItem Value='BNutter'>Nutter, Brian</asp:ListItem>
                                        <asp:ListItem Value='APizzino'>Pizzino, Al</asp:ListItem>
                                        <asp:ListItem Value='ASilverthorn'>Silverthorn, Adam</asp:ListItem>
                                        <asp:ListItem Value='BSilverthorn'>Silverthorn, Becky</asp:ListItem>
                                        <asp:ListItem Value='HSilverthorn'>Silverthorn, Harvey</asp:ListItem>
                                        <asp:ListItem Value='DSnyder'>Snyder, Dwayne</asp:ListItem>
                                        <asp:ListItem Value='RSpear'>Spear, Ron</asp:ListItem>
                                        <asp:ListItem Value='EStewart'>Stewart, Ed</asp:ListItem>
                                        <asp:ListItem Value='AThornton'>Thornton, Adam</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                 <td colspan="2">
			                        <table style="margin-top:5px;padding-top:5px;border-top:solid 1px #CCCCCC;" class="echdnm" cellSpacing="0" cellPadding="2" width="100%">
				                        <TR>
					                        <TD valign="middle">
						                       If you would like to leave a comment for this order, please enter it in the textbox to the right.<br />For urgent requests, please follow up with a phone call to our customer service line.

					                        </TD>
					                        <TD align="right">
						                        <asp:TextBox id="txtComment" TextMode="MultiLine" Width="300" Height="75" Runat="server"></asp:TextBox>
					                        </TD>
				                        </TR>
			                        </table>
			                     </td>
			                </tr>
			             </table>
			         </td>
			     </tr>
			</table>                      
            <br>
            <table style="padding-bottom:50px;" cellSpacing="0" cellPadding="0" width="100%">
	            <tr>
		            <td><%--<script language="JavaScript" type="text/javascript">SiteSeal("https://seal.networksolutions.com/images/basicsqblue.gif", "NETSP", "none");</script>--%></td>
		            <td height="40" align="center">
			            
			            &nbsp;<asp:ImageButton Runat="server" ID="btnContinueCheckout" ImageUrl="/Images/Buttons/btn-submitsecureorder.jpg" ></asp:ImageButton>
		            </td>
	            </tr>
            </table>
			        
			<asp:TextBox ID="CheckoutCode" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			<asp:TextBox ID="DealerCheckout" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			<asp:TextBox ID="MASCustID" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			<asp:TextBox ID="MASCreditLimitUsed" Runat="server" ReadOnly="True" Visible="False" Width="1"
				Height="1" />
			<asp:TextBox ID="MASShipMethKey" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
			<asp:TextBox ID="MASPmtTermsKey" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
		</form>
</asp:Content>
