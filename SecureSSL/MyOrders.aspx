<%@ Page Title="My Orders - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.MyOrders" Codebehind="MyOrders.aspx.vb" %>

<asp:Content ID="PageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">Track/View My Previous Orders&nbsp;<a href="/SecureSSL/MyAccount.aspx" Class="echd">(Return To Account Summary)</a><br /></div><div style="padding-left:15px;padding-right:20px;" class="echdsm">Here you will find all of your orders placed on www.JEPistons.com along with a status and tracking number.  If you have placed an order via the telephone there is a chance your order will not be shown here.  Order details cannot be shown at this time, but please call or email us with questions about individual line items within an order.</div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
        <div align="center"><asp:label id="MyError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false"></asp:label></div>
		<form id="frmOrderList" runat="server">
			<table cellpadding="0" cellspacing="0" align="center" width="100%">
                <tr>
                     <td>
						<asp:panel id="DetailsPanel" runat="server"> 
							<table cellspacing="0" cellpadding="0" style="padding:20px;" width="100%" border="0">
								<tr valign="top">
									<td width="100%" >
										<asp:datagrid id="MyList" runat="server" width="100%"  BorderColor="#777777" GridLines="Vertical"
											cellpadding="3" cellspacing="0" Font-Name="Verdana" Font-Size="8pt" ShowFooter="false" HeaderStyle-CssClass="CartListHead"
											ItemStyle-CssClass="CartListItem" AlternatingItemStyle-CssClass="CartListItemAlt"
											AutoGenerateColumns="false">
											<Columns>
												<asp:BoundColumn HeaderText="Confirmation #" DataField="OrderID">
													<HeaderStyle CssClass="CartListHeadText" HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
												</asp:BoundColumn>
												<asp:BoundColumn HeaderText="PO Number" DataField="PONumber">
													<HeaderStyle CssClass="CartListHeadText" HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
												</asp:BoundColumn>												
												<asp:BoundColumn HeaderText="Order Status" DataField="StatusDesc">
													<HeaderStyle CssClass="CartListHeadText" HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
												</asp:BoundColumn>
												<asp:BoundColumn HeaderText="Tracking Information" DataField="ShipTrackingNumber">
													<HeaderStyle CssClass="CartListHeadText" HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
												</asp:BoundColumn>
												<asp:BoundColumn HeaderText="Order Date" DataField="OrderDate" DataFormatString="{0:d}">
													<HeaderStyle CssClass="CartListHeadText" HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" CssClass="CartListItemText"></ItemStyle>
												</asp:BoundColumn>
											</Columns>
										</asp:datagrid>
									</td>
								</tr>
							</table>
						</asp:panel><br />
					</td>
				</tr>
			</table>
		</form>
</asp:Content>
