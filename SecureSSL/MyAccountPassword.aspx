<%@ Page Title="Account Password - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.MyAccountPassword" Codebehind="MyAccountPassword.aspx.vb" %>

<asp:Content ID="PageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">My Account Password&nbsp;<a href="/SecureSSL/MyAccount.aspx" Class="echd">(Return To Account Summary)</a><br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
		<div align="center"><asp:label id="MyError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false"></asp:label></div>
		<form id="MyAccountPassword" runat="server">
            <table bgcolor="#ffffff" class="desc" style="padding-top:15px;padding-left:15px;padding-bottom:100px;" width="100%">
	            <tr>
		            <td colspan="2">To change your account password, please enter a new password below and click 'Save Password'.<br /><br /></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="15%">
			            <div class="echdnm"><b>User ID&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtUserID" ReadOnly="True" Enabled="False" BackColor="#def4fc" runat="server" maxLength="25" Width="150px"></asp:textbox><asp:requiredfieldvalidator id="rfvUserName" runat="server" ControlToValidate="txtUserID" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="15%">
			            <div class="echdnm"><b>New Password&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtPassword" TextMode="Password" runat="server" maxLength="20" Width="150px"></asp:textbox>(5-20 Characters)<asp:requiredfieldvalidator id="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator>
		            </td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="15%">
			            <div class="echdnm"><b>Confirm Password&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtConfirmPW" TextMode="Password" runat="server" maxLength="20" Width="150px"></asp:textbox><asp:requiredfieldvalidator id="rfvConfirmPW" runat="server" ControlToValidate="txtConfirmPW" ErrorMessage="** Required" 
				            Font-Size="Smaller"></asp:requiredfieldvalidator>
		            </td>
	            </tr>
	            <tr>
		            <td></td>
		            <td><br>
			            <asp:ImageButton Runat="server" ID="btnSavePassword" ImageUrl="/Images/Buttons/btn-save.jpg"></asp:ImageButton><br>
			            <br>
		            </td>
	            </tr>				
            </table>

		</form>
</asp:Content>
