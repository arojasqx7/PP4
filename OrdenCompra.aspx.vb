
Partial Class OrdenCompra
    Inherits System.Web.UI.Page

    Private Sub OrdenCompra_Load(sender As Object, e As EventArgs) Handles Me.Load
        SqlDataSource1.SelectCommand = "EXEC ProductosCarrito '" & Session("IDPERSONA") & "'"

        Dim MontoT As New Data.DataSet
        MontoT = TotalCarrito(Session("IDPERSONA"))
        montototal2.Text = MontoT.Tables(0).Rows(0).Item(0).ToString()

        Dim iv As Double
        Dim total As Double
        iv = Val(montototal2.Text) * 0.13
        total = Val(montototal2.Text) + iv
        etiquetaiv.Text = iv.ToString
        etiquetatotal.Text = total.ToString
    End Sub

End Class
