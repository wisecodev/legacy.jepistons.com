<%@ Page Language="vb" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" CodeBehind="DownloadSpecs.aspx.vb" Inherits="JEWebsite.DownloadSpecs" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <meta name="Description" content="Keep up to date on the latestest news and events happening at JE Pistons." />
		<meta name="Keywords" content="JE Pistons, Events, News, powertv online, video, new products, press releases" />
        <style type="text/css">
            .style1
            {
                FONT-FAMILY: helvetica;
                COLOR: #f26522;
                FONT-SIZE: 20px;
            }
            .style2
            {
                font-family: verdana, arial;
                font-size: 11px;
                color: #000000;
                padding: 0px;
                text-decoration: none;
                width: 132px;
            }
        </style>
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->	
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">
    JE Pistons New Product Update, May 2012<br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center" bgcolor="#FFFFFF">
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="desc2">
						<table cellspacing="20" cellpadding="0" border="0" align="center">
							<tr>
								<td align="left">
                                    <asp:HyperLink ID="DownloadSpecs2" runat="server" NavigateUrl="JE-SRPNewPartsJanuaryApril2012.xls"><img alt="Download Specs" src="../Images/DownloadSpecs.jpg" 
                                        style="width: 740px; height: 280px" border="0" /></asp:HyperLink> </td>
								
							</tr>
						</table>	
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</asp:Content>