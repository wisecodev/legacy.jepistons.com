<%@ Page Title="Latest News - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.LatestNews" Codebehind="LatestNews.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <meta name="Description" content="Keep up to date on the latestest news and events happening at JE Pistons." />
		<meta name="Keywords" content="JE Pistons, Events, News, powertv online, video, new products, press releases" />
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->	
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">Latest News<br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center" bgcolor="#FFFFFF">
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="desc2">
						<table cellspacing="20" cellpadding="0" border="0" align="center">
							<tr>
								<td align="left"><embed src="http://www.powertvonline.com/xp2/d3d3LnBvd2VydHZvbmxpbmUuY29t/2637/1/on" type="application/x-shockwave-flash" width="430" height="343"></embed></td>
								<td style="padding-left:125px;" align="center" class="desc2"><a href="ProductReleases.aspx" class="desc2"><img src="/Images/Events/dlm-f.jpg" width="180" height="180" alt="" border="0"><br><br>New Products</a> - <i>updated 05.23.2011</i></td>
							</tr>
						</table>	
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</asp:Content>
