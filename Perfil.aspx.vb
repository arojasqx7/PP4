
Partial Class Perfil
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("EMAIL") = "" Then

            Response.Write("<script>alert('Tiene que estar Logueado para ver esta pagina.')</script>")
            Response.Write("<script>window.location.href='Login.aspx';</script>")
        End If
    End Sub
    Protected Sub btn_actualizar_emp_Click(sender As Object, e As EventArgs) Handles btn_actualizar_emp.Click
        Dim txt_ced As String
        txt_ced = Session("CEDULA")
        If txt_nombre.Text = "" Or txt_email.Text = "" Or txt_nombre.Text = "" Or txt_primer_apell.Text = "" Or txt_seg_apell.Text = "" Then
            Response.Write("<script>alert('Hay campos en blanco')</script>")
        Else
            If txt_email.Text = Session("EMAIL") Then
                If txt_pass_nuevo.Text = txt_conf_pass_nuevo.Text Then
                    Actualizar_Empleado(txt_nombre.Text, txt_primer_apell.Text, txt_seg_apell.Text, txt_email.Text, txt_ced)
                    If txt_tel.Text.Length <> 8 Then 'valida que el telefono sea de 8 digitos'
                        Response.Write("<script>alert('El numero de telefono debe tener 8 numeros')</script>")
                        txt_tel.Text = Session("TELEFONO")
                    Else
                        Actualizar_Telefono(txt_tel.Text, Session("IDPERSONA").ToString)
                        Session("NOMBRE") = txt_nombre.Text
                        Session("APELLIDO1") = txt_primer_apell.Text
                        Session("APELLIDO2") = txt_seg_apell.Text
                        Session("TELEFONO") = txt_tel.Text
                        Response.Write("<script>alert('Usuario Actualizado correctamente.')</script>")
                        Response.Write("<script>window.location.href='Perfil.aspx';</script>")
                    End If
                Else
                    txt_conf_pass_nuevo.Text = ""
                    txt_pass_nuevo.Text = ""
                    Response.Write("<script>alert('Password diferente, intente de nuevo')</script>")
                End If
            Else
                If DatoRepetidoDB("Personas", "email", txt_email.Text) = True Then
                    Response.Write("<script>alert('El correo electronico ya esta registrado en la bd')</script>")
                Else
                    If txt_pass_nuevo.Text = txt_conf_pass_nuevo.Text Then
                        Actualizar_Empleado(txt_nombre.Text, txt_primer_apell.Text, txt_seg_apell.Text, txt_email.Text, txt_ced)
                        If txt_tel.Text.Length <> 8 Then 'valida que el telefono sea de 8 digitos'
                            Response.Write("<script>alert('El numero de telefono debe tener 8 numeros')</script>")
                            txt_tel.Text = Session("TELEFONO")

                        Else
                            Response.Write("<script>alert('Usuario Actualizado correctamente.')</script>")
                            Response.Write("<script>window.location.href='Perfil.aspx';</script>")
                            Session("EMAIL") = txt_email.Text
                            Session("NOMBRE") = txt_nombre.Text
                            Session("APELLIDO1") = txt_primer_apell.Text
                            Session("APELLIDO2") = txt_seg_apell.Text
                            Session("TELEFONO") = txt_tel.Text
                        End If
                    Else
                        txt_conf_pass_nuevo.Text = ""
                        txt_pass_nuevo.Text = ""
                        Response.Write("<script>alert('Password diferente, intente de nuevo')</script>")
                    End If
                End If
            End If
        End If

    End Sub

    Protected Sub btn_actualizar_pass_Click(sender As Object, e As EventArgs) Handles btn_actualizar_pass.Click
        If txt_conf_pass_nuevo.Text = "" Or txt_pass_nuevo.Text = "" Then
            Response.Write("<script>alert('Password en blanco')</script>")
        Else
            If txt_pass_nuevo.Text = txt_conf_pass_nuevo.Text Then
                Dim txt_ced As String
                txt_ced = Session("CEDULA")
                Actualizar_Usuario(txt_conf_pass_nuevo.Text, txt_ced)
                Response.Write("<script>alert('Password actualizada correctamente.')</script>")

            Else
                txt_conf_pass_nuevo.Text = ""
                txt_pass_nuevo.Text = ""
                Response.Write("<script>alert('Password diferente, intente de nuevo')</script>")
            End If
        End If

    End Sub
    Private Sub Perfil_Init(sender As Object, e As EventArgs) Handles Me.Init



        txt_nombre.Text = Session("NOMBRE")
        txt_email.Text = Session("EMAIL")
        txt_primer_apell.Text = Session("APELLIDO1")
        txt_seg_apell.Text = Session("APELLIDO2")
        txt_tel.Text = Session("TELEFONO")

    End Sub
End Class
