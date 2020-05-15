<%@ Page Title="New Account - JE Pistons Inc." Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.MyNewAccountDetail" Codebehind="MyNewAccountDetail.aspx.vb" %>

<asp:Content ID="PageHeader" ContentPlaceHolderID="head" runat="Server">
    <script language="JavaScript">
        function getrandomemail() {
            var randomnumber = Math.random() * 10;
            document.getElementById(document.getElementById('hdntxtBillEmail').value).value = 'WP' + Right(randomnumber, 5) + '@JE';
        }

        function getrandomuserid() {
            var randomnumber = Math.random() * 10;
            document.getElementById(document.getElementById('hdntxtUserID').value).value = 'WP' + Right(randomnumber, 5);
        }

        function getrandompassword() {
            var randomnumber = Math.random() * 10;
            document.getElementById(document.getElementById('hdntxtPassword').value).value = 'WP' + Right(randomnumber, 9);
            document.getElementById(document.getElementById('hdntxtConfirmPW').value).value = 'WP' + Right(randomnumber, 9);
        }
        function Right(str, n) {
            if (n <= 0)     // Invalid bound, return blank string
                return "";
            else if (n > String(str).length)   // Invalid bound, return
                return str;                     // entire string
            else { // Valid bound, return appropriate substring
                var iLen = String(str).length;
                return String(str).substring(iLen, iLen - n);
            }
        } 
		</script>
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">Create A New Web Account</div><div style="padding-left:15px;padding-right:20px;" class="echdsm">Dealers may create a website account but must contact a JE salesperson to activate the account prior to ordering.</div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
		<div align="center"><asp:label id="MyError" runat="Server" ForeColor="Red" Font-Bold="true" EnableViewState="false"></asp:label></div>
		<form id="MyAccountDetail" runat="server">
       		<table bgcolor="#ffffff" class="desc" border="0" style="padding-left:50px;" cellspacing="2" cellpadding="0" width="100%">
	             <tr>
		            <td colspan="2">
			            <table>
				            <tr>
					            <td><img src="/Images/icon_req.gif" width="32" height="32" border="0" alt=""></td>
					            <td class="echdnm">Items shaded light blue are required.</td>
				            </tr>
			            </table>
			        </td>
	            </tr>
	            <tr>
		            <td colspan="2">&nbsp;</td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>First Name:&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtBillFirstName" BackColor="#def4fc" runat="server" maxLength="30" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillFirstName" runat="server" ControlToValidate="txtBillFirstName" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>Last Name:&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtBillLastName" BackColor="#def4fc" runat="server" maxLength="30" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillLastName" runat="server" ControlToValidate="txtBillLastName" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>Street Address:&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtBillAddr1" BackColor="#def4fc" runat="server" maxLength="30" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillAddr1" runat="server" ControlToValidate="txtBillAddr1" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>Street Address 2:</b>&nbsp;</div>
		            </td>
		            <td><asp:textbox id="txtBillAddr2" runat="server" maxLength="30" Width="245px"></asp:textbox></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>City:&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtBillCity" runat="server" BackColor="#def4fc"  maxLength="20" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillCity" runat="server" ControlToValidate="txtBillCity" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>Country:&nbsp;</b></div>
		            </td>
		            <td>
			            <asp:dropdownlist id="ddlBillCountryID" BackColor="#def4fc"  runat="server" AutoPostBack="True" Width="245px"></asp:dropdownlist>
		            </td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>State:&nbsp;</b></div>
		            </td>
		            <td><asp:dropdownlist id="cmbBillStateProvince" BackColor="#def4fc"  runat="server" Width="245px">
				            <asp:ListItem Value="0">---Select State/Province---</asp:ListItem>
			            </asp:dropdownlist>
			            <asp:regularexpressionvalidator id="rfvBillStateProvince" runat="server" ControlToValidate="cmbBillStateProvince"
				            ErrorMessage="** Required" Font-Size="Smaller" ValidationExpression="^([1-9]|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$"></asp:regularexpressionvalidator></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>Postal Code:</b>&nbsp;</div>
		            </td>
		            <td><asp:textbox id="txtBillPostalCode" runat="server" BackColor="#def4fc" maxLength="10" Width="75px" size="7"></asp:textbox><asp:requiredfieldvalidator id="rfvBillPostalCode" runat="server" ControlToValidate="txtBillPostalCode" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>E-Mail Address:&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtBillEmail" runat="server" BackColor="#def4fc" maxLength="50" Width="245px"></asp:textbox><asp:requiredfieldvalidator id="rfvBillEmail" runat="server" ControlToValidate="txtBillEmail" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
	            </tr>
	            <tr>
		            <td noWrap align="right" width="10%">
			            <div class="echdnm"><b>Phone Number:&nbsp;</b></div>
		            </td>
		            <td><asp:textbox id="txtBillPhone" runat="server" BackColor="#def4fc" Width="120px" size="12"></asp:textbox><asp:requiredfieldvalidator id="rfvBillPhone" runat="server" ControlToValidate="txtBillPhone" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator>
		            </td>
	            </tr>
	            <tr>
		            <td bgcolor="fdfbde" noWrap align="right" width="10%">
			            <div class="echdnm"><span style="FONT-WEIGHT: bold; FONT-STYLE: italic">User ID:</span>&nbsp;</div>
		            </td>
		            <td><asp:textbox id="txtUserID" runat="server" BackColor="#def4fc" maxLength="25" Width="150px"></asp:textbox><asp:requiredfieldvalidator id="rfvUserName" runat="server" ControlToValidate="txtUserID" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator></td>
	            </tr>
	            <tr>
		            <td bgcolor="fdfbde" noWrap align="right" width="10%">
			            <div class="echdnm"><span style="FONT-WEIGHT: bold; FONT-STYLE: italic">Password:&nbsp;</span></div>
		            </td>
		            <td><asp:textbox id="txtPassword" BackColor="#def4fc" TextMode="Password" runat="server" maxLength="20" Width="150px"></asp:textbox>(5-20 
			            Characters)<asp:requiredfieldvalidator id="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator>
		            </td>
	            </tr>
	            <tr>
		            <td bgcolor="fdfbde" noWrap align="right" width="10%">
			            <div class="echdnm"><span style="FONT-WEIGHT: bold; FONT-STYLE: italic">Confirm 
					            Password:&nbsp;</span></div>
		            </td>
		            <td><asp:textbox id="txtConfirmPW" BackColor="#def4fc" TextMode="Password" runat="server" maxLength="20" Width="150px"></asp:textbox><asp:requiredfieldvalidator id="rfvConfirmPW" runat="server" ControlToValidate="txtConfirmPW" ErrorMessage="** Required"
				            Font-Size="Smaller"></asp:requiredfieldvalidator>
		            </td>
	            </tr>
	        <asp:PlaceHolder runat="server" Visible="false" ID="plcHiddenCustomerInfo">
	            <TR>
		            <TD noWrap align="right" width="10%">
			            <DIV class="attention"><B>Company ID:&nbsp;</B></DIV>
		            </TD>
		            <TD>
			            <asp:DropDownList id="ddlCompanyID" Runat="server">
				            <asp:ListItem Value="JEP" Selected="True">JEP</asp:ListItem>
			            </asp:DropDownList>
		            </TD>
	            </TR>
	            <TR>
		            <TD noWrap align="right" width="10%">
			            <DIV class="attention"><B>Old ERP CustID:&nbsp;</B></DIV>
		            </TD>
		            <TD>
			            <asp:textbox id="txtERPCustID" runat="server" Width="120px" size="12"></asp:textbox>
			            <asp:button id="btnImportERP" Visible="false" Runat="server" CssClass="button" Text="Import"></asp:button></TD>
	            </TR>
	            
	            <tr>
				            <td class="attention" width="12%" align="right"><b>MAS ERP CustID</b>:&nbsp;</td>
				            <td>
				                <asp:textbox id="txtMASCustID" runat="server" Width="120px" size="12"></asp:textbox>
				            </td>
			            </tr>
			            
	            <TR>
		            <TD noWrap align="right" width="10%">
			            <DIV class="attention"><B>
					            <asp:label id="lblApprovedDealer" Runat="server">Approved Dealer:&nbsp;</asp:label></B></DIV>
		            </TD>
		            <TD>
			            <asp:checkbox id="chkApprovedDealer" Runat="server"></asp:checkbox></TD>
	            </TR>
	        </asp:PlaceHolder>    
	            <tr>
		            <td></td>
		            <td><br>
			            <asp:ImageButton Runat="server" ID="btnCreateAccount" ImageUrl="/Images/Buttons/btn-createnewaccount.jpg"></asp:ImageButton><br>
			            <br>
		            </td>
	            </tr>
            </table>
			<br>
			<br>
		</form>
</asp:Content>
