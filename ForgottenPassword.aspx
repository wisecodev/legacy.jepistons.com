<%@ Page Title="Forgotten Password - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.ForgottenPassword" Codebehind="ForgottenPassword.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
		<meta name="author" content="JE Pistons Inc." />
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">Forgotten Password<br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<div align="center"><asp:label id="MyError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false"></asp:label></div>
		<form id="frmForgottenPW" runat="server">
       		<table cellSpacing="0" class="desc" style="padding-left:20px;padding-top:15px;padding-bottom:100px;" cellPadding="0" width="100%" border="0">
	            <tr>
		            <td colSpan="2">If you cannot remember your Username or Password and would like to have them e-mailed to you,<br />please enter your E-mail address used during registration and click "Email Me A New Password".</td>
	            </tr>
	            <tr>
		            <td colspan="2"><br>
		            </td>
	            </tr>
	            <tr>
		            <td style="width:300px;">Email:&nbsp;<asp:textbox id="txtEmail" runat="server" Width="250px" size="25"></asp:textbox></td>
		            <td><asp:ImageButton Runat="server" ID="btnEmailPW" ImageUrl="/Images/Buttons/btn-emailmeanewpassword.jpg" ></asp:ImageButton></td>
	            </tr>
	            <tr>
		            <td colspan="2" style="PADDING-LEFT: 40px"><asp:requiredfieldvalidator id="txtEmailValidator" runat="server" ErrorMessage="* Email Address Required" ControlToValidate="txtEmail"></asp:requiredfieldvalidator></td>
	            </tr>
	            <TR>
		            <td colSpan="2">
			            <table class="bodytext">
				            <tr>
					            <td valign="top" style="COLOR: #cc3333">*</td>
					            <td style="COLOR: #cc3333">Because we cannot recover your old password, a new one will<br>
					            be emailed to you along with your UserID and specific instructions.
					            </td>
				            </tr>
			            </table>
		            </td>
	            </TR>
            </table>

		</form>
</asp:Content>

