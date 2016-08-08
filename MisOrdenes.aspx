<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MisOrdenes.aspx.vb" Inherits="MisOrdenes" %>

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
                                    <a href="#"><i class="fa fa-list"></i> Mis órdenes</a>
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

                <div class="col-md-9" id="customer-orders">
                    <div class="box">
                        <h1>Mis órdenes</h1>

                        <p class="lead">Sus órdenes en un solo lugar.</p>
                        <p class="text-muted">Alguna consulta por favor <a href="Contacto.aspx">Contáctenos</a>, estaremos para servirle.</p>

                        <hr>

                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Orden</th>
                                        <th>Fecha</th>
                                        <th>Total</th>
                                        <th>Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th># 1</th>
                                        <td>22/06/2013</td>
                                        <td>$ 150.00</td>
                                        <td><span class="label label-info">Being prepared</span></td>
                                    </tr>
                                    <tr>
                                        <th># 2</th>
                                        <td>22/06/2013</td>
                                        <td>$ 150.00</td>
                                        <td><span class="label label-info">Being prepared</span></td>
                                    </tr>
                                    <tr>
                                        <th># 3</th>
                                        <td>22/06/2013</td>
                                        <td>$ 150.00</td>
                                        <td><span class="label label-success">Received</span></td>
                                    </tr>
                                    <tr>
                                        <th># 4</th>
                                        <td>22/06/2013</td>
                                        <td>$ 150.00</td>
                                        <td><span class="label label-danger">Cancelled</span> </td>
                                    </tr>
                                    <tr>
                                        <th># 5</th>
                                        <td>22/06/2013</td>
                                        <td>$ 150.00</td>
                                        <td><span class="label label-warning">On hold</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

