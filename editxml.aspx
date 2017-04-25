<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="editxml.aspx.vb" Inherits="editxml" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="3">
            
        </asp:GridView>
        <br />
        <br />
        <br />
        Product ID: 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtId"  CssClass="form-control" runat="server"></asp:TextBox> <br>
        Product Name:  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtName"  CssClass="form-control" runat="server"></asp:TextBox><br>
        Supplier ID: 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTel"   CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtTel" CssClass="form-control" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" class = "btn btn-success" runat="server" Text="Update XML" /></div>


</asp:Content>

