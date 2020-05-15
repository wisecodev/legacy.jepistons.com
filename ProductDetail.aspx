<%@ Page Title="" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.ProductDetail" Codebehind="ProductDetail.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <asp:Literal runat="server" ID="litDescription"></asp:Literal>
		<asp:Literal runat="server" ID="litKeywords"></asp:Literal>
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
    <!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">Product Details & Specifications<br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <asp:Label id="lblGridError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false" Visible="False"/>
    <asp:Panel runat="server" ID="pnlInvalidProduct" Visible="false">
        <p style="padding-left:20px;padding-right:20px;padding-bottom:50px;" class="desc2">
           We're sorry, but the product you are trying to view may have been discontinued or you have typed an invalid part number. Only products listed in our catalog with a "shelf piston part number" can be viewed through our website search tool.  If you need help, <a href="/TechCorner/HowToIdentify.aspx">CLICK HERE TO IDENTIFY YOUR PISTONS</a>.<br /><br />
	       We are currently working on enhancements to this website which will inform you of a "Replaced By" part number.  Until this feature is active, 
	       please reference our online catalog to find a part number that fits your application.<br /><br />
	       Just because a part number has been inactivated for shelf stock does not mean that we cannot reproduce the part for sale.  If you would still like to purchase this piston please contact our custom piston department and use this piston as a reference when ordering.<br /><br />
	       If you have any questions please free to contact our customer service department at 714-898-9763.
        </p>
    </asp:Panel>
    <table width="100%" style="padding-left:20px;padding-right:20px;" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:DataGrid id="MyList" EnableViewState="false" runat="server" Width="100%" AutoGenerateColumns="false"
                    DataKeyField="ItemID" ShowFooter="false" ShowHeader="false" Font-Size="8pt" Font-Name="Verdana" cellspacing="0"
                    cellpadding="3" GridLines="none">
                    <Columns>
	                    <asp:TemplateColumn Visible="True">
		                    <ItemTemplate>
			                    <table width="100%" class="echdnm" cellpadding="0" cellspacing="0">
				                    <tr>
					                    <td valign="top" style="width:600px;padding-left:5px;padding-top:5px">
					                        <table class="echdnm" cellpadding="0" cellspacing="0">
					                            <tr>
					                                <td width="110"><img src="/Images/Products/<%# DataBinder.Eval(Container.DataItem, "ImageName") %>" width="110" height="110"</td>
					                                <td valign="top">
					                                    <table  class="echdnm" style="margin-left:5px;" cellpadding="0" cellspacing="0">
					                                        <tr>
					                                            <td width="115" style="padding-bottom:3px; font-weight:bold;">JE Pistons Part#:</td>
					                                            <td><%# DataBinder.Eval(Container.DataItem, "ItemIdentifier") %></td>
					                                        </tr>
					                                        <tr>
					                                            <td width="115" style="padding-bottom:3px; font-weight:bold;">Product Type:</td>
					                                            <td><%#Container.DataItem("TypeName") %></td>
					                                        </tr>
					                                        <tr>
					                                            <td width="115" style="padding-bottom:3px; font-weight:bold;">Description:</td>
					                                            <td><%# DataBinder.Eval(Container.DataItem, "ShortDesc") %></td>
					                                        </tr>
					                                    </table>
					                                </td>
					                            </tr>
					                        </table>
					                    </td>
					                    <td valign="top">
