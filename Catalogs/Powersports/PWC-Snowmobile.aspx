<%@ Page Title="Snowmobile / PWC Forged Pistons - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.WaterSnow" Codebehind="PWC-Snowmobile.aspx.vb" %>
<%@ Register TagPrefix="uc" TagName="CatalogLinks"   Src="_PSCatalogLinks.ascx" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
		<meta name="Description" content="Snowmobiles and Personal Watercraft have recently begun to adopt modern four-stroke engines. Since JE Pistons has been the leader of four-stroke piston technology for 60 years, we were prepared for the transition." />
		<meta name="Keywords" content="JE Pistons, Snowmobile, PWC, Watercraft, Forged, High Revving, Turbo applications, Watersports, Kawasaki, Yamaha  " />
		<link rel="stylesheet" href="/App_Themes/navigationtabs.css" />
</asp:Content>

<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
    <!--#include virtual="/inc/Banners/PSBannerLinkPS.js"-->		
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<table cellpadding="0" style="padding-top:10px;" cellspacing="0" border="0" width="100%" align="center" bgcolor="#FFFFFF">
    <tr>
        <td colspan="2">
            <div id='tsmenu4'>
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
		<td height="250" valign="top" style="padding-top:0px;" background="/Images/Catalogs/Powersports/gradient.gif"><img src="/Images/Catalogs/Powersports/main_ws.jpg" width="400" height="250" border="0" alt=""></td>
		<td width="100%" valign="top" style="padding-top:0px;" rowspan="2">
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				'Start Water
				</tr>
				<tr bgcolor="#000000"">
					<td colspan="2" class="pwwh" align="center">WATER - Please select an engine</td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				<tr>
					<td><img src="/Images/Catalogs/Powersports/kawasaki.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
					    <uc:CatalogLinks runat="server" TabTypeID="7" TabIndex="1" ID="KawasakiCatalogLinks" NAME="KawasakiCatalogLinks" />	
					</td>
				</tr>
				<tr>
					<td><img src="/Images/Catalogs/Powersports/sea-doo.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
					    <uc:CatalogLinks runat="server" TabTypeID="7" TabIndex="3" ID="SeaDooCatalogLinks" NAME="SeaDooCatalogLinks" />	
					</td>
				</tr>
				<!-- Start Snowmobiles -->
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				<tr bgcolor="#000000"">
					<td colspan="2" class="pwwh" align="center">SNOW/WATER - Please select an engine</td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td colspan="2"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				<tr>
					<td><img src="/Images/Catalogs/Powersports/yamaha.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
					    <uc:CatalogLinks runat="server" TabTypeID="7" TabIndex="2" ID="YamahaCatalogLinks" NAME="YamahaCatalogLinks" />		
					</td>
				</tr>
				<tr>
					<td><img src="/Images/Catalogs/Powersports/ski-doo.gif" width="120" height="50" border="0" alt="" hspace="10"></td>
					<td style="padding-top:5px;padding-bottom:5px;">
					    <uc:CatalogLinks runat="server" TabTypeID="7" TabIndex="4" ID="SkiDooCatalogLinks" NAME="SkiDooCatalogLinks" />	
					</td>
				</tr>
				<!-- End Snowmobiles -->
			</table></td>
	</tr>
	</table>
</asp:Content>




