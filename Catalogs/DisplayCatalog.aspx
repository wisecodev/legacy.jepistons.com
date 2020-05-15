<%@ Page Title="" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.DisplayCatalog" Codebehind="DisplayCatalog.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <asp:Literal runat="server" ID="litDescription"></asp:Literal>
		<asp:Literal runat="server" ID="litKeywords"></asp:Literal>
        <link rel="stylesheet" href="/App_Themes/navigationtabs.css" />
       
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
    <asp:Literal ID="litBanner" runat="server"></asp:Literal> 
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <table cellpadding="0" style="padding-top:10px;" cellspacing="0" border="0" align="center" bgcolor="#FFFFFF" width="100%">
        <tr>
            <td>
                <asp:PlaceHolder ID="plcAutoMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litAutoTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/Automotive/Chevy_SB.aspx"><strong class="autogeneral">SMALL BLOCK CHEVY</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/Automotive/Chevy_BB.aspx"><strong class="autogeneral">BIG BLOCK CHEVY</strong></a></li>
                                <li id="li_tsmenu3"><a href="/Catalogs/Automotive/Ford.aspx"><strong class="autogeneral">FORD</strong></a></li>
                                <li id="li_tsmenu4"><a href="/Catalogs/Automotive/Mopar.aspx"><strong class="autogeneral">MOPAR</strong></a></li>
                                <li id="li_tsmenu5"><a href="/Catalogs/Automotive/Buick.aspx"><strong class="autogeneral">BUICK</strong></a></li>
                                <li id="li_tsmenu6"><a href="/Catalogs/Automotive/NHRA.aspx"><strong class="autogeneral">NHRA</strong></a></li>
                                <li id="li_tsmenu7"><a href="/Catalogs/Automotive/Porsche.aspx"><strong class="autogeneral">PORSCHE</strong></a></li>
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litAutoTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plcSportCompactMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSportCompactTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/Sport-Compact/Dodge.aspx"><strong class="sportcompact">DODGE</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/Sport-Compact/Ford.aspx"><strong class="sportcompact">FORD</strong></a></li>
                                <li id="li_tsmenu3"><a href="/Catalogs/Sport-Compact/GM.aspx"><strong class="sportcompact">GM</strong></a></li>
                                <li id="li_tsmenu4"><a href="/Catalogs/Sport-Compact/Honda-Acura.aspx"><strong class="sportcompact">HONDA/ACURA</strong></a></li>
                                <li id="li_tsmenu5"><a href="/Catalogs/Sport-Compact/Hyundai.aspx"><strong class="sportcompact">HYUNDAI</strong></a></li>
                                <li id="li_tsmenu6"><a href="/Catalogs/Sport-Compact/Mazda.aspx"><strong class="sportcompact">MAZDA</strong></a></li>
                                <li id="li_tsmenu7"><a href="/Catalogs/Sport-Compact/Mitsubishi.aspx"><strong class="sportcompact">MITSUBISHI</strong></a></li>
                                <li id="li_tsmenu8"><a href="/Catalogs/Sport-Compact/Nissan-Infiniti.aspx"><strong class="sportcompact">NISSAN</strong></a></li>
                                <li id="li_tsmenu9"><a href="/Catalogs/Sport-Compact/Subaru.aspx"><strong class="sportcompact">SUBARU</strong></a></li>
                                <li id="li_tsmenu10"><a href="/Catalogs/Sport-Compact/Toyota-Lexus.aspx"><strong class="sportcompact">TOYOTA</strong></a></li>
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSportCompactTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plcSportCompactEUMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSportCompactEUTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/Sport-Compact/BMW.aspx"><strong class="sportcompactEU">BMW</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/Sport-Compact/Citroen.aspx"><strong class="sportcompactEU">CITROEN</strong></a></li>
                                <li id="li_tsmenu12"><a href="/Catalogs/Sport-Compact/Ferrari.aspx"><strong class="sportcompactEU">FERRARI</strong></a></li>
                                <li id="li_tsmenu3"><a href="/Catalogs/Sport-Compact/Fiat.aspx"><strong class="sportcompactEU">FIAT</strong></a></li>
                                <li id="li_tsmenu4"><a href="/Catalogs/Sport-Compact/Lamborghini.aspx"><strong class="sportcompactEU">LAMBORGHINI</strong></a></li>
                                <li id="li_tsmenu5"><a href="/Catalogs/Sport-Compact/Lancia.aspx"><strong class="sportcompactEU">LANCIA</strong></a></li>
                                <li id="li_tsmenu6"><a href="/catalogs/sport-compact/mini.aspx"><strong class="sportcompactEU">MINI</strong></a></li>
                                <li id="li_tsmenu7"><a href="/Catalogs/Sport-Compact/Opel.aspx"><strong class="sportcompactEU">OPEL</strong></a></li>
                                <li id="li_tsmenu8"><a href="/Catalogs/Sport-Compact/Peugeot.aspx"><strong class="sportcompactEU">PEUGEOT</strong></a></li>
                                <li id="li_tsmenu9"><a href="/Catalogs/Sport-Compact/Porsche.aspx"><strong class="sportcompactEU">PORSCHE</strong></a></li>
                                <li id="li_tsmenu10"><a href="/Catalogs/Sport-Compact/Renault.aspx"><strong class="sportcompactEU">RENAULT</strong></a></li>
                                <li id="li_tsmenu11"><a href="/Catalogs/Sport-Compact/VW-Audi.aspx"><strong class="sportcompactEU">VW/AUDI</strong></a></li>
                               
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSportCompactEUTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plcSportStreetMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSportStreetTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/Powersports/Street-Cycle/Aprilia.aspx"><strong class="sportstreet">APRILIA</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/Powersports/Street-Cycle/Ducati.aspx"><strong class="sportstreet">DUCATI</strong></a></li>
                                <li id="li_tsmenu3"><a href="/Catalogs/Powersports/Street-Cycle/Honda.aspx"><strong class="sportstreet">HONDA</strong></a></li>
                                <li id="li_tsmenu4"><a href="/Catalogs/Powersports/Street-Cycle/Kawasaki.aspx"><strong class="sportstreet">KAWASAKI</strong></a></li>
                                <li id="li_tsmenu5"><a href="/Catalogs/Powersports/Street-Cycle/Suzuki.aspx"><strong class="sportstreet">SUZUKI</strong></a></li>
                                <li id="li_tsmenu6"><a href="/Catalogs/Powersports/Street-Cycle/Triumph.aspx"><strong class="sportstreet">TRIUMPH</strong></a></li>
                                <li id="li_tsmenu7"><a href="/Catalogs/Powersports/Street-Cycle/Yamaha.aspx"><strong class="sportstreet">YAMAHA</strong></a></li>
                                <li id="li_tsmenu8"><a href="/Catalogs/Powersports/Street-Cycle/Victory.aspx"><strong class="sportstreet">VICTORY</strong></a></li>
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSportStreetTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plcSportOffroadMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSportOffroadTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/Powersports/Offroad-Cycle/GasGas.aspx"><strong class="sportoffroad">GASGAS</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/Powersports/Offroad-Cycle/Honda.aspx"><strong class="sportoffroad">HONDA</strong></a></li>
                                <li id="li_tsmenu3"><a href="/Catalogs/Powersports/Offroad-Cycle/Husaberg.aspx"><strong class="sportoffroad">HUSABERG</strong></a></li>
                                <li id="li_tsmenu4"><a href="/Catalogs/Powersports/Offroad-Cycle/Husqvarna.aspx"><strong class="sportoffroad">HUSQVARNA</strong></a></li>
                                <li id="li_tsmenu5"><a href="/Catalogs/Powersports/Offroad-Cycle/Kawasaki.aspx"><strong class="sportoffroad">KAWASAKI</strong></a></li>
                                <li id="li_tsmenu6"><a href="/Catalogs/Powersports/Offroad-Cycle/KTM.aspx"><strong class="sportoffroad">KTM</strong></a></li>
                                <li id="li_tsmenu7"><a href="/Catalogs/Powersports/Offroad-Cycle/Suzuki.aspx"><strong class="sportoffroad">SUZUKI</strong></a></li>
                                <li id="li_tsmenu8"><a href="/Catalogs/Powersports/Offroad-Cycle/Yamaha.aspx"><strong class="sportoffroad">YAMAHA</strong></a></li>
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSportOffroadTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plcSportATVMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSportATVTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/Powersports/ATV-UTV/ArcticCat.aspx"><strong class="sportatv">ARCTIC CAT</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/Powersports/ATV-UTV/Bombardier.aspx"><strong class="sportatv">BOMBARDIER</strong></a></li>
                                <li id="li_tsmenu3"><a href="/Catalogs/Powersports/ATV-UTV/Honda.aspx"><strong class="sportatv">HONDA</strong></a></li>
                                <li id="li_tsmenu4"><a href="/Catalogs/Powersports/ATV-UTV/JohnDeere.aspx"><strong class="sportatv">JOHN DEERE</strong></a></li>
                                <li id="li_tsmenu5"><a href="/Catalogs/Powersports/ATV-UTV/Kawasaki.aspx"><strong class="sportatv">KAWASAKI</strong></a></li>
                                <li id="li_tsmenu6"><a href="/Catalogs/Powersports/ATV-UTV/KTM.aspx"><strong class="sportatv">KTM</strong></a></li>
                                <li id="li_tsmenu7"><a href="/Catalogs/Powersports/ATV-UTV/Polaris.aspx"><strong class="sportatv">POLARIS</strong></a></li>
                                <li id="li_tsmenu8"><a href="/Catalogs/Powersports/ATV-UTV/Suzuki.aspx"><strong class="sportatv">SUZUKI</strong></a></li>
                                <li id="li_tsmenu9"><a href="/Catalogs/Powersports/ATV-UTV/Yamaha.aspx"><strong class="sportatv">YAMAHA</strong></a></li>
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSportATVTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plcSportWaterSnowMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSportWaterSnowTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/Powersports/PWC-Snowmobile/Kawasaki.aspx"><strong class="sportwatersnow">KAWASAKI</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/Powersports/PWC-Snowmobile/SkiDoo.aspx"><strong class="sportwatersnow">SKI-DOO</strong></a></li>
                                <li id="li_tsmenu3"><a href="/Catalogs/Powersports/PWC-Snowmobile/Yamaha.aspx"><strong class="sportwatersnow">YAMAHA</strong></a></li>
                                <li id="li_tsmenu4"><a href="/Catalogs/Powersports/PWC-Snowmobile/SeaDoo.aspx"><strong class="sportwatersnow">SEA-DOO</strong></a></li>
                                <li id="li_tsmenu5"><a href="/Catalogs/Powersports/Index.aspx"><strong class="autogeneral">ALL Powersports</strong></a></li>
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSportWaterSnowTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                 <asp:PlaceHolder ID="plcSportHarleyMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSportHarleyTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/Powersports/Harley-Davidson.aspx"><strong class="sportharley">HARLEY-DAVIDSON</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/Powersports/Index.aspx"><strong class="autogeneral">ALL Powersports</strong></a></li>
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSportHarleyTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plcSRPMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSRPTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/SRP/Chevy_SB.aspx"><strong class="srp">SMALL BLOCK CHEVY</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/SRP/Chevy_BB.aspx"><strong class="srp">BIG BLOCK CHEVY</strong></a></li>
                                <li id="li_tsmenu3"><a href="/Catalogs/SRP/Ford.aspx"><strong class="srp">FORD</strong></a></li>
                                <li id="li_tsmenu4"><a href="/Catalogs/SRP/Mopar.aspx"><strong class="srp">MOPAR</strong></a></li>
                                <li id="li_tsmenu5"><a href="/Catalogs/SRP/Pontiac.aspx"><strong class="srp">PONTIAC</strong></a></li>
                                <li id="li_tsmenu6"><a href="/Catalogs/SRP/Honda-Acura.aspx"><strong class="srp">HONDA/ACURA</strong></a></li>
                                <li id="li_tsmenu7"><a href="/Catalogs/SRP/Mazda.aspx"><strong class="srp">MAZDA</strong></a></li>
                                <li id="li_tsmenu8"><a href="/Catalogs/SRP/VW-Audi.aspx"><strong class="srp">VW/AUDI</strong></a></li>
                                
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSRPTabEnd"></asp:Literal>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plcSRPPROMenu" runat="server" Visible="false">
                    <asp:Literal runat="server" ID="litSRPPROTabStart"></asp:Literal>
                        <div id="ts_tabmenu">
                            <ul>
                                <li id="li_tsmenu1"><a href="/Catalogs/SRPPRO/Automotive.aspx"><strong class="srppro">AUTOMOTIVE</strong></a></li>
                                <li id="li_tsmenu2"><a href="/Catalogs/SRPPRO/Sport-Compact.aspx"><strong class="srppro">SPORT COMPACT</strong></a></li>
                            </ul>
                        </div>                
                    <asp:Literal runat="server" ID="litSRPPROTabEnd"></asp:Literal>
                </asp:PlaceHolder>
            </td>
        </tr>
    </table>
    <!-- Start Specifications -->
    <table cellpadding="0" cellspacing="0" border="0" width="100%" align="center" bgcolor="#FFFFFF">
        <asp:PlaceHolder runat="server" Visible="false" ID="plcPSCatalogList">
            <tr bgcolor="#000000">
                <td style="height:50px" valign="middle">
                    <form runat="server" id="frmPSCatalogSelect">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td valign="middle" style="padding-left:10px;"><asp:Image runat="server" ID="imgTabImage" /></td>
                                <td valign="middle" style="padding-left:15px;"><asp:DropDownList ID="ddlCatalogList" runat="server"  DataValueField="URLRewritePath" AutoPostBack="true" DataTextField="Identifier"></asp:DropDownList><span style="font-family: verdana, arial; font-size: 11px; color: #FFFFFF; padding-left: 5px;">(Select Another Application)</span></td>
                            </tr>
                        </table>
                   </form>
                </td>
            </tr>
        </asp:PlaceHolder>
	    <tr bgcolor="#003562">
		    <td>
		        <table cellpadding="0" cellspacing="0" border="0" width="100%">
				    <tr>
					    <td valign="top" class="prddtls" width="100%">
					        <asp:PlaceHolder runat="server" ID="plcCatalogLinks" Visible="false">
					            <div style="padding-bottom:15px;">
					                <asp:DataList ID="dgCatalogLinks" class="tblspc2" BackColor="#FFFFFF" ItemStyle-Width="50%" ItemStyle-VerticalAlign="Bottom" CellPadding="0" CellSpacing="0" Width="725" RepeatColumns="2" RepeatLayout="Table"  RepeatDirection="Horizontal" Runat="server">
			                            <ItemTemplate>
			                                <table width="100%" cellpadding="0" cellspacing="0">
			                                    <tr>
			                                        <td><a class="sc" href="<%#DataBinder.Eval(Container.DataItem, "URLRewritePath")%>"><%#DataBinder.Eval(Container.DataItem, "Identifier")%></a></td>
			                                    </tr>
			                                    <tr>
											        <td width="1" class="no" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
										        </tr>
			                                </table>
			                            </ItemTemplate> 
			                        </asp:DataList>
			                    </div>
					        </asp:PlaceHolder>
					        <span class="prdhd"><asp:Literal runat="server" ID="litGroupName"></asp:Literal></span><br /><br />
					        <asp:Literal runat="server" ID="litGroupDescription"></asp:Literal>
					        <asp:Label runat="server" ID="lblGridTypeID" Visible="false"></asp:Label>
					    </td>
					    <td valign="top" width="200" height="100%" bgcolor="#003562">
						    <table cellpadding="0" cellspacing="4" border="0" width="200" height="200">
							    <tr>
								    <td bgcolor="#FFFFFF" height="100%"><asp:Image Width="200" Height="200" runat="server" ID="imgGroupImage" BorderWidth="0" /></td>
							    </tr>
						    </table>
					    </td>
				    </tr>
			    </table>
		    </td>
	    </tr>
	    <tr>
		    <td bgcolor="#E1E1E1"><img src="/Images/1x5.gif" width="1" height="5" border="0" alt=""></td>
	    </tr>
	    <tr>
		    <td bgcolor="#F2F2F2"><img src="/Images/1x5.gif" width="1" height="5" border="0" alt=""></td>
	    </tr>
	    <tr>
	        <td style="padding-top:20px;padding-bottom:20px;">
	            <asp:DataList ID="ParentData" CellPadding=0 CellSpacing="0" Width="100%" RepeatLayout="Flow" Runat="server">
			        <ItemTemplate>
			            <table style="padding-left:20px;padding-right:20px;" cellpadding="0" cellspacing="0" width="100%">
			                <tr>
			                    <td>
			                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
				                        <tr>
					                        <td valign="bottom" class="desc">
					                            <b><%#CType(Container.DataItem, DataRowView)("Identifier").ToString%></b><br>
					                               <%#CType(Container.DataItem, DataRowView)("Description").ToString%>
					                        </td>
					                        <!-- Start Toolbox -->
					                        <td valign="top" align="right">
					                            <asp:PlaceHolder ID="plcToolbox" Visible="false" runat="server">
					                                <img src="/Images/head_toolbox.gif">
					                                <br clear="all">
					                                <table cellpadding="0" cellspacing="2" border="0" width="200" class="tblspc3">
					                                    <asp:PlaceHolder runat="server" Visible="false" ID="plcToolRow1">
					                                        <tr>
					                                            <td><a target="_blank" href="<%#CType(Container.DataItem, DataRowView)("ToolLink1").ToString%>" class="tob"><img src="/Images/icon_dl.gif" width="11" height="9" border="0" alt="" hspace="2"><%#CType(Container.DataItem, DataRowView)("ToolText1").ToString%></a></td>
					                                        </tr>
					                                        <tr>
					                                            <td background="/Images/bg_tb.gif"><img src="/Images/bg_tb.gif" width="3" height="1" border="0" alt=""></td>
					                                        </tr>
					                                    </asp:PlaceHolder>
					                                    <asp:PlaceHolder runat="server" Visible="false" ID="plcToolRow2">
					                                        <tr>
					                                            <td><a href="<%#CType(Container.DataItem, DataRowView)("ToolLink2").ToString%>" class="tob"><img src="/Images/icon_dl.gif" width="11" height="9" border="0" alt="" hspace="2"><%#CType(Container.DataItem, DataRowView)("ToolText2").ToString%></a></td>
					                                        </tr>
					                                        <tr>
					                                            <td background="/Images/bg_tb.gif"><img src="/Images/bg_tb.gif" width="3" height="1" border="0" alt=""></td>
					                                        </tr>
					                                    </asp:PlaceHolder>
					                                    <asp:PlaceHolder runat="server" Visible="false" ID="plcToolRow3">
					                                        <tr>
					                                            <td><a href="<%#CType(Container.DataItem, DataRowView)("ToolLink3").ToString%>" class="tob"><img src="/Images/icon_dl.gif" width="11" height="9" border="0" alt="" hspace="2"><%#CType(Container.DataItem, DataRowView)("ToolText3").ToString%></a></td>
					                                        </tr>
					                                        <tr>
					                                            <td background="/Images/bg_tb.gif"><img src="/Images/bg_tb.gif" width="3" height="1" border="0" alt=""></td>
					                                        </tr>
					                                    </asp:PlaceHolder>
					                                </table>
					                            </asp:PlaceHolder>
						                    </td>
					                        <!-- End Tool Box -->
				                        </tr>
			                        </table>
			                    </td>
			                </tr>
			                <tr>
			                    <td style="padding-top:20px;">
			                        <asp:PlaceHolder Visible="false" runat="server" ID="plcGeneralGrid">
			                                <table cellpadding="0" cellspacing="0" border="0" width="95%" class="tblspc" align="center">
                                                <tr valign="bottom">
                                                    <td class="tblhd" width="6%">Part #</td>
                                                    <td class="tblhd" width="5%">CID</td>
                                                    <td class="tblhd" width="5%">Bore</td>
                                                    <td class="tblhd" width="6%">Stroke</td>
                                                    <td class="tblhd" width="6%">Rod<br>Lgth.</td>
                                                    <td class="tblhd" width="6%">Block<br>Ht.</td>
                                                    <td class="tblhd" width="6%">Comp.<br>Ht.</td>
                                                    <td colspan="3" class="solidborderrl" bgcolor="#F2F2F2" width="25%">
                                                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                            <tr>
                                                                <td colspan="3" class="tblhd">Head Cubic Centimeters</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="tblhd2" width="33%"><%#CType(Container.DataItem, DataRowView)("HeadCC1").ToString%></td>
                                                                <td class="tblhd2" width="34%"><%#CType(Container.DataItem, DataRowView)("HeadCC2").ToString%></td>
                                                                <td class="tblhd2" width="33%"><%#CType(Container.DataItem, DataRowView)("HeadCC3").ToString%></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" class="tblhd">Compression Ratio</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td class="tblhd" width="6%">Dome<br>Vol.</td>
                                                    <td class="tblhd" width="5%">Gram<br>Wt.</td>
                                                    <td class="tblhd" width="5%"><a href="javascript:footnote();" class="tblhd2">Footnote</a></td>
                                                    <td class="tblhd" width="7%">Oversize</td>
                                                    <td class="tblhd" width="12%">Recom.<br>Ring Set</td>
                                                </tr>
                                                <tr>
                                                    <td width="1" class="no" colspan="15" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                </tr>
                                            <asp:Repeater runat="server" Datasource='<%#Container.DataItem.Row.GetChildRows(wp.NestedData)%>' ID="repGeneralGrid" OnItemDataBound="repCatalogGrid_ItemDataBound">
                                                <ItemTemplate>
                                                        <tr id="GridRow" runat="server">
                                                            <td style="padding-top:3px;padding-bottom:3px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litDisplacement"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litBoreSize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litStroke"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litRodLength"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litBlockHeight"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litCompressionHeight"></asp:Literal></td>
                                                            <td width="8%" style="border-left: solid;border-left-width:1px;"><asp:Literal runat="server" ID="litCompRatio1"></asp:Literal></td>
                                                            <td width="9%" class="dottedborderrl"><asp:Literal runat="server" ID="litCompRatio2"></asp:Literal></td>
                                                            <td width="8%" style="border-right: solid;border-right-width:1px;"><asp:Literal runat="server" ID="litCompRatio3"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litDomeVolume"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litWeight"></asp:Literal></td>
                                                            <td><a href="javascript:footnote();" class="dyk"><asp:Literal runat="server" ID="litFootnote"></asp:Literal></a></td>
                                                            <td><asp:Literal runat="server" ID="litOversize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litRingSetPartNo"></asp:Literal></td>
                                                        </tr>
                                                </ItemTemplate>
                                                <SeparatorTemplate>
                                                        <tr>
                                                            <td width="1" class="no" colspan="15" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                        </tr>
                                                </SeparatorTemplate>
                                            </asp:Repeater>
                                        </table>
			                        </asp:PlaceHolder>
			                         <asp:PlaceHolder Visible="false" runat="server" ID="plcMoparTopFuelBlownGrid">
			                                <table cellpadding="0" cellspacing="0" border="0" width="95%" class="tblspc" align="center">
                                                <tr valign="bottom">
                                                    <td class="tblhd" width="20%">Part #</td>
					                                <td class="tblhd" width="20%">Bore Size</td>
					                                <td class="tblhd" width="20%">Compression Distance</td>
					                                <td class="tblhd" width="20%">Gram Weight</td>
					                                <td class="tblhd" width="20%">Top Ring</td>
                                                </tr>
                                                <tr>
                                                    <td width="1" class="no" colspan="5" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                </tr>
                                            <asp:Repeater runat="server" Datasource='<%#Container.DataItem.Row.GetChildRows(wp.NestedData)%>' ID="repMoparTopFuelBlownGrid" OnItemDataBound="repCatalogGrid_ItemDataBound">
                                                <ItemTemplate>
                                                        <tr id="GridRow" runat="server">
                                                            <td style="padding-top:3px;padding-bottom:3px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litBoreSize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litCompressionHeight"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litWeight"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litRingSetPartNo"></asp:Literal></td>
                                                        </tr>
                                                </ItemTemplate>
                                                <SeparatorTemplate>
                                                        <tr>
                                                            <td width="1" class="no" colspan="5" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                        </tr>
                                                </SeparatorTemplate>
                                            </asp:Repeater>
                                        </table>
			                        </asp:PlaceHolder>
			                        <asp:PlaceHolder Visible="false" runat="server" ID="plcNHRAAutoGrid">
			                                <table cellpadding="0" cellspacing="0" border="0" width="95%" class="tblspc" align="center">
                                                <tr valign="bottom">
                                                    <td class="tblhd" width="20%">Part #</td>
					                                <td class="tblhd" width="20%">Model</td>
					                                <td class="tblhd" width="20%">Year</td>
					                                <td class="tblhd" width="20%">Horsepower</td>
					                                <td class="tblhd" width="20%">Displacement</td>
                                                </tr>
                                                <tr>
                                                    <td width="1" class="no" colspan="5" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                </tr>
                                            <asp:Repeater runat="server" Datasource='<%#Container.DataItem.Row.GetChildRows(wp.NestedData)%>' ID="repNHRAAutoBlownGrid" OnItemDataBound="repCatalogGrid_ItemDataBound">
                                                <ItemTemplate>
                                                        <tr id="GridRow" runat="server">
                                                            <td style="padding-top:3px;padding-bottom:3px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litModelName"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litYearRange"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litHorsepower"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litDisplacement"></asp:Literal></td>
                                                        </tr>
                                                </ItemTemplate>
                                                <SeparatorTemplate>
                                                        <tr>
                                                            <td width="1" class="no" colspan="5" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                        </tr>
                                                </SeparatorTemplate>
                                            </asp:Repeater>
                                        </table>
			                        </asp:PlaceHolder>
			                        <asp:PlaceHolder Visible="false" runat="server" ID="plcPorscheGrid">
			                                <table cellpadding="0" cellspacing="0" border="0" width="95%" class="tblspc" align="center">
                                                <tr valign="bottom">
                                                    <td class="tblhd" width="7%">Part #</td>
					                                <td class="tblhd" width="7%">Engine<br>Size</td>
					                                <td class="tblhd" width="7%">Bore<br>Size</td>
					                                <td class="tblhd" width="7%">Stroke</td>
					                                <td class="tblhd" width="7%">Rod<br>Length</td>
					                                <td class="tblhd" width="9%">Compression<br>Distance</td>
					                                <td class="tblhd" width="9%">Compression<br>Ratio</td>
					                                <td class="tblhd" width="9%">Dome<br>Volume</td>
					                                <td class="tblhd" width="7%">Gram<br>Weight</td>
					                                <td class="tblhd" width="7%">Oversize</td>
					                                <td class="tblhd" width="12%">Wrist Pin<br>Part Number</td>
					                                <td class="tblhd" width="12%">Ring Set<br>Part Number</td>
                                                </tr>
                                                <tr>
                                                    <td width="1" class="no" colspan="12" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                </tr>
                                            <asp:Repeater runat="server" Datasource='<%#Container.DataItem.Row.GetChildRows(wp.NestedData)%>' ID="repPorscheBlownGrid" OnItemDataBound="repCatalogGrid_ItemDataBound">
                                                <ItemTemplate>
                                                        <tr id="GridRow" runat="server">
                                                            <td style="padding-top:3px;padding-bottom:3px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litDisplacement"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litBoreSize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litStroke"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litRodLength"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litCompressionHeight"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litCompRatio1"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litDomeVolume"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litWeight"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litOversize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litWristPinPartNo"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litRingSetPartNo"></asp:Literal></td>
                                                        </tr>
                                                </ItemTemplate>
                                                <SeparatorTemplate>
                                                        <tr>
                                                            <td width="1" class="no" colspan="12" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                        </tr>
                                                </SeparatorTemplate>
                                            </asp:Repeater>
                                        </table>
			                        </asp:PlaceHolder>
			                        <asp:PlaceHolder Visible="false" runat="server" ID="plcSportCompact">
			                                <table cellpadding="0" cellspacing="0" border="0" width="95%" class="tblspc" align="center">
                                                <tr valign="bottom">
                                                    <td class="tblhd" width="8%">Part #</td>
					                                <td class="tblhd" width="8%">Bore</td>
					                                <td class="tblhd" width="8%">Oversize</td>
					                                <td class="tblhd" width="8%">Stroke<br>(mm)</td>
					                                <td class="tblhd" width="7%">Rod<br>(mm)</td>
					                                <td class="tblhd" width="7%">C/D<br>(mm)</td>
					                                <td class="tblhd" width="7%">Head CC's</td>
					                                <td class="tblhd" width="8%">C/R With .040</td>
					                                <td class="tblhd" width="8%">Dome CC's</td>
					                                <td class="tblhd" width="7%">Gram</td>
					                                <td class="tblhd" width="6%"><a href="javascript:footnote2();" class="tblhd2">Footnote</a></td>
					                                <td class="tblhd" width="7%">Skirt</td>
					                                <td class="tblhd" width="11%">Included<br>Ring Set#</td>
                                                </tr>
                                                <tr>
                                                    <td width="1" class="no" colspan="13" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                </tr>
                                            <asp:Repeater runat="server" Datasource='<%#Container.DataItem.Row.GetChildRows(wp.NestedData)%>' ID="repSportCompactGrid" OnItemDataBound="repCatalogGrid_ItemDataBound">
                                                <ItemTemplate>
                                                        <tr id="GridRow" runat="server">
                                                            <td style="padding-top:3px;padding-bottom:3px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litBoreSize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litOversize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litStroke"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litRodLength"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litCompressionHeight"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litHeadVolume"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litCompRatio1"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litDomeVolume"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litWeight"></asp:Literal></td>
                                                            <td><a href="javascript:footnote2();" class="dyk"><asp:Literal runat="server" ID="litFootnote"></asp:Literal></a></td>
                                                            <td><asp:Literal runat="server" ID="litSkirtStyle"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litRingSetPartNo"></asp:Literal></td>
                                                        </tr>
                                                </ItemTemplate>
                                                <SeparatorTemplate>
                                                        <tr>
                                                            <td width="1" class="no" colspan="13" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                        </tr>
                                                </SeparatorTemplate>
                                            </asp:Repeater>
                                        </table>
			                        </asp:PlaceHolder>
			                        <asp:PlaceHolder Visible="false" runat="server" ID="plcPowersports">
			                                <table cellpadding="0" cellspacing="0" border="0" width="95%" class="tblspc" align="center">
                                                <tr valign="bottom">
                                                    <td class="tblhd" width="7%">Piston<br>Kit #</td>
                                                    <td class="tblhd" width="5%">Disp.</td>
					                                <td class="tblhd" width="6%">Bore<br>Size</td>
					                                <td class="tblhd" width="6%">Over<br>Size</td>
					                                <td class="tblhd" width="7%">Comp<br>Ratio</td>
					                                <td class="tblhd" width="5%">Gram<br>Wt (g)</td>
					                                <td class="tblhd" width="6%">Skirt<br>Style</td>
					                                <td class="tblhd" width="11%">Ring #</td>
					                                <td class="tblhd" width="13%">Pin #</td>
					                                <td class="tblhd" width="10%">Lock #</td>
					                                <td class="tblhd" width="8%">Gasket #</td>
					                                <td class="tblhd" width="10%">Sleeve #</td>
					                                <td class="tblhd" width="6%"><a href="javascript:footnote3();" class="tblhd2">Footnote</a></td>
                                                </tr>
                                                <tr>
                                                    <td width="1" class="no" colspan="13" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                </tr>
                                            <asp:Repeater runat="server" Datasource='<%#Container.DataItem.Row.GetChildRows(wp.NestedData)%>' ID="repPowersportsGrid" OnItemDataBound="repCatalogGrid_ItemDataBound">
                                                <ItemTemplate>
                                                        <tr id="GridRow" runat="server">
                                                            <td style="padding-top:3px;padding-bottom:3px;"><asp:Literal runat="server" ID="litItemIdentifier"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litDisplacement"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litBoreSize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litOversize"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litCompRatio1"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litWeight"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litSkirtStyle"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litRingSetPartNo"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litWristPinPartNo"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litCirclipPartNo"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litGasketPartNo"></asp:Literal></td>
                                                            <td><asp:Literal runat="server" ID="litSleevePartNo"></asp:Literal></td>
                                                            <td><a href="javascript:footnote3();" class="dyk"><asp:Literal runat="server" ID="litFootnote"></asp:Literal></a></td>
                                                        </tr>
                                                </ItemTemplate>
                                                <SeparatorTemplate>
                                                        <tr>
                                                            <td width="1" class="no" colspan="13" background="/Images/tblbg.gif"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                                                        </tr>
                                                </SeparatorTemplate>
                                            </asp:Repeater>
                                        </table>
			                        </asp:PlaceHolder>
			                    </td>
			                </tr>
			            </table>
			        </ItemTemplate>
			        <SeparatorTemplate>
			            <table width="100%" cellpadding="0" cellspacing="0"> 
			                <tr>
                                <td bgcolor="#CCCCCC"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
                            </tr>
                        </table>    
			        </SeparatorTemplate>
			    </asp:DataList>    
	        </td>
	    </tr>
    </table>
</asp:Content>
<asp:Content ID="PageContentFooterTop" ContentPlaceHolderID="ContentPlaceHolderFooterTop" runat="Server">
    <table style="background-color:#FFFFFF;" cellspacing="0" cellpadding="0" width="100%" class="cpygray">
    <tr bgcolor="#CCCCCC">
		<td><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
	</tr>
	<tr>
		<td align="center"><br><img src="/Images/icon_rn.gif" width="9" height="9" border="0" alt=""> - Denotes part # has been issued a new part #. A list referencing old part #s to their new counterparts will be available shortly.<br><br></td>
	</tr>
	<tr bgcolor="#CCCCCC">
		<td><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
	</tr>
</table>    
</asp:Content>

