
Partial Class Carrito
    Inherits System.Web.UI.Page

    Sub Items_ItemCommand(Sender As Object, e As RepeaterCommandEventArgs)
        Dim cantidad As New TextBox
        Dim productoid As New TextBox

        If e.CommandName = "UpdateFromCart" Then
                Try
                    cantidad = CType(e.Item.FindControl("ltCantidad"), TextBox)
                    productoid = CType(e.Item.FindControl("ltid"), TextBox)
                    Actualizar_Carrito(productoid.Text, Session("IDPERSONA"), cantidad.Text)
                Response.Write("<script>alert('Producto actualizado en carrito de compras.')</script>")
                Response.Write("<script>window.location.href='Carrito.aspx';</script>")
            Catch ex As Exception
                    Response.Write("<script>alert('Error al actualizar producto en carrito de compras.')</script>")
                End Try

            End If
            If e.CommandName = "RemoveFromCart" Then
            Try
                'Dim Carrito As New Data.DataSet
                'Carrito = productos_carrito("IDPERSONA")
                'cantidad.Text = Carrito.Tables(0).Rows(0).Item(0).ToString()
                cantidad = CType(e.Item.FindControl("ltCantidad"), TextBox)
                productoid = CType(e.Item.FindControl("ltid"), TextBox)
                Eliminar_Carrito(productoid.Text, Session("IDPERSONA"), cantidad.Text)
                Response.Write("<script>alert('Producto eliminado de carrito de compras.')</script>")
                Response.Write("<script>window.location.href='Carrito.aspx';</script>")
            Catch ex As Exception
                Response.Write("<script>alert('Error al eliminar producto de carrito de compras.')</script>")
                End Try
            End If


    End Sub

    Private Sub Carrito_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("IDPERSONA") = "" Then
            Response.Redirect("Login.aspx")
        Else
            Dim Conteo As New Data.DataSet
            Conteo = ContarCarrito(Session("IDPERSONA"))
            conteol.Text = Conteo.Tables(0).Rows(0).Item(0).ToString()
            Dim MontoT As New Data.DataSet
            SqlDataSource1.SelectCommand = "EXEC ProductosCarrito '" & Session("IDPERSONA") & "'"
            MontoT = TotalCarrito(Session("IDPERSONA"))
            montototal.Text = MontoT.Tables(0).Rows(0).Item(0).ToString()
        End If

    End Sub

End Class
