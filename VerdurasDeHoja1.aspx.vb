
Partial Class VerdurasDeHoja1
    Inherits System.Web.UI.Page

    Sub Items_ItemCommand(Sender As Object, e As RepeaterCommandEventArgs)
        If Session("IDPERSONA") = "" Then
            Response.Write("<script>alert('No ha iniciado sesión.')</script>")
        Else
            Try
                Dim cantidad As New TextBox
                Dim productoid As New TextBox

                If e.CommandName = "AddToCart" Then
                    cantidad = CType(e.Item.FindControl("txtCantidad"), TextBox)
                    productoid = CType(e.Item.FindControl("ltid"), TextBox)
                    Insertar_Carrito(productoid.Text, Session("IDPERSONA"), cantidad.Text)
                    Response.Write("<script>alert('Producto agregado al carrito de compras.')</script>")
                    Response.Write("<script>window.location.href='VerdurasDeHoja1.aspx';</script>")
                End If
            Catch ex As Exception
                Response.Write("<script>alert('Error al agregar producto al carrito de compras.')</script>")
            End Try
        End If
    End Sub

    Private Sub VerdurasDeHoja1_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "Bienvenido (a): " + Session("EMAIL")
        Dim Conteo As New Data.DataSet
        Conteo = ContarCarrito(Session("IDPERSONA"))
        conteol.Text = Conteo.Tables(0).Rows(0).Item(0).ToString()
    End Sub

End Class
