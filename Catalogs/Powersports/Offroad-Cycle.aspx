<%@ Page Title="Offroad Dirt Bike Forged Pistons - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.OffroadCycle" Codebehind="Offroad-Cycle.aspx.vb" %>
<%@ Register TagPrefix="uc" TagName="CatalogLinks"   Src="_PSCatalogLinks.ascx" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <meta name="Description" content="Specializing in 4 stroke design.  JE has developed NEW Pro Series FSR forgings for off-road motorcycles that are dedicated to a specific engine type. " />
		<meta name="Keywords" content="JE Pistons, Dirt Bike Pistons, Forged, Dirt, Off Road, AMA, motocross, Honda, KTM, Kawasaki, Suzuki, Yamaha" />
		<link rel="stylesheet" href="/App_Themes/navigationtabs.css" />
</asp:Content>

<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
    <!--#include virtual="/inc/Banners/PSBannerLinkPS.js"-->			
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <table cellpadding="0" style="padding-top:10px;" cellspacing="0" border="0" width="100%" align="center" bgcolor="#FFFFFF">
    <tr>
        <td colspan="2">
            <div id='tsmenu2'>
                <div id="ts_tabmenu">
                    <ul>
                        <li id="li_tsmenu1"><a href="/Catalogs/Powersports/Street-Cycle.aspx"><strong class="autogeneral">Street Cycle</strong></a></li>
                        <li id="li_tsmenu2"><a href="/Catalogs/Powersports/Offroad-Cycle.aspx"><strong class="autogeneral">Offroad Cycle</strong></a></li>
                        <li id="li_tsmenu3"><a href="/Catalogs/Powersports/ATV-UTV.aspx"><strong class="autogeneral">ATV / UTV</strong></a></li>
                        <li id="li_tsmenu4"><a href="/Catalogs/Powersports/PWC-Snowmobile.aspx"><strong class="autogeneral">PWC / Snowmobile</strong></a></li>
                        <li id="li_tsmenu5"><a href="/Catalogs/Powersports/Harley-Davidson.aspx"><strong class="autogeneral">Harley-Davidson</strong></a></li>
                        <li id="li_tsmenu6"><a href="/Catalogs/Powersports/Index.aspx"><strong class="autogeneral">Powersports</strong></a></li>
                    </ul>
                </div>   
            </div>
        </td>
    </tr>
	<tr>
	    <td height="400" valign="top" style="padding-top:0px;"><img src="/Images/Catalogs/Powersports/main_offroad4.jpg" border="0" width="400" height="400" alt=""><br /></td>
		<td width="100%" valign="top" style="padding-top:0px;">
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				<tr bgcolor="#000000"">
					<td colspan="2" class="pwwh" align="center">Please select an engine</td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				<tr valign="top">
					<td width="140"><img src="/Images/Catalogs/Powersports/GasGas.gif"  border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
				        <uc:CatalogLinks runat="server" TabTypeID="5" TabIndex="7" ID="GasGasCatalogLinks" NAME="GasGasCatalogLinks" />
				    </td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				
				<tr valign="top">
					<td width="140"><img src="/Images/Catalogs/Powersports/honda.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
				        <uc:CatalogLinks runat="server" TabTypeID="5" TabIndex="1" ID="CatalogLinks2" NAME="HondaCatalogLinks" />
				    </td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				
				
				<tr valign="top">
					<td width="140"><img src="/Images/Catalogs/Powersports/husaberg.gif" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
				        <uc:CatalogLinks runat="server" TabTypeID="5" TabIndex="8" ID="HusabergCatalogLinks" NAME="HusabergCatalogLinks" />
				    </td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				
				<tr valign="top">
					<td width="140"><img src="/Images/Catalogs/Powersports/Husqvarna.gif"  border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
				        <uc:CatalogLinks runat="server" TabTypeID="5" TabIndex="9" ID="HusqvarnaCatalogLinks" NAME="HusqvarnaCatalogLinks" />
				    </td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				
				
				<tr>
					<td><img src="/Images/Catalogs/Powersports/kawasaki.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
					    <uc:CatalogLinks runat="server" TabTypeID="5" TabIndex="2" ID="KawasakiCatalogLinks" NAME="HondaCatalogLinks" />	
					</td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				<tr>
					<td><img src="/Images/Catalogs/Powersports/ktm.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
						<uc:CatalogLinks runat="server" TabTypeID="5" TabIndex="3" ID="KTMCatalogLinks" NAME="HondaCatalogLinks" />
					</td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				<tr>
					<td><img src="/Images/Catalogs/Powersports/suzuki.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
					    <uc:CatalogLinks runat="server" TabTypeID="5" TabIndex="4" ID="SuzukiCatalogLinks" NAME="HondaCatalogLinks" />	
					</td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				
				
				
				
				
				<tr>
					<td><img src="/Images/Catalogs/Powersports/yamaha.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
						<uc:CatalogLinks runat="server" TabTypeID="5" TabIndex="5" ID="YamahaCatalogLinks" NAME="HondaCatalogLinks" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</asp:Content>




