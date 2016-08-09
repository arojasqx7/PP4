
Partial Class Inicio
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("usuarios") <> "admin" Then
            If Session("usuarios") <> "empleado" Then

                If Session("usuarios") <> "cliente" Then
                    Session.Add("usuarios", " ")
                Else
                    Exit Sub
                End If
            End If
        End If

    End Sub
End Class
