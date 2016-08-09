Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Data.OleDb

Partial Class InsertaProducto
    Inherits System.Web.UI.Page

    Protected Sub btn_Crear_Click(sender As Object, e As EventArgs) Handles btn_Crear.Click
        Dim fileName As String = Path.GetFileName(FileUpload1.PostedFile.FileName)
        FileUpload1.PostedFile.SaveAs((Server.MapPath("~/img/") + fileName))

        Insertar_Producto(txt_codigo.Text, txt_descripcion.Text, txt_precio.Text, cb_tipo.SelectedItem.Text, FileUpload1.FileName)
        Response.Write("<script>alert('Registro Exitoso!!')</script>")
    End Sub


End Class
