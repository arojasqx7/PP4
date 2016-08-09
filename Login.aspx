<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Proyecto Progra 4 </title>
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

    <style type="text/css">
        .auto-style1 {
            width: 306px;
        }
        .auto-style2 {
            width: 335px;
        }
        .auto-style3 {
            width: 306px;
            height: 26px;
        }
        .auto-style4 {
            width: 335px;
            height: 26px;
            margin-left: 80px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 306px;
            height: 23px;
        }
        .auto-style7 {
            width: 335px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>

</head>


<body>
    <form id="form1" runat="server">
    <div>


    </div>
       <div id="login-modal" tabindex="-1" role="dialog"  aria-hidden="true"> 
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title" id="Login">Login</h3>
                    </div>

                     <div class="modal-body">

                    <div class="form-group">
                    <asp:TextBox class="form-control" ID="txt_user" runat="server" placeholder="Usuario" Width="250px"></asp:TextBox>
                    </div>

                    <div class="form-group">
                    <asp:TextBox class="form-control" ID="txt_pass" runat="server" placeholder="Contraseña" Width="250px" TextMode="Password"></asp:TextBox>
                    </div>

                         <p class="text-center">
                    <asp:Button class="btn btn-primary" ID="btn_login" runat="server" Text="Login" Width="66px" />
                             </p>

                        <p class="text-center text-muted">No registrado aún?</p>
                        <p class="text-center text-muted"><a href="Registrarse.aspx"><strong>Registrarse</strong></a> </p>

                          </div>
                </div>
            </div>
                
       </div> 

    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
