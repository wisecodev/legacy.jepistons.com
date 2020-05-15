<%@ Page Title="Pro Seal High Quality Piston Rings - JE Pistons" Language="VB" MasterPageFile="~/_JEMaster.master" AutoEventWireup="false" Inherits="JEWebsite.JECustomerSite.WebPages.ProSealIndex" Codebehind="Index.aspx.vb" %>
<asp:Content ID="PageHeader" ContentPlaceHolderID="head" Runat="Server">
		<meta name="Description" content="JE Pro Seal rings have been developed from over 70 years of racing history.  Top teams in NASCAR, ALMS, NHRA, and AMA demand JE Pro Seal Rings for their engines." />
		<meta name="Keywords" content="JE Pistons,Pro Seal, ProSeal, Rings, Oil Rings, Top Ring, Second Ring, Ring search, Ring Sets, Single Rings, NASCAR, NHRA, Custom Rings" />
		<link rel="stylesheet" href="/App_Themes/navigationtabs.css" />
</asp:Content>
<asp:Content ID="PageHeaderImage" ContentPlaceHolderID="ContentPlaceHolderHeaderImage" runat="Server">
    <!--#include virtual="/inc/Banners/PROSealBannerLinkHome.js"-->
</asp:Content>
<asp:Content ID="PageContent" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
<table cellpadding="0" cellspacing="0" border="0"  align="center" bgcolor="#FFFFFF" width="100%">
	<tr>
		<td colspan="2">
			<table cellpadding="0" cellspacing="10" border="0" width="100%" bgcolor="#FFFFFF" align="center">
				<tr>
					<td width="420"><img src="/Images/Catalogs/ProSeal/main_cutaway.jpg" width="400" height="328" border="0" alt=""></td>
					<td bgcolor="#CCCCCC" width="1"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
					<td width="559">
						<table cellpadding="0" cellspacing="0" border="0" width="539">
							<tr>
								<td colspan="5" class="desc2">JE Pistons has been the industry leader in the design, development and manufacturing of forged racing pistons for 60 years. The benefit of that experience, along with the technology and data gathered over the course of those years, has enabled JE to create a product line to compliment our world-class piston designs; JE Pro Seal Pistons Rings. Top teams in NASCAR, ALMS, NHRA, and AMA demand JE Pro Seal Rings for their engines. 
								<p>JE Pro Seal Rings are available for most racing, street, and powersports applications. JE offers over 2300 ringset and individual part numbers in stock and ready to ship. Don't see what you need? JE also offers custom ring manufacturing services."</td>
							</tr>
							<tr>
								<td colspan="5"><img src="/Images/1x10.gif" width="1" height="10" border="0" alt=""></td>
							</tr>
							<tr bgcolor="#CCCCCC">
								<td colspan="5"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
							</tr>
							<tr>
								<td colspan="5"><img src="/Images/1x10.gif" width="1" height="10" border="0" alt=""></td>
							</tr>
							 
							<tr valign="top">
								<!-- Sets-->
								<td align="center">
								    <form method="post" action="RingSearch.aspx">
								        <img src="/Images/Catalogs/ProSeal/main_sets.jpg" width="250" height="125" border="0" alt="">
									    <table cellpadding="0" cellspacing="1" border="0" width="264" bgcolor="#CCCCCC">
										    <tr>
											    <td><img src="/Images/Catalogs/ProSeal/head_sets.gif" width="262" height="28" border="0" alt=""></td>
										    </tr>
										    <tr>
											    <td bgcolor="#C71D22" align="center">
												    <table cellpadding="0" cellspacing="20" border="0">
													    <tr>
														    <td>
															    <table cellpadding="0" cellspacing="0" border="0" class="sch2" style="height:36px;">
																    <tr>
																	    <td><input type="text" name="BoreSize" size="10"/ class="desc2" value="Enter Bore" onfocus="if(this.value == 'Enter Bore'){this.value=''}" /></td>
																	    <td><input type="radio" name="Unit" value="1" checked="checked"/></td>
																	    <td>IN</td>
																	    <td><input type="radio" name="Unit" value="2"/></td>
																	    <td>MM</td>
																    </tr>
															    </table>
															</td>
													    </tr>
												    </table>
												    <input type="hidden" name="search" value="sets"/><input type="hidden" name="RingType" value="4"/>
										            <input type="hidden" name="submit" value="submit"/>
												</td>
										    </tr>
										    <tr>
											    <td background="/Images/Catalogs/ProSeal/search_bg.gif" align="right"><input type="image" src="/Images/Catalogs/ProSeal/but_search.gif"></td>
										    </tr>
									    </table>
								    </form>
								</td>
								<td width="5"><img src="/Images/5x1.gif" width="5" height="1" border="0" alt=""></td>
								<td bgcolor="#CCCCCC" width="1"><img src="/Images/1x1.gif" width="1" height="1" border="0" alt=""></td>
								<td width="5"><img src="/Images/5x1.gif" width="5" height="1" border="0" alt=""></td>
								<!-- Individual -->
								<td align="center">
								    <form method="post" action="RingSearch.aspx">
								        <img src="/Images/Catalogs/ProSeal/main_ind.jpg" width="200" height="125" border="0" alt="">
									    <table cellpadding="0" cellspacing="1" border="0" width="264" bgcolor="#CCCCCC">
										    <tr>
											    <td><img src="/Images/Catalogs/ProSeal/head_ind.gif" width="262" height="28" border="0" alt=""></td>
										    </tr>
										    <tr>
											    <td bgcolor="#003876" align="center">
    											    
												    <table cellpadding="0" cellspacing="20" border="0">
													    <tr>
														    <td>
															    <table cellpadding="0" cellspacing="0" border="0" class="sch2">
																    <tr>	
																	    <td><input type="text" name="BoreSize" size="10" class="desc2" value="Enter Bore" onfocus="if(this.value == 'Enter Bore'){this.value=''}" /></td>
																	    <td><input type="radio" name="Unit" value="1" checked="checked" /></td>
																	    <td>IN</td>
																	    <td><input type="radio" name="Unit" value="2"/></td>
																	    <td>MM</td>
																    </tr>
																    <tr>
																	    <td colspan="5" align="left">
																	        <select name="RingType" class="desc2">
												                                <option disabled>Select Ring Type</option>
												                                <option value="56">Top Ring</option>
												                                <option value="57">Second Ring</option>
												                                <option value="58">Oil Ring</option>
												                            </select>
											                            </td>
																    </tr>
															    </table>
														    </td>
													    </tr>
												    </table>
											        <input type="hidden" name="search" value="indv"/>
										            <input type="hidden" name="submit" value="submit"/>
											    </td>
										    </tr>
										    <tr>
											    <td background="/Images/Catalogs/ProSeal/search_bg.gif" align="right"><input type="image" src="/Images/Catalogs/ProSeal/but_search.gif"></td>
										    </tr>
									    </table>
						            </form>
						        </td>
							</tr>
						</table>
					</td>
				</tr>
			</table>			
		</td>
	</tr>
</table>
</asp:Content>
