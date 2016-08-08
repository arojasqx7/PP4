Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Data.DataSet


Partial Class ConsultarUsuario
    Inherits System.Web.UI.Page


    Protected Sub btn_buscar_emp_Click(sender As Object, e As EventArgs) Handles btn_buscar_emp.Click
        Busca_Personas()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "Bienvenido (a): " + Session("EMAIL")
        GridView1.Visible = False
        If Session("usuarios") <> "admin" Then
            Response.Write("<script>alert('Accesso denegado.')</script>")
            Response.Redirect("Inicio.aspx")
            Exit Sub

        End If

    End Sub


    Sub Busca_Personas()
        If txt_busca_emp.Text() = "" Then
            Response.Write("<script>alert('Ingrese un dato a consultar.')</script>")

        Else
            GridView1.Visible = True
            GridView1.DataBind()
        End If
    End Sub


End Class