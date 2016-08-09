<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" EnableEventValidation="false" CodeFile="Checkout4.aspx.vb" Inherits="Checkout4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8"/>
    <meta name="robots" content="all,follow"/>
    <meta name="googlebot" content="index,follow,snippet,archive"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content=""/>
    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/owl.carousel.css" rel="stylesheet"/>
    <link href="css/owl.theme.css" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'/>
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet"/>
    <link href="css/custom.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="favicon.png"/>
    <script src="js/respond.min.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeadMenu" Runat="Server">

    <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="Inicio.aspx">Inicio</a>
                        </li>
                        <li>Checkout - Revisión de pago</li>
                    </ul>
                </div>

                <div class="col-md-9" id="checkout">

                    <div class="box">
                        <!--<form method="post" action="checkout3.html">-->
                            <h1>Checkout - Revisión de pago</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li><a href="#"><i class="fa fa-map-marker"></i><br>Dirección</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-truck"></i><br>Método de envío</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Método de pago</a>
                                </li>
                                <li class="active"><a href="#"><i class="fa fa-eye"></i><br>Revisión de pago</a>
                                </li>
                            </ul>

                            <div class="content">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th colspan="1" class="auto-style6">Producto</th>
                                            <th class="auto-style7">Cantidad</th>
                                            <th class="auto-style8">Precio<br />Unitario</th>
                                            <th colspan="1" class="auto-style9">Subtotal</th>
                                        </tr>
                                    </thead>
                                        <tbody>
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <itemtemplate>
                                                <asp:TextBox ID="ltid" type="hidden" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "idproducto")%>'></asp:TextBox>
                                                <tr>
                                                    <td class="auto-style6">
                                                        <p class="price">
                                                            <strong>
                                                                <asp:Literal ID="ltdescripcion" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "descripcion")%>'></asp:Literal><br/>
                                                            </strong>
                                                        </p>
                                                    </td>
                                                    <td class="auto-style7"><asp:Literal ID="ltcantidad" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "cantidad")%>'></asp:Literal></td>
                                                    <td class="auto-style8">¢ <asp:Literal ID="ltprecio" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "precio")%>'></asp:Literal><br/></td>
                                                    <td class="auto-style9">¢ <asp:Literal ID="ltsubtotal" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "subtotal")%>'></asp:Literal><br/></td>
                                                </tr>
                                            </itemtemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROGRA4ConnectionString_Andrey %>"></asp:SqlDataSource>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="3">Subtotal</th>
                                                <th>¢<asp:Label ID="montototal" runat="server" Text='<%#montototal.Text%>'></asp:Label></th>
                                            </tr>
                                        </tfoot>
                                    </table>

                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.content -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="Checkout1.aspx" class="btn btn-default"><i class="fa fa-chevron-left"></i>Regresar</a>
                                </div>
                                <div class="pull-right">
                                    <asp:Button class="btn btn-primary" ID="btnOrden" runat="server" Text="Procesar Orden" />
                                </div>
                            </div>
                        <!--</form>-->
                    </div>
                    <!-- /.box -->


                </div>
                <!-- /.col-md-9 -->

                <div class="col-md-3">

                    <div class="box" id="order-summary">
                        <div class="box-header">
                            <h3>Su Orden ></h3>
                        </div>
                        <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Subtotal</td>
                                        <th><asp:Label ID="montototal2" runat="server" Text='<%#montototal2.Text%>'></asp:Label></th>
                                    </tr>
                                    <tr>
                                        <td>I.V</td>
                                        <th><asp:Label ID="etiquetaiv" runat="server" Text='<%#etiquetaiv.Text%>'></asp:Label></th>
                                    </tr>
                                    <tr class="total">
                                        <td>Total</td>
                                        <th><asp:Label ID="etiquetatotal" runat="server" Text='<%#etiquetatotal.Text%>'></asp:Label></th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

