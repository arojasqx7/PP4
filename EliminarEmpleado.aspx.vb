Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Data.DataSet

Partial Class EliminarEmpleado
    Inherits System.Web.UI.Page


    Protected Sub btn_buscar_emp_Click(sender As Object, e As EventArgs) Handles btn_buscar_emp.Click
        Busca_Persona()

    End Sub

    Protected Sub btn_eliminar_emp_Click(sender As Object, e As EventArgs) Handles btn_eliminar_emp.Click
        If txt_busca_emp.Text() = "" Then
            Response.Write("<script>alert('Ingrese un dato a eliminar.')</script>")
            Exit Sub
        Else
            Borrar_Empleado(txt_busca_emp.Text)
            Response.Write("<script>alert('Empleado Eliminado correctamente.')</script>")
            txt_busca_emp.Text = ""
            txt_id.Text = ""
            txt_nombre.Text = ""
            txt_primer_apell.Text = ""
            txt_seg_apell.Text = ""
            txt_cedula.Text = ""
            txt_tel.Text = ""
            txt_calendar.Text = ""
            txt_email.Text = ""
        End If
    End Sub


    Sub Busca_Persona()
        Dim Conexion As New OleDbConnection
        Dim AdPersonas As OleDbDataAdapter
        Dim DsPersonas As New DataSet

        Conexion = New OleDbConnection("Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=PROGRA4_V2;Data Source=FOFO\FOFO")
        Conexion.Open()

        If txt_busca_emp.Text() = "" Then
            Response.Write("<script>alert('Ingrese un dato a consultar.')</script>")

        Else
            AdPersonas = New OleDbDataAdapter("select * from PERSONAS where CEDULA = '" & txt_busca_emp.Text & "' AND ISDELETED= 'N'", Conexion)


            AdPersonas.Fill(DsPersonas, "PERSONAS")

            If DsPersonas.Tables(0).Rows.Count > 0 Then

                txt_id.Text = DsPersonas.Tables(0).Rows(0)("IDPERSONA")
                txt_nombre.Text = DsPersonas.Tables(0).Rows(0)("NOMBRE")
                txt_primer_apell.Text = DsPersonas.Tables(0).Rows(0)("APELLIDO1")
                txt_seg_apell.Text = DsPersonas.Tables(0).Rows(0)("APELLIDO2")
                txt_calendar.Text = DsPersonas.Tables(0).Rows(0)("FNACIMIENTO")
                txt_cedula.Text = DsPersonas.Tables(0).Rows(0)("CEDULA")
                txt_email.Text = DsPersonas.Tables(0).Rows(0)("EMAIL")

            Else
                Response.Write("<script>alert('Empleado no encontrado.')</script>")
                txt_busca_emp.Text = ""
                txt_id.Text = ""
                txt_nombre.Text = ""
                txt_primer_apell.Text = ""
                txt_seg_apell.Text = ""
                txt_cedula.Text = ""
                txt_tel.Text = ""
                txt_calendar.Text = ""
                txt_email.Text = ""
            End If
        End If
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "Bienvenido (a): " + Session("EMAIL")
        If Session("usuarios") <> "admin" Then
            Response.Write("<script>alert('Accesso denegado.')</script>")

            Response.Redirect("Inicio.aspx")
            Exit Sub

        End If
    End Sub
End Class
