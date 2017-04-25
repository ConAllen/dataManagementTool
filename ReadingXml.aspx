<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ReadingXml.aspx.vb" Inherits="ReadingXml" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


 <%@ Import Namespace="System.Data" %>



  
<asp:Repeater id="cdcatalog" runat="server">
<HeaderTemplate>
<table border="1" width="100%">
<tr>
<th>ProductID</th>
<th>ProductName</th>
<th>SupplierID</th>
<th>CategoryID</th>

</tr>
</HeaderTemplate>

<ItemTemplate>
<tr>
<td><%#Container.DataItem("ProductID")%></td>
<td><%#Container.DataItem("ProductName")%></td>
<td><%#Container.DataItem("SupplierID")%></td>
<td><%#Container.DataItem("CategoryID")%></td>

</tr>
</ItemTemplate>



<FooterTemplate>
</table>
</FooterTemplate>

</asp:Repeater>





</asp:Content>

