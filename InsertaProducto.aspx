<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="InsertaProducto.aspx.vb" Inherits="InsertaProducto" %>

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
                                        <li><a href="InsertaEmpleado.aspx">Empleado</a></li>
                                        <li><a href="#">Producto</a></li>
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
                        <h3>Agregar Producto.</h3>

                         <div class="form-group">
                                <label for="name">Codigo</label>
                                <asp:TextBox ID="txt_codigo" class="form-control" runat="server" Height="25px" Width="420px" TextMode="Number"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="email">Descripcion</label>
                                <asp:TextBox ID="txt_descripcion" class="form-control" runat="server" Height="33px" Width="416px"></asp:TextBox>
                            </div>

                         <div class="form-group">
                                <label for="name">Precio </label>
                                <asp:TextBox ID="txt_precio" class="form-control" runat="server" TextMode="Number" Height="31px" Width="414px"></asp:TextBox>
                            </div>


                            <div class="form-group">
                                <label for="name">Tipo</label>
                                <asp:DropDownList ID="cb_tipo" class="form-control" runat="server" Height="25px" Width="452px">
                                    <asp:ListItem>Fruta Acida</asp:ListItem>
                                    <asp:ListItem>Fruta Semiacida</asp:ListItem>
                                    <asp:ListItem>Fruta Dulce</asp:ListItem>
<asp:ListItem>Fruta Neutra</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Verdura Raiz</asp:ListItem>
                                    <asp:ListItem>Verdura Hoja</asp:ListItem>
                                    <asp:ListItem>Carne Cerdo</asp:ListItem>
                                    <asp:ListItem>Verdura VerdeCarne Pavo</asp:ListItem>
                                    <asp:ListItem>Carne Pollo</asp:ListItem>
                                    <asp:ListItem>Carne Res</asp:ListItem>
                                    <asp:ListItem>Pan Dulce</asp:ListItem>
                                    <asp:ListItem>Pan Salado</asp:ListItem>
                                    <asp:ListItem>Reposteria</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                     &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
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


