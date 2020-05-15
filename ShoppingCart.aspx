<%@ Page Title="Shopping Cart For Placing Orders - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.ShoppingCart" Codebehind="ShoppingCart.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <meta name="vs_defaultClientScript" content="JavaScript" />
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
		<meta name="Description" content="JE now has retail sales direct to customers as well as dealers and distributors on our website.  Just enter your part number and add to cart." />
		<meta name="Keywords" content="JE, Shopping Cart, Dealer Order, Retail Sales, stock checking, retail pricing, order history" />
	    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
        <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css" rel="Stylesheet" type="text/css" />
         

    <script language="javascript" type="text/javascript">
// <!CDATA[

        function AddToCart_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
    <!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" runat="Server"><div class="breadcrumbhead">Shopping Cart<br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
        <div class="attention" align="center"><%=Request.Params("CartItemAdded")%></DIV>
		<div align="center">
    		<asp:label id="MyError" runat="Server" CssClass="attention" EnableViewState="false"></asp:label>
		</div><br>
		<div style="padding-left:20px;padding-right:20px;">
		<form id="CartForm" runat="server">
		
			<asp:panel id="DetailsPanel" runat="server">
				<TABLE height="100%" cellpadding="0" cellspacing="0" class="desc" width="100%" border="0">
					<TR vAlign="top">
						<TD width="100%">
							<asp:DataGrid id="MyList" runat="server" Width="100%" AutoGenerateColumns="false" DataKeyField="Quantity"
								ShowFooter="true" Font-Size="8pt" Font-Name="Verdana" cellspacing="1" cellpadding="3" GridLines="None" 
								BorderColor="#FFFFFF" AlternatingItemStyle-CssClass="CartListItemAlt" FooterStyle-Height="33" ItemStyle-CssClass="CartListItem"
								HeaderStyle-CssClass="CartListHead">
								<Columns>
									<asp:TemplateColumn Visible="False" HeaderText="Product ID">
										<ItemTemplate>
											<asp:Label id="ItemID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ItemID") %>' />
											<asp:Label id="CartItemID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "OrderItemID") %>' />
											<asp:Label id="UnitOptionHold" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductUnitID") %>' />
											<asp:Label id="SetQuantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "SetQuantity") %>' />
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn Visible="False" HeaderText="ATS/ATSWB">
										<HeaderStyle HorizontalAlign="Center" CssClass="CartListHeadText"></HeaderStyle>
										<ItemStyle HorizontalAlign="Center" Wrap="False" CssClass="CartListItemText"></ItemStyle>										
										<ItemTemplate>
											<asp:label id="lblATSSingle" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "StockSingle")%>'/>
											<asp:label id="lblATSSet" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "StockSet")%>'/>
											<asp:label id="lblATSL" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "StockL")%>'/>
											<asp:label id="lblATSR" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "StockR")%>'/>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn Visible="False" HeaderText="Stock">
										<HeaderStyle HorizontalAlign="Center" Width="30px" CssClass="CartListHeadText"></HeaderStyle>
										<ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
										<ItemTemplate>
											<asp:Image Runat="server" Visible="False" ID="imgDashRedLight" ImageUrl="/images/DashRedLight.gif"></asp:Image>
											<asp:Image Runat="server" Visible="False" ID="imgDashYellowLight" ImageUrl="/images/DashYellowLight.gif"></asp:Image>
											<asp:Image Runat="server" Visible="False" ID="imgDashGreenLight" ImageUrl="/images/DashGreenLight.gif"></asp:Image>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn  HeaderText="Product Description" FooterStyle-HorizontalAlign="Center">
										<HeaderStyle HorizontalAlign="Center" CssClass="CartListHeadText"></HeaderStyle>
										<ItemStyle HorizontalAlign="Left" CssClass="CartListItemText"></ItemStyle>
										<ItemTemplate>
											<asp:Label runat="server" width="480px" ID="ProductLabel"><%# DataBinder.Eval(Container.DataItem, "ProdDesc")%></asp:Label><div id="divDateAvailable" runat="server"></div>
											<label runat="server" id="lblDateAvailable" />
											
											<asp:Panel ID="pnlLostSales" Runat="server" Visible="False">
												<font color="Green">Please click <asp:LinkButton Runat="server" ID="lnkLostSale" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "ItemID") %>' CommandName='LostSale'>HERE</asp:LinkButton> if the quantity available forced you to purchase elsewhere.</font></asp:Panel>
										</ItemTemplate>
										<FooterTemplate>
										        <table cellpadding='0' cellspacing='0' border="0" style="margin-left:5px; margin-top:5px;">
						                            <tr>
						                                <td valign='middle'><img id='imgInfoRedLight' src='/Images/DashRedlight.gif' width='14' height='14' /></td>
						                                <td align="left" valign='middle'  width='125'>&nbsp;- Out Of Stock</td>
						                                <td valign='middle'><img id='imgInfoYellowLight' src='/Images/DashYellowlight.gif' width='14' height='14' /></td>
						                                <td align="left" valign='middle' width='150'>&nbsp;- QTY Not Available</td>
						                                <td valign='middle'><img id='imgInfoGreenLight' src='/Images/DashGreenlight.gif' width='14' height='14' /></td>
						                                <td align="left" valign='middle'>&nbsp;- QTY Is Available</td>
						                            </tr> 
						                        </table>
										</FooterTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="QTY">
										<HeaderStyle HorizontalAlign="Center" Width="105px" CssClass="CartListHeadText"></HeaderStyle>
										<ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
										<ItemTemplate>
											<asp:TextBox id="Quantity" runat="server" MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Quantity") %>' size="4" width="32px" />
											<asp:DropDownList ID="UnitOption" runat="server">
											   
											</asp:DropDownList>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="Price">
										<HeaderStyle HorizontalAlign="Center" Width="85px" CssClass="CartListHeadText"></HeaderStyle>
										<ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
										<ItemTemplate>
											<asp:Label Runat="server" ID="Price" Text='<%# DataBinder.Eval(Container.DataItem, "Price")%>' />
											<asp:Label Runat="server" ID="RetailItemAmount" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "RetailItemAmount")%>' />
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="Subtotal">
										<HeaderStyle HorizontalAlign="Center" Width="85px" CssClass="CartListHeadText"></HeaderStyle>
										<ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
										<ItemTemplate>
											<asp:Label Runat="server" ID="ExtendedAmount" Text='<%# DataBinder.Eval(Container.DataItem, "ExtendedAmount")%>' />
											<asp:Label Runat="server" ID="RetailExtendedAmount" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "RetailExtendedAmount")%>' />
										</ItemTemplate>
									</asp:TemplateColumn>
									
									<asp:BoundColumn DataField="ItemDiscount" Visible="False">
										<HeaderStyle HorizontalAlign="Center" Width="70px" CssClass="CartListHeadText"></HeaderStyle>
										<ItemStyle HorizontalAlign="Right" CssClass="CartListItemText"></ItemStyle>
									</asp:BoundColumn>									
								</Columns>
							</asp:DataGrid>
						</TD>
					</TR>
					<TR>
						<TD style="padding-top:5px;" noWrap align="center">
							<asp:ImageButton id="UpdateBtn" ImageUrl="/Images/Buttons/btn-updatequantity.jpg" Runat="server"></asp:ImageButton>
							<asp:ImageButton id="CheckoutBtn" ImageUrl="/Images/Buttons/btn-checkout.jpg"  Runat="server"></asp:ImageButton> 
							<a href="javascript:history.go(-1)"><img src="/Images/Buttons/btn-continueshopping.jpg" style="border:none;MARGIN-TOP: 4px" /></a>
						</TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:TextBox ID="CheckoutCode" Runat="server" ReadOnly="True" Visible="False" Width="1" Height="1" />
		</form>
			<br />
			<br />
			<table cellpadding="0" cellspacing="0" class="desc" height="300px" width="100%" border="0">
			    <tr>
			        <td valign="top" width="49%" padding:5px;">
                        
                                <iframe id="AddToCart" class="zindex" style="width:450px; height:300px;" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" src="/AddToCart2.aspx" onclick="return AddToCart_onclick()"></iframe>
                                                 
			        </td>
			                        
            					           
                    <td width="2%">&nbsp;</td>
			        <td width="49%" style="border:solid 1px #CCCCCC;padding:5px;" valign="top">
			            <asp:Panel ID="pnlCoupons" Runat="server">
				            <form id="BuyCoupon" name="BuyCoupon" onsubmit="return checkCouponBox(this, 'Coupon Code Must Be Entered');" action="AddToCart.aspx" method="post">
			                    <table cellpadding="0" cellspacing="0" width="99%">
                                    <tr>
                                        <td>
                                            <div class="echd">Enter JE Pistons Coupon Codes</div>
                                        </td>
                                    </tr>
                                    <tr>
                                         <td>
		                                    <TABLE style="margin-top:5px;" class="echdnm" cellSpacing="0" border="0" cellPadding="2" width="100%">
			                                    <TR vAlign="bottom">
				                                    <TD style="width:150px;FONT-WEIGHT: bold; TEXT-ALIGN: left">JE Pistons Coupon Code</TD>
				                                    <TD style="width:50px;FONT-WEIGHT: bold; TEXT-ALIGN: center">Quantity</TD>
				                                    <TD style="FONT-WEIGHT: bold; TEXT-ALIGN: left">&nbsp;</TD>
			                                    </TR>
			                                    <TR>
				                                    <TD style="height:36px;" valign="middle"><INPUT style="WIDTH: 145px" type="text" maxLength="15" name="CouponIDText">
				                                        <INPUT style="WIDTH: 25px" type="hidden" value="1" name="QuantityText">
				                                    </TD>
				                                    <TD width="50" align="center" valign="middle"><INPUT style="WIDTH: 30px" size="4" type="text" value="1" name="QuantityText"></TD>
				                                    <td style="COLOR: #ff0000; FONT-FAMILY: verdana; font-size:10px;" valign="middle">* Coupon codes are one time use only,<br />&nbsp;&nbsp;&nbsp;therefore any balance will be forfeited.
							                        </td>
			                                    </TR>
			                                    <tr>
			                                        <td colspan="3"><INPUT type="image" src="/Images/Buttons/btn-addtocart.jpg" value="Add To Cart"></td>
			                                    </tr>
		                                    </TABLE>
		                                 </td>
		                            </tr>
		                         </table>
		                         
				            </form>
			            </asp:Panel>
			        </td>
			    </tr>
               <tr>
               <td valign="top" width="50%" style="padding:5px;">
                        <asp:Panel Visible="False" runat="server" ID="pnlQuote">
                            <table class="desc" width="100%" cellpadding=0 cellspacing=0 style="margin-top:10px;" border="0">
                                <tr class="CartListHead" style="height:16px;">
                                    <td width="153" class="CartListHeadText">JE Pistons Part # Quote</td>
                                    <td width="65" class="CartListHeadText">Price</td>
                                    <td width="75" class="CartListHeadText">Subtotal</td>
                                    <td width="93" align="center" class="CartListHeadText">Stock</td>
                                </tr>
                                <tr>
                                    <td width="153"><label runat="server" id="lblQuotePartNumber" /></td>
                                    <td width="65" align="center"><label runat="server" id="lblQuoteUnitPrice" /></td>
                                    <td width="75" align="center"><label runat="server" id="lblQuoteSubTotal" /></td>
                                    <td  width="93" align="center"><label runat="server" id="lblQuoteStockStatus" /></td>
                                </tr>
                                <tr style="height:5px;">
                                    <td colspan="4"></td>
                                </tr>
                            </table>
                        </asp:Panel> 
                                     
               

                    </td>

                 
      
					<td colspan="2"></td>
				
               </tr>
			</table>
	<div style="margin-top:auto;">
                   <a href="https://www.p65warnings.ca.gov"><img src="img/Prop65-rwb1.jpg"  alt="" width="224px" height="86px;" /> </a> 
                         </div>  
<br />
			</div>	
		    <div runat="server" id="divQuoteScript"></div>
			
</asp:Content>
