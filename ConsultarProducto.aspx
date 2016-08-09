<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="ConsultarProducto.aspx.vb" Inherits="ConsultarProducto" %>

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
                                        <li><a href="#">Producto</a></li>
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
                        <h3>Consultar Informacion de un producto.</h3>
                        <p>
                            <table style="width: 52%;">
                                <tr>
                                    <td class="auto-style1">
                                <asp:TextBox ID="txt_busca_prod" class="form-control" placeholder="Ingrese código del producto..." runat="server" Height="34px" Width="350px" TextMode="Number"></asp:TextBox>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Button ID="btn_buscar_prod" class="btn btn-primary" runat="server" Text="Buscar" Width="68px" />
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
                                    
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="514px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO" />
                                        <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                                        <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" />
                                        <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROGRA4_V2ConnectionString2 %>" SelectCommand="SELECT [CODIGO], [DESCRIPCION], [PRECIO], [TIPO] FROM [PRODUCTOS] WHERE (([CODIGO] = @CODIGO) AND ([ISDELETED] = @ISDELETED))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txt_busca_prod" Name="CODIGO" PropertyName="Text" Type="String" />
                                        <asp:Parameter DefaultValue="N" Name="ISDELETED" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    
                            </div>

                           

                </div>
                </div>
                <!-- /.col-md-6 -->
          </div>
        </div>


</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

