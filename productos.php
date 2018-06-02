<!doctype html>
<html class="no-js" lang="en">
<?php 
include 'db/connect.php'
?>
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
    <link rel="stylesheet" href="vendor/hamburgers/hamburgers.min.css">

    <!-- ========== MAIN CSS ========== -->
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/custom.css">

    <!--[if lt IE 9]>
    <script src="scripts/vendor/modernizr.js"></script>
    <![endif]-->
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

    <!-- ========== LOADER ========== -->
    <div class="page-loader">
        <div class="spinner"></div>
    </div>

    <!-- ========== HEADER ========== -->
    <div class="header">
        <div class="container-fluid">
            <nav class="menu">
                <div class="logo">
                    <a href="index.html"><img src="images/texturplast/logo.png" alt="Texturplast" class="logo-img"></a>
                </div> <!-- end logo -->
                <div class="menuham-container">
                    <span class="etiqueta">Menú</span>
                    <button class="hamburger hamburger--collapse" type="button">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </nav>
        </div>
    </div>

    <!-- ========== MAIN ========== -->
    <div class="main">

        <section class="content-section" id="main-descripcion">
            <div class="container-fluid">
                <div class="row like-table">
                    <div class="col-md-2">
                        <p class="descripcion-producto">Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur dignissimos magni, deleniti molestiae rerum officiis libero labore laudantium, eaque vel reiciendis sapiente architecto optio? Nihil aliquid cumque impedit officia aperiam.</p>
                        <p class="rendimiento-titulo">Rendimiento</p>
                        <p class="rendimiento-producto">12 a 14 m2 una sola mano</p>
                    </div>
                    <div class="col-md-4">
                        <div class="image-container">
                            <img class="img-responsive col-center" src="productos/pinturas/texturpremium.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <h3 class="nombre-producto">Nombre pintura</h3>
                        <p class="detalles-producto">100% acrilica<br>as<br>asad<br>bvas<br></p>
                        <i class="fa fa-2x fa-chevron-circle-down descarga"></i><a class="ficha-descarga" href="fichas/pinturas/1.pdf">Decarga la ficha técnica</a>
                    </div>
                    <div class="col-md-3">
                        <div class="panel-group acc-faq-1" id="accordion-11" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne-11">
                                    <h5 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion-11" href="#collapseOne-11" aria-expanded="true" aria-controls="collapseOne-11" class="trans"> Can I use accordion for simple FAQs?</a></h5>
                                </div>
                                <div id="collapseOne-11" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne-11">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                        on it squid single-origin coffee nulla assumenda shoreditch et.
                                    </div>
                                </div> <!-- end panel-collapse -->
                            </div> <!-- end panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo-11">
                                    <h5 class="panel-title"><a class="collapsed trans" role="button" data-toggle="collapse" data-parent="#accordion-11" href="#collapseTwo-11" aria-expanded="false" aria-controls="collapseTwo-11"><span class="icon fa fa-plus-circle trans"></span> Accordion Title 2</a></h5>
                                </div>
                                <div id="collapseTwo-11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo-11">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                        on it squid single-origin coffee nulla assumenda shoreditch et.
                                    </div>
                                </div> <!-- end panel-collapse -->
                            </div> <!-- end panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree-11">
                                    <h5 class="panel-title"><a class="collapsed trans" role="button" data-toggle="collapse" data-parent="#accordion-11" href="#collapseThree-11" aria-expanded="false" aria-controls="collapseThree-11"><span class="icon fa fa-plus-circle trans"></span> Accordion Title 3</a></h5>
                                </div>
                                <div id="collapseThree-11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree-11">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
                                        on it squid single-origin coffee nulla assumenda shoreditch et.
                                    </div>
                                </div> <!-- end panel-collapse -->
                            </div> <!-- end panel -->
                        </div> <!-- end panel-group -->
                    </div>
                </div>
            </div>
        </section>
        
        <div class="cta trans custom-cta">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h5 class="cta-title underline">Contactanos</h5>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </div> <!-- end cta -->



    </div> <!-- end main -->

    <!-- ==================================================
    Footer: Classes
    footer - Default footer
    dark-footer - Dark footer [Use with .footer]
    sticky-footer - Reveal footer on scroll
    ================================================== -->
    <footer class="footer dark-footer" id="footer">

        <!-- ========== top footer ========== -->
        <div class="container footer-top">
            <div class="row">
                <div class="col-md-2 col-sm-3 col-xs-6">
                    <a href="#"><h5 class="footer-title">Inicio</h5></a>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-6">
                    <a href="http://"><h5 class="footer-title">Productos</h5></a>
                </div>
                <div class="col-md-2 col-sm-3 col-xs-6 mb20">
                    <a href="contacto.html"><h5 class="footer-title">Contacto</h5></a>
                </div>
                <!-- ========== right side ========== -->
                <div class="col-md-6 col-xs-12 text-right">
                    
                    <img src="images/texturplast/logo.png" alt="Texturplast" class="img-responsive mb20 pull-right">
                    <div class=" clearfix">
                        
                    </div>
                </div>

            </div> <!-- end row -->
        </div> <!-- end footer-top -->

        <!-- ========== footer-middle ========== -->
        <div class="container footer-middle">
            <div class="row">
                <div class="col-md-6">
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-2x fa-facebook"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-2x fa-instagram"></i></a>
                </div> <!-- end col-md-6 -->
                <div class="col-md-6 text-right">
                    
                    <h6 class="footer-title lowercase"><i class="fa fa-phone"></i> +52 (238) 131 6241 <span class="ml10 mr10">|</span> <i class="fa fa-envelope"></i> mail@example.com</h6>
                </div>
            </div> <!-- end row -->
        </div> <!-- end footer-middle -->

        <!-- ========== Footer - last section ========== -->
        <div class="footer-last">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        &copy; 2018
                    </div>
                    <div class="col-md-6 text-right">
                        <a href="#" class="mr10">Terms of Use</a> <a href="#">Privacy Policy</a>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </div> <!-- end footer-last -->

        <!-- ========== Scroll to top button ========== -->
        <div class="scroll-to-top trans"><i class="fa fa-angle-up"></i></div>
    </footer>



	<script src="scripts/vendor.js"></script>
	<script src="scripts/plugins.js"></script>
    <script src="scripts/main.js"></script>
    <script src="scripts/custom.js"></script>
    
</body>

</html>
