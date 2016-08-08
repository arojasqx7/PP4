<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Registrarse.aspx.vb" Inherits="Registrarse" EnableEventValidation="false" %>

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
     <div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Nuevo Usuario</li>
                    </ul>

                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>Nuevo Usuario</h1>


                            <div class="form-group">
                                <label for="name">Nombre</label>
                                <asp:TextBox ID="txt_nombre" class="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="name">Primer apellido </label>
                                <asp:TextBox ID="txt_primer_apell" class="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="name">Segundo apellido</label>
                                <asp:TextBox ID="txt_seg_apell" class="form-control" runat="server"></asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="name">Cédula </label>
                                 <asp:TextBox ID="txt_cedula" class="form-control" runat="server"></asp:TextBox>  
                            </div>

                            <div class="form-group">
                                <label for="name">Teléfono </label>
                                <asp:TextBox ID="txt_tel" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="name">Fecha Nacimiento</label>
                                <asp:TextBox ID="txt_calendar" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txt_email" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="email">Dirección Exacta </label>
                                <asp:TextBox ID="txt_direccion" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="password">Contraseña </label>
                                    <asp:TextBox ID="txt_pass_nuevo" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="password">Confirmar contraseña </label>
                                 <asp:TextBox ID="txt_conf_pass_nuevo" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="text-center">
                        <asp:Button ID="btn_registrarse" class="btn btn-primary" runat="server" Text="Registrarse" /> 
                            </div>

                    </div>
                </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

        <!-- *** SCRIPTS TO INCLUDE *** -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

