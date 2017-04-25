
Partial Class ReadingXml
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Dim mystock = New DataSet
            mystock.ReadXml(MapPath("Products.xml"))
            cdcatalog.DataSource = mystock
            cdcatalog.DataBind()
        End If
    End Sub

End Class

