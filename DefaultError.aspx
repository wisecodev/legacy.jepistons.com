<%@ Page Title="An Error Has Occured -  JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.DefaultError" Codebehind="DefaultError.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
		<meta name="robots" content="noindex,nofollow" />
</asp:Content>

<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">ERROR - Please Try Again<br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <p style="padding-left:20px;padding-right:20px;padding-bottom:50px;" class="desc2">
       We're sorry, there has been a problem processing your previous request.<br />
	   Please use your browsers back button and try to submit your request again.
	   <br />
	   <br />
	   If you continue to have problems please call us at 714-898-9763.
    </p>
</asp:Content>

