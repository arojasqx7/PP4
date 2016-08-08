<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="FAQ.aspx.vb" Inherits="FAQ" %>

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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeadMenu" Runat="Server">

    
        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </ul>

                </div>

                <div class="col-md-9">


                    <div class="box" id="contact">
                        <h1>Preguntas Frecuentes</h1>

                        <p class="lead">Are you curious about something? Do you have some kind of problem with our products?</p>
                        <p>Please feel free to contact us, our customer service center is working for you 24/7.</p>

                        <hr>

                        <div class="panel-group" id="accordion">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#faq1">

						1. What to do if I have still not received the order?

					    </a>

					</h4>
                                </div>
                                <div id="faq1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                            Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                        <ul>
                                            <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                            <li>Aliquam tincidunt mauris eu risus.</li>
                                            <li>Vestibulum auctor dapibus neque.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">

						2. What are the postal rates?

					    </a>

					</h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                        on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                        craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->


                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

					    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">

						3. Do you send overseas?

					    </a>

					</h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                        on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                        craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->

                        </div>
                        <!-- /.panel-group -->


                    </div>


                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

