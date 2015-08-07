Public Class Administrador
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("nombre") <> "" Then
            LBNombreUsuario1.Text = Session("nombre")
        End If
        If Session("pagina") <> "" Then
            LBPagina.Text = Session("pagina")
        End If
    End Sub
End Class