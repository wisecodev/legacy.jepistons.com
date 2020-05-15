<%@ Page Title="JE Pro Seal Ring Search - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.RingSearch" Codebehind="RingSearch.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
		<meta name="Description" content="Ring Search application for JE Pro Seal Rings for just about any application.  We can also make custom ProSeal rings for your particular application." />
		<meta name="Keywords" content="JE Pistons,Pro Seal, ProSeal, Rings, Oil Rings, Top Ring, Second Ring, Ring search, Ring Sets, Single Rings, Replacement" />
		<link rel="stylesheet" href="/App_Themes/navigationtabs.css" />
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
    <!--#include virtual="/inc/Banners/PROSealBannerLinkProSeal.js"-->	
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<script type="text/javascript" src="/inc/tooltip.js"></script>
<table cellpadding="0" cellspacing="20" border="0" width="100%" align="center" bgcolor="#FFFFFF">
	<tr>
	    <td align="left">
	        <form id="frmRingSearch" runat="server">
	            <table>
	                <tr valign="top">
					    <!-- Sets-->
					    <td align="center" style="padding-right:7px; border-right: solid 2px #CCCCCC;">
					        <asp:Panel runat="server" ID="pnlSearchKits" DefaultButton="btnSearchKits">
					            <table cellpadding="0" cellspacing="1" border="0" width="264" bgcolor="#CCCCCC">
							        <tr>
								        <td><img src="/Images/Catalogs/ProSeal/head_sets.gif" width="262" height="28" border="0" alt=""></td>
							        </tr>
							        <tr>
								        <td bgcolor="#C71D22" align="center">
									        <table cellpadding="0" cellspacing="20" border="0">
										        <tr>
											        <td>
												        <table cellpadding="0" cellspacing="0" border="0" class="sch2" style="height:36px;">
													        <tr>
														        <td>
														        <asp:TextBox runat="server" ID="txtRingSetBoreSize" value="Enter Bore" CssClass="desc2" size="10"></asp:TextBox></td>
														        <td><asp:RadioButton runat="server" ID="radRingSetUnitIn" Checked="true" GroupName="RingSetUnit" /></td>
														        <td>IN</td>
														        <td><asp:RadioButton runat="server" ID="radRingSetUnitMM" GroupName="RingSetUnit" /></td>
														        <td>MM</td>
													        </tr>
												        </table>
												    </td>
										        </tr>
									        </table>
									    </td>
							        </tr>
							        <tr>
								        <td background="/Images/Catalogs/ProSeal/search_bg.gif" align="right"><asp:ImageButton runat="server" ID="btnSearchKits" ImageUrl="/Images/Catalogs/ProSeal/but_search.gif" /></td>
							        </tr>
						        </table>
					        </asp:Panel>
				        </td>
					    <!-- Individual -->
					    <td align="center" style="padding-left:5px;">
					        <asp:Panel runat="server" ID="pnlSearchSingles" DefaultButton="btnSearchSingles">
					            <table cellpadding="0" cellspacing="1" border="0" width="264" bgcolor="#CCCCCC">
							        <tr>
								        <td><img src="/Images/Catalogs/ProSeal/head_ind.gif" width="262" height="28" border="0" alt=""></td>
							        </tr>
							        <tr>
								        <td bgcolor="#003876" align="center">
									        <table cellpadding="0" cellspacing="20" border="0">
										        <tr>
											        <td>
												        <table cellpadding="0" cellspacing="0" border="0" class="sch2">
													        <tr>	
														        <td><asp:TextBox runat="server" ID="txtSingleRingBoreSize" value="Enter Bore" CssClass="desc2" size="10"></asp:TextBox></td>
														        <td><asp:RadioButton runat="server" ID="radSingleRingUnitIn" Checked="true" GroupName="SingleRingUnit" /></td>
														        <td>IN</td>
														        <td><asp:RadioButton runat="server" ID="radSingleRingUnitMM" GroupName="SingleRingUnit" /></td>
														        <td>MM</td>
													        </tr>
													        <tr>
														        <td colspan="5" align="left">
														            <asp:DropDownList runat="server" CssClass="desc2" ID="ddlSingleRingType">
														                <asp:ListItem Value="" Selected="True">-- Select Ring --</asp:ListItem>
														                <asp:ListItem Value="56">Top Ring</asp:ListItem>
														                <asp:ListItem Value="57">Second Ring</asp:ListItem>
														                <asp:ListItem Value="58">Oil Ring</asp:ListItem>
														            </asp:DropDownList>
								                                </td>
													        </tr>
												        </table>
											        </td>
										        </tr>
									        </table>
								        </td>
							        </tr>
							        <tr>
								        <td background="/Images/Catalogs/ProSeal/search_bg.gif" align="right"><asp:ImageButton runat="server" ID="btnSearchSingles" ImageUrl="/Images/Catalogs/ProSeal/but_search.gif" /></td>
							        </tr>
						        </table>
					        </asp:Panel>
					    </td>
					    <td  class="desc2" style="padding-left:15px;">
					        <b>Can't find what you are looking for?</b> - JE Pro Seal’s ring manufacturing capabilities can provide custom ring solutions for your specific high performance piston ring needs. Our Custom Ring Department uses the latest equipment for analysis, design, and manufacturing. JE Pro Seal can lap rings to your specified axial height, custom back-cut to any desired radial width and custom chamfer to convert any neutral ring into a torsional twist ring. JE Pro Seal can also manufacture custom Dykes rings.  Contact a JE Sales Representative at 714-898-9763 for more information.
					    </td>
				    </tr>
				    <tr>
					    <td style="padding-top:10px;" class="cpygray" colspan="3" align="right">* For more information on the ring "TYPE" please mouseover the selected 3-letter abbreviation.</td>
			        </tr>
	            </table>
	        </form>
	    </td>
	</tr>
	<tr>
		<!-- Start Results-->
	    <td>	
	        <asp:Label runat="server" EnableViewState="false" ID="lblError" style="padding-left:5px;" CssClass="attention" Visible="false"></asp:Label>
	        <asp:Panel runat="server" ID="pnlRingKitSearch">
                <table cellpadding="0" cellspacing="0" border="0" width="95%" class="tblspc" align="center">
                   <tr valign="bottom" bgcolor="#E6E6E6">
					    <td class="tblhd" rowspan="3">Bore (in)</td>
					    <td class="tblhd" style="border-right:solid 1px #000000" rowspan="3">Bore (mm)</td>
					    <td class="tblhd" style="border-right:solid 1px #000000" colspan="3" bgcolor="#FFFFFF">Top Ring</td>
					    <td class="tblhd" style="border-right:solid 1px #000000" colspan="3" bgcolor="#FFFFFF">Second Ring</td>
					    <td class="tblhd" style="border-right:solid 1px #000000" colspan="3" bgcolor="#FFFFFF">Oil Ring</td>
					    <td class="tblhd" rowspan="3">Part #</td>
				    </tr>
				    <tr>
					    <td width="1" class="no" colspan="9" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				    </tr>
				    <tr valign="bottom" bgcolor="#E6E6E6">
					    <td class="tblhd" width="10%">Axial Height</td>
					    <td class="tblhd" width="10%">Radial Width</td>
					    <td class="tblhd" width="5%" style="border-right:solid 1px #000000">Type</td>
					    <td class="tblhd" width="10%">Axial Height</td>
					    <td class="tblhd" width="10%">Radial Width</td>
					    <td class="tblhd" width="5%" style="border-right:solid 1px #000000">Type</td>
					    <td class="tblhd" width="10%">Axial Height</td>
					    <td class="tblhd" width="10%">Radial Width</td>
					    <td class="tblhd" width="5%" style="border-right:solid 1px #000000">Type</td>
				    </tr>
                    <tr>
                        <td width="1" class="no" colspan="12" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                    </tr>
                    <asp:Repeater runat="server" ID="repRingKitGrid" OnItemDataBound="RingDatabinder">
                        <ItemTemplate>
                                <tr id="GridRow" runat="server">
                                    <td><asp:Literal runat="server" ID="litBOREACT"></asp:Literal></td>
                                    <td style="border-right:solid 1px #000000"><asp:Literal runat="server" ID="litBOREACTALT"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litRINGKITTOPAXHEIGHT"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litRINGKITTOPRW"></asp:Literal></td>
                                    <td style="border-right:solid 1px #000000"><asp:Literal runat="server" ID="litRINGKITTOPTYPE"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litRINGKITSECAXHEIGHT"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litRINGKITSECRW"></asp:Literal></td>
                                    <td style="border-right:solid 1px #000000"><asp:Literal runat="server" ID="litRINGKITSECTYPE"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litRINGKITOILAXHEIGHT"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litRINGKITOILRW"></asp:Literal></td>
                                    <td style="border-right:solid 1px #000000"><asp:Literal runat="server" ID="litRINGKITOILTYPE"></asp:Literal></td>
                                    <td style="padding-top:2px;padding-bottom:2px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                                </tr>
                        </ItemTemplate>
                        <SeparatorTemplate>
                                <tr>
                                    <td width="1" class="no" colspan="12" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                </tr>
                        </SeparatorTemplate>
                    </asp:Repeater>
                </table>
            </asp:Panel>   
            <asp:Panel runat="server" ID="pnlRingSingleSearch">
                <table cellpadding="0" cellspacing="0" border="0" width="95%" class="tblspc" align="center">
				    <tr valign="bottom" bgcolor="#E6E6E6">
					    <td class="tblhd">Bore (in)</td>
					    <td class="tblhd">Bore (mm)</td>
					    <td class="tblhd">Axial Height</td>
					    <td class="tblhd">Radial Width (in)</td>
					    <td class="tblhd">Material</td>
					    <td class="tblhd">Coating</td>
					    <td class="tblhd">Shape</td>
					    <td class="tblhd">File Fit (in)</td>
					    <td class="tblhd">Part #</td>
				    </tr>
				    <tr>
					    <td width="1" class="no" colspan="9" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				    </tr>
                    <asp:Repeater runat="server" ID="repRingSingleGrid" OnItemDataBound="RingDatabinder">
                        <ItemTemplate>
                                <tr id="GridRow" runat="server">
                                    <td><asp:Literal runat="server" ID="litBOREACT"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litBOREACTALT"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litAXIALHEIGHT"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litRADIALWIDTH"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litMATERIALTYPE"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litCOATING"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litSHAPE"></asp:Literal></td>
                                    <td><asp:Literal runat="server" ID="litFILEFIT"></asp:Literal></td>
                                    <td style="padding-top:2px;padding-bottom:2px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                                </tr>
                        </ItemTemplate>
                        <SeparatorTemplate>
                                <tr>
                                    <td width="1" class="no" colspan="9" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                </tr>
                        </SeparatorTemplate>
                    </asp:Repeater>
                </table>        
            </asp:Panel>
        </td>
		<!-- End Results -->
	</tr>
	<tr>
		<td align="right"><img src="/Images/Catalogs/ProSeal/main_ind_ring.jpg" width="300" height="150" border="0" alt=""></td>
	</tr>
</table>
</asp:Content>
