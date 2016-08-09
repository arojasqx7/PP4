<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="false" CodeFile="Carrito.aspx.vb" Inherits="Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8"/>
    <meta name="robots" content="all,follow"/>
    <meta name="googlebot" content="index,follow,snippet,archive"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="keywords" content=""/>
    

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/owl.carousel.css" rel="stylesheet"/>
    <link href="css/owl.theme.css" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'/>
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet"/>
    <link href="css/custom.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="favicon.png"/>
    <script src="js/respond.min.js"></script>

    <style type="text/css">
        .auto-style6 {
            width: 1546px;
        }
        .auto-style7 {
            width: 86px;
        }
        .auto-style8 {
            width: 114px;
        }
        .auto-style9 {
            width: 252px;
        }
        .auto-style10 {
            width: 66px;
        }
    .auto-style11 {
        width: 70px;
    }
    .auto-style12 {
        width: 98px;
    }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeadMenu" Runat="Server">

    <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="Inicio.aspx">Inicio</a>
                        </li>
                        <li>Carrito de Compras</li>
                    </ul>
                </div>

                <div class="col-md-9" id="basket">

                    <div class="box">

                        <!--<form method="post" action="Checkout1.aspx">-->

                            <h1>Carrito de Compras</h1>
                            <p class="text-muted">Tienes <asp:Label ID="conteol" runat="server" Text='<%#conteol.Text%>'></asp:Label> item(s) en el carrito.</p>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th colspan="1" class="auto-style6">Producto</th>
                                            <th class="auto-style11">Cantidad</th>
                                            <th class="auto-style12">Precio<br />Unitario</th>
                                            <th colspan="1" class="auto-style9">Subtotal</th>
                                            <th colspan="1" class="auto-style10">Actualizar</th>
                                            <th colspan="1" class="auto-style10">Remover</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Items_ItemCommand" DataSourceID="SqlDataSource1">
                                            <itemtemplate>
                                                <asp:TextBox ID="ltid" type="hidden" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "idproducto")%>'></asp:TextBox>
                                                <tr>
                                                    <td class="auto-style6">
                                                        <p class="price">
                                                            <strong>
                                                                <asp:Literal ID="ltdescripcion" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "descripcion")%>'></asp:Literal><br/>
                                                            </strong>
                                                        </p>
                                                    </td>
                                                    <td class="auto-style7"><asp:Textbox ID="ltcantidad" Type="number" Min="1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "cantidad")%>'></asp:Textbox></td>
                                                    <td class="auto-style8">¢ <asp:Literal ID="ltprecio" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "precio")%>'></asp:Literal><br/></td>
                                                    <td class="auto-style9">¢ <asp:Literal ID="ltsubtotal" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "subtotal")%>'></asp:Literal><br/></td>
                                                    <td class="auto-style10"><asp:LinkButton ID="btnActualizar" CommandName="UpdateFromCart" runat="server" Text="Actualizar"/></td>
                                                    <td class="auto-style10"><asp:LinkButton ID="btnRemover" CommandName="RemoveFromCart" runat="server" Text="Remover"/></td>
                                                </tr>
                                            </itemtemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lt-gmonge.PROGRA4.dbo %>"></asp:SqlDataSource>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="3">Subtotal</th>
                                            <th colspan="2">¢<asp:Label ID="montototal" runat="server" Text='<%#montototal.Text%>'></asp:Label></th>
                                        </tr>
                                    </tfoot>
                                </table>

                            </div>
                            <!-- /.table-responsive -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="FrutasAcidas.aspx" class="btn btn-default"><i class="fa fa-chevron-left"></i> Continuar comprando</a>
                                </div>
                                <div class="pull-right">
                                    <a href="Checkout1.aspx" class="btn btn-primary"><i class="fa fa-chevron-right"></i> Continuar</a>    
                                </div>
                            </div>

                        <!--</form>-->

                    </div>
                    <!-- /.box -->
            </div>

        </div>

    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

