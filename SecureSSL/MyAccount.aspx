<%@ Page Title="Account Summary - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.MyAccount" Codebehind="MyAccount.aspx.vb" %>

<asp:Content ID="PageHeader" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
	<form id="CheckoutMyAccount" runat="server">
		<div class="breadcrumbhead">My Account Information &nbsp;<asp:LinkButton id="lnkSignOut" CssClass="echd" runat="server">(Click Here To Sign Out)</asp:LinkButton><br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div>
		<div align="center"><asp:label id="MyError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false"></asp:label></div>
		<table cellpadding="0" cellspacing="0" style="padding-left:20px;padding-top:15px;padding-right:20px;padding-bottom:100px;" align="center" width="100%">
            <tr>	
	            <td width="100%" class="echdnm"><b>Welcome to your own private area of JEPistons.com!</b>
	            <br /><br />We have set up this "Private Account" area to give you the ability to Track Orders, View Order History, or change your Account Information.
	            <br>
	            <br>
	            <a class="echd" href="CheckoutBillingShipping.aspx">Proceed To Checkout</a>
	            <br>
	            <br>
	            <a class="echd" href="MyOrders.aspx">Track/View My Previous Orders</a>
	            <br />
	            <br>
	            <a class="echd" href="MyAccountDetail.aspx">Change My Account Information</a>
	            <br><br />
	            <a class="echd" href="MyAccountPassword.aspx">Change My Password</a>
	            <br /><br /><br />
	            </td>
            </tr>
            <tr>
                <td class="echdnm"><b>Secure Order Forms For Existing Customers/Dealers</b><br /><br />
	            <a class="echd" href="/SecureSSL/Order-Custom.aspx">"Shelf Change" OR "Reference" Custom Piston Order Form</a>
	            <br /><br />
	            <%--<a class="echd" href="/SecureSSL/Order-Shelf-Stock.aspx">Dealer/Distributor Shelf Stock Order Form</a>--%>
	            <br /><br />
                </td>
            </tr>
        </table>
	</form>
</asp:Content>
