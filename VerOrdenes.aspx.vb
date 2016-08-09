
Partial Class VerOrdenes
    Inherits System.Web.UI.Page


    Protected Sub btn_buscar_orden_Click(sender As Object, e As EventArgs) Handles btn_buscar_orden.Click
        Busca_Ordenes()
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        GridView1.Visible = False
        If Session("usuarios") <> "admin" Then
            Response.Write("<script>alert('Accesso denegado.')</script>")
            Response.Redirect("Inicio.aspx")
            Exit Sub

        End If
    End Sub


    Sub Busca_Ordenes()
        If txt_busca_orden.Text() = "" Then
            Response.Write("<script>alert('Ingrese un dato a consultar.')</script>")

        Else
            GridView1.Visible = True
            GridView1.DataBind()
        End If
    End Sub



End Class
