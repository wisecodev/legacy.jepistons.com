<%@ Page Title="JE Wrist Pin Search - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.WristPinSearch" Codebehind="Wrist-Pin-Search.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
		<meta name="Description" content="Wrist Pin Search application for JE wrist pins for just about any application. " />
		<meta name="Keywords" content="JE Pistons,wrist pins, pin, clip, lock, wire loc, tru arc, wire, hardened, steel, alloy, carbon, tapered, sharp" />
		<link rel="stylesheet" href="/App_Themes/navigationtabs.css" />
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
    <!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<script type="text/javascript" src="/inc/tooltip.js"></script>
<table cellpadding="0" cellspacing="20" border="0" width="100%" align="center" bgcolor="#FFFFFF">
	<tr>
	    <td align="left">
	        <form id="frmPinSearch" runat="server">
	            <table>
	                <tr valign="top">
					    <!-- Sets-->
					    <td align="center" style="padding-right:7px; border-right: solid 2px #CCCCCC;">
					        <asp:Panel runat="server" ID="pnlSearchPins" DefaultButton="btnSearchPins">
					            <table cellpadding="0" cellspacing="1" border="0" width="264" bgcolor="#CCCCCC">
							        <tr>
								        <td><img src="/Images/Catalogs/head_pins.gif" width="262" height="28" border="0" alt=""></td>
							        </tr>
							        <tr>
								        <td bgcolor="#CDCDCD" align="center">
									        <table cellpadding="0" cellspacing="20" border="0">
										        <tr>
											        <td>
												        <table cellpadding="0" cellspacing="0" border="0" class="sch2" style="height:36px;">
													        <tr>
														        <td>
														        <asp:TextBox runat="server" ID="txtPinDiameter" value="Enter Pin Diameter" CssClass="desc2" size="18"></asp:TextBox></td>
														        <td><asp:RadioButton runat="server" ID="radPinDiaUnitIn" Checked="true" GroupName="PinDiaUnit" /></td>
														        <td>IN</td>
														        <td><asp:RadioButton runat="server" ID="radPinDiaUnitMM" GroupName="PinDiaUnit" /></td>
														        <td>MM</td>
													        </tr>
													        <tr><td colspan="5" align="left">Example: .866 or 22</td></tr>
												        </table>
												    </td>
										        </tr>
									        </table>
									    </td>
							        </tr>
							        <tr>
								        <td background="/Images/Catalogs/ProSeal/search_bg.gif" align="right"><asp:ImageButton runat="server" ID="btnSearchPins" ImageUrl="/Images/Catalogs/ProSeal/but_search.gif" /></td>
							        </tr>
						        </table>
					        </asp:Panel>
				        </td>
					    <td  class="desc2" style="padding-left:15px;">
					        JE’s philosophy of supplying the finest products at competitive prices is clearly shown in our high quality wrist pin selection. JE Pistons offers wrist pins in a wide variety of materials, diameters, lengths and wall thicknesses. In addition, JE uses a wide variety of laboratory grade inspection equipment like the Zeiss 1000x microscope and the Taylor Hobson Profilometer. This advanced technology enables JE to detect even the tiniest flaws in the pin and/or the pin coating prior to passing inspection. The extensive quality control process that JE performs ensures you that the pins that you receive from JE are the finest available in the industry. <br /><br />
                            If you have your shelf piston part number, please use the part number search box at the top of the homepage to locate the correct accessories.<br /><br />
					        <a href="javascript:newWindow('/TechCorner/Choosing-Wrist-Pins.aspx', 630,580)">Click Here To Find Which Wrist Pin Is Right For You.</a>
					    </td>
				    </tr>
	            </table>
	        </form>
	    </td>
	</tr>
	<tr>
		<!-- Start Results-->
        
					    
	    <td>	
	        <asp:Label runat="server" EnableViewState="false" ID="lblError" style="padding-left:5px;" CssClass="attention" Visible="false"></asp:Label>
	        <asp:Panel runat="server" ID="pnlPinSearch">
                <table cellpadding="0" cellspacing="0" border="0" width="920" class="tblspc">
                    <tr valign="bottom" bgcolor="#E6E6E6">
					    <td class="tblhd">OD (in)</td>
	                    <td class="tblhd">OD (mm)</td>
	                    <td class="tblhd">Length</td>
	                    <td class="tblhd">Wall<br />Thickness</td>
	                    <td class="tblhd">Weight</td>
	                    <td class="tblhd">Series</td>
	                    <td class="tblhd">Edge Type</td>
	                    <td class="tblhd">Wall Type</td>
	                    <td class="tblhd">Coating</td>
	                    <td class="tblhd">Material</td>
	                    <td class="tblhd">Part #</td>
	                </tr>
	                <tr>
					    <td width="1" class="no" colspan="11" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				    </tr>
                    <asp:Repeater runat="server" ID="repPinGrid" OnItemDataBound="PinDatabinder">
                        <ItemTemplate>
                            <tr id="GridRow" runat="server">
                                <td><asp:Literal runat="server" ID="litOUTSIDEDIA"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litOUTSIDEDIAALT"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litLENGTH"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litWALLTHICKNESS"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litWEIGHTNOMINAL"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litSERIES"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litEDGETYPE"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litWALLTYPE"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litCOATING"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litMATERIALTYPE"></asp:Literal></td>
                                <td style="padding-top:2px;padding-bottom:2px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                            </tr>
                        </ItemTemplate>
                        <SeparatorTemplate>
                                <tr>
                                    <td width="1" class="no" colspan="11" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                </tr>
                        </SeparatorTemplate>
                    </asp:Repeater>
                </table>
            </asp:Panel>   
            <br /><br />
            <asp:Label runat="server" EnableViewState="false" ID="lblRetainingClipError" style="padding-left:5px;" CssClass="attention" Visible="false"></asp:Label>
            <asp:Panel runat="server" ID="pnlRetainingClipSearch">
                <table cellpadding="0" cellspacing="0" border="0" width="50%" class="tblspc" align="left">
                    <tr valign="bottom" bgcolor="#E6E6E6">
					    <td class="tblhd">Min<br />Pin Dia</td>
	                    <td class="tblhd">Max<br />Pin Dia</td>
	                    <td class="tblhd">Material</td>
	                    <td class="tblhd">Lock Type</td>
	                    <td class="tblhd">Part #</td>
	                </tr>
	                <tr>
					    <td width="1" class="no" colspan="5" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				    </tr>
                    <asp:Repeater runat="server" ID="repRetainingClipGrid" OnItemDataBound="RetainingClipDatabinder">
                        <ItemTemplate>
                            <tr id="GridRow" runat="server">
                                <td><asp:Literal runat="server" ID="litMINPINDIA"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litMAXPINDIA"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litMATERIALTYPE"></asp:Literal></td>
                                <td><asp:Literal runat="server" ID="litTYPE"></asp:Literal></td>
                                <td style="padding-top:2px;padding-bottom:2px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                            </tr>
                        </ItemTemplate>
                        <SeparatorTemplate>
                                <tr>
                                    <td width="1" class="no" colspan="5" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                </tr>
                        </SeparatorTemplate>
                    </asp:Repeater>
                </table>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="desc2" style="padding-left:15px;">
                            JE Pistons offers a wide variety of retaining clips types to suit almost any combination. Most off-the-shelf JE Pistons for domestic automotive applications include double spiro locks as standard equipment, while most sport compact, powersports and European applications utilize round wire locks. 
                            <br /><br />
                            If you have your shelf piston part number, please use the part number search box at the top of the homepage to locate the correct accessories. <br /><br />
                            <a href="javascript:newWindow('/Images/Products/Supersize/Retaining-Clips.jpg',625,150)"><img alt="Retaining Clips" border="0" src="/Images/Products/Thumbs/Retaining-Clips_t.jpg" /></a>
                        </td>
                    </tr>
                </table>
                
        
            </asp:Panel>   
            
        </td>
		<!-- End Results -->
	</tr>
	<!--<tr>
		<td align="right"><img src="/Images/Catalogs/ProSeal/main_ind_ring.jpg" width="300" height="150" border="0" alt=""></td>
	</tr>-->
</table>
</asp:Content>
