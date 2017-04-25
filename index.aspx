<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="index.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Keep Track</h1>
        <p class="lead">Welcome to Keep Track the latest Customer & Stock management tool. Please feel free to search for a customer below</p>
        <p><a href="http://localhost:12442/search" class="btn btn-success btn-lg">Search &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Product Catalog</h2>
            <p>
               Please have a browse through our product catalog, and discover the interesting items we have in stock.
            </p>
            <p>
                <a class="btn btn-primary" href="/ReadingXml">Product Search &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Suppliers</h2>
            <p>
               Here are Keep Track we deal with the best Suppliers in the game. Please feel free to browse through our suppliers list.
            </p>
            <p>
                <a class="btn btn-primary" href="/adoConnection2">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Customer Details</h2>
            <p>
                Manage Customer details and keep an eye on the latest buying trends with our master details feature.
            </p>
            <p>
                <a class="btn btn-primary" href="/masterdetail">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
