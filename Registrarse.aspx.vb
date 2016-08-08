

Partial Class Registrarse
    Inherits System.Web.UI.Page

    Protected Sub btn_registrarse_Click(sender As Object, e As EventArgs) Handles btn_registrarse.Click

        Dim SQL As String
        Dim DS As New Data.DataSet




        If txt_pass_nuevo.Text = txt_conf_pass_nuevo.Text Then  'valida que le password este igual'
                If txt_tel.Text.Length <> 8 Then 'valida que el telefono sea de 8 digitos'
                    Response.Write("<script>alert('El numero de telefono debe tener 8 numeros')</script>")
                    Exit Sub
                End If

                If txt_cedula.Text.Length <> 9 Then   'valida que la cedula sea de 9 digitos'
                    Response.Write("<script>alert('El numero de cedula debe tener 9 numeros')</script>")
                    Exit Sub
                End If

            If DatoRepetidoDB("PERSONAS", "EMAIL", txt_email.Text) Then 'valida que el correo no exista en la db'
                Response.Write("<script>alert('Este email ya esta registrado, por favor use otro email')</script>")
                Exit Sub
            Else
                If DatoRepetidoDB("PERSONAS", "CEDULA", txt_cedula.Text) Then 'valida que la cedula no exista en la db'
                    Response.Write("<script>alert('Este cedula ya se encuentra registrada')</script>")
                    Exit Sub
                Else
                    'inserta los datos a la tabla persona'
                    SQL = "insert into PERSONAS (CEDULA,NOMBRE,APELLIDO1,APELLIDO2,FNACIMIENTO,EMAIL,PASSWORD) values (" & txt_cedula.Text & ",'" & txt_nombre.Text & "','" & txt_primer_apell.Text & "','" & txt_seg_apell.Text & "','" & txt_calendar.Text & "','" & txt_email.Text & "','" & txt_pass_nuevo.Text & "')"
                    EjecutaSQL(SQL)
                        DS = CargarUserDB(txt_email.Text, txt_pass_nuevo.Text) 'carga los datos y los asigna a variables de sesion para utilizar despues
                        Session("IDPERSONA") = DS.Tables(0).Rows.Item(0).Item(0).ToString
                        Session("CEDULA") = DS.Tables(0).Rows.Item(0).Item(1).ToString
                        Session("NOMBRE") = DS.Tables(0).Rows.Item(0).Item(2).ToString
                        Session("APELLIDO1") = DS.Tables(0).Rows.Item(0).Item(3).ToString
                        Session("APELLIDO2") = DS.Tables(0).Rows.Item(0).Item(4).ToString
                        Session("FNACIMIENTO") = DS.Tables(0).Rows.Item(0).Item(5).ToString
                        Session("EMAIL") = DS.Tables(0).Rows.Item(0).Item(6).ToString
                        Session("PASSWORD") = DS.Tables(0).Rows.Item(0).Item(7).ToString

                        Dim id As String = Session("IDPERSONA")

                        SQL = "insert into TELEFONOS (DETALLE,IDPERSONA) values (" & txt_tel.Text & ",'" & id & "')"
                        EjecutaSQL(SQL) 'inserta el telefono en la tabla telefono con el id de persona'

                        SQL = "insert into DIRECCIONES (DETALLE,IDPERSONA) values ('" & txt_direccion.Text & "','" & id & "')"
                        EjecutaSQL(SQL) 'inserta direccion en la tabla direccion'

                        SQL = "insert into DETALLE_ROL (IDROL,IDPERSONA) values (3,'" & id & "')"
                        EjecutaSQL(SQL) 'asigna el rol 3 que es rol de cliente y lo inserta a detalle_rol con el id de persona'


                        ''Manda un correo de confirmacion
                        'Try
                        '    miMensaje.From = New MailAddress("rodmedrano2383@gmail.com")
                        '    miMensaje.To.Add(txt_email.Text)
                        '    miMensaje.Subject = "Confirmacion de Registro"
                        '    miMensaje.Body = " Bienvenido '" & txt_nombre.Text & "'.Tu usuario es '" & txt_email.Text & "' y tu password es '" & txt_pass_nuevo.Text & "' "
                        '    Dim smtp As New SmtpClient("smtp.gmail.com")
                        '    smtp.Port = 587
                        '    smtp.EnableSsl = True
                        '    smtp.Credentials = New System.Net.NetworkCredential("rodmedrano2383@gmail.com", "fofo123456")
                        '    smtp.Send(miMensaje)
                        '    MsgBox("correo enviado")
                        'Catch ex As Exception
                        '    MsgBox("hubo un error " + ex.Message)
                        'End Try


                        MsgBox("Registro Exitoso,ya puede ingresar.")
                        Response.Redirect("Inicio.aspx")
                    End If
                End If
            Else
                txt_pass_nuevo.Text = ""
                txt_conf_pass_nuevo.Text = ""
                Response.Write("<script>alert('Password diferente')</script>")
            End If


    End Sub



End Class
