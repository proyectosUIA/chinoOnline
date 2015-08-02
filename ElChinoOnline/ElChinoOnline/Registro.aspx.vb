Public Class Registro
    Inherits System.Web.UI.Page
    Dim DB As New moduloBase

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnRegistrar_Click(sender As Object, e As EventArgs) Handles BtnRegistrar.Click
        If validarCampos() Then
            If DB.DatoRepetidoDB("Personas", "email", TxtEmail.Text) Then
                Response.Write("<script>alert('Todos los campos son requeridos.')</script>")
                Exit Sub
            Else
                Dim estado As String = "activo"
                Dim tipoUsuario As Integer = 3
                Dim SQL As String
                SQL = String.Format("INSERT INTO Personas(nombre,apellidos,telefono,direccion,estado,email,contrasena,id_tipousuario) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", TxtNombre.Text, TxtApellidos.Text, TxtTelefono.Text, TxtDireccion.Text, estado, TxtEmail.Text, TxtPassword1.Text, tipoUsuario)
                DB.EjecutarSQL(SQL)
            End If
        End If
    End Sub

    Function validarCampos() As Boolean
        If (TxtNombre.Text = "") Or (TxtApellidos.Text = "") Or (TxtEmail.Text = "") Or (TxtPassword1.Text = "") Or (TxtPassword2.Text = "") Or (TxtDireccion.Text = "") Or (TxtTelefono.Text = "") Then
            Response.Write("<script>alert('Todos los campos son requeridos.')</script>")
            Return False
            Exit Function
        End If
        If Val(TxtTelefono.Text) = 0 Then
            Response.Write("<script>alert('Debe Ingresar un numero en el campo Telefono')</script>")
            Return False
            Exit Function
        End If
        If TxtPassword1.Text <> TxtPassword2.Text Then
            Response.Write("<script>alert('Los campos de contraseña deben ser identicos, por favor revisar')</script>")
            Return False
            Exit Function
        End If
        Return True
    End Function
End Class