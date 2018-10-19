<?php
include '../db/connect.php';
// include 'valida.php';
session_start();
if( isset($_SESSION['autenticacion']) == 'SI'){
    echo "<script>window.location='usuarios.php';</script>"; 
    
}else{
?>
<!doctype html>
<html class="no-js" lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- ========== VIEWPORT META ========== -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- ========== PAGE TITLE ========== -->
    <title>Texturplast</title>

    <!-- ========== META TAGS ========== -->
    <meta name="description" content="Salt - Responsive Multipurpose HTML5 Template ">
    <meta name="keywords" content="business, responsive, multi-purpose">
    <meta name="author" content="ThemesEase">

    <!-- ========== FAVICON & APPLE ICONS ========== -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- ========== MINIFIED VENDOR CSS ========== -->
    <link rel="stylesheet" href="styles/vendor.css">

    <!-- ========== MAIN CSS ========== -->
    <link rel="stylesheet" href="styles/main.css">

    <!-- ========== CUSTOM CSS ========== -->
    <link rel="stylesheet" href="styles/custom.css">

    <script src="scripts/vendor/modernizr.js"></script>
</head>

<!-- ==================================================
Body: Classes
header-shadow - Set shadow for header & menu
dark-menu - Change menu to dark [Don't use with light-header]
light-header - Set light background to header [Don't use with dark-menu]
dark-header - Set dark background to header
bold-menu - For bolder links
semi-trans-header - set transparency to header [Use with 'light-header' or 'dark-header']
center-logo - Logo at center
small-header - For lesser height
nav-hidden - Open nav on icon click
================================================== -->

<body class="header-shadow">

    <!-- ========== MAIN ========== -->
    <div class="main">
        
        <div class="container">
            <div class="row pt60 pb60">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 login-box login">
                <?php   
                error_reporting(E_ALL & ~E_NOTICE);
                    $error   = $_GET["error"];
                    $mensaje = $_GET["mesg"];
                    if ($error == 's'){
                         print "<div class='errorLog'>Usuario o Contraseña Inválido</div>";
                    }   
                    if($mensaje == '4523'){
                    ?>
                        <script>
                          var mensaje = 'TU CLAVE FUE ACTIVADA CORRECTAMENTE, YA PUEDES INGRESA A TU PANEL DE CONTROL';
                          $(".mensaje").show().html(mensaje);   
                        </script>
                    <?php   
                    }   
                ?>   
                    <form class="" action="valida.php" method="POST"> 
                        <center class="logo">
                            <img src="../images/texturplast/logo-black.png">
                        </center>
                        <div class="form-group">
                            <!-- <label for="exampleInputEmail1">Email address</label> -->
                            <input type="text" class="form-control" name="usuario" id="usuraio" placeholder="Usuario" required="">
                        </div>
                        <div class="form-group">
                            <!-- <label for="exampleInputPassword1">Password</label> -->
                            <input type="password" class="form-control" name="contrasena" id="contrasena" placeholder="Contraseña" required="">
                        </div>
                        <!-- 
                        <div class="checkbox">
                            <input id="checkbox-5" class="st-checkbox" name="checkbox-5" type="checkbox" checked="">
                            <label for="checkbox-5" class="st-checkbox-2-label">Remember Me</label>
                        </div> -->
                        <button type="submit" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right">Iniciar Sesion</button>
                    </form>
                </div> <!-- end login-box -->
            </div> <!-- end row -->
        </div> <!-- end container -->
        

    </div> <!-- end main -->

    <!-- ==================================================
    Footer: Classes
    footer - Default footer
    dark-footer - Dark footer [Use with .footer]
    sticky-footer - Reveal footer on scroll
    ================================================== -->
    <!-- ========== LOADER ========== -->
    <div class="page-loader">
        <div class="spinner"></div>
    </div>

    <script src="scripts/vendor.js"></script>

	<script src="scripts/plugins.js"></script>

	<script src="scripts/main.js"></script>

    <script type="text/javascript">
        $(function($) {
            $('#js-grid-faq').cubeportfolio({
                filters: '#js-filters-faq',
                defaultFilter: '*',
                animationType: 'sequentially',
                gridAdjustment: 'default',
                displayType: 'default',
                caption: 'expand',
                gapHorizontal: 0,
                gapVertical: 0
            });
        });
    </script>
</body>

</html>
    <?php }
    ?>