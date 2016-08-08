<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="VerOrdenes.aspx.vb" Inherits="VerOrdenes" %>

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
                                        <li><a href="#">Ver Orden</a></li>
                                    </ul>
                                </li>

                            </ul>

                        </div>
                    </div>
                </div>

        
                <div class="col-md-6">
                    <div class="box">
                        <h3>Consultar Informacion de una orden...</h3>
                        <p>
                            <table style="width: 55%;">
                                <tr>
                                    <td class="auto-style1">
                                <asp:TextBox ID="txt_busca_orden" class="form-control" placeholder="Ingrese numero de orden..." runat="server" Height="34px" Width="320px" TextMode="Number"></asp:TextBox>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Button ID="btn_buscar_orden" class="btn btn-primary" runat="server" Text="Buscar" Width="68px" />
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
                                   
                                
                                   
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDORDEN" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="546px" Height="76px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="IDORDEN" HeaderText="IDORDEN" InsertVisible="False" ReadOnly="True" SortExpression="IDORDEN" />
                                        <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
                                        <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" SortExpression="SUBTOTAL" />
                                        <asp:BoundField DataField="IV" HeaderText="IV" SortExpression="IV" />
                                        <asp:BoundField DataField="DESCUENTO" HeaderText="DESCUENTO" SortExpression="DESCUENTO" />
                                        <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
                                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                        <asp:BoundField DataField="IDCLIENTE" HeaderText="IDCLIENTE" SortExpression="IDCLIENTE" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROGRA4ConnectionString_Andrey %>" SelectCommand="SELECT [IDORDEN], [FECHA], [SUBTOTAL], [IV], [DESCUENTO], [TOTAL], [ESTADO], [IDCLIENTE] FROM [ORDEN_COMPRA] WHERE ([IDORDEN] = @IDORDEN)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txt_busca_orden" Name="IDORDEN" PropertyName="Text" Type="Int32" />
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

