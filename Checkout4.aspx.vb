Imports System.Net.Mail

Partial Class Checkout4
    Inherits System.Web.UI.Page

    Dim iv As Double
    Dim total As Double
    Dim MontoT As New Data.DataSet

    Private Sub btnOrden_Click(sender As Object, e As EventArgs) Handles btnOrden.Click
        Try

            MontoT = TotalCarrito(Session("IDPERSONA"))
            montototal.Text = MontoT.Tables(0).Rows(0).Item(0).ToString()
            If montototal.Text = "" Then
                Response.Write("<script>alert('No hay productos en el carrito')</script>")
            Else
                ProcesarOrden(Session("IDPERSONA"))
                Response.Write("<script>alert('Orden Procesada con éxito.')</script>")
                Response.Write("<script>window.location.href='Checkout4.aspx';</script>")
                Envia_Email() ' envia correo
            End If
        Catch ex As Exception
            Response.Write("<script>alert('Existen problemas para procesar la orden.')</script>")
        End Try
    End Sub

    Private Sub Checkout4_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Session("IDPERSONA") = "" Then
            Response.Write("<script>alert('Necesita estar logeado para ver esta pagina.')</script>")
            Response.Write("<script>window.location.href='Login.aspx';</script>")
            Exit Sub

        Else
            SqlDataSource1.SelectCommand = "EXEC ProductosCarrito '" & Session("IDPERSONA") & "'"


            MontoT = TotalCarrito(Session("IDPERSONA"))
            montototal.Text = MontoT.Tables(0).Rows(0).Item(0).ToString()
            montototal2.Text = MontoT.Tables(0).Rows(0).Item(0).ToString()

            
            iv = Val(montototal.Text) * 0.13
            total = Val(montototal.Text) + iv
            etiquetaiv.Text = iv.ToString
            etiquetatotal.Text = total.ToString
        End If
    End Sub


    Sub Envia_Email()
        Dim _Message As New System.Net.Mail.MailMessage()
        Dim _SMTP As New System.Net.Mail.SmtpClient
        _SMTP.Credentials = New System.Net.NetworkCredential("arojas4580@gmail.com", "UIA12345!")
        _SMTP.Host = "smtp.gmail.com"
        _SMTP.Port = 587
        _SMTP.EnableSsl = True

        _Message.[To].Add(Session("EMAIL").ToString)
        _Message.From = New System.Net.Mail.MailAddress("arojas4580@gmail.com", "Proyecto Progra 4", System.Text.Encoding.UTF8)
        _Message.Subject = "Orden de Compra Proyecto Progra 4"
        _Message.SubjectEncoding = System.Text.Encoding.UTF8
        _Message.Body = "Su orden de compra fue Procesada Correctamente por un monto de " + total.ToString
        _Message.BodyEncoding = System.Text.Encoding.UTF8
        _Message.Priority = System.Net.Mail.MailPriority.Normal
        _Message.IsBodyHtml = False

        'ENVIO
        Try
            _SMTP.Send(_Message)
            Response.Write("<script>alert('Mensaje enviado correctamente')</script>")
        Catch ex As System.Net.Mail.SmtpException
            Response.Write("<script>alert('Error!!!')</script>")
        End Try
    End Sub


End Class
