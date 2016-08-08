<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="QuienesSomos.aspx.vb" Inherits="QuienesSomos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8"/>
    <meta name="robots" content="all,follow"/>
    <meta name="googlebot" content="index,follow,snippet,archive"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content=""/>

    <title> Proyecto </title>

    <meta name="keywords" content=""/>

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'/>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/owl.carousel.css" rel="stylesheet"/>
    <link href="css/owl.theme.css" rel="stylesheet"/>
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet"/>
    <link href="css/custom.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="favicon.png"/>

    <script src="js/respond.min.js"></script>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeadMenu" Runat="Server">

    <div class="navbar-buttons">

                <div class="navbar-collapse collapse right" id="basket-overview">
                    <a href="basket.html" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">3 items in cart</span></a>
                </div>
                <!--/.nav-collapse -->

            </div>

            <!--/.nav-collapse -->

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="Inicio.aspx">Inicio</a>
                        </li>
                        <li>¿Quiénes somos?</li>
                    </ul>
                </div>

                <div class="col-md-9">

                    <div class="box" id="text-page">
                        <h2>Acerca de nosotros</h2>

                        <p>Somos una cadena de supermercados de conveniencia, que se caracteriza por su excelencia en calidad, surtido y servicio al cliente. Además por sus instalaciones modernas, seguras y bien iluminadas.</p>
                            
                        <p>Nuestro objetivo es ser la mejor solución de compra cerca de la casa o del trabajo de nuestros clientes.</p>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="img/about_us1.jpg" class="img-circle img-responsive" alt=""/> </p>
                            </div>

                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="img/about_us4.jpg" class="img-rounded img-responsive" alt=""/>
                                </p>
                            </div>
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

