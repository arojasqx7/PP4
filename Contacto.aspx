<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contacto.aspx.vb" Inherits="Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8"/>
    <meta name="robots" content="all,follow"/>
    <meta name="googlebot" content="index,follow,snippet,archive"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content=""/>
    <meta name="keywords" content=""/>

    <!-- styles -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'/>
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/owl.carousel.css" rel="stylesheet"/>
    <link href="css/owl.theme.css" rel="stylesheet"/>
    <link href="css/style.default.css" rel="stylesheet"/>
    <link href="css/custom.css" rel="stylesheet"/>

     <!-- scripts -->
    <script src="js/respond.min.js"></script>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>
    <link rel="shortcut icon" href="favicon.png"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeadMenu" Runat="Server">
    
     <div id="all">
        <div id="content">
            <div class="container">
                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Contáctenos</li>
                    </ul>
                </div>

                <div class="col-md-9">

                    <div class="box" id="contact">
                        <h1>Contacto</h1>

                        <p class="lead"></p>
                        <hr>

                        <div class="row">
                            <div class="col-sm-4">
                                <h3><i class="fa fa-map-marker"></i> Dirección</h3>
                          <p><strong>Proyecto Ltda.</strong>
                            <br>San José
                            <br>Calle Blancos
                            <br>Costa Rica
                            <br>
                            <strong>América Central</strong>
                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-phone"></i> Llamanos</h3>
                                <p class="text-muted">Llámanos: </p>
                                <p><strong>(506) 8888-8888 / (506) 2222-2222</strong>
                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-envelope"></i> Email</h3>
                                <p class="text-muted">Haznos saber tus comentarios, dudas o reclamos al correo:</p>
                                <ul>
                                    <li><strong><a href="mailto:">info@proyecto.com</a></strong>  </li>
                                </ul>
                            </div>
                            <!-- /.col-sm-4 -->
                        </div>
                        <!-- /.row -->

                        <hr>

                        <div id="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15719.3029958515!2d-84.0784569360331!3d9.94845182134352!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8fa0e48f52877803%3A0xda80a52f9a087122!2sCalle+Blancos%2C+Costa+Rica!5e0!3m2!1ses!2ses!4v1465240171358" width="750" height="420" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>

                        <hr>
                       
                        <h2>Formulario de Contacto</h2>

                        <form>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="firstname">Nombre</label>
                                        <input type="text" class="form-control" id="Nombre">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="lastname">Apellido</label>
                                        <input type="text" class="form-control" id="Apellido">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" id="Email">
                                    </div>
                                </div>

                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="message">Mensaje</label>
                                        <textarea id="message" class="form-control"></textarea>
                                    </div>
                                </div>

                                <div class="col-sm-12 text-center">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Enviar</button>

                                </div>
                            </div>
                            <!-- /.row -->
                        </form>

                    </div>

                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


    </div>
    <!-- /#all -->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

