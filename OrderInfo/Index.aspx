<%@ Page Title="Ordering Information - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.OrderInfo" Codebehind="Index.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
        <meta name="Description" content="With our new online ordering system, ordering pistons from JE Pistons doesn't get any easier.  Custom orders can also be placed online using our email form." />
		<meta name="Keywords" content="JE Pistons, Online Ordering, Customs, Custom Forged Pistons, Price List, Dealer Application, Retail Sales, 24/7 Ordering, Direct Ordering, Drop Shipments" />
        </asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
   	<!--#include virtual="/inc/Banners/AutoBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageBreadcrumb" ContentPlaceHolderID="ContentPlaceHolderBread" Runat="Server"><div class="breadcrumbhead">Order Information<br /></div><div style="padding-top:5px;margin-bottom:5px;border-bottom:solid 1px #CCCCCC"></div></asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center" bgcolor="#FFFFFF">
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="desc2">
						<table cellspacing="20" cellpadding="0" border="0">
							<tr>
								<td valign="top"><img src="/Images/customorderform.jpg" width="120" height="156" alt="" border="0"></td>
								<td class="desc2"><b>New Online Ordering Feature</b><br /><br />
								Whether you are a dealer or a retail customer, JE pistons makes it as easy as possible to get the parts you need.  Products can be added to your online shopping cart by viewing our online catalog and clicking the add to cart button.  If you already know the part number you wish to purchase, it can be entered directly on our shopping cart page for fast ordering.<br /><br />We hope you like this new feature of JEPistons.com and look forward to bringing you more exciting features in the near future.  
								<br /><br /><b>Forms &amp; Resources</b><br /><br />
								<div style=" font-weight:bold;color:Red" align="left">To increase order security, the “Shelf Change/Reference” and “Shelf Stock” order forms have been moved to the secure portion of our website. To continue using these forms, please contact your JE sales representative to verify your online account.</div>
								<p><a href="/PDFs/OrderInfo/JE-custompistons-orderform.pdf" target="_" class="desc2">Custom Piston Order Form</a><br>
								<a href="/PDFs/Catalogs/2016JEPistonsMasterAutoCatalog_LR.pdf" target="_" class="desc2">2016 JE Pistons Master Automotive Catalog Download</a><br>
								<%--<a href="/SecureSSL/Order-Shelf-Stock.aspx" class="desc2">Dealer/Distributor Shelf Stock Order Form</a><span style=" font-weight:bold;color:Red" align="left">**</span><br />--%>
								<a href="/SecureSSL/Order-Custom.aspx" class="desc2">"Shelf Change" OR "Reference" Custom Piston Order Form</a><span style=" font-weight:bold;color:Red" align="left">**</span><br />
								<a href="/AboutUs.aspx" class="desc2">Sales/Technical Assistance</a><br>
								<a href="/OrderInfo/Critical-Processing.aspx" class="desc2">Critical Order Processing</a><br><br>
								<a href="/PDFs/OrderInfo/dealer_application1.pdf" target="_" class="desc2">Dealer Application</a>
                                    <br />
                                    <br />
								<br /><br />
									<table cellpadding="0" cellspacing="1" border="0" width="470" bgcolor="#534640">
										<tr bgcolor="#ffefce">
											<td>
												<table width="100%">
													<tr>
													<td width="100%" colspan="2">  <br /><b>Shipping Lead Time</b><br /><br />
							                        Most orders placed before 3pm EST will be shipped the same day. Orders placed after that time will not ship until the following business day. To Track your shipment, please enter your six digit order/job number below.  
                                                        <br />
                                                        <br />
                                                        <br />
													</tr>
													
													<tr>
														<td><img src="/Images/logo_ups.gif" width="75" height="86" border="0" alt=""></td>
														<td class="desc2" align="center"><b>Shipment tracking of your JE or SRP order,<br />
														    by Job Number or PO#</b><br>
														    <!-- Cut from Here - UPS Reference Tracking Example -->
														    <!-- When customizing nonUPS_body, title, header & footer, Replace < with &lt;, > with &gt;, and quotation marks with &quot; -->
														    <FORM action="http://wwwapps.ups.com/etracking/tracking.cgi" method="post" target="_blank">
														    <INPUT type="hidden" name="nonUPS_header" value=">
														    <INPUT type="hidden" name="nonUPS_footer" value="&lt;HR&gt; &lt;CENTER&gt;Copyright &copy; 2005 JE PISTONS&lt;/CENTER&gt;">
														    <INPUT type="hidden" name="nonUPS_title" value="JE PISTONS - UPS Order Tracking"> 
														    <INPUT type="hidden" name="nonUPS_body" value="BGCOLOR=&quot;#E1E1E1&quot;">
														    <INPUT type="hidden" name="UPS_HTML_License" value="<DCAF2D0ABDEA4D80>">
														    <INPUT type="hidden" name="Lang" value="eng">
														    <INPUT type="hidden" name="IATA" value="us">
														    <INPUT type="hidden" name="AcceptUPSLicenseAgreement" value="yes">
														    <INPUT type="hidden" name="TypeOfInquiryNumber" value="R">
														    <INPUT type="hidden" name="SenderShipperNumber" value="6Y114A">
														    <p align="center"><!-- use target="_self" for same page -->
														    <INPUT maxLength="35" size="20" name="InquiryNumber" value="">
														    <!-- Cut to here -->
														    <INPUT type="submit" value="Submit">
														    <INPUT type="reset" value="Clear">
														    </FORM>
													    </td>
													</tr>
												</table>
							        					
											</td>
									    </tr>
									
									</table>
							    <table>
							    <tr>
							    <td width="100%">  <br /><br /><b>Returns</b><br /><br />
							    All returns/RMA's will need to be sent to our Returns address. <br />
 <br /> 
<b>PMI - Mentor<br />
JE Pistons Returns<br />
7201 Industrial Park Blvd.<br />
Mentor, OH 44060<br /></b>
 

							    </td></tr>
							    </table>
								</td>
						    
						    
						    
							</tr>
						</table>
						    
									  
										
					<!-- -->
					</td>
				</tr>
			</table></td>
	</tr>
</table>
</asp:Content>


