<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" EnableEventValidation="false" CodeFile="VerdurasDeRaiz1.aspx.vb" Inherits="VerdurasDeRaiz1" %>

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

         <!-- empieza aca-->
            <div class="navbar-buttons">

                <div class="navbar-collapse collapse right" id="basket-overview">
                    <a href="carrito.aspx" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i>
                        <span class="hidden-sm">
                            (<asp:Label ID="conteol" runat="server" Text='<%#conteol.Text%>'></asp:Label>) Productos
                        </span>
                    </a>
                </div>

            </div>

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </ul>
                </div>

                <div class="col-md-3">
                    <!-- *** MENUS Y CATEGORIAS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Categorias</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                                <li class="active">
                                    <a href="#"> Frutas </a>
                                    <ul>
                                        <li><a href="FrutasAcidas.aspx">Ácidas</a>
                                        </li>
                                        <li><a href="FrutasSemiacidas1.aspx">Semiácidas</a>
                                        </li>
                                        <li><a href="FrutasDulces1.aspx">Dulces</a>
                                        </li>
                                        <li><a href="FrutasNeutras1.aspx">Neutras</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a href="#">Verduras</a>
                                    <ul>
                                        <li><a href="VerdurasVerde1.aspx">Verdes</a>
                                        </li>
                                        <li><a href="#">De Raíz</a>
                                        </li>
                                        <li><a href="VerdurasDeHoja1.aspx">De Hojas</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a href="#">Carnes</a>
                                    <ul>
                                        <li><a href="CarneRes.aspx">Res</a>
                                        </li>
                                        <li><a href="CarneCerdo.aspx">Cerdo</a>
                                        </li>
                                        <li><a href="CarnePollo.aspx">Pollo</a>
                                        </li>
                                        <li><a href="CarnePavo.aspx">Pavo</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="active">
                                    <a href="#">Panaderia</a>
                                    <ul>
                                        <li><a href="PanDulce.aspx">Dulce</a>
                                        </li>
                                        <li><a href="PanSalado.aspx">Salado</a>
                                        </li>
                                        <li><a href="Resposteria.aspx">Repostería</a>
                                        </li>
                                    </ul>
                                </li>

                            </ul>

                        </div>
                    </div>
                </div>

                <div class="col-md-9">
                    <div class="box">
                        <h1>Verduras De Raiz</h1>
                        <p>Esta verdura suele ser rica en hidratos de carbono, tanto en azúcar y almidón como en otros tipos.</p>
                    </div>

                    <div class="row products">
 
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Items_ItemCommand" DataSourceID="SqlDataSource1">
                            <itemtemplate>
                                <div class="col-md-4 col-sm-6" style="padding:20px">
                                    <div class="product">
                                        <div class="flip-container">
                                            <div class="flipper">
                                                <div class="front">
                                                    <img src="<%#DataBinder.Eval(Container.DataItem, "imagen")%>" alt="" class="img-responsive"> </a>
                                                </div>
                                                <tr>
                                                    <div class="back">
                                                        <img src="<%#DataBinder.Eval(Container.DataItem, "imagen")%>" alt="" class="img-responsive"> </a>
                                                    </div>
                                            </div>
                                        </div>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <div class="text">
                                            <br />
                                            <br />
                                            <br />
                                            <p class="price">
                                                <asp:TextBox ID="ltid" type="hidden" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "idproducto")%>'></asp:TextBox>
                                            </p>
                                            <p class="price">
                                                <strong>
                                                <asp:Literal ID="ltdescripcion" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "descripcion")%>'></asp:Literal>
                                                <br />
                                                </strong>
                                                <asp:Literal ID="ltprecio" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "precio")%>'></asp:Literal>
                                                KILO</p>
                                            <div style="width:100%;">
                                                <div style="width: 40%; float:left; padding: 2px;">
                                                    <asp:TextBox ID="txtCantidad" class="form-control" type="number" min="1" width="50px" runat="server" Text="1"></asp:TextBox>
                                                </div>
                                                <!--<a href="Carrito.aspx" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Añadir</a> -->
                                                <asp:Button class="btn btn-primary" ID="btnAdd" CommandName="AddToCart" runat="server" Text="Añadir" />
                                            </div>
                                        </div>
                                        <!-- /.text -->
                                    </div>
                                    <!-- /.product -->
                                </div>
                            </itemtemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROGRA4ConnectionString_Andrey %>" SelectCommand="SELECT * FROM [PRODUCTOS] WHERE ([TIPO] = @TIPO)">
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="Verdura Raiz" Name="TIPO" QueryStringField="Verdura Raiz" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                </div>
                    <!-- /.products -->
                    <div class="pages">

                       
                        <ul class="pagination">
                            <li><a href="#">&laquo;                      </SelectParameters>
                        </asp:SqlDataSource>

                </div>
                    <!-- /.products -->
                    <div class="pages">

                       
                        <ul class="pagination">
                            <li><a href="#">&laquo;</a> </li>
                            <li><a href="#">1</a> </li>
                        </ul>
                    </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

</div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>
