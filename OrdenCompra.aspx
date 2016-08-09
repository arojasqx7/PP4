<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="OrdenCompra.aspx.vb" Inherits="OrdenCompra" %>

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
                        <li>Orden compra</li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** CUSTOMER MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Menú Cliente</h3>
                        </div>

                        <div class="panel-body">

                            <ul class="nav nav-pills nav-stacked">
                                <li class="active">
                                    <a href="MisOrdenes.aspx"><i class="fa fa-list"></i> Mis órdenes</a>
                                </li>

                                <li>
                                    <a href="customer-account.html"><i class="fa fa-user"></i> Mi cuenta</a>
                                </li>
                                <li>
                                    <a href="Inicio.aspx"><i class="fa fa-sign-out"></i> Logout</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                    <!-- *** CUSTOMER MENU END *** -->
                </div>

                <div class="col-md-9" id="customer-order">
                    <div class="box">
                        <h1>Order # 1</h1>

                        <p class="lead">Orden # 1 ha sido trasladada a bodega y esta <strong>siendo preparada</strong>.</p>
                        <p class="text-muted">Alguna consulta por favor <a href="Contacto.aspx">Contáctenos</a>, estaremos para servirle.</p>

                        <hr>

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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROGRA4ConnectionString2 %>"></asp:SqlDataSource>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th colspan="5" class="text-right">Subtotal</th>
                                        <th><asp:Label ID="montototal2" runat="server" Text='<%#montototal2.Text%>'></asp:Label></th>
                                    </tr>
                                    <tr>
                                        <th colspan="5" class="text-right">I.V</th>
                                        <th><asp:Label ID="etiquetaiv" runat="server" Text='<%#etiquetaiv.Text%>'></asp:Label></th>
                                    </tr>
                                    <tr>
                                        <th colspan="5" class="text-right">Total</th>
                                        <th><asp:Label ID="etiquetatotal" runat="server" Text='<%#etiquetatotal.Text%>'></asp:Label></th>
                                    </tr>
                                </tfoot>
                            </table>

                        </div>
                        <!-- /.table-responsive -->

                    </div>
                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

