
Partial Class Checkout1
    Inherits System.Web.UI.Page

    Private Sub Checkout1_Init(sender As Object, e As EventArgs) Handles Me.Init
        Try
            Dim Contacto As New Data.DataSet
            Dim MontoT As New Data.DataSet
            Dim iv As Double
            Dim total As Double
            MontoT = TotalCarrito(Session("IDPERSONA"))
            montototal.Text = MontoT.Tables(0).Rows(0).Item(0).ToString()
            iv = Val(montototal.Text) * 0.13
            total = Val(montototal.Text) + iv
            etiquetaiv.Text = iv.ToString
            etiquetatotal.Text = total.ToString
            Contacto = DatosCliente(Session("IDPERSONA"))
            nombre.Text = Session("NOMBRE")
            apellidos.Text = Session("APELLIDO1") & " " & Session("APELLIDO2")
            domicilio.Text = Contacto.Tables(0).Rows.Item(0).Item(0).ToString
            telefono.Text = Contacto.Tables(0).Rows.Item(0).Item(1).ToString
            email.Text = Session("EMAIL")
        Catch ex As Exception
            Response.Write("<script>alert('No existen datos de contacto, actualice su información.')</script>")
        End Try
    End Sub

End Class
