Imports System.Data
Partial Class editxml
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            BindGrid()
        End If
    End Sub

    Sub BindGrid()
        Dim oDs As New DataSet
        oDs.ReadXml(Request.PhysicalApplicationPath + "Products.xml")
        GridView1.DataSource = oDs
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        BindGrid()
    End Sub

    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1
        BindGrid()
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        BindGrid()
        Dim oDs As DataSet = GridView1.DataSource
        oDs.Tables(0).Rows(GridView1.Rows(e.RowIndex).DataItemIndex).Delete()
        oDs.WriteXml(Request.PhysicalApplicationPath + "Products.xml")
        BindGrid()
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        BindGrid()
    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Dim i As Integer = GridView1.Rows(e.RowIndex).DataItemIndex
        Dim strId As String = CType(GridView1.Rows(e.RowIndex).Cells(2).Controls(0), TextBox).Text
        Dim strName As String = CType(GridView1.Rows(e.RowIndex).Cells(3).Controls(0), TextBox).Text
        Dim strTel As String = CType(GridView1.Rows(e.RowIndex).Cells(4).Controls(0), TextBox).Text

        GridView1.EditIndex = -1
        BindGrid()
        Dim oDs As DataSet = GridView1.DataSource

        oDs.Tables(0).Rows(i).Item(0) = strId
        oDs.Tables(0).Rows(i).Item(1) = strName
        oDs.Tables(0).Rows(i).Item(2) = strTel

        oDs.WriteXml(Request.PhysicalApplicationPath + "Products.xml")
        BindGrid()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        BindGrid()
        Dim oDs As DataSet = GridView1.DataSource
        Dim oDr As DataRow = oDs.Tables(0).NewRow
        oDr("ProductID") = txtId.Text
        oDr("ProductName") = txtName.Text
        oDr("SupplierID") = txtTel.Text

        oDs.Tables(0).Rows.Add(oDr)
        oDs.WriteXml(Request.PhysicalApplicationPath + "Products.xml")
        BindGrid()
    End Sub
End Class
