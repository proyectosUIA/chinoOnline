
Public Class moduloBase
    Dim DB As New Data.OleDb.OleDbConnection

    Public Sub ConectarDB()
        DB.ConnectionString = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=ElchinoOnline;Data Source=GBARQUERO-T420\SQLEXPRESS"
        DB.Open()
    End Sub

    Public Sub DesconectarDB()
        DB.Close()
    End Sub

    Public Sub LlenarDS(ByRef DS As Data.DataSet, ByVal SQL As String)
        ConectarDB()
        Dim Adaptador As New Data.OleDb.OleDbDataAdapter(SQL, DB)
        Adaptador.Fill(DS)
        DesconectarDB()
    End Sub

    Public Sub EjecutarSQL(ByVal SQL As String)
        ConectarDB()
        Dim Comando As New Data.OleDb.OleDbCommand(SQL, DB)
        Comando.ExecuteNonQuery()
        DesconectarDB()
    End Sub

    Public Function DatoRepetidoDB(ByVal Tabla As String, ByVal CampoLlave As String, ByVal Valor As String) As Boolean
        Dim SQL As String
        Dim DS As New Data.DataSet

        SQL = "Select * from " & Tabla & " where " & CampoLlave & " = '" & Valor & "'"
        LlenarDS(DS, SQL)
        If DS.Tables(0).Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If
    End Function

    Public Function consultartDB(ByVal Tabla As String, ByVal CampoLlave As String, ByVal Valor As Integer) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet
        SQL = "Select * from " & Tabla & " where " & CampoLlave & " = '" & Valor & "'"
        LlenarDS(DS, SQL)
        Return DS
    End Function
    Public Function listarProductos(ByVal Valor As Integer) As Data.DataSet
        Dim SQL As String
        Dim DS As New Data.DataSet
        SQL = "Select nomb_producto as nombre, descripcion, cantidad, URLimagenproducto as imagen, Precio_producto.valor as valor from productos INNER JOIN Precio_producto ON Productos.Id_producto = Precio_producto.id_producto where Productos.id_categoria = '" & Valor & "'"

        LlenarDS(DS, SQL)
        Return DS
    End Function


End Class
