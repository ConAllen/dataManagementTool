<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="CustomerDataEntryForm.aspx.vb" Inherits="dataEntryForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE (([CustomerID] = ?)" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [CompanyName] = ?, [ContactName] = ?, [ContactTitle] = ?, [Address] = ?, [City] = ?, [Region] = ?, [PostalCode] = ?, [Country] = ?, [Phone] = ?, [Fax] = ? WHERE ([CustomerID] = ?)">
    <DeleteParameters>
        <asp:Parameter Name="CustomerID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CustomerID" Type="String" />
        <asp:Parameter Name="CompanyName" Type="String" />
        <asp:Parameter Name="ContactName" Type="String" />
        <asp:Parameter Name="ContactTitle" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Region" Type="String" />
        <asp:Parameter Name="PostalCode" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Fax" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CompanyName" Type="String" />
        <asp:Parameter Name="ContactName" Type="String" />
        <asp:Parameter Name="ContactTitle" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Region" Type="String" />
        <asp:Parameter Name="PostalCode" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Fax" Type="String" />
        <asp:Parameter Name="CustomerID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" Width="442px">
    <EditItemTemplate>
        CustomerID:
        <asp:Label ID="CustomerIDLabel1"  CssClass="form-control"  runat="server" Text='<%# Eval("CustomerID") %>' />
        <br />
        CompanyName:
        <asp:TextBox ID="CompanyNameTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("CompanyName") %>' />
        <br />
        ContactName:
        <asp:TextBox ID="ContactNameTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("ContactName") %>' />
        <br />
        ContactTitle:
        <asp:TextBox ID="ContactTitleTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("ContactTitle") %>' />
        <br />
        Address:
        <asp:TextBox ID="AddressTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Address") %>' />
        <br />
        City:
        <asp:TextBox ID="CityTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("City") %>' />
        <br />
        Region:
        <asp:TextBox ID="RegionTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Region") %>' />
        <br />
        PostalCode:
        <asp:TextBox ID="PostalCodeTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("PostalCode") %>' />
        <br />
        Country:
        <asp:TextBox ID="CountryTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Country") %>' />
        <br />
        Phone:
        <asp:TextBox ID="PhoneTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        Fax:
        <asp:TextBox ID="FaxTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Fax") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" class = "btn btn-primary"  runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" class = "btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>

    <InsertItemTemplate>
        CustomerID:
        <asp:TextBox ID="CustomerIDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("CustomerID") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CustomerIDTextBox" CssClass="text-danger"  ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        CompanyName:
        <asp:TextBox ID="CompanyNameTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("CompanyName") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CompanyNameTextBox"   CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        ContactName:
        <asp:TextBox ID="ContactNameTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("ContactName") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ContactNameTextBox"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        ContactTitle:
        <asp:TextBox ID="ContactTitleTextBox" CssClass="form-control"  runat="server" Text='<%# Bind("ContactTitle") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ContactTitleTextBox"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        Address:
        <asp:TextBox ID="AddressTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Address") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AddressTextBox"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        City:
        <asp:TextBox ID="CityTextBox"   CssClass="form-control"  runat="server" Text='<%# Bind("City") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CityTextBox"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        Region:
        <asp:TextBox ID="RegionTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Region") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RegionTextBox"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        PostalCode:
        <asp:TextBox ID="PostalCodeTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("PostalCode") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="PostalCodeTextBox"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        <br />
        Country:
        <asp:TextBox ID="CountryTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Country") %>' />
        <br />
        <br />
        Phone:
        <asp:TextBox ID="PhoneTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        <br />
        Fax:
        <asp:TextBox ID="FaxTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("Fax") %>' />
        <br />
        <br />
        <asp:LinkButton ID="InsertButton"  class = "btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" class = "btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        CustomerID:
        <asp:Label ID="CustomerIDLabel"  CssClass="form-control"  runat="server" Text='<%# Eval("CustomerID") %>' />
        <br />
        <br />
        CompanyName:
        <asp:Label ID="CompanyNameLabel"  CssClass="form-control" runat="server" Text='<%# Bind("CompanyName") %>' />
        <br />
        <br />
        ContactName:
        <asp:Label ID="ContactNameLabel"  CssClass="form-control"  runat="server" Text='<%# Bind("ContactName") %>' />
        <br />
        <br />
        ContactTitle:
        <asp:Label ID="ContactTitleLabel"  CssClass="form-control" runat="server" Text='<%# Bind("ContactTitle") %>' />
        <br />
        <br />
        Address:
        <asp:Label ID="AddressLabel"  CssClass="form-control"  runat="server" Text='<%# Bind("Address") %>' />
        <br />
        <br />
        City:
        <asp:Label ID="CityLabel"  CssClass="form-control"  runat="server" Text='<%# Bind("City") %>' />
        <br />
        <br />
        Region:
        <asp:Label ID="RegionLabel"  CssClass="form-control"  runat="server" Text='<%# Bind("Region") %>' />
        <br />
        <br />
        PostalCode:
        <asp:Label ID="PostalCodeLabel"  CssClass="form-control"  runat="server" Text='<%# Bind("PostalCode") %>' />
        <br />
        <br />
        Country:
        <asp:Label ID="CountryLabel"  CssClass="form-control"  runat="server" Text='<%# Bind("Country") %>' />
        <br />
        <br />
        Phone:
        <asp:Label ID="PhoneLabel"  CssClass="form-control"  runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        <br />
        Fax:
        <asp:Label ID="FaxLabel"   CssClass="form-control"  runat="server" Text='<%# Bind("Fax") %>' />
        <br />
        <br />
        <asp:LinkButton ID="EditButton"  class = "btn btn-primary"  runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" class = "btn btn-danger"  runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton"  class = "btn btn-success"  runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
</asp:Content>

