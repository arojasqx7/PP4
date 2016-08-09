<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Checkout1.aspx.vb" Inherits="Checkout1" %>

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
                        <li>Checkout - Dirección</li>
                    </ul>
                </div>

                <div class="col-md-9" id="checkout">

                    <div class="box">
                        <form method="post" action="checkout2.html">
                            <h1>Checkout - Dirección</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="active"><a href="#"><i class="fa fa-map-marker"></i><br>Dirección</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-truck"></i><br>Método de envío</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Método de pago</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Revisión de pago</a>
                                </li>
                            </ul>

                            <!-- agregado -->
                                <div class="content">

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">Nombre </label>
                                            <asp:TextBox ID="nombre" class="form-control" runat="server" Text='<%#nombre.Text%>'></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">Apellidos </label>
                                            <asp:TextBox ID="apellidos" class="form-control" runat="server" Text='<%#apellidos.Text%>'></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="street">Domicilio</label>
                                            <asp:TextBox ID="domicilio" class="form-control" runat="server" Text='<%#domicilio.Text%>'></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->

                                    <div class="row">
                                        <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label for="phone">Teléfono </label>
                                           <asp:TextBox ID="telefono" class="form-control" runat="server" Text='<%#telefono.Text%>'></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <asp:TextBox ID="email" class="form-control" runat="server" Text='<%#Email.Text%>'></asp:TextBox>
                                        </div>
                                    </div>
                            </div>
                                <!-- /.row -->
                            </div>
                            <!-- agregado -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="Carrito.aspx" class="btn btn-default"><i class="fa fa-chevron-left"></i> Regresar</a>
                                </div>
                                <div class="pull-right">
                                     <a href="Checkout4.aspx" class="btn btn-primary"><i class="fa fa-chevron-right"></i> Continuar</a>
                                </div>
                            </div>
                        </form>
                    </div>
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
                                        <th><asp:Label ID="montototal" runat="server" Text='<%#montototal.Text%>'></asp:Label></th>
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
            </div> <!-- /.container -->
           </div>  <!-- /#content -->
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">

</asp:Content>

