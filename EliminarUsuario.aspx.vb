
Partial Class EliminarUsuario
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("usuarios") <> "admin" Then
            Response.Write("<script>alert('Accesso denegado.')</script>")

            Response.Redirect("Inicio.aspx")
            Exit Sub

        End If
    End Sub
End Class
