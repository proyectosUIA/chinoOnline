Public Class Admin
    Inherits System.Web.UI.Page

    Private Sub Admin_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        'If Session("nombre") <> "" Then
        '    If Session("tipousuario") = "1" Then
        '        Session("pagina") = "Productos"

        '    Else
        '        Response.Redirect("Default.aspx")
        '    End If
        'Else
        '    Response.Redirect("Default.aspx")

        'End If
        
    End Sub

    Protected Overrides Sub CreateChildControls()

        Dim divcontainer As New HtmlGenericControl("div")

        divcontainer.ID = "Contenido"
        Me.Page.Form.Controls.Item(1).Controls.Item(1).Controls.Item(1).Controls.Add(divcontainer)


    End Sub

End Class