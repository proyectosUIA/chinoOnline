Public Class HomeAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnCategorias_Click(sender As Object, e As EventArgs) Handles BtnCategorias.Click
        Response.Redirect("ListaCategorias.aspx")
    End Sub
End Class