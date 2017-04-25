<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ValidateDataEntryForm.aspx.vb" Inherits="ValidateDataEntryForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" InsertCommand="INSERT INTO [Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [SupplierID] = ?, [CategoryID] = ?, [QuantityPerUnit] = ?, [UnitPrice] = ?, [UnitsInStock] = ?, [UnitsOnOrder] = ?, [ReorderLevel] = ?, [Discontinued] = ? WHERE [ProductID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="QuantityPerUnit" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int16" />
            <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
            <asp:Parameter Name="ReorderLevel" Type="Int16" />
            <asp:Parameter Name="Discontinued" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="QuantityPerUnit" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int16" />
            <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
            <asp:Parameter Name="ReorderLevel" Type="Int16" />
            <asp:Parameter Name="Discontinued" Type="Boolean" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="558px">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" CssClass="form-control"  runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            SupplierID:
            <asp:TextBox ID="SupplierIDTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("SupplierID") %>' />
            <br />
            CategoryID:
            <asp:TextBox ID="CategoryIDTextBox"   CssClass="form-control" runat="server" Text='<%# Bind("CategoryID") %>' />
            <br />
            QuantityPerUnit:
            <asp:TextBox ID="QuantityPerUnitTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("QuantityPerUnit") %>' />
            <br />
            UnitPrice:
            <asp:TextBox ID="UnitPriceTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("UnitPrice") %>' />
            <br />
            UnitsInStock:
            <asp:TextBox ID="UnitsInStockTextBox" CssClass="form-control"  runat="server" Text='<%# Bind("UnitsInStock") %>' />
            <br />
            UnitsOnOrder:
            <asp:TextBox ID="UnitsOnOrderTextBox" CssClass="form-control"  runat="server" Text='<%# Bind("UnitsOnOrder") %>' />
            <br />
            ReorderLevel:
            <asp:TextBox ID="ReorderLevelTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("ReorderLevel") %>' />
            <br />
            Discontinued:
            <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton"  class ="btn btn-primary"  runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton"   class ="btn btn-danger"  runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            
           
            
            
        
            
            ProductName:
           
            <asp:TextBox ID="ProductNameTextBox"  CssClass="form-control"  runat="server" Text='<%# Bind("ProductName")  %>' /> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CategoryIDTextBox" CssClass="text-danger" ErrorMessage="Must be a string"></asp:RequiredFieldValidator>
           <br />

            SupplierID:
            
            <asp:TextBox ID="SupplierIDTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("SupplierID") %>' /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SupplierIDTextBox" CssClass="text-danger"  ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
            CategoryID:
            
            <asp:TextBox ID="CategoryIDTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("CategoryID") %>' /> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CategoryIDTextBox"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
            QuantityPerUnit:
           
            <asp:TextBox ID="QuantityPerUnitTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("QuantityPerUnit") %>' /> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="QuantityPerUnitTextBox"  CssClass="text-danger" ErrorMessage="Must be a string"></asp:RequiredFieldValidator>
            <br />
            UnitPrice:
           
            <asp:TextBox ID="UnitPriceTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("UnitPrice") %>' /> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UnitPriceTextBox"  CssClass="text-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
            UnitsInStock:
            <asp:TextBox ID="UnitsInStockTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("UnitsInStock") %>' />
            <br />
            UnitsOnOrder:
            <asp:TextBox ID="UnitsOnOrderTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("UnitsOnOrder") %>' />
            <br />
            ReorderLevel:
            <asp:TextBox ID="ReorderLevelTextBox"  CssClass="form-control" runat="server" Text='<%# Bind("ReorderLevel") %>' />
            <br />
            Discontinued:
            <asp:CheckBox ID="DiscontinuedCheckBox"  runat="server" Checked='<%# Bind("Discontinued") %>' />
            <br />
            <asp:LinkButton ID="InsertButton"  class = "btn btn-primary"  runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" class = "btn btn-danger"  runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>

    
            ProductID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProductIDLabel" CssClass="form-control" runat="server" Text='<%# Eval("ProductID") %>' />
            &nbsp;<br />
            <br />
            ProductName:&nbsp;<asp:Label  CssClass="form-control" ID="ProductNameLabel0" runat="server" Text='<%# Bind("ProductName") %>' />
            &nbsp;&nbsp;<br />
            <br />
            SupplierID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="SupplierIDLabel" CssClass="form-control" runat="server" Text='<%# Bind("SupplierID") %>' />
            <br />
            <br />
            CategoryID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="CategoryIDLabel" CssClass="form-control" runat="server" Text='<%# Bind("CategoryID") %>' />
            <br />
            <br />
            QuantityPerUnit:
            <asp:Label ID="QuantityPerUnitLabel" CssClass="form-control" runat="server" Text='<%# Bind("QuantityPerUnit") %>' />
            <br />
            <br />
            UnitPrice:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="UnitPriceLabel" CssClass="form-control" runat="server" Text='<%# Bind("UnitPrice") %>' />
            <br />
            <br />
            UnitsInStock:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="UnitsInStockLabel" CssClass="form-control" runat="server" Text='<%# Bind("UnitsInStock") %>' />
            <br />
            <br />
            UnitsOnOrder:&nbsp;&nbsp;&nbsp;
            <asp:Label ID="UnitsOnOrderLabel" CssClass="form-control" runat="server" Text='<%# Bind("UnitsOnOrder") %>' />
            <br />
            <br />
            ReorderLevel:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ReorderLevelLabel" CssClass="form-control" runat="server" Text='<%# Bind("ReorderLevel") %>' />
            <br />
            <br />
            Discontinued:
            <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>' Enabled="false" />
            <br />
            <asp:LinkButton ID="EditButton"  class = "btn btn-primary"  runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton"  class = "btn btn-danger"  runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton"  class = "btn btn-success"  runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
</asp:FormView>
</asp:Content>

