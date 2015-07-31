Public Class _Default
    Inherits System.Web.UI.Page
    Dim DB As New moduloBase


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click
        If (TxtEmail.Text = "") Or (TxtPassword.Text = "") Then
            Response.Write("<script>alert('Todos los datos son requeridos para el Login')</script>")
            Exit Sub

        End If
        If LoguearUsuario(TxtEmail.Text, TxtPassword.Text) Then
            Response.Write("<script>alert('Datos Correctos')</script>")
            'Response.Redirect("Principal.aspx")
        Else
            Response.Write("<script>alert('Datos incorrectos')</script>")
        End If
    End Sub

    Friend Function LoguearUsuario(ByVal email As String, ByVal contrasena As String) As Boolean
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = String.Format("Select * from Personas where email ='{0}' and contrasena = '{1}",email,contrasena)
        DB.LlenarDS(DS, SQL)
        If DS.Tables(0).Rows.Count > 0 Then
            Session("id") = DS.Tables(0).Rows.Item(0).Item(0).ToString
            Session("nombre") = DS.Tables(0).Rows.Item(0).Item(1).ToString
            Session("apellidos") = DS.Tables(0).Rows.Item(0).Item(2).ToString
            Session("telefono") = DS.Tables(0).Rows.Item(0).Item(3).ToString
            Session("direccion") = DS.Tables(0).Rows.Item(0).Item(4).ToString
            Session("estado") = DS.Tables(0).Rows.Item(0).Item(5).ToString
            Session("email") = DS.Tables(0).Rows.Item(0).Item(6).ToString
            Session("contrasena") = DS.Tables(0).Rows.Item(0).Item(7).ToString
            Session("tipousuario") = DS.Tables(0).Rows.Item(0).Item(8).ToString
            Return True
        Else
            Return False
        End If
    End Function
End Class