<%--					                        <table class="echdnm" cellpadding="0" cellspacing="0">
					                            <tr>
					                                <td valign="top">
					                                    <form id="BuyForm<%#Container.DataItem("ItemID")%>" Action="/AddToCart.aspx" method="post" onSubmit="return checkQuantity(this, 'QuantityText', 'Quantity must be a number greater than zero');">
					                                        <table class="echdnm" cellpadding="0" width="218" style="margin-top:5px; border:solid 1px #CCCCCC;" cellspacing="0">
					                                            <tr>
					                                                <td width="75" style="padding-left:5px; padding-top:5px; padding-bottom:5px; font-weight:bold;">Retail Price:</td>
					                                                <td width="125" style="padding-top:5px; padding-bottom:5px; COLOR: #0000ff"><div id="RetailSingleDiv" style="display:none;" class="echdnm"><%# DataBinder.Eval(Container.DataItem, "SinglePrice","{0:c}")%></div><div id="RetailSetDiv" style="display:block;" class="echdnm"><%#DataBinder.Eval(Container.DataItem, "SetPrice", "{0:c}")%></div></td>
					                                            </tr>
					                                            <tr>
					                                                <td width="75" style="padding-left:5px; padding-bottom:5px; font-weight:bold;">Status:</td>
					                                                <td width="125" style="padding-bottom:5px;">
					                                                    <div id="SetStockStatusDiv" style="display:block;"><%#Container.DataItem("SetStockStatus")%></div>
					                                                    <div id="SingleStockStatusDiv" style="display:none;"><%#Container.DataItem("SingleStockStatus")%></div>
					                                                    <div id="LeftStockStatusDiv" style="display:none;"><%#Container.DataItem("LeftStockStatus")%></div>
					                                                    <div id="RightStockStatusDiv" style="display:none;"><%#Container.DataItem("RightStockStatus")%></div>
					                                                </td>
					                                            </tr>
    				                                            <tr>
					                                                <td width="75" style="padding-left:5px; padding-bottom:3px; font-weight:bold;">Quantity:</td>
					                                                <td width="125"><input style="WIDTH: 35px" type="text" value="1" name="QuantityText"><input type="hidden" value='<%#Container.DataItem("ItemID")%>'  name='ItemIDText'>
					                                                    <asp:PlaceHolder runat="server" ID="plcProductSetUnitID" Visible="false">
					                                                        <select id="UnitOption" name="UnitOption" onchange="if (this.value == 2){ChangeDiv('RetailSingleDiv', 'none');ChangeDiv('RetailSetDiv', 'block');ChangeDiv('SetStockStatusDiv', 'block');ChangeDiv('LeftStockStatusDiv', 'none');ChangeDiv('RightStockStatusDiv', 'none');ChangeDiv('SingleStockStatusDiv', 'none');} else {ChangeDiv('RetailSingleDiv', 'block');ChangeDiv('RetailSetDiv', 'none');ChangeDiv('SingleStockStatusDiv', 'block');ChangeDiv('SetStockStatusDiv', 'none');ChangeDiv('LeftStockStatusDiv', 'none');ChangeDiv('RightStockStatusDiv', 'none');};">
					                                                            <option selected value="2">Set</option>
					                                                            <option value="1">Single</option>
					                                                        </select>
					                                                    </asp:PlaceHolder>
					                                                    <asp:PlaceHolder runat="server" ID="plcProductLRUnitID" Visible="false">
					                                                        <select id="UnitOption" name="UnitOption" onchange="if (this.value == 2){ChangeDiv('RetailSingleDiv', 'none');ChangeDiv('RetailSetDiv', 'block');ChangeDiv('SetStockStatusDiv', 'block');ChangeDiv('LeftStockStatusDiv', 'none');ChangeDiv('RightStockStatusDiv', 'none');} else if (this.value == 3){ChangeDiv('RetailSingleDiv', 'block'); ChangeDiv('RetailSetDiv', 'none'); ChangeDiv('LeftStockStatusDiv', 'block');ChangeDiv('RightStockStatusDiv', 'none');ChangeDiv('SetStockStatusDiv', 'none');} else if (this.value == 4){ChangeDiv('RetailSingleDiv', 'block'); ChangeDiv('RetailSetDiv', 'none'); ChangeDiv('LeftStockStatusDiv', 'none');ChangeDiv('RightStockStatusDiv', 'block');ChangeDiv('SetStockStatusDiv', 'none');}">
					                                                            <option selected value="2">Set</option>
					                                                            <option value="3">Left(Intake)</option>
					                                                            <option value="4">Right(Intake)</option>
					                                                        </select>
					                                                        <a href="javascript:newWindow('/TechCorner/Left-Right-Pistons.aspx','425','385');"><img src="/Images/Question.gif" border="0" /></a>
					                                                    </asp:PlaceHolder>
					                                                 </td>
					                                            </tr>
					                                            <tr>
					                                                <td colspan="2" align="center" height="40"><input type="image" value="Add To Cart" src="/Images/Buttons/btn-addtocart.jpg">
					                                                   <div style="COLOR: #ff0000; FONT-FAMILY: verdana; font-size:10px;">All Piston Sets Include<br />Rights And Lefts When Required</div>   
					                                                </td>
					                                            </tr>		
					                                        </table>
					                                    </form>
					                                </td>
					                            </tr>
					                        </table>
--%>					                    </td>
				                    </tr>
				                    <tr>
				                        <td colspan="2">
				                            <br />
					                        <asp:Panel id="AttributeTabs" runat="server">
							                    <table cellpadding=0 cellspacing=0 width="100%">
								                    <tr>
								                        <td>&nbsp;</td>
									                    <td align="center" style="width:126px; height:29px;" nowrap class="TabAAddlSpecs" id="AddlSpecs" onClick="HideContent(); SelectTab(this); ChangeDiv('AddlSpecsDiv','block');">Specifications</td>
									                    <td align="center"><img src="/Images/tblbg.gif" height="20" width="2"></td>
									                    <td align="center" style="width:126px; height:29px;" nowrap class="TabIItemContents" id="ItemContents" onClick="HideContent(); SelectTab(this); ChangeDiv('ItemContentsDiv','block');">Item Contents</td>
									                    <td align="center"><img src="/Images/tblbg.gif" height="20" width="2"></td>
									                    <td align="center" style="width:113px; height:29px;" nowrap class="TabIApplications" id="Applications" onClick="HideContent(); SelectTab(this); ChangeDiv('ApplicationsDiv','block');">Applications</td>
									                    <td align="center"><img src="/Images/tblbg.gif" height="20" width="2"></td>
									                    <td align="center" style="width:113px; height:29px;" nowrap class="TabIInstructions" id="Instructions" onClick="HideContent(); SelectTab(this); ChangeDiv('InstructionsDiv','block');">Instructions</td>
								                        <td>&nbsp;</td>
								                    </tr>
							                    </table>
							                    <table cellpadding="0" cellspacing="0" width="100%" style="border:solid 1px #CCCCCC">
								                    <tr>
									                    <td>
										                    <div id="AddlSpecsDiv" style="display:block;">
											                    <table cellpadding=0 cellspacing=0 style="MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; MARGIN-LEFT: 5px;" class="echdnm">
												                    <asp:Repeater ID="AddlSpecsList"  Datasource='<%#Container.DataItem.Row.GetChildRows("NestedData")%>' Runat=server>
													                    <ItemTemplate>
														                    <tr>
															                    <td><b><%#Container.DataItem("AttrName") %>:</b></td>
															                    <td>&nbsp;<%#Container.DataItem("AttrValue")%></td>
														                    </tr>
													                    </ItemTemplate>
												                    </asp:Repeater>
											                    </table>
										                    </div>
										                    <div id="ItemContentsDiv" style="display:none;" class="echdnm">
											                    <ul style="MARGIN-TOP: 7px; PADDING-LEFT: 8px; MARGIN-BOTTOM: 10px; MARGIN-LEFT: 15px";>
												                    <asp:Repeater  ID="BOMItemList" Datasource='<%#Container.DataItem.Row.GetChildRows("BOMItemData")%>' Runat="server">
														                    <ItemTemplate>
															                    <li><%#Container.DataItem("BOMItemID")%></li>
														                    </ItemTemplate>
												                    </asp:Repeater>
											                    </ul>
										                    </div>
										                    <div id="ApplicationsDiv" style="display:none;" class="echdnm">
										                         <ul style="MARGIN-TOP: 7px; PADDING-LEFT: 8px; MARGIN-BOTTOM: 10px; MARGIN-LEFT: 15px";>
												                    <asp:Repeater  ID="ApplicationList" Datasource='<%#Container.DataItem.Row.GetChildRows("ApplicationData")%>' Runat="server">
														                    <ItemTemplate>
															                    <li><%#Container.DataItem("FormattedLink")%></li>
														                    </ItemTemplate>
												                    </asp:Repeater>
											                    </ul>
										                    </div>
										                    <div id="InstructionsDiv" style="display:none;" class="echdnm">
										                        <ul style="MARGIN-TOP: 7px; PADDING-LEFT: 8px; MARGIN-BOTTOM: 10px; MARGIN-LEFT: 15px";>
										                            <li>Instructions can be found on our <a class="echd" href="/TechCorner/Index.aspx">Tech Corner</a> page.</li>
										                        </ul>
										                    </div>
									                    </td>
								                    </tr>
							                    </table>
						                    </asp:Panel><br />
				                        </td>
				                    </tr>
			                    </table>
		                    </ItemTemplate>
	                    </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
			</td>
		</tr>
	</table>
	<br />
	<asp:Panel ID="pnlRelatedItems" runat="server">
	     <table cellpadding="0" cellspacing="0" align="center" width="100%">
            <tr>
                <td style="padding-bottom:5px;padding-left:15px;padding-right:15px;border-bottom: solid 1px #CCCCCC;" class="echd">
                    Related Items
                </td>
            </tr>
            <tr>
                <td style="padding-left:15px;padding-right:15px;padding-bottom:30px;">
                    <asp:Datalist id="MyRelatedDataList" RepeatColumns="2" RepeatDirection="Horizontal" EnableViewState="false" runat="server" Width="100%" AutoGenerateColumns="false"
                    DataKeyField="ItemID" ShowFooter="false" ShowHeader="false" Font-Size="8pt" Font-Name="Verdana" cellspacing="0" cellpadding="0" GridLines="none">
                            <ItemTemplate>
                                <table width="100%" class="desc2" cellpadding="0" cellspacing="0">
	                                <tr>
		                                <td valign="top" style="padding-left:5px;padding-top:5px">
		                                    <table class="desc2" width="347" style="border:solid 1px #CCCCCC; background-color:#FBFBFB;" cellpadding="0" cellspacing="0">
		                                        <tr>
		                                            <td valign="top" width="85" style="padding-left:5px;padding-top:5px;padding-bottom:3px;"><img src="/Images/Products/<%# DataBinder.Eval(Container.DataItem, "ImageName") %>" width="85" height="85"</td>
		                                            <td valign="top">
		                                                <table class="desc2" style="margin-left:5px;margin-top:3px;" cellpadding="0" cellspacing="0">
		                                                    <tr>
		                                                        <td valign="top" width="115" style="padding-bottom:3px; font-weight:bold;">Product Type:</td>
		                                                        <td><%#Container.DataItem("TypeName") %></td>
		                                                    </tr>
		                                                    <tr>
		                                                        <td valign="top" width="115" style="padding-bottom:3px; font-weight:bold;">JE Pistons Part#:</td>
		                                                        <td><a class="echd" href="/Products/<%#Container.DataItem("ItemID")%>.aspx"><%# DataBinder.Eval(Container.DataItem, "ItemIdentifier") %></a></td>
		                                                    </tr>
		                                                    <tr>
		                                                        <td valign="top" width="115" style="padding-bottom:3px; font-weight:bold;">Price:</td>
		                                                        <td style="COLOR: #0000ff"><%# DataBinder.Eval(Container.DataItem, "Price","{0:c}")%></td>
		                                                    </tr>
		                                                    <tr>
		                                                        <td valign="top" width="115" style="padding-bottom:3px; font-weight:bold;">Description:</td>
		                                                        <td><%# DataBinder.Eval(Container.DataItem, "ShortDesc") %></td>
		                                                    </tr>
		                                                </table>
		                                            </td>
		                                        </tr>
		                                    </table>
		                                </td>
	                                </tr>
                                </table><br />
                            </ItemTemplate>
                    </asp:Datalist>
                </td>
            </tr>
        </table>
	</asp:Panel>
</asp:Content>

