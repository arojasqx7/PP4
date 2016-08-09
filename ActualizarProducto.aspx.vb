Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Data.DataSet


Partial Class ActualizarProducto
    Inherits System.Web.UI.Page
    Dim hideTxt As String = "0"

    Protected Sub btn_actualizar_emp_Click(sender As Object, e As EventArgs) Handles btn_actualizar_emp.Click
        Actualizar_Producto(txt_codigo.Text, txt_descripcion.Text, txt_precio.Text, txt_busca_producto.Text)
        Response.Write("<script>alert('Producto actualizado correctamente.')</script>")
    End Sub

    Protected Sub btn_buscar_prod_Click(sender As Object, e As EventArgs) Handles btn_buscar_prod.Click
        Busca_Producto()
        If hideTxt = "1" Then
            txt_codigo.ReadOnly = False
            txt_precio.ReadOnly = False
            txt_descripcion.ReadOnly = False
        Else
            Response.Write("<script>alert('Producto no encontrado.')</script>")
            txt_codigo.Text = ""
            txt_precio.Text = ""
            txt_descripcion.Text = ""
        End If

    End Sub

    Sub Busca_Producto()
        Dim Conexion As New OleDbConnection
        Dim AdProds As OleDbDataAdapter
        Dim DsProds As New DataSet

        Conexion = New OleDbConnection("Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=PROGRA4_V2;Data Source=FOFO\FOFO")
        Conexion.Open()

        If txt_busca_producto.Text() = "" Then
            Response.Write("<script>alert('Ingrese un dato a consultar.')</script>")

        Else
            AdProds = New OleDbDataAdapter("select * from PRODUCTOS where CODIGO = '" & txt_busca_producto.Text & "' and ISDELETED= 'N'", Conexion)


            AdProds.Fill(DsProds, "PRODUCTOS")

            If DsProds.Tables(0).Rows.Count > 0 Then
                txt_codigo.Text = DsProds.Tables(0).Rows(0)("CODIGO")
                txt_precio.Text = DsProds.Tables(0).Rows(0)("PRECIO")
                txt_descripcion.Text = DsProds.Tables(0).Rows(0)("DESCRIPCION")
                'ImageProd.ImageUrl = "~/img/" + DsProds.Tables(0).Rows(0)("FOTO")
                hideTxt = "1"
            End If
        End If
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("usuarios") <> "admin" Then
            If Session("usuarios") <> "empleado" Then
                Response.Write("<script>alert('Accesso denegado.')</script>")

                Response.Redirect("Inicio.aspx")
            End If
        End If
    End Sub
End Class
