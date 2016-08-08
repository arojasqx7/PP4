<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="InsertaEmpleado.aspx.vb" Inherits="InsertaEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8"/>
    <meta name="robots" content="all,follow"/>
    <meta name="googlebot" content="index,follow,snippet,archive"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content=""/>

    <title> Admin Proyecto</title>

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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="Inicio.aspx">Inicio</a>
                        </li>
                        <li>Administración</li>
                    </ul>
                </div>


                <div class="col-md-3">

                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Menú Administración</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                                <li class="active">
                                    <a href="#"> Agregar </a>
                                    <ul>
                                        <li><a href="#">Empleado</a></li>
                                        <li><a href="InsertaProducto.aspx">Producto</a></li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a href="#">Consultar</a>
                                    <ul>
                                        <li><a href="ConsultarEmpleado.aspx">Empleado</a></li>
                                        <li><a href="ConsultarProducto.aspx">Producto</a></li>
                                        <li><a href="ConsultarUsuario.aspx">Usuario</a></li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a href="#">Actualizar</a>
                                    <ul>
                                        <li><a href="ActualizarEmpleado.aspx">Empleado</a></li>
                                        <li><a href="ActualizarProducto.aspx">Producto</a></li>
                                    </ul>
                                </li>

                                <li class="active">
                                    <a href="#">Eliminar</a>
                                    <ul>
                                        <li><a href="EliminarEmpleado.aspx">Empleado</a></li>
                                        <li><a href="EliminarProducto.aspx">Producto</a></li>
                                        <li><a href="EliminarUsuario.aspx">Usuario</a></li>
                                    </ul>
                                </li>

                            </ul>

                        </div>
                    </div>
                </div>

        
                <div class="col-md-6">
                    <div class="box">
                        <h3>Agregar Empleado.</h3>

                            <div class="form-group">
                                <label for="name">Nombre</label>
                                <asp:TextBox ID="txt_nombre" class="form-control" runat="server" required="true"></asp:TextBox>
                                <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidator1"
                                        runat="server"
                                        ErrorMessage="only characters allowed"

                                        ControlToValidate="txt_nombre"

                                        ValidationExpression="^[A-Za-z]*$" >

                                </asp:RegularExpressionValidator>
                            </div>

                            <div class="form-group">
                                <label for="name">Primer apellido </label>
                                <asp:TextBox ID="txt_primer_apell" class="form-control" runat="server" required="true"></asp:TextBox>
                                <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidator2"
                                        runat="server"
                                        ErrorMessage="only characters allowed"

                                        ControlToValidate="txt_primer_apell"

                                        ValidationExpression="^[A-Za-z]*$" >

                                </asp:RegularExpressionValidator>
                            </div>

                            <div class="form-group">
                                <label for="name">Segundo apellido</label>
                                <asp:TextBox ID="txt_seg_apell" class="form-control" runat="server" required="true"></asp:TextBox>
                                <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidator3"
                                        runat="server"
                                        ErrorMessage="only characters allowed"

                                        ControlToValidate="txt_seg_apell"

                                        ValidationExpression="^[A-Za-z]*$" >

                                </asp:RegularExpressionValidator>
                            </div>

                             <div class="form-group">
                                <label for="name">Cédula </label>
                                 <asp:TextBox ID="txt_cedula" class="form-control" runat="server" TextMode="Number" required="true" ></asp:TextBox>  
                            </div>

                            <div class="form-group">
                                <label for="name">Teléfono </label>
                                <asp:TextBox ID="txt_tel" class="form-control" runat="server" TextMode="Phone" required="true"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="name">Fecha Nacimiento</label>
                                <asp:TextBox ID="txt_calendar" class="form-control" runat="server" TextMode="Date" required="true"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txt_email" class="form-control" runat="server" TextMode="Email" required="true"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="password">Contraseña </label>
                                    <asp:TextBox ID="txt_pass_nuevo" class="form-control" runat="server" TextMode="Password" required="true"></asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="password">Confirmar contraseña </label>
                                 <asp:TextBox ID="txt_conf_pass_nuevo" class="form-control" runat="server" TextMode="Password" required="true"></asp:TextBox>
                            </div>

                            <div class="text-center">
                        <asp:Button ID="btn_Crear" class="btn btn-primary" runat="server" Text="Agregar" /> 
                            </div>

                    </div>
                </div>
                </div>
                <!-- /.col-md-6 -->
          
        </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

