Imports System.Data
Imports System.Data.SqlClient


Partial Class InsertaEmpleado
    Inherits System.Web.UI.Page

    Protected Sub btn_Crear_Click(sender As Object, e As EventArgs) Handles btn_Crear.Click
        Dim SQL As String
        Dim DS_insert As New Data.DataSet
        If txt_cedula.Text.Length <> 9 Then
            Response.Write("<script>alert('Cedula debe tener 9 digitos.')</script>")
            Exit Sub
        End If

        If txt_tel.Text.Length <> 8 Then
            Response.Write("<script>alert('Telefono debe tener 8 digitos.')</script>")
            Exit Sub
        End If

        If txt_nombre.Text() = "" Or txt_primer_apell.Text() = "" Or txt_seg_apell.Text = "" Or txt_cedula.Text = "" Or txt_calendar.Text = "" Or txt_email.Text = "" Or txt_pass_nuevo.Text = "" Or txt_conf_pass_nuevo.Text = "" Then
            Response.Write("<script>alert('Por favor rellene todos los campos.')</script>")

            Exit Sub

        Else

            If txt_pass_nuevo.Text = txt_conf_pass_nuevo.Text Then

                If DatoRepetidoDB("PERSONAS", "EMAIL", txt_email.Text) Then
                    Response.Write("<script>alert('Email ya esta registrado, por favor intente de nuevo')</script>")

                Else

                    Insertar_Empleado(txt_nombre.Text, txt_primer_apell.Text, txt_seg_apell.Text, txt_cedula.Text, txt_calendar.Text, txt_email.Text, txt_pass_nuevo.Text)
                    DS_Insert = CargarUserDB(txt_email.Text, txt_pass_nuevo.Text) 'carga los datos y los asigna a variables de sesion para utilizar despues
                    Session("IDPERSONA_INSERT") = DS_insert.Tables(0).Rows.Item(0).Item(0).ToString
                    Dim id As String = Session("IDPERSONA_INSERT")

                    SQL = "insert into TELEFONOS (DETALLE,IDPERSONA) values (" & txt_tel.Text & ",'" & id & "')"
                    EjecutaSQL(SQL)

                    SQL = "insert into DETALLE_ROL (IDROL,IDPERSONA) values (2,'" & id & "')"
                    EjecutaSQL(SQL)

                    Response.Write("<script>alert('Registro Exitoso, Muchas gracias.')</script>")
                    txt_nombre.Text = ""
                    txt_primer_apell.Text = ""
                    txt_seg_apell.Text = ""
                    txt_cedula.Text = ""
                    txt_tel.Text = ""
                    txt_calendar.Text = ""
                    txt_email.Text = ""
                End If

            Else
                txt_conf_pass_nuevo.Text = ""
                txt_pass_nuevo.Text = ""
                Response.Write("<script>alert('Password diferente, intente de nuevo')</script>")

            End If
        End If

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("usuarios") <> "admin" Then
            Response.Write("<script>alert('Accesso denegado.')</script>")
            Response.Redirect("Inicio.aspx")
            Exit Sub

        End If
    End Sub
End Class
