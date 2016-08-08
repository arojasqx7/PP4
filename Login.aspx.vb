
Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub btn_login_Click(sender As Object, e As EventArgs) Handles btn_login.Click
        Dim rol As String
        If DatoRepetidoDB("PERSONAS", "EMAIL", txt_user.Text) Then
            If DatoRepetidoDB("PERSONAS", "PASSWORD", txt_pass.Text) Then

                Dim DS As New Data.DataSet
                DS = CargarUserDB(txt_user.Text, txt_pass.Text)
                Session("IDPERSONA") = DS.Tables(0).Rows.Item(0).Item(0).ToString
                Session("CEDULA") = DS.Tables(0).Rows.Item(0).Item(1).ToString
                Session("NOMBRE") = DS.Tables(0).Rows.Item(0).Item(2).ToString
                Session("APELLIDO1") = DS.Tables(0).Rows.Item(0).Item(3).ToString
                Session("APELLIDO2") = DS.Tables(0).Rows.Item(0).Item(4).ToString
                Session("FNACIMIENTO") = DS.Tables(0).Rows.Item(0).Item(5).ToString
                Session("EMAIL") = DS.Tables(0).Rows.Item(0).Item(6).ToString
                Session("PASSWORD") = DS.Tables(0).Rows.Item(0).Item(7).ToString
                Session("ISDELETED") = DS.Tables(0).Rows.Item(0).Item(8).ToString

                Dim id As String = Session("IDPERSONA")
                'se valida que la persona tenga un rol y que este activo. En caso de no tener un rol o estar inactivo no podra ingresar'
                If DatoRepetidoDB("DETALLE_ROL", "IDPERSONA", id) = True Then
                    If Session("ISDELETED") = "N" Then
                        Dim DS_Rol As New Data.DataSet
                        DS_Rol = CargarRolDB(id)
                        Session("IDPERSONA_ROL") = DS_Rol.Tables(0).Rows.Item(0).Item(0).ToString
                        Session("IDROL") = DS_Rol.Tables(0).Rows.Item(0).Item(1).ToString

                    Else
                        Session.Clear()
                        Response.Redirect("Contacto.aspx")
                    End If
                End If
                'se valida el rol de la persona. Dependiendo de esto tendra accesso a ciertas paginas.'
                rol = Session("IDROL")
                If rol = "1" Then
                    Session.Add("usuarios", "admin")
                    Response.Redirect("Admin.aspx")

                Else
                    If rol = "2" Then
                        Session.Add("usuarios", "empleado")
                        Response.Redirect("admin.aspx")
                    Else
                        If rol = "3" Then

                            Session.Add("usuarios", "cliente")
                            Response.Redirect("Inicio.aspx")
                        End If

                    End If
                End If

            Else
                Response.Write("<script>alert('Credenciales incorrectas, porfavor intentelo de nuevo.')</script>")
            End If
        Else
            Response.Write("<script>alert('Credenciales incorrectas, porfavor intentelo de nuevo.')</script>")
        End If
    End Sub

End Class
