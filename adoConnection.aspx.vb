'Visual Basic
Imports System.Data
Imports System.Data.OleDb
'Connecting via ADO.net to SQL Server
Imports System.Data.SqlClient
Imports System.Web.Configuration
Partial Class adoConnection
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Lets create a connection to our SQL Server database file
        Dim connStr As String = "Provider=Microsoft.Jet.OLEDB.4.0;" &
                        "Data Source=|DataDirectory|Northwind.mdb;"


        'Now lets declare our variables and open the connection
        Dim conn As New OleDbConnection(connStr)
        conn.Open()


        'With the connection open, lets run a query on the Products table
        Dim sqlSuppliers As String = "SELECT SupplierID, CompanyName, ContactName, ContactTitle, Address, City FROM Suppliers"
        'We will use a Dataadapter to show the results of our query.
        'The DataAdapter is used either to fill a DataTable or a DataSet with data from the database 
        'using it's Fill method

        Dim da As New OleDbDataAdapter(sqlSuppliers, conn)
        Dim ds As New DataSet()
        da.Fill(ds, "Suppliers")

        'The results of our query is displayed within a Gridview control
        GridView1.DataSource = ds.Tables("Suppliers")
        GridView1.DataBind()

    End Sub
End Class
