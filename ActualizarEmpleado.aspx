<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="ActualizarEmpleado.aspx.vb" Inherits="ActualizarEmpleado" %>

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
    <style type="text/css">
        .auto-style1 {
            width: 661px;
        }
        .auto-style2 {
            width: 105px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="content">
            <div class="container">

                <div class="col-md-12">
                    
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
                                        <li><a href="InsertaEmpleado.aspx">Empleado</a></li>
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
                                        <li><a href="#">Empleado</a></li>
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

                                <li class="active">
                                    <a href="#">Consultar Orden</a>
                                    <ul>
                                        <li><a href="VerOrdenes.aspx">Ver Orden</a></li>
                                    </ul>
                                </li>

                            </ul>

                        </div>
                    </div>
                </div>

        
                <div class="col-md-6">
                    <div class="box">
                        <h3>Actualizar Informacion del empleado.</h3>
                        <p>
                            <table style="width: 37%;">
                                <tr>
                                    <td class="auto-style1">
                                <asp:TextBox ID="txt_busca_emp" class="form-control" placeholder="Ingrese Cedula del empleado..." runat="server" Height="34px" Width="320px" TextMode="Number"></asp:TextBox>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Button ID="btn_buscar_emp" class="btn btn-primary" runat="server" Text="Buscar" Width="68px" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td class="auto-style2">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </p>

                         
                            <div class="form-group">
                                <label for="name">Nombre</label>
                                <asp:TextBox ID="txt_nombre" class="form-control" runat="server" ReadOnly="True" required="true"></asp:TextBox>

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
                                <asp:TextBox ID="txt_primer_apell" class="form-control" runat="server" ReadOnly="True" required="true"></asp:TextBox>
                            </div>

                        <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidator2"
                                        runat="server"
                                        ErrorMessage="only characters allowed"

                                        ControlToValidate="txt_primer_apell"

                                        ValidationExpression="^[A-Za-z]*$" >

                                </asp:RegularExpressionValidator>

                            <div class="form-group">
                                <label for="name">Segundo apellido</label>
                                <asp:TextBox ID="txt_seg_apell" class="form-control" runat="server" ReadOnly="True" required="true"></asp:TextBox>
                            </div>
                        <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidator3"
                                        runat="server"
                                        ErrorMessage="only characters allowed"

                                        ControlToValidate="txt_seg_apell"

                                        ValidationExpression="^[A-Za-z]*$" >

                                </asp:RegularExpressionValidator>


                            <div class="form-group">
                                <label for="name">Teléfono </label>
                                <asp:TextBox ID="txt_tel" class="form-control" runat="server" TextMode="Phone" ReadOnly="True" required="true"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txt_email" class="form-control" runat="server" TextMode="Email" ReadOnly="True" required="true"></asp:TextBox>
                            </div>

                              <div class="text-center">
                                <asp:Button ID="btn_actualizar_emp" class="btn btn-primary" runat="server" Text="Actualizar" /> 
                            </div>

                    </div>
                </div>
                </div>
                <!-- /.col-md-6 -->
          
        </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

