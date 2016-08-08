
Partial Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "Bienvenido (a): " + Session("EMAIL")
        If Session("usuarios") <> "admin" Then
            If Session("usuarios") <> "empleado" Then
                Response.Write("<script>alert('Accesso denegado.')</script>")

                Response.Redirect("Inicio.aspx")
                Exit Sub
            End If
        End If
    End Sub
End Class
