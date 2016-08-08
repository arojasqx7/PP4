Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Data.DataSet

Partial Class ConsultarProducto
    Inherits System.Web.UI.Page

    Protected Sub btn_buscar_emp_Click(sender As Object, e As EventArgs) Handles btn_buscar_prod.Click
        Busca_Productos()
    End Sub


    'Sub Busca_Producto()
    '    Dim Conexion As New OleDbConnection
    '    Dim AdProds As OleDbDataAdapter
    '    Dim DsProds As New DataSet

    '    Conexion = New OleDbConnection("Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=PROGRA4;Data Source=FOFO\FOFO")
    '    Conexion.Open()

    '    If txt_busca_prod.Text() = "" Then
    '        Response.Write("<script>alert('Ingrese un dato a consultar.')</script>")

    '    Else
    '        AdProds = New OleDbDataAdapter("select * from PRODUCTOS where NOMBRE LIKE '%" & txt_busca_prod.Text & "%' or CODIGO LIKE '%" & txt_busca_prod.Text & "%'", Conexion)


    '        AdProds.Fill(DsProds, "PRODUCTOS")

    '        If DsProds.Tables(0).Rows.Count > 0 Then

    '            txt_id_prod.Text = DsProds.Tables(0).Rows(0)("IDPRODUCTO")
    '            txt_nombre_prod.Text = DsProds.Tables(0).Rows(0)("NOMBRE")
    '            txt_codigo_prod.Text = DsProds.Tables(0).Rows(0)("CODIGO")
    '            txt_tipo.Text = DsProds.Tables(0).Rows(0)("TIPO")
    '            txt_subtipo.Text = DsProds.Tables(0).Rows(0)("SUBTIPO")
    '            txt_precio.Text = DsProds.Tables(0).Rows(0)("PRECIO")
    '            txt_unidad.Text = DsProds.Tables(0).Rows(0)("UNIDAD")
    '            ImageProd.ImageUrl = "~/img/" + DsProds.Tables(0).Rows(0)("FOTO")
    '        End If
    '    End If
    'End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "Bienvenido (a): " + Session("EMAIL")
        GridView1.Visible = False
        If Session("usuarios") <> "admin" Then
            If Session("usuarios") <> "empleado" Then
                Response.Write("<script>alert('Accesso denegado.')</script>")

                Response.Redirect("Inicio.aspx")
            End If
        End If
    End Sub

    Sub Busca_Productos()
        If txt_busca_prod.Text() = "" Then
            Response.Write("<script>alert('Ingrese un dato a consultar.')</script>")

        Else
            GridView1.Visible = True
            GridView1.DataBind()
        End If
    End Sub

End Class
