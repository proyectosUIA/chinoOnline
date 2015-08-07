Public Class Home
    Inherits System.Web.UI.Page
    Dim DB As New moduloBase

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnListar_Click(sender As Object, e As EventArgs) Handles BtnListar.Click
        Dim categoria As Integer
        categoria = DrlCategoria.SelectedValue
        Dim DSProductos As New Data.DataSet
        DSProductos = DB.listarProductos(categoria)
        GrvProductos.DataSource = DSProductos
        GrvProductos.DataBind()

    End Sub

    Private Sub GrvProductos_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GrvProductos.RowDataBound
        Try
            ' Si se trata de una fila de datos...
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim celda As New TableCell()
                Dim boton As New LinkButton()

                boton.Text = "Detalles"
                If e.Row.Cells.Count < 1 Then
                    boton.CommandArgument = GrvProductos.DataKeys(e.Row.RowIndex).Value.ToString()
                End If

                ' Añadimos el LinkButton a la celda, y la celda a la fila
                celda.Controls.Add(boton)
                e.Row.Controls.Add(celda)
            End If
        Catch ex As Exception
            Throw ex
        End Try
    End Sub
End Class