<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="ConsultarUsuario.aspx.vb" Inherits="ConsultarUsuario" %>

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
                    <ul class="breadcrumb">
                        <li>
                        </li>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
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
                                        <li><a href="InsertaProducto.aspx">Producto</a></li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a href="#">Consultar</a>
                                    <ul>
                                        <li><a href="#">Empleado</a></li>
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
                        <h3>Consultar Informacion del empleado.</h3>
                        <p>
                            <table style="width: 49%;">
                                <tr>
                                    <td class="auto-style1">
                                <asp:TextBox ID="txt_busca_emp" class="form-control" placeholder="Ingrese cedula del empleado..." runat="server" Height="34px" Width="320px" TextMode="Number"></asp:TextBox>
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
                                   
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="139px" Width="490px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" SortExpression="CEDULA" />
                                        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                                        <asp:BoundField DataField="APELLIDO1" HeaderText="APELLIDO1" SortExpression="APELLIDO1" />
                                        <asp:BoundField DataField="APELLIDO2" HeaderText="APELLIDO2" SortExpression="APELLIDO2" />
                                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROGRA4_V2ConnectionString %>" SelectCommand="SELECT P.[CEDULA], P.[NOMBRE], P.[APELLIDO1], P.[APELLIDO2], P.[EMAIL] FROM [PERSONAS] P join DETALLE_ROL R ON P.IDPERSONA= R.IDPERSONA WHERE ((P.[CEDULA] = @CEDULA ) AND (P.[ISDELETED] = @ISDELETED)AND( R.IDROL=@IDROL))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txt_busca_emp" Name="CEDULA" PropertyName="Text" Type="String" />
                                        <asp:Parameter DefaultValue="N" Name="ISDELETED" Type="String" />
                                        <asp:Parameter DefaultValue="3" Name="IDROL" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                   
                            </div>


                    </div>
                </div>
                </div>
                <!-- /.col-md-6 -->
          
        </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

