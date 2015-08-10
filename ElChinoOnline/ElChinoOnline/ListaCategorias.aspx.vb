﻿Public Class ListaCategorias
    Inherits System.Web.UI.Page
    Dim DB As New moduloBase
    Dim TXTnuevoNombre As Object
    Dim DropDownList1 As Object
    Dim TXTDescripcion As Object
    Dim TXTDescripcion0 As Object
    Dim TXTNomCategoria As Object
    Dim TXTNomCategoria0 As Object
    Dim TXTnuevadescripcion As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BTNConsultar_Click(sender As Object, e As EventArgs) Handles BTNConsultar.Click
        Dim DScategoriaconsultada As New Data.DataSet
        DScategoriaconsultada = DB.consultartDB("Categoria_producto", "id_categoria", DropDownList2.SelectedItem.Value)
        TextBox1.Text = DScategoriaconsultada.Tables(0).Rows.Item(0).Item(1).ToString
        TextBox2.Text = DScategoriaconsultada.Tables(0).Rows.Item(0).Item(2).ToString
    End Sub

    Protected Sub BTNCancelar_Click(sender As Object, e As EventArgs) Handles BTNCancelar.Click
        TXTnuevoNombre.Text = ""
        TXTnuevadescripcion.Text = ""
        TXTnuevoNombre.Focus()

    End Sub

    Protected Sub BTNactualizar_Click(sender As Object, e As EventArgs) Handles BTNactualizar.Click
        If TXTnuevoNombre.Text = "" Or TXTnuevadescripcion.Text = "" Then
            Response.Write("<script>alert('Debe Ingresar los nuevos para categoria') </script>")
            TXTnuevoNombre.Focus()
        Else
            Dim SQL As String
            SQL = "update Categoria_producto set nombre_categoria = '" & TXTnuevoNombre.Text & "', '" & TXTnuevadescripcion.Text & "' where id_categoria = '" & DropDownList2.SelectedItem.Value & "'"
            DB.EjecutarSQL(SQL)
            Response.Write("<script>alert('La categoria fue actualizada exitosamente') </script>")
            TXTnuevoNombre.Text = ""
            TXTnuevadescripcion.Text = ""

        End If

    End Sub

    Protected Sub BTNagregar_Click(sender As Object, e As EventArgs) Handles BTNagregar.Click
        If TXTNomCategoria0.Text = "" Or TXTDescripcion0.Text = "" Then
            Response.Write("<script>alert('Debe Ingresar los Datos de la nueva categoria') </script>")
            TXTNomCategoria0.Focus()
        Else
            Dim SQL
            SQL = "INSERT INTO  Categoria_producto (nombre_categoria,descripcion_categoria) values ('" & TXTNomCategoria0.Text & "', '" & TXTDescripcion0.Text & "')"
            DB.EjecutarSQL(SQL)
            Response.Write("<script>alert('La nueva categoria fue agregada exitosamente') </script>")
            'TXTNomCategoria0.Text = ""
            'TXTDescripcion0.Text = ""
        End If


    End Sub
End Class