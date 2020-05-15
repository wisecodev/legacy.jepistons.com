<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="_PSCatalogLinks.ascx.vb" Inherits="JEWebsite.JECustomerSite.UserControls.PSCatalogLinks" %>
<asp:DataList ID="dgCatalogLinks" BackColor="#FFFFFF" ItemStyle-Width="50%" ItemStyle-VerticalAlign="Top" CellPadding="0" CellSpacing="0" Width="100%" RepeatColumns="1" RepeatLayout="Table"  RepeatDirection="Horizontal" Runat="server">
    <ItemTemplate>
        <table cellpadding="0" cellspacing="1" border="0" width="100%">
            <tr>
                <td valign="top" style="padding-top:5px; width:10px;"><img src="/Images/Catalogs/Powersports/bul.gif" width="10" height="5" border="0" alt=""></td><td valign="top"><a class="pw" href="<%#DataBinder.Eval(Container.DataItem, "URLRewritePath")%>"><%#DataBinder.Eval(Container.DataItem, "Identifier").ToString.Replace("|", "<br>")%></a></td>
            </tr>
        </table>
    </ItemTemplate> 
</asp:DataList>