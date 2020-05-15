<%@ Page Title="Tech Corner - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.TechIndex" Codebehind="Index.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
		<meta name="Description" content="JE Tech corner provides you with a wealth of technical information, Instructions and additional tools to help you with your rebuild. " />
		<meta name="Keywords" content="JE Pistons, Engine Rebuilding, Technical Information, Calculators, Tools, Install instructions, FAQs, Custom piston drawings, Molding" />
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center" bgcolor="#FFFFFF">
	<tr bgcolor="#CCCCCC">
		<td><img src="/Images/1x1.gif" width="1" height="1" border="0" alt="" /></td>
	</tr>
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="tch"><img src="/Images/TechCorner/head_tech.jpg" width="141" height="50" border="0" alt=""></td>
				</tr>
				<tr>
					<td class="innercontainer">
						<table cellpadding="0" cellspacing="20" width="100%" border="0" style="background-color:#FFFFFF;">
							<tr>
								<td align="center"><img src="/Images/TechCorner/main_technical.jpg" width="273" height="150" border="0" alt=""></td>
								<td align="center"><img src="/Images/TechCorner/main_instruct.jpg" width="274" height="150" border="0" alt=""></td>
								<td align="center"><img src="/Images/TechCorner/main_tools.jpg" width="273" height="150" border="0" alt=""></td>
							</tr>
							<tr valign="top">
								<td align="center"><div id="sp-left-column">
								<ul>
								    <li><a href="/TechCorner/FAQs.aspx">Frequently Asked Questions</a></li>
								    <li><a href="/TechCorner/SCP_Drawings.aspx">Sample Custom Piston Drawings</a></li>
								    <li><a href="/TechCorner/Pin-Offset.aspx">Wrist Pin Offset Example</a></li>
								    <li><a href="/TechCorner/Piston-Terminology.aspx">Piston Terminology</a></li>
								    <li><a href="/OrderInfo/Critical-Processing.aspx">Critical Processing Program</a></li>
								</ul>
								</div></td>
								<td align="center"><div id="sp-left-column">
								<ul>
								    <li><a href="/TechCorner/Mold-Making.aspx">Combustion Chamber Mold Making Instructions</a></li>
								    <li><a href="/PDFs/TechCorner/SCPDrawings/piston_instrc4032.pdf">Ring Installation Guide - 4032 Pistons: Instructions</a></li>
								    <li><a href="/PDFs/TechCorner/SCPDrawings/piston_instrc2618.pdf">Ring Installation Guide - 2618 Pistons: Instructions</a></li>
								    <li><a href="/PDFs/TechCorner/SCPDrawings/sample_chr.pdf">Sample Cylinder Head Requirements</a></li>
								    <li><a href="/PDFs/TechCorner/SCPDrawings/JE_Piston_terminology_and_features.pdf">Custom Piston Terminology &amp; Features</a></li>
								    <li><a href="/TechCorner/HowToIdentify.aspx">How to identify JE/SRP Pistons</a></li>
								</ul>
								</div></td>
								<td align="center"><div id="sp-left-column">
								<ul>
								    <li><a href="/TechCorner/CheckStockOnline.aspx">How to Check Stock Online</a></li>
								</ul>
								</div></td>
							</tr>
						</table>
					</td>
				</tr>	
			</table>
		</td>
	</tr>
</table>			
</asp:Content>
