<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Perfil.aspx.vb" Inherits="Perfil" %>

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
    <div id="content">
            <div class="container">
    <div class="col-md-6">
                    <div class="box">
                        <h3>Actualizar Informacion del Usuario.</h3>

                         
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
                                <asp:TextBox ID="txt_seg_apell" class="form-control" runat="server" required="true"></asp:TextBox>
                            </div>
                        <asp:RegularExpressionValidator
                                    ID="RegularExpressionValidator3"
                                        runat="server"
                                        ErrorMessage="only characters allowed"

                                        ControlToValidate="txt_seg_apell"

                                        ValidationExpression="^[A-Za-z]*$" >

                                </asp:RegularExpressionValidator>


                            <div class="form-group">
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txt_email" class="form-control" runat="server" TextMode="Email" required="true"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="name">Teléfono </label>
                                <asp:TextBox ID="txt_tel" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="password">Contraseña </label>
                                    <asp:TextBox ID="txt_pass_nuevo" class="form-control" runat="server" TextMode="Password"> </asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="password">Confirmar contraseña </label>
                                 <asp:TextBox ID="txt_conf_pass_nuevo" class="form-control" runat="server" TextMode="Password"> </asp:TextBox>
                            </div>
                                
                            <asp:Button ID="btn_actualizar_pass" class="btn btn-primary" runat="server" Text="Actualizar Password" />    

                            
                            
                              <div class="text-center">
                                <asp:Button ID="btn_actualizar_emp" class="btn btn-primary" runat="server" Text="Actualizar" /> 
                            </div>

                    </div>
                </div>
                </div>
                </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
</asp:Content>

