Public Class Registro
    Inherits System.Web.UI.Page
    Dim DB As New moduloBase

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnRegistrar_Click(sender As Object, e As EventArgs) Handles BtnRegistrar.Click
        If DB.DatoRepetidoDB("", "", TxtEmail.Text) Then

        End If

    End Sub
End Class