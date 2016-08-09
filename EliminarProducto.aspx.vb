Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Data.DataSet

Partial Class EliminarProducto
    Inherits System.Web.UI.Page

    Protected Sub btn_buscar_emp_Click(sender As Object, e As EventArgs) Handles btn_buscar_emp.Click
        Busca_Producto()
    End Sub



    Sub Busca_Producto()
        Dim Conexion As New OleDbConnection
        Dim AdProds As OleDbDataAdapter
        Dim DsProds As New DataSet

        Conexion = New OleDbConnection("Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=PROGRA4_V2;Data Source=FOFO\FOFO")
        Conexion.Open()

        If txt_busca_prod.Text() = "" Then
            Response.Write("<script>alert('Ingrese un dato a consultar.')</script>")

        Else
            AdProds = New OleDbDataAdapter("SELECT * from PRODUCTOS where CODIGO = '" & txt_busca_prod.Text & "' AND ISDELETED= 'N'", Conexion)


            AdProds.Fill(DsProds, "PRODUCTOS")

            If DsProds.Tables(0).Rows.Count > 0 Then

                txt_id.Text = DsProds.Tables(0).Rows(0)("IDPRODUCTO")
                txt_nombre.Text = DsProds.Tables(0).Rows(0)("DESCRIPCION")
                txt_codigo.Text = DsProds.Tables(0).Rows(0)("CODIGO")
                txt_tipo.Text = DsProds.Tables(0).Rows(0)("TIPO")
                txt_precio.Text = DsProds.Tables(0).Rows(0)("PRECIO")
                'Image1.ImageUrl = "~/img/" + DsProds.Tables(0).Rows(0)("FOTO")
            Else
                Response.Write("<script>alert('Producto no encontrado.')</script>")
                txt_id.Text = ""
                txt_nombre.Text = ""
                txt_codigo.Text = ""
                txt_tipo.Text = ""
                txt_precio.Text = ""

            End If
        End If
    End Sub

    Protected Sub btn_eliminar_prod_Click(sender As Object, e As EventArgs) Handles btn_eliminar_prod.Click
        Borrar_Producto(txt_busca_prod.Text)
        Response.Write("<script>alert('Producto Eliminado correctamente.')</script>")
        txt_busca_prod.Text = ""
        txt_codigo.Text = ""
        txt_id.Text = ""
        txt_nombre.Text = ""
        txt_precio.Text = ""
        txt_tipo.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("usuarios") <> "admin" Then
            If Session("usuarios") <> "empleado" Then
                Response.Write("<script>alert('Accesso denegado.')</script>")

                Response.Redirect("Inicio.aspx")
                Exit Sub
            End If
        End If
    End Sub
End Class
