<%@ Page Title="Sign In - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.SignIn" Codebehind="SignIn.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" runat="Server"><div class="breadcrumbhead">Account Sign-In<br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
	<form id="frmSignIn" name="frmSignIn" runat="server">
	    <table cellpadding="0" cellspacing="0" style="padding-left:20px;padding-right:20px;padding-bottom:100px;" border="0" width="100%" align="center">	
            <tr valign="top">
	            <td style="padding-top:20px;">
		            <table cellpadding="0" cellspacing="0" border="0" width="100%">
			            <tr>
				            <!-- Start Existing Customers -->
				            <td valign="top" width="50%">
					            <table cellpadding="0" style="border-right: solid 1px #CCCCCC" cellspacing="0" border="0" width="93%">
						            <tr>
							            <td class="echdsm" colspan="3"><span class="echd">Existing Customers</span><br />
							            If you already have an online JEPistons.com account, please enter your username and password to sign in below.<br /><br /></td>
						            </tr>
						            <tr>
							            <td class="echdnm"><b>Username</b>:&nbsp;</td>
							            <td style="padding-bottom:3px;"><asp:TextBox id="userid" runat="server" style="width:120px;"></asp:TextBox></td>
							            <td width="100%">
							                <asp:Panel Runat="server" ID="pnlSearch" Visible="False">
								                <a class="echd" style="margin-left:3px;" href="javascript:newWindow('/SecureSSL/AdminCustomerSearch.aspx', 650, 600);">Search</A>
							                </asp:Panel>
								        </td>
						            </tr>
						            <tr>
							            <td class="echdnm"><b>Password</b>:&nbsp;</td>
							            <td><asp:TextBox id="password" runat="server" style="width:120px;" TextMode="Password"></asp:TextBox></td>
							            <td width="100%">&nbsp;<a href="../ForgottenPassword.aspx" class="echd">Forgot your password?</a></td>
						            </tr>
						            <tr>
							            <td colspan="3" align="center" style="padding-top:10px;"><asp:ImageButton ID="LoginBtn" Runat="server" ImageUrl="/Images/Buttons/btn-signin.jpg"></asp:ImageButton></td>
						            </tr>
						            <tr>
						                <td colspan="3"><asp:label id="Message" runat="server" CssClass="attention"></asp:label></td>
						            </tr>
					            </table>
					        </td>
				            <!-- Start New Customers -->
				            <td valign="top" width="50%">
					            <table cellpadding="0" cellspacing="0" border="0" width="100%" class="echdnm">
						            <tr>
							            <td class="echdsm" colspan="3"><span class="echd">New Customers</span><br />
							            If you do not have an online JEPistons.com account, please click the "create account" button below to quickly register.&nbsp;&nbsp;Accounts created prior to 7/1/2009 are no longer valid and must be recreated.<br /><br /></td>
						            </tr>
						            <tr>
						                <td colspan="3" align="center">
						                    <table width="100%" cellpadding="0" cellspacing="0">
						                        <tr>
							                        <td width="33%" height="20">• Online Ordering</td>
							                        <td width="33%">• Order Tracking</td>
							                        <td width="33%">• Order History</td>
						                        </tr>
						                        <tr>
							                        <td width="33%" height="20">• Quick Checkout</td>
							                        <td width="33%">• Stock Checking</td>
							                        <td width="33%">• Tech Support</td>
						                        </tr>
						                    </table>
						                </td>
						            </tr>
						            <tr>
							            <td colspan="3" align="center" style="padding-top:17px;"><asp:ImageButton ID="CreateAccount" Runat="server" ImageUrl="/Images/Buttons/btn-createnewaccount.jpg"></asp:ImageButton></td>
						            </tr>
						            <tr>
						                <td colspan="3"><asp:label id="NewAccountMessage" runat="server" CssClass="attention"></asp:label></td>
						            </tr>    
					            </table>
					         </td>
			            </tr>
		            </table>
		        </td>
            </tr>
        </table>        
	</form>
</asp:Content>
