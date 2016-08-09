Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Data.DataSet


Partial Class ActualizarEmpleado
    Inherits System.Web.UI.Page
    Dim hideTxt As String = "0"

    Protected Sub btn_buscar_emp_Click(sender As Object, e As EventArgs) Handles btn_buscar_emp.Click
        Busca_Personas()
        If hideTxt = "1" Then
            txt_nombre.ReadOnly = False
            txt_primer_apell.ReadOnly = False
            txt_seg_apell.ReadOnly = False
            txt_email.ReadOnly = False
        Else
            Response.Write("<script>alert('Empleado no encontrado.')</script>")
            txt_nombre.Text = ""
            txt_primer_apell.Text = ""
            txt_seg_apell.Text = ""
            txt_email.Text = ""
        End If

    End Sub



    Protected Sub btn_actualizar_emp_Click(sender As Object, e As EventArgs) Handles btn_actualizar_emp.Click
        If DatoRepetidoDB("Personas", "email", txt_email.Text) = True Then
            Response.Write("<script>alert('El correo electronico ya esta registrado en la bd')</script>")

        Else
            Actualizar_Empleado(txt_nombre.Text, txt_primer_apell.Text, txt_seg_apell.Text, txt_email.Text, txt_busca_emp.Text)
            Response.Write("<script>alert('Empleado Actualizado correctamente.')</script>")
        End If
    End Sub


    Sub Busca_Personas()
        Dim Conexion As New OleDbConnection
        Dim AdPersonas As OleDbDataAdapter
        Dim DsPersonas As New DataSet


        Conexion = New OleDbConnection("Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=PROGRA4;Data Source=LT-GMONGE")
        Conexion.Open()

        If txt_busca_emp.Text() = "" Then
            Response.Write("<script>alert('Ingrese un dato a consultar.')</script>")

        Else
            AdPersonas = New OleDbDataAdapter("select * from PERSONAS where CEDULA = '" & txt_busca_emp.Text & "' and ISDELETED= 'N'", Conexion)


            AdPersonas.Fill(DsPersonas, "PERSONAS")

            If DsPersonas.Tables(0).Rows.Count > 0 Then

                txt_nombre.Text = DsPersonas.Tables(0).Rows(0)("NOMBRE")
                txt_primer_apell.Text = DsPersonas.Tables(0).Rows(0)("APELLIDO1")
                txt_seg_apell.Text = DsPersonas.Tables(0).Rows(0)("APELLIDO2")
                txt_email.Text = DsPersonas.Tables(0).Rows(0)("EMAIL")
                hideTxt = "1"
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
