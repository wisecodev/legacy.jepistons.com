<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddtoCart2.aspx.vb" Inherits="JEWebsite.AddtoCart2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  <style type="text/css">
        .echd {
	font-family: helvetica;
	font-size: 20px;
	color: #004a80;

}
.echdnm {
	font-family: helvetica;
	font-size: 12px;
	color: #252525;
    z-index:20px;
    position:absolute;
}
    </style>
    <title>Untitled Page</title>
</head>
<body>
 
    <form id="Buy" runat="server" name="Buy" onsubmit="return checkSearchBoxes(this, 'Part Number And Quantity Must Be Entered');" action="AddToCart.aspx"	 method="post">
				                 <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css" rel="Stylesheet" type="text/css" />
            
            <script type="text/javascript" language="javascript">
                $(function() {
                    $("[id$=ItemIDText]").autocomplete({
                        source: function(request, response) {
                            $.ajax({
                                url: '<%=ResolveUrl("~/AddtoCart2.aspx/GetItems") %>',
                                data: "{ 'prefix': '" + request.term + "'}",
                                dataType: "json",
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                success: function(data) {
                                    response($.map(data.d, function(item) {
                                        return {
                                            label: item,
                                            val: item 
                                        }
                                    }))
                                },
                                error: function(response) {
                                    alert(response.responseText);
                                },
                                failure: function(response) {
                                    alert(response.responseText);
                                }
                            });
                        },
                        select: function(e, i) {
                            $("[id$=hfItemId]").val(i.item.val);
                        },
                        minLength: 1
                    });
                });   
    </script>
    
                                <input type="hidden" id="hfItemId"/>
				                 
				             <table cellpadding="0" cellspacing="0" width="100%" class="echdnm" >
                                <tr>
                                    <td>
                                        <div class="echd">Add Items To Cart / Price Or Stock Quote</div>
                                    </td>
                                </tr>
                                <tr>
                                     <td>
				                        <TABLE border="0" style="margin-top:5px;border-top:solid 1px #CCCCCC;" class="echdnm" cellSpacing="0" cellPadding="2" width="100%">
					                        <TR vAlign="bottom">
						                        <TD width="185" style="TEXT-ALIGN: left; font-weight:bold;">JE Pistons Part #</TD>
						                        <TD width="120" style="TEXT-ALIGN: center; font-weight:bold;">Quantity</TD>
						                        <TD style="TEXT-ALIGN: left">&nbsp;</TD>
					                        </TR>
					                        <TR>
						                        <TD width="185" align="center">
						                            <asp:TextBox ID="ItemIDText" runat="server"  width="150" />
						                        
						                        <%--<asp:TextBox ID="ItemIDText" Runat="server" ReadOnly="True" Visible="True" Width="150"  /></TD>--%>
						                        
						                        
						                        <TD width="120" align="center">
						                            
						                            <INPUT style="WIDTH: 30px" size="4" type="text" value="1" name="QuantityText">
						                           
						                        </TD>
						                        <TD valign="top">
						                            <table cellpadding="0" cellspacing="0">
					                                    <tr>
					                                        <td align="left" valign="middle"><a href="javascript:newWindow('/TechCorner/Left-Right-Pistons.aspx','425','385');"><img src="/Images/Question.gif" border="0" /></a></td>
					                                        <td><INPUT name="bQuote" type="image" src="/images/Buttons/btn-quote.jpg" value="Quote"></td>
					                                    </tr>
					                                </table>        
						                        </TD>
					                        </TR>
					                        <tr>
					                            <td colspan="3">
					                                <table cellpadding="0" cellspacing="0">
					                                    <tr>
					                                    
                                                            <td><asp:ImageButton ImageUrl="/Images/Buttons/btn-addtocart.jpg" id="btnSearch" Runat="server"></asp:imagebutton></td>	
                                                            				                                        
                                                            
					                                        <td style="COLOR: #ff0000; FONT-FAMILY: verdana; font-size:10px;" valign="middle">* All Piston Sets Include Rights And Lefts When Required</td>
					                                    </tr>
					                                </table>
					                            </td>
					                        </tr>
					                        
				                        </TABLE>
				                     </td>
				                </tr>
				             </table>
				              
			            </form>
   
	          
	          
	          
	          
</body>
</html>
