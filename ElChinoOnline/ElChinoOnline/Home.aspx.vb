Public Class Home
    Inherits System.Web.UI.Page
    Dim DB As New moduloBase

    

    Protected Sub BtnListar_Click(sender As Object, e As EventArgs) Handles BtnListar.Click
        Dim categoria As Integer
        categoria = DrlCategoria.SelectedValue
        Dim DSProductos As New Data.DataSet
        DSProductos = DB.listarProductos(categoria)
        GrvProductos.DataSource = DSProductos
        GrvProductos.DataBind()


    End Sub

    Private Sub GrvProductos_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GrvProductos.RowCommand
        If (e.CommandName = "AddToCart") Then
            ' Retrieve the row index stored in the CommandArgument property.
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)

            ' Retrieve the row that contains the button 
            ' from the Rows collection.
            Dim row As GridViewRow = GrvProductos.Rows(index)

            ' Add code here to add the item to the shopping cart.

        End If


    End Sub

    Private Sub DrlCategoria_PreRender(sender As Object, e As EventArgs) Handles DrlCategoria.PreRender, DrlCategoria.SelectedIndexChanged
        Dim categoria As Integer
        categoria = DrlCategoria.SelectedValue
        Dim DSProductos As New Data.DataSet
        DSProductos = DB.listarProductos(categoria)
        GrvProductos.DataSource = DSProductos

        GrvProductos.DataBind()
    End Sub

    Protected Sub BtnAgregar_Click(sender As Object, e As EventArgs) Handles BtnAgregar.Click
        
        For Each row As GridViewRow In GrvProductos.Rows
            If row.RowType = DataControlRowType.DataRow Then
                Dim chkRow As CheckBox = TryCast(row.Cells(1).FindControl("ChbxProducto"), CheckBox)
                If chkRow.Checked Then
                    Dim name As String = row.Cells(2).Text
                End If
            End If
        Next
    End Sub
End Class