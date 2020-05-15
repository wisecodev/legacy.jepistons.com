<%@ Page Title="Media Center -  JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.MediaCenter" Codebehind="MediaCenter.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <meta name="Description" content="The media center will allow you to access all JE logos, videos, and promotional material for download." />
		<meta name="Keywords" content="JE Pistons, Logo download, EPS files, JPG files, Logo, Terms of use, Videos, permission, image art" />
</asp:Content>

<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center" bgcolor="#FFFFFF">
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="desc2a"><b>MEDIA CENTER</b></td>
				</tr>
				<tr bgcolor="#CCCCCC">
					<td><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
				</tr>
				<tr>
					<td>
					<!-- -->	
						<table cellspacing="20" cellpadding="0" border="0" width="100%" class="desc2">
							<tr>
								<td align="center"><a href="/Images/Logos/je_logo.eps"><img src="/Images/Logos/je_logo.gif" border="0" alt="" width="250" height="120"></a><br><br>
									<table cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" border="0" width="200">
										<tr bgcolor="#FFFFFF">
											<td class="desc">download: <a href="/Images/Logos/je_logo.eps" class="desc2"><b>eps</b></a> (515.87KB)</td>
										</tr>
									</table>
								</td>
								<td align="center"><a href="/Images/Logos/srp_logo.eps"><img src="/Images/Logos/srp_logo.gif" border="0" alt="" width="250" height="120"></a><br><br>
									<table cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" border="0" width="200">
										<tr bgcolor="#FFFFFF">
											<td class="desc">download: <a href="/Images/Logos/srp_logo.eps" class="desc2"><b>eps</b></a> (484.46KB)</td>
										</tr>
									</table></td>
							</tr>
							<tr>
								<td align="center"><a href="/Images/Logos/je_proseal_logo.eps"><img src="/Images/Logos/ps_logo.gif" border="0" alt="" width="250" height="120"></a><br><br>
									<table cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" border="0" width="200">
										<tr bgcolor="#FFFFFF">
											<td class="desc">download: <a href="/Images/Logos/je_proseal_logo.eps" class="desc2"><b>eps</b></a> (414.80KB)</td>
										</tr>
									</table></td>
								<td align="center"></td>
							</tr>
						</table>
					<!-- -->
					</td>
				</tr>
			</table></td>
	</tr>
</table>
</asp:Content>
