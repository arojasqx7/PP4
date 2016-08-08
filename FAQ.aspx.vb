
Partial Class FAQ
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "Bienvenido (a): " + Session("EMAIL")
    End Sub
End Class